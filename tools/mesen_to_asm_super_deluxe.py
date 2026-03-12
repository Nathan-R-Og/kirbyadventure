import argparse

hardware = {
    "PpuControl_2000": "PPUCTRL",
    "PpuMask_2001": "PPUMASK",
    "PpuStatus_2002": "PPUSTATUS",
    "OamAddr_2003": "OAMADDR",
    "PpuScroll_2005": "PPUSCROLL",
    "PpuAddr_2006": "PPUADDR",
    "PpuData_2007": "PPUDATA",
    "DmcFreq_4010": "DMC_FREQ",
    "SpriteDma_4014": "OAMDMA",
    "Ctrl1_4016": "JOY1",
    "Ctrl2_FrameCtr_4017": "FRAME_COUNTER",
    "ApuStatus_4015": "SND_CHN",
    "DmcCounter_4011": "DMC_RAW",
    "Sq0Duty_4000": "SQ1",
    "Sq1Duty_4004": "SQ2",
    "TrgLinear_4008": "TRI",
    "NoiseVolume_400C": "NOISE_VOL",
    "DmcAddress_4012": "DMC_START",
    "DmcLength_4013": "DMC_LEN",
}

def bank_to_prefix(bank: int) -> str:
    return f"B{hex(bank).upper()[2:]}_"

def prettify_address_label(bank: int, addr: str) -> str:
    return bank_to_prefix(bank) + addr.replace("$", "")
    

def convert(bank: int, code: list[str]) -> None:
    for line in code:
        loc = line[19:]
        
        if loc.startswith("-"): # Mesen separator
            continue
            
        if (dbstart := loc.find(".db")) != -1:
            loc = "   " + loc[dbstart:].replace(" ", ",").replace(".db,", ".byte ")
            print(loc, end="")
            continue
        
        if loc.startswith(";"): # A comment
            print(loc, end="")
            continue
        
        if not loc.startswith(" "): # A label
            label = prettify_address_label(bank, loc)
            print(label, end="")
            continue
        
        # Else a line of code
        # Replace branches with our niceys ones
        if loc[2:5] in (
            "bmi",
            "bvc",
            "beq",
            "bne",
            "bcs",
            "bcc",
            "bpl",
            ):
            loc = loc.replace(loc[6:], prettify_address_label(bank, loc[6:]))
            
        # And make sure functions that are labelled are address'd until we have this all done and can start naming things
        elif loc[2:5] in (
            "jsr",
            "jmp"
            ):
            dest_lo = line[9:11].lower()
            dest_hi = line[12:14].lower()
            loc = loc.replace(loc[6:], "$" + dest_hi + dest_lo + " ; " + loc[6:])
        
        # TODO - replace absolute addressing modes within this bank with labels
        # TODO - predict where missing branch labels may go (in the case of Mesen not providing them for untraversed code)
        
        # replace hardware things
        for hard in hardware:
            if loc.find(hard) != -1:
                loc = loc.replace(hard, hardware[hard])
        
        # replace +0s
        loc = loc.replace("+0,", ",")
        
        # make the tabs tabbed
        loc = loc.replace("  ", "   ")
        print(loc, end="")
            

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("bank")
    parser.add_argument("file")
    
    args = parser.parse_args()
    
    bank = int(args.bank, 16)
    code = ...
    with open(args.file) as file:
        code = file.readlines()
    
    convert(bank, code)