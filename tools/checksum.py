from hashlib import md5

rebuilt_rom = "kirby_rebuilt.nes"
hash_us = "a3dde61df4bc4ebce2a60c2cf869081e"

if __name__ == "__main__":
    if hash_us != md5(open(rebuilt_rom, "rb").read()).hexdigest():
        raise Exception("Hashes do not match")
    else:
        print("OK")
