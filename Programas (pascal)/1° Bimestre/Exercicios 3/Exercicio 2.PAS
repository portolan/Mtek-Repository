uses crt;   {2.Algoritmo para definir em qual conjunto o valor digitado esta}
                                       {by Matheus Portolan}
var x,a1,a2,a3,a4:integer;

begin
    clrscr;
    repeat
       read(x);
       if (x>=0) and (x<=25) then
         a1:= a1+1;
       if (x>25) and (x<51) then
         a2:= a2+1;
       if (x>50) and (x<76) then
         a3:= a3+1;
       if (x>75) and (x<101) then
         a4:= a4+1;
    until (x<0);
    writeln(' ');
    writeln('Numero de valores digitados entre 0 e 25: ',a1);
    writeln('Numero de valores digitados entre 26 e 50: ',a2);
    writeln('Numero de valores digitados entre 51 e 75: ',a3);
    writeln('Numero de valores digitados entre 76 e 100: ',a4);
    readkey;
end.