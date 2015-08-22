uses crt;                     {4. Algoritmo para calcular fatorial}
                                 {by Matheus Portolan}
var
N:integer;
i:integer;
fat:real;

begin
    clrscr;
    writeln('Digite um valor:');
    read(N);
    fat:= 1;
    for i:= 1 to N do
       begin
         fat:= fat * i;
       end;
    writeln(' ');
    writeln('Fatorial de ',N,' e ',fat:5:0,'.');
    readkey;
end.


