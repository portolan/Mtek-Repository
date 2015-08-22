uses crt;

var
x,y,z:real;

begin
   clrscr;
   writeln('Escreva a base e a altura do retangulo:');
   write('Altura: ');
   read(x);
   write('Base: ');
   read(y);
   z:=x*y;
   writeln(' ');
   writeln('Area: ',z:5:2);
   readkey;
end.
