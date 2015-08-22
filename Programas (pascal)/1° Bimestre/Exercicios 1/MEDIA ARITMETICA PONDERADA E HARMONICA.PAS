uses crt;

var
x,y,z,n,resultado: real;

begin
    clrscr;
    writeln('Digite 3 valores:');
    read(x);
    read(y);
    read(z);
    writeln('Escolha o tipo de media que sera calculada:');
    writeln('OBS: 1 = Aritmetica, 2 = Ponderada, 3 = Harmonica');
    read(n);
    if (n=1) then
      begin
      resultado:=(x+y+z)/3;
      writeln('Media: ',resultado:5:2);
      end;
    if (n=2) then
      begin
         x:=(3*x+3*y+4*z)/10;
         writeln('Media: ',x:5:2);
      end;
    if (n=3) then
      begin
         x:=3/(1/x+1/y+1/z);
         writeln('Media: ',x:5:2);
      end;
    if (n>3) then
      writeln('Digite apenas 1,2 ou 3.');
    readkey;
end.