prg = 0xA000
l = open("src/prg/bank2d.asm", "r").readlines()

class Address(object):
    def __init__(self, string):
        pass

addrs = []
out_addrs = []
const_addrs = []

i = 0
while i < len(l):
    line = l[i].strip()

    if line.find("$") != -1:
        if line.startswith("ASMCALL"):
            get = line
            if line.find(";") != -1:
                get = line.split(";", 1)[0]
            if get.find("$") == -1:
                i += 1
                continue
            if get.find(",") != -1:
                get = line.split(",", 1)[0]
            if get.find("$") == -1:
                i += 1
                continue
            get = get.strip().split(" ", 1)[-1].strip()

            address = int(get.replace("$",""), 16)
            if address >= prg and address < prg + 0x2000:
                addrs.append(address)
            elif address >= 0xC000:
                const_addrs.append(address)
            else:
                out_addrs.append(address)

    i += 1

out_addrs = list(set(out_addrs))
out_addrs.sort()
const_addrs = list(set(const_addrs))
const_addrs.sort()
addrs = list(set(addrs))
addrs.sort()

print("OUT OF BANK CPU")
for address in out_addrs:
    print(hex(address))
print("CONSTANT")
for address in const_addrs:
    print(hex(address))
print("INSIDE")
for address in addrs:
    print(hex(address))