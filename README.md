# Assembly Array Out of Bounds Error

This repository demonstrates a common error in assembly language programming: array out-of-bounds access.  The `bug.asm` file contains code that is vulnerable to this error, while `bugSolution.asm` provides a corrected version with boundary checks.

**Problem:**
The original code uses indexed addressing modes without any checks to ensure that the indices (`ecx` and `esi`) remain within the valid bounds of the arrays being accessed.  This can lead to memory corruption or program crashes.

**Solution:**
The solution adds checks to verify that the indices are within the permitted range before performing the memory access.  This prevents out-of-bounds accesses and increases the robustness of the code.

This example highlights the importance of careful memory management and boundary checks when working with arrays in assembly language.