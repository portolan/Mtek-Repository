uses crt;
var
x,y,z,resultado,a:real;
begin
   clrscr;
   write('Digite o valor bruto do carro: ');
   read(x);
   y:=45/100*x;
   z:=28/100*x;
   resultado:=x+y+z;
   write('O preco final do produto e de ',resultado:5:0,' reais');
   readkey;
end.