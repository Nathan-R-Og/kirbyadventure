intext = """
  ora (OBJ_x_hi+14),y
  ora ($fc,x)
  ora (UNK_2+2,x)
  dec temp_y_hi,x
  cmp #$02
  ora $a211,y
  ora (UNK_0,x)
  ora (UNK_2+2,x)
  dec OBJ_x_hi+2,x
  cmp #$02
  ora OBJ_x_hi+14,y
  dec $61ef
  lda $61ef
  beq $8048
  inx
  txa
  rts
----------------

"""

bank = 0x3a
hexer = "{:02X}".format(bank)
label_starter = f"B{hexer}_"

intext = intext.strip()
lines = intext.split("\n")

locals = [
    "bmi",
    "bvc",
    "beq",
    "bne",
    "bcs",
    "bcc",
    "bpl",
]


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


out_lines = []
for line in lines:
    if line.startswith("-"):
        continue

    if line.startswith(".db"):
        line = line.replace(" ",",").replace(".db,", ".byte ")

    for hard in hardware:
        if line.find(hard) != -1:
            line = line.replace(hard, hardware[hard])

    if line.startswith("$") and line.endswith(":"):
        line = line.replace("$", label_starter)
    if line.startswith("  "):
        line = "  "+line
    for local in locals:
        if line.find(local) != -1:
            line = line.replace(f"{local} $", f"{local} {label_starter}")
    line = line.replace("+0", "")
    line = line.replace(",x", ", x")
    line = line.replace(",y", ", y")
    out_lines.append(line)


open("mesen_test.asm", "w").writelines([line+"\n" for line in out_lines])