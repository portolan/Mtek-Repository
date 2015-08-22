uses crt;
var
x,y,z,resultado:integer;
begin
   clrscr;
   write('Escreva a nota do primeiro bimestre: ');
   read(x);
   write('Escreva a nota do segundo bimestre: ');
   read(y);
   write('Escreva a nota do terceiro bimestre: ');
   read(z);
   resultado:=240-x-y-z;
   write('Voce precisa tirar ',resultado,' para passar de ano.');
   readkey;
end.