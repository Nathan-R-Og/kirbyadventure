import yaml
import os
import hashlib
import shutil
from glob import glob

def doSplit(dir):
    yamlname = dir+".yaml"
    if not os.path.exists(yamlname):
        print("yaml does not exist! skipping...")
        return
    data_loaded = yaml.safe_load(open(yamlname, 'r'))

    rom = ""
    for mrom in glob("*.nes"):
        hash = hashlib.md5(open(mrom,'rb').read()).hexdigest()
        if hash == data_loaded["md5"]:
            rom = mrom
            break
    if rom == "":
        return

    rom_bytes = open(rom, "rb").read()
    rom_name = data_loaded["name"]
    print(f"splitting {rom} for {rom_name} assets")

    if dir == "split":
        output = f"{dir}/"
    else:
        output = f"split/{dir}/"

    mapper = data_loaded["mapper"]
    bankspace = -1
    if mapper == "NROM":
        bankspace = 0x4000
    elif mapper == "MMC3":
        bankspace = 0x2000

    if os.path.exists(output):
        shutil.rmtree(output)
    os.makedirs(output)
    os.makedirs(output+"prg/")
    os.makedirs(output+"chr/")

    prglen = len(data_loaded["splits"]["prg"])
    chrlen = len(data_loaded["splits"]["chr"])

    x = 0
    if "header" in list(data_loaded["splits"].keys()):
        open(output+'header.bin', "wb").write(rom_bytes[0:0x10])
        x += 0x10

    for side in ["prg", "chr"]:
        myside = side
        if not side in list(data_loaded["splits"].keys()):
            continue
        for entry in data_loaded["splits"][side]:
            mybank = entry["bank"]
            atI = mybank
            if myside == 'chr':
                atI += prglen
            opposite = atI+1
            atI *= bankspace
            opposite *= bankspace
            bankData = rom_bytes[atI+x:opposite+x]
            bankend = bankspace
            if "end" in list(entry.keys()):
                bankend = entry["end"]

            if not "splits" in list(entry.keys()):
                fake_bank = hex(mybank).replace("0x","")
                usename = f"{side}/bank{fake_bank}"
                end_result = f'{output}{usename}.bin'
                open(end_result, "wb").write(bankData[0:bankend])
                continue
            i = 0
            while i < len(entry["splits"]):
                real_entry = entry["splits"][i]
                start = real_entry[0]
                end = 0
                if i < len(entry["splits"])-1:
                    end = entry["splits"][i+1][0]
                else:
                    end = bankend
                usename = ""
                if len(real_entry) > 1:
                    usename = real_entry[1]
                else:
                    fake_addr = hex(start).replace("0x","")
                    fake_bank = hex(mybank).replace("0x","")
                    usename = f"{side}/bank{fake_bank}/unk{fake_addr}"
                end_result = f'{output}{usename}.bin'
                pathOnly = end_result.split("/")
                pathOnly.pop(-1)
                pathOnly = "/".join(pathOnly)
                if not os.path.exists(pathOnly):
                    os.makedirs(pathOnly)
                open(end_result, "ab").write(bankData[start:end])
                i += 1
