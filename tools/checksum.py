from hashlib import md5

rebuilt_rom = "kirby_rebuilt.nes"
hash_us = "69018a5181f255bc3a66badfb19fdb76"

if __name__ == "__main__":
    if hash_us != md5(open(rebuilt_rom, "rb").read()).hexdigest():
        raise Exception("Hashes do not match")
    else:
        print("OK")
