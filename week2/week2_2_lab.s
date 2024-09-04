.data
a: .word 0x11111111,0x10000001,0x10000002,0x10000003,0x10000004  # Define array 'a' with 5 elements
b: .word 0x22222222,0x20000001,0x20000002,0x20000003,0x20000004  # Define array 'b' with 5 elements
c: .word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000  # Define array 'c' initialized with 5 zeros

.text
la x10, a       # Load the base address of array 'a' into register x10
la x11, b       # Load the base address of array 'b' into register x11
la x12, c       # Load the base address of array 'c' into register x12

# First element operation
lw x13, 0(x10)  # Load the first element of array 'a' (a[1]) from memory into register x13
lw x14, 0(x11)  # Load the first element of array 'b' (b[1]) from memory into register x14
add x15, x13, x14  # x15 = x13 + x14 (add a[1] + b[1])
sw x15, 0(x12)  # Store the result (c[1] = a[1] + b[1]) 

# Second element operation
lw x13, 4(x10)  # Load the second element of array 'a' (a[2]) from memory into register x13
lw x14, 4(x11)  # Load the second element of array 'b' (b[2]) from memory into register x14
add x15, x13, x14  # Perform addition: x15 = x13 + x14 (add a[2] + b[2])
sw x15, 4(x12)  # Store the result (c[2] = a[2] + b[2])

# Third element operation
lw x13, 8(x10)  # Load the third element of array 'a' (a[3]) from memory into register x13
lw x14, 8(x11)  # Load the third element of array 'b' (b[3]) from memory into register x14
add x15, x13, x14  # Perform addition: x15 = x13 + x14 (add a[3] + b[3])
sw x15, 8(x12)  # Store the result (c[3] = a[3] + b[3]) 
# Fourth element operation
lw x13, 12(x10)  # Load the fourth element of array 'a' (a[4]) into x13
lw x14, 12(x11)  # Load the fourth element of array 'b' (b[4]) into x14
add x15, x13, x14  # Perform addition: x15 = x13 + x14 (add a[4] + b[4])
sw x15, 12(x12)  # Store the result (c[4] = a[4] + b[4]) 

# Fifth element operation
lw x13, 16(x10)  # Load the fifth element of array 'a' (a[5]) into x13
lw x14, 16(x11)  # Load the fifth element of array 'b' (b[5]) into x14
add x15, x13, x14  # Perform addition: x15 = x13 + x14 (add a[5] + b[5])
sw x15, 16(x12)  # Store the result (c[5] = a[5] + b[5]) 
