bank = "bank3b"

lines = open(f"src/prg/{bank}.asm", "r").readlines()

byte_data = open(f"split/prg/{bank}.bin", "rb").read()

rom_start = (0x3b*0x2000)+0x10
ram = 0xA000

pc = 0xb7f
i = 0
while i < len(lines):
    line = lines[i]
    if line.find("; ") != -1:
        d = line.split(";")[-1].strip()
        if d.find("//") != -1:
            d = d.split("//")[0].strip()
        actual_byteinfo = d.split("/")
        current_address = int(actual_byteinfo[0],16)
        current_data = actual_byteinfo[1]
        if current_address == pc + ram + 0x3b0000:
            print("OK")
            pc += len(current_data)//2
        else:
            origin = '${:01X}'.format(pc)
            destination = (current_address-0x3b0000)-ram
            destination_s = '${:01X}'.format(destination)
            lines.insert(i, f'incbinRange "../split/prg/{bank}.bin", {origin}, {destination_s}\n')

            pc = destination
            print("WHAT")

    i += 1

open(f"src/prg/fix_{bank}.asm", "w").writelines(lines)