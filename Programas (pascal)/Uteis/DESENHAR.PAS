uses crt;

const
   A1 = #218;
   A2 = #179;
   A3 = #192;
   B1 = #196;
   B3 = #196;
   C1 = #191;
   C2 = #179;
   C3 = #217;

procedure ProcDesenhar(Largura,Altura,Cor: integer);
var
   iCont,x,y,x2,y2 : Integer;

begin
   textcolor(Cor);

   x := wherex;
   y := wherey;

   x2 := x + Largura - 1;
   y2 := y + Altura - 1;

   write(A1);

   for iCont := 1 to Largura-2 do
      write(B1);

   writeln(C1);

   for iCont := 1 to Altura-2 do
   begin
      gotoxy(x,(y + iCont));
      Writeln(A2);
      gotoxy(x2,(y + iCont));
      Writeln(C2);
   end;

   gotoxy(x,(y + (Altura - 1)));
   Write(A3);

   for iCont := 1 to Largura - 2 do
      write(B3);

   writeln(C3);
end;


begin
   clrscr;

   gotoxy(2,2);
   ProcDesenhar(78,23,3);
   textcolor(9);
   gotoxy(24,10);
   writeln('Nao desanimaaaaaaaaaaaaaaaaaaaaaaa !!!');
   gotoxy(30,12);
   writeln('Te amoo.. ',#1);

   readkey;
end.