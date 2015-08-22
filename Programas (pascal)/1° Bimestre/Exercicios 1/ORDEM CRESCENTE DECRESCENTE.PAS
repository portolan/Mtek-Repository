uses crt;
var
x,y,z,ordem:integer;
begin
clrscr;
writeln('Escreva 3 numeros diferentes:');
read(x);
read(y);
read(z);
if (z=x) or (z=y) or (y=x) then
writeln('Favor escrever 3 numeros diferentes..') else
begin
    writeln('Escreva a ordem desejada:');
    writeln('OBS: 1 para Crescente, 2 para Decrescente e 3 para o maior numero no meio.');
    read(ordem);
    if (ordem=1) then
    begin
         if (x>y) and (x>z) and (y>z) then
         write(z,';',y,';',x);
         if (y>x) and (y>z) and (x>z) then
         write(z,';',x,';',y);
         if (z>x) and (z>y) and (x>y) then
         write(y,';',x,';',z);
         if (z>x) and (z>y) and (y>x) then
         write(x,';',y,';',z);
         if (y>x) and (y>z) and (z>x) then
         write(x,';',z,';',y);
         if (x>z) and (x>y) and (z>y) then
         write(y,';',z,';',x);
    end;
    if (ordem=2) then
    begin
        if (x<y) and (x<z) and (z<y) then
        write(y,';',z,';',x);
        if (x<y) and (x<z) and (y<z) then
        write(z,';',y,';',x);
        if (y<x) and (y<z) and (x<z) then
        write(z,';',x,';',y);
        if (y<x) and (y<z) and (z<x) then
        write(x,';',z,';',y);
        if (z<x) and (z<y) and (y<x) then
        write(x,';',y,';',z);
        if (z<x) and (z<y) and (x<y) then
        write(y,';',x,';',z);
    end;
    if (ordem=3) then
    begin
        if (x<y) and (x<z) and (z<y) then
        write(z,';',y,';',x);
        if (x<y) and (x<z) and (y<z) then
        write(y,';',z,';',x);
        if (y<x) and (y<z) and (x<z) then
        write(x,';',z,';',y);
        if (y<x) and (y<z) and (z<x) then
        write(z,';',x,';',y);
        if (z<x) and (z<y) and (y<x) then
        write(y,';',x,';',z);
        if (z<x) and (z<y) and (x<y) then
        write(x,';',y,';',z);
    end;
    end;
    readkey;
end.



