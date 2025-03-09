import argparse
if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Configure the project")
    parser.add_argument(
        "infile",
        type=str
    )
    parser.add_argument(
        "outfile",
        type=str
    )
    args = parser.parse_args()

    bytes = open(args.infile, "rb").read()
    output = bytearray()

    i = 0
    while i < len(bytes):
        if bytes[i] == 0xFF:
            break

        type = (bytes[i] & 0b11100000) >> 5
        length = bytes[i] & 0b00011111

        if type == 7:
            type = (length & 0b11100) >> 2
            length = (length & 0b00011 << 6)
            i += 1
            length |= bytes[i]

        i += 1
        length += 1

        if type == 0:
            #copy to output verbatim
            output += bytes[i:i+length]
            i += length
        elif type == 1:
            #copy single byte over and over
            a = bytes[i]
            for x in range(length):
                output.append(a)
            i += 1
        elif type == 2:
            #copy double byte over and over
            a = bytes[i:i+2]
            for l in range(length):
                output += a
            i += 2
        elif type == 3:
            #increment per copy
            a = bytes[i]
            for x in range(length):
                output.append(a + x)
            i += 1
        elif type in [4, 7]:
            #lz copy backref
            offset = int.from_bytes(bytes[i:i+2], "big")
            for x in range(length):
                output.append(output[offset + x])
            i += 2
        elif type == 5:
            #lz copy (swap bits)
            offset = int.from_bytes(bytes[i:i+2], "big")
            for x in range(length):
                num = output[offset + x]
                num = int('{:08b}'.format(num)[::-1], 2)
                output.append(num)
            i += 2
        elif type == 6:
            #lz copy forwardref
            offset = int.from_bytes(bytes[i:i+2], "big")
            for x in range(length):
                output.append(output[offset - x])
            i += 2

    open(args.outfile, "wb").write(output)

