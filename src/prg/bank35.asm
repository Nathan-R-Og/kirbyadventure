.segment "PRG35": absolute
.addr B35_803a
.addr B35_8047
.addr B35_8054
.addr $8061
.addr $806A
.addr $93FC
.addr $8073
.addr $807C
.addr $8085
.addr $808E
.addr $8097
.addr $80BB
.addr $80CC
.addr $80DD
.addr $80EE
.addr $80FF
.addr $811C
.addr $8139
.addr $8156
.addr $8173
.addr $8190
.addr $81AD
.addr $81CA
.addr $81E7
.addr $81FC
.addr $8211
.addr $80A0
.addr $80A9
.addr $80B2

B35_803a:
    incbinRange "../split/prg/bank35.bin", $3a, $47
B35_8047:
    incbinRange "../split/prg/bank35.bin", $47, $54
B35_8054:
B35_8061:
B35_806A:
B35_8073:
B35_807C:
B35_8085:
B35_808E:
B35_8097:
B35_80A0:
B35_80A9:
B35_80B2:
B35_80BB:
B35_80CC:
B35_80DD:
B35_80EE:
B35_80FF:
B35_811C:
B35_8139:
B35_8156:
B35_8173:
B35_8190:
B35_81AD:
B35_81CA:
B35_81E7:
B35_81FC:
B35_8211:
B35_93FC:
    incbinRange "../split/prg/bank35.bin", $54, $1979

B35_9979:
    incbinRange "../split/prg/bank35.bin", $1979, $197d

B35_997d:
    .incbin "../split/prg/bank35.bin", $197d