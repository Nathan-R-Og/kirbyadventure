byter = """
.byte $70
"""

byter = byter.replace(".byte", "").replace("$", "0x").strip()
byter = byter.replace("\n", ",").split(",")
byter = bytearray([int(byte, 16) for byte in byter])

note_table = {
    (0, 15): "F6",
    (0, 14): "E6",
    (0, 13): "D#6",
    (0, 12): "D6",
    (0, 11): "C#6",
    (0, 10): "C6",
    (0, 9): "B5",
    (0, 8): "A#5",
    (0, 7): "A5",
    (0, 6): "G#5",
    (0, 5): "G5",
    (0, 4): "F#5",
    (0, 3): "F5",
    (0, 2): "E5",
    (0, 1): "D#5",
    (0, 0): "D5",
    (1, 15): "C#5",
    (1, 14): "C5",
    (1, 13): "B4",
    (1, 12): "A#4",
    (1, 11): "A4",
    (1, 10): "G#4",
    (1, 9): "G4",
    (1, 8): "F#4",
    (1, 7): "F4",
    (1, 6): "E4",
    (1, 5): "D#4",
    (1, 4): "D4",
    (1, 3): "C#4",
    (1, 2): "C4",
    (1, 1): "B3",
    (1, 0): "A#3",
}

length_table = [
    "PULSE_SIXTEENTH",
    "PULSE_EIGHTH",
    "PULSE_DEIGHTH",
    "PULSE_QUARTER",
    "PULSE_DQUARTER",
    "PULSE_HALF",
    "PULSE_CUSTOM"
]

class Entry(object):
    SIZE = 1
    def __init__(self, byte):
        self.my_byte = byte

    def __str__(self):
        return f".byte ${self.my_byte:02X}"

class PulseNote(Entry):
    SIZE = 1
    def __init__(self, byte):
        super().__init__(byte)
        self.pitch = byte & 0x0f
        self.type = (byte >> 4) & 1
        self.length = length_table[(byte >> 5) & 0b111]
        self.note = note_table[(self.type, self.pitch)]

    def __str__(self):
        return f"PulseNote {self.length}, {self.type}, {self.pitch} ; {self.note}"


class PAT_ENV1(Entry):
    SIZE = 2
    def __init__(self, bytes):
        self.arg = bytes[1]

    def __str__(self):
        return f"PAT_ENV1 ${self.arg:02X}"

class PAT_TRANSPOSE(Entry):
    SIZE = 2
    def __init__(self, bytes):
        self.arg = bytes[1]

    def __str__(self):
        return f"PAT_TRANSPOSE ${self.arg:02X}"

class PAT_ENV3(Entry):
    SIZE = 2
    def __init__(self, bytes):
        self.arg = bytes[1]

    def __str__(self):
        return f"PAT_ENV3 ${self.arg:02X}"

class PAT_SETTINGS(Entry):
    SIZE = 2
    def __init__(self, bytes):
        self.arg = bytes[1]

    def __str__(self):
        return f"PAT_SETTINGS ${self.arg:02X}"

class PAT_ENDREPEAT(Entry):
    SIZE = 1
    def __str__(self):
        return f"PAT_ENDREPEAT"

class PAT_END(Entry):
    SIZE = 1
    def __str__(self):
        return f"PAT_END"

class PAT_REPEAT(Entry):
    SIZE = 2
    def __init__(self, bytes):
        self.arg = bytes[1]

    def __str__(self):
        return f"PAT_REPEAT ${self.arg:02X}"

class PAT_UNKF1(Entry):
    SIZE = 2
    def __init__(self, bytes):
        self.arg = bytes[1]
        self.arg2 = bytes[2]

    def __str__(self):
        return f"PAT_UNKF1 ${self.arg:02X}"


main_table = {
    0xF0: PAT_SETTINGS,
    0xF1: PAT_UNKF1,
    0xF4: PAT_ENV3,
    0xF5: PAT_TRANSPOSE,
    0xF6: PAT_ENV1,
    0xFB: PAT_END,
    0xFC: PAT_REPEAT,
    0xFD: PAT_ENDREPEAT,
}

i = 0
while i < len(byter):
    entry = byter[i]
    new = Entry(entry)
    if entry in list(main_table.keys()):
        chosen_class = main_table[entry]
        new = chosen_class(byter[i:i+chosen_class.SIZE+1])
        i += chosen_class.SIZE-1
    elif entry < 0xE0:
        new = PulseNote(entry)
    i += 1
    print(new)