uses crt;
var
anos,meses,dias,x,y,z:integer;
begin
   clrscr;
   writeln('Digite quantos Anos de idade voce tem: ');
   read(anos);
   writeln('Digite os Meses: ');
   read(meses);
   writeln('Digite os Dias: ');
   read(dias);
   x:=anos*365;
   y:=meses*30;
   z:=x+y+dias;
   writeln('Voce tem ',z,' dias de idade');
   if(z > 5000) then
     write('Ta veio ja');
   if(z < 5000) then
     write('Ta jovem ainda');
   readkey;
end.