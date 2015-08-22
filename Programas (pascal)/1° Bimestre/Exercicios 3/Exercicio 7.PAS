uses crt;                    {Exercicio 7}
                         {by Matheus Portolan}
var x,y,z: integer;

begin
    clrscr;
    repeat
       read(x);
       if (x<0) then
         y:=(y)+(x);
    until x=0;
    writeln(y);
    readkey;
end.