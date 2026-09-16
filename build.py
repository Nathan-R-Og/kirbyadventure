import subprocess
import os
import shutil
import time

output = "kirby_rebuilt.nes"

if __name__ == "__main__":
    #pre cleanup
    if os.path.exists(output):
        os.remove(output)
    start_time = time.time()
    if os.path.exists("build_artifacts/"):
        shutil.rmtree("build_artifacts/")

    if not os.path.exists(f"split/"):
        raise Exception(
            f"ERROR: could not find split/, this likely means assets were\n"
            "not extracted correctly with configure.py")


    linker = "linker.cfg"

    subprocess.run(f"ca65 -o example.o -g src/main.asm -t nes".strip(), shell = True)
    subprocess.run(f"ld65 -Ln linked.txt -C {linker} -o {output} --dbgfile linked_m.dbg example.o", shell = True)

    resultTime = (time.time() - start_time)
    print(f"Assembly took {resultTime} seconds!")

    #post cleanup
    if os.path.exists(output):
        print(f"rom made!")
    else:
        print(f"ERR!")
        #fail cleanup
        os.remove(f"{output}.deb")

    os.remove("example.o")
