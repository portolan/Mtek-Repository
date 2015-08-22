uses crt;               {by Matheus Portolan}

type
   TMatriz = array [1..5,1..5] of integer;
   TSoma = array [1..5] of integer;

var
   mMatriz : TMatriz;
   vSomaLinha,vSomaColuna : TSoma;
   iCont,iCont2 : integer;

begin
   clrscr;

   for iCont := 1 to 5 do
   begin
      iCont2 := 0;

      for iCont2 := 1 to 5 do
         readln(mMatriz[iCont,iCont2]);
   end;

   iCont  := 0;
   iCont2 := 0;

   for iCont := 1 to 5 do
   begin
      iCont2 := 0;

      for iCont2 := 1 to 5 do
         vSomalinha[iCont] := vSomalinha[iCont]+mMatriz[iCont,iCont2];
   end;

   iCont  := 0;
   iCont2 := 0;

   for iCont2 := 1 to 5 do
   begin
      iCont := 0;

      for iCont := 1 to 5 do
         vSomaColuna[iCont2] := vSomaColuna[iCont2]+mMatriz[iCont,iCont2];
   end;

   iCont  := 0;
   iCont2 := 0;

   writeln('---------------------------------');
   writeln;
   write('Soma das Linhas: ');

   for iCont := 1 to 5 do
      write(VSomalinha[iCont],'; ');

   writeln;
   write('Soma das Colunas: ');

   for iCont2 := 1 to 5 do
      write(VSomaColuna[iCont2],'; ');

   writeln;

   readkey;
end.




