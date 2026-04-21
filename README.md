Assembly Minimum of Three Numbers
This project contains an x86 Assembly program written for Linux (NASM) that identifies the smallest digit among three inputs provided by the user.

Description
The program performs a simple comparison logic to find the minimum value:

It reads three consecutive digits from the standard input.

It compares the first two digits to find a temporary minimum.

It compares that temporary minimum with the third digit.

It outputs the final minimum digit to the console.

Logic Flow
The algorithm follows this conditional structure:

If a < b, then min = a; else min = b.

If c < min, then min = c; else min remains unchanged.
