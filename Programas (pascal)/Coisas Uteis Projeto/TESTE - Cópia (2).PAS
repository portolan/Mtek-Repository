     uses Dos;
     var regs : registers;
     begin
       regs.ax := $0100;   (* Service $01 *)
       regs.cl := $20;     (* Top scan line *)
       regs.ch := $20;     (* Bottom scan line *)
       Intr ($10, regs);   (* ROM BIOS video driver interrupt *)
     end.

