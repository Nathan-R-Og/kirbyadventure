l = open("src/prg/bank14.asm", "r").readlines()

opcodes = {
    "jsr": "cpu_addr",
    "jmp": "cpu_addr",
    "ASMCALL": "cpu_addr",
    "A_JSR": "cpu_addr",
    "ONPOSITION": "cpu_addr",
    "ONDRAW": "cpu_addr",
    "ONMOVE": "cpu_addr",
    "ONTICK": "long_addr",
    "SPRITEMAP": "long_addr",
    "_is_faraddr": "long_addr",
    "JML": "long_addr",
    "and": "ram_addr",
    "MOV": "ram_addr",
    "A_AND": "ram_addr",
    "lda": "ram_addr",
    "dec": "ram_addr",
    "sta": "ram_addr",
    "ldx": "ram_addr",
    "ldy": "ram_addr",
    "sty": "ram_addr",
    "eor": "ram_addr",
}

addrs = []

i = 0
while i < len(l):
    line = l[i].strip()

    found = False
    if line.find("$") != -1:
        for opcode in list(opcodes.keys()):
            if line.startswith(opcode):
                get = line
                if line.find(";") != -1:
                    get = line.split(";")[0]
                if get.find("$") == -1:
                    break

                if line.find("#") == line.find("$") -1:
                    break


                addrs.append(get)
                found = True
                break
    i += 1

asm_lines = []
check = ["ASMCALL", "ASMCALL_l", "ONTICK", "ONPOSITION", "jmp", "jsr"]
i = 0
while i < len(addrs):
    found = False
    for a in check:
        if addrs[i].startswith(a):
            asm_lines.append(addrs.pop(i))
            found = True
            break
    if found:
        continue
    i += 1

for line in addrs:
    print(line)
for line in asm_lines:
    print(line)