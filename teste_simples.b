hd[0] <= 32'b011010_00000000000000000000000001; // jump to 1 (main)
hd[1] <= 32'b001100_11110_11110_0000000000000100; // addi: $sp = $sp + (4)
hd[2] <= 32'b001111_00000_10100_0000000000000101; // li: load 5 in register $t0
hd[3] <= 32'b010000_11110_10100_1111111111111110; // sw: mem[$sp + (-2)] = mem[$t0]
hd[4] <= 32'b001110_11110_01010_1111111111111110; // lw: $s0 = mem[$sp] + (-2)
hd[5] <= 32'b001100_01010_10101_0000000001010000; // addi: $t1 = $s0 + (80)
hd[6] <= 32'b010000_11110_10101_0000000000000000; // sw: mem[$sp + (0)] = mem[$t1]
hd[7] <= 32'b001110_11110_01011_0000000000000000; // lw: $s1 = mem[$sp] + (0)
hd[8] <= 32'b011011_01011_00110_0000000000000000; // mov: $a0 = $s1
hd[9] <= 32'b111111_00000_00110_0000000000000000; // out $a0
hd[10] <= 32'b001101_11110_11110_0000000000000100; // subi: $sp = $sp - (4)
hd[11] <= 32'b011101_00000000000000000000000000; // hlt