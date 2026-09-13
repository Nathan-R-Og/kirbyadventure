import argparse
import os
import sys

OPCODE_MATRIX = {
    0x00: {"rep": "brk", "arg_rep": "", "arg_size": 0},
    0x01: {"rep": "ora", "arg_rep": "(arg,x)", "arg_size": 1},
    0x05: {"rep": "ora", "arg_rep": "arg", "arg_size": 1},
    0x06: {"rep": "asl", "arg_rep": "arg", "arg_size": 1},
    0x08: {"rep": "php", "arg_rep": "", "arg_size": 0},
    0x09: {"rep": "ora", "arg_rep": "#arg", "arg_size": 1},
    0x0A: {"rep": "asl", "arg_rep": "a", "arg_size": 0},
    0x0D: {"rep": "ora", "arg_rep": "arg", "arg_size": 2},
    0x0E: {"rep": "asl", "arg_rep": "arg", "arg_size": 2},
    0x10: {"rep": "bpl", "arg_rep": "arg", "arg_size": 1},
    0x11: {"rep": "ora", "arg_rep": "(arg),y", "arg_size": 1},
    0x15: {"rep": "ora", "arg_rep": "arg,x", "arg_size": 1},
    0x16: {"rep": "asl", "arg_rep": "arg,x", "arg_size": 1},
    0x18: {"rep": "clc", "arg_rep": "", "arg_size": 0},
    0x19: {"rep": "ora", "arg_rep": "arg,y", "arg_size": 2},
    0x1D: {"rep": "ora", "arg_rep": "arg,x", "arg_size": 2},
    0x1E: {"rep": "asl", "arg_rep": "arg,x", "arg_size": 2},
    0x20: {"rep": "jsr", "arg_rep": "arg", "arg_size": 2},
    0x21: {"rep": "and", "arg_rep": "(arg,x)", "arg_size": 1},
    0x24: {"rep": "bit", "arg_rep": "arg", "arg_size": 1},
    0x25: {"rep": "and", "arg_rep": "arg", "arg_size": 1},
    0x26: {"rep": "rol", "arg_rep": "arg", "arg_size": 1},
    0x28: {"rep": "plp", "arg_rep": "", "arg_size": 0},
    0x29: {"rep": "and", "arg_rep": "#arg", "arg_size": 1},
    0x2A: {"rep": "rol", "arg_rep": "a", "arg_size": 0},
    0x2C: {"rep": "bit", "arg_rep": "arg", "arg_size": 2},
    0x2D: {"rep": "and", "arg_rep": "arg", "arg_size": 2},
    0x2E: {"rep": "rol", "arg_rep": "arg", "arg_size": 2},
    0x30: {"rep": "bmi", "arg_rep": "arg", "arg_size": 1},
    0x31: {"rep": "and", "arg_rep": "(arg),y", "arg_size": 1},
    0x35: {"rep": "and", "arg_rep": "arg,x", "arg_size": 1},
    0x36: {"rep": "rol", "arg_rep": "arg,x", "arg_size": 1},
    0x38: {"rep": "sec", "arg_rep": "", "arg_size": 0},
    0x39: {"rep": "and", "arg_rep": "arg,y", "arg_size": 2},
    0x3D: {"rep": "and", "arg_rep": "arg,x", "arg_size": 2},
    0x3E: {"rep": "rol", "arg_rep": "arg,x", "arg_size": 2},
    0x40: {"rep": "rti", "arg_rep": "", "arg_size": 0},
    0x41: {"rep": "eor", "arg_rep": "(arg,x)", "arg_size": 1},
    0x45: {"rep": "eor", "arg_rep": "arg", "arg_size": 1},
    0x46: {"rep": "lsr", "arg_rep": "arg", "arg_size": 1},
    0x48: {"rep": "pha", "arg_rep": "", "arg_size": 0},
    0x49: {"rep": "eor", "arg_rep": "#arg", "arg_size": 1},
    0x4A: {"rep": "lsr", "arg_rep": "a", "arg_size": 0},
    0x4C: {"rep": "jmp", "arg_rep": "arg", "arg_size": 2},
    0x4D: {"rep": "eor", "arg_rep": "arg", "arg_size": 2},
    0x4E: {"rep": "lsr", "arg_rep": "arg", "arg_size": 2},
    0x50: {"rep": "bvc", "arg_rep": "arg", "arg_size": 1},
    0x51: {"rep": "eor", "arg_rep": "(arg),y", "arg_size": 1},
    0x55: {"rep": "eor", "arg_rep": "arg,x", "arg_size": 1},
    0x56: {"rep": "lsr", "arg_rep": "arg,x", "arg_size": 1},
    0x58: {"rep": "cli", "arg_rep": "", "arg_size": 0},
    0x59: {"rep": "eor", "arg_rep": "arg,y", "arg_size": 2},
    0x5D: {"rep": "eor", "arg_rep": "arg,x", "arg_size": 2},
    0x5E: {"rep": "lsr", "arg_rep": "arg,x", "arg_size": 2},
    0x60: {"rep": "rts", "arg_rep": "", "arg_size": 0},
    0x61: {"rep": "adc", "arg_rep": "(arg,x)", "arg_size": 1},
    0x65: {"rep": "adc", "arg_rep": "arg", "arg_size": 1},
    0x66: {"rep": "ror", "arg_rep": "arg", "arg_size": 1},
    0x68: {"rep": "pla", "arg_rep": "", "arg_size": 0},
    0x69: {"rep": "adc", "arg_rep": "#arg", "arg_size": 1},
    0x6A: {"rep": "ror", "arg_rep": "a", "arg_size": 0},
    0x6C: {"rep": "jmp", "arg_rep": "(arg)", "arg_size": 2},
    0x6D: {"rep": "adc", "arg_rep": "arg", "arg_size": 2},
    0x6E: {"rep": "ror", "arg_rep": "arg", "arg_size": 2},
    0x70: {"rep": "bvs", "arg_rep": "arg", "arg_size": 1},
    0x71: {"rep": "adc", "arg_rep": "(arg),y", "arg_size": 1},
    0x75: {"rep": "adc", "arg_rep": "arg,x", "arg_size": 1},
    0x76: {"rep": "ror", "arg_rep": "arg,x", "arg_size": 1},
    0x78: {"rep": "sei", "arg_rep": "", "arg_size": 0},
    0x79: {"rep": "adc", "arg_rep": "arg,y", "arg_size": 2},
    0x7D: {"rep": "adc", "arg_rep": "arg,x", "arg_size": 2},
    0x7E: {"rep": "ror", "arg_rep": "arg,x", "arg_size": 2},
    0x81: {"rep": "sta", "arg_rep": "(arg,x)", "arg_size": 1},
    0x84: {"rep": "sty", "arg_rep": "arg", "arg_size": 1},
    0x85: {"rep": "sta", "arg_rep": "arg", "arg_size": 1},
    0x86: {"rep": "stx", "arg_rep": "arg", "arg_size": 1},
    0x88: {"rep": "dey", "arg_rep": "", "arg_size": 0},
    0x8A: {"rep": "txa", "arg_rep": "", "arg_size": 0},
    0x8C: {"rep": "sty", "arg_rep": "arg", "arg_size": 2},
    0x8D: {"rep": "sta", "arg_rep": "arg", "arg_size": 2},
    0x8E: {"rep": "stx", "arg_rep": "arg", "arg_size": 2},
    0x90: {"rep": "bcc", "arg_rep": "arg", "arg_size": 1},
    0x91: {"rep": "sta", "arg_rep": "(arg),y", "arg_size": 1},
    0x94: {"rep": "sty", "arg_rep": "arg,x", "arg_size": 1},
    0x95: {"rep": "sta", "arg_rep": "arg,x", "arg_size": 1},
    0x96: {"rep": "stx", "arg_rep": "arg,y", "arg_size": 1},
    0x98: {"rep": "tya", "arg_rep": "", "arg_size": 0},
    0x99: {"rep": "sta", "arg_rep": "arg,y", "arg_size": 2},
    0x9A: {"rep": "txs", "arg_rep": "", "arg_size": 0},
    0x9D: {"rep": "sta", "arg_rep": "arg,x", "arg_size": 2},
    0xA0: {"rep": "ldy", "arg_rep": "#arg", "arg_size": 1},
    0xA1: {"rep": "lda", "arg_rep": "(arg,x)", "arg_size": 1},
    0xA2: {"rep": "ldx", "arg_rep": "#arg", "arg_size": 1},
    0xA4: {"rep": "ldy", "arg_rep": "arg", "arg_size": 1},
    0xA5: {"rep": "lda", "arg_rep": "arg", "arg_size": 1},
    0xA6: {"rep": "ldx", "arg_rep": "arg", "arg_size": 1},
    0xA8: {"rep": "tay", "arg_rep": "", "arg_size": 0},
    0xA9: {"rep": "lda", "arg_rep": "#arg", "arg_size": 1},
    0xAA: {"rep": "tax", "arg_rep": "", "arg_size": 0},
    0xAC: {"rep": "ldy", "arg_rep": "arg", "arg_size": 2},
    0xAD: {"rep": "lda", "arg_rep": "arg", "arg_size": 2},
    0xAE: {"rep": "ldx", "arg_rep": "arg", "arg_size": 2},
    0xB0: {"rep": "bcs", "arg_rep": "arg", "arg_size": 1},
    0xB1: {"rep": "lda", "arg_rep": "(arg),y", "arg_size": 1},
    0xB4: {"rep": "ldy", "arg_rep": "arg,x", "arg_size": 1},
    0xB5: {"rep": "lda", "arg_rep": "arg,x", "arg_size": 1},
    0xB6: {"rep": "ldx", "arg_rep": "arg,y", "arg_size": 1},
    0xB8: {"rep": "clv", "arg_rep": "", "arg_size": 0},
    0xB9: {"rep": "lda", "arg_rep": "arg,y", "arg_size": 2},
    0xBA: {"rep": "tsx", "arg_rep": "", "arg_size": 0},
    0xBC: {"rep": "ldy", "arg_rep": "arg,x", "arg_size": 2},
    0xBD: {"rep": "lda", "arg_rep": "arg,x", "arg_size": 2},
    0xBE: {"rep": "ldx", "arg_rep": "arg,y", "arg_size": 2},
    0xC0: {"rep": "cpy", "arg_rep": "#arg", "arg_size": 1},
    0xC1: {"rep": "cmp", "arg_rep": "(arg,x)", "arg_size": 1},
    0xC4: {"rep": "cpy", "arg_rep": "arg", "arg_size": 1},
    0xC5: {"rep": "cmp", "arg_rep": "arg", "arg_size": 1},
    0xC6: {"rep": "dec", "arg_rep": "arg", "arg_size": 1},
    0xC8: {"rep": "iny", "arg_rep": "", "arg_size": 0},
    0xC9: {"rep": "cmp", "arg_rep": "#arg", "arg_size": 1},
    0xCA: {"rep": "dex", "arg_rep": "", "arg_size": 0},
    0xCC: {"rep": "cpy", "arg_rep": "arg", "arg_size": 2},
    0xCD: {"rep": "cmp", "arg_rep": "arg", "arg_size": 2},
    0xCE: {"rep": "dec", "arg_rep": "arg", "arg_size": 2},
    0xD0: {"rep": "bne", "arg_rep": "arg", "arg_size": 1},
    0xD1: {"rep": "cmp", "arg_rep": "(arg),y", "arg_size": 1},
    0xD5: {"rep": "cmp", "arg_rep": "arg,x", "arg_size": 1},
    0xD6: {"rep": "dec", "arg_rep": "arg,x", "arg_size": 1},
    0xD8: {"rep": "cld", "arg_rep": "", "arg_size": 0},
    0xD9: {"rep": "cmp", "arg_rep": "arg,y", "arg_size": 2},
    0xDD: {"rep": "cmp", "arg_rep": "arg,x", "arg_size": 2},
    0xDE: {"rep": "dec", "arg_rep": "arg,x", "arg_size": 2},
    0xE0: {"rep": "cpx", "arg_rep": "#arg", "arg_size": 1},
    0xE1: {"rep": "sbc", "arg_rep": "(arg,x)", "arg_size": 1},
    0xE4: {"rep": "cpx", "arg_rep": "arg", "arg_size": 1},
    0xE5: {"rep": "sbc", "arg_rep": "arg", "arg_size": 1},
    0xE6: {"rep": "inc", "arg_rep": "arg", "arg_size": 1},
    0xE8: {"rep": "inx", "arg_rep": "", "arg_size": 0},
    0xE9: {"rep": "sbc", "arg_rep": "#arg", "arg_size": 1},
    0xEA: {"rep": "nop", "arg_rep": "", "arg_size": 0},
    0xEC: {"rep": "cpx", "arg_rep": "arg", "arg_size": 2},
    0xED: {"rep": "sbc", "arg_rep": "arg", "arg_size": 2},
    0xEE: {"rep": "inc", "arg_rep": "arg", "arg_size": 2},
    0xF0: {"rep": "beq", "arg_rep": "arg", "arg_size": 1},
    0xF1: {"rep": "sbc", "arg_rep": "(arg),y", "arg_size": 1},
    0xF5: {"rep": "sbc", "arg_rep": "arg,x", "arg_size": 1},
    0xF6: {"rep": "inc", "arg_rep": "arg,x", "arg_size": 1},
    0xF8: {"rep": "sed", "arg_rep": "", "arg_size": 0},
    0xF9: {"rep": "sbc", "arg_rep": "arg,y", "arg_size": 2},
    0xFD: {"rep": "sbc", "arg_rep": "arg,x", "arg_size": 2},
    0xFE: {"rep": "inc", "arg_rep": "arg,x", "arg_size": 2},
}

TERMINATION_OPCODES = [0x00, 0x4C, 0x60, 0x6C]
BRANCHING_OPCODES   = [0x10, 0x30, 0x50, 0x70, 0x90, 0xB0, 0xD0, 0xF0]

def main(dump: list[str], show_addrs = False):
    for line in dump:
        if line.find("ONTICK") != -1:
            address_nes = line.split("$")[1][:6]
            bank = address_nes[:2]
            addr = int(address_nes[2:], 16) & 0x1FFF
            lines = {}
            labels_to_add = set()
            labels_to_add.add(addr)
            
            with open(f"split/prg/bank{bank}.bin", "rb") as bankbin:
                bankbin.seek(addr)
                
                print("\n; -------------------- ONTICK ${}{:04x} --------------------\n".format(bank, addr+0xA000))
                
                while (code := int.from_bytes(bankbin.read(1))):
                    if code not in OPCODE_MATRIX:
                        raise ValueError(f"Illegal opcode {hex(code)} @ {bank}:{hex(addr)[2:]}")
                    opc = OPCODE_MATRIX[code]
                    pc = bankbin.tell()-1
                    arg = int.from_bytes(bankbin.read(opc["arg_size"]), "little") if opc["arg_size"] > 0 else 0
                    arg_str = "$" + hex(arg)[2:].zfill(opc["arg_size"]*2)
                    lines[pc] = f"  {opc['rep']} {opc['arg_rep'].replace('arg', arg_str)}"
                    
                    if show_addrs:
                        lines[pc] = lines[pc] + " ; ${:04x}".format(pc+0xA000)
                    
                    if code in TERMINATION_OPCODES:
                        if any(i > pc for i in labels_to_add):
                            continue
                        break
                    
                    if code in BRANCHING_OPCODES:
                        bankbin.seek(-1, os.SEEK_CUR)
                        offset = int.from_bytes(bankbin.read(1), signed=True)
                        dest = bankbin.tell() + offset
                        labels_to_add.add(dest)
                
                for i in labels_to_add:
                    if i not in lines:
                        print(f"WARNING: Undecomp'd branch to {hex(i)}", file=sys.stderr)
                        continue
                    lines[i] = f"B{bank}_{'{:04x}'.format(i+0xA000)}:\n" + lines[i]
                        
                for i in lines.values():
                    print(i)
                                        
            

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("dump_file")
    parser.add_argument("-a", action="store_true", help="Comments for each line's address")
    args = parser.parse_args()
    
    dump = ...
    with open(args.dump_file, "r") as dumpfile:
        dump = dumpfile.readlines()
    
    main(dump, args.a)
