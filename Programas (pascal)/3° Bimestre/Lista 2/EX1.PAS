uses crt;               {by Matheus Portolan}

type
   TMatriz = array [1..6,1..6] of integer;

function funcMultiplicaMatriz(var Matriz: TMatriz; A: integer) : integer;

var
   iCont,iCont2: integer;

begin
   for iCont := 1 to 6 do
   begin
      iCont2 := 0;

      for iCont2 := 1 to 6 do
         Matriz[iCont,iCont2] := Matriz[iCont,iCont2] * A;
   end;
end;

var
   MValores : TMatriz;
   iMultiplicador : integer;
   iCont,iCont2 : integer;

begin
   clrscr;

   write(' Digite o Multiplicador: ');

   read(iMultiplicador);

   writeln;
   writeln(' Digite os valores da Matriz: ');

   for iCont := 1 to 6 do
   begin
      iCont2 := 0;

      for iCont2 := 1 to 6 do
         read(MValores[iCont,iCont2]);
   end;

   funcMultiplicaMatriz(MValores,iMultiplicador);

   writeln('------------------------------------------');
   write(' Resultado: ');

   for iCont := 1 to 6 do
   begin
      iCont2 := 0;

      for iCont2 := 1 to 6 do
         write(MValores[iCont,iCont2],'; ');
   end;

   writeln;

   readkey;
end.




