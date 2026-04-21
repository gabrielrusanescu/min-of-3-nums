a:  
   .word 5
b:  
   .word 3
c:  
   .word 8
main:
   PUSH %BP
   MOV  %SP, %BP
@main_body:
   SUB  %SP, $4, %SP
@if0:
   CMP  a, b
   JGE  @false0
@true0:
   MOV  a, -4(%BP)
   JMP  @exit0
@false0:
   MOV  b, -4(%BP)
@exit0:
@if1:
   CMP  c, -4(%BP)
   JGE  @false1
@true1:
   MOV  c, -4(%BP)
   JMP  @exit1
@false1:
@exit1:
   MOV  -4(%BP), %13
   JMP  @main_exit
@main_exit:
   MOV  %BP, %SP
   POP  %BP
   RET 