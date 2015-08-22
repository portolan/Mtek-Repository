uses crt;               {by Matheus Portolan}

type
   TMatriz = array [1..30,1..30] of integer;

function funcValidaValores(var MatrizV, MatrizX: TMatriz; A: integer): integer;

var
   iCont,iCont2,iContRepetidos: integer;

begin
   iContRepetidos := 0;

   for iCont := 1 to 30 do
   begin
      iCont2 := 0;

      for iCont2 := 1 to 30 do
      begin
         if MatrizV[iCont,iCOnt2] = A then
            iContRepetidos := iContRepetidos + 1
         else
            MatrizX[iCont,iCOnt2] := MatrizV[iCont,iCOnt2];
      end;
   end;

   funcValidaValores := iContRepetidos;
end;

var
   iCont,iCont2,iValor: integer;
   MValores,MValoresDiferentes : TMatriz;

begin
   clrscr;

   write(' Digite o Valor de A: ');

   read(iValor);

   writeln;
   writeln(' Digite os valores da Matriz: ');

   for iCont := 1 to 30 do
   begin
      iCont2 := 0;

      for iCont2 := 1 to 30 do
         read(MValores[iCont,iCont2]);
   end;

   writeln('-----------------------------------------------');

   if funcValidaValores(MValores,MValoresDiferentes,iValor) > 0 then
   begin
      writeln;
      writeln(' Numero de Valores iguais ao A: ',funcValidaValores(MValores,MValoresDiferentes,iValor));
   end
   else
      writeln(' Nao existe nenhum valor igual ao A !!! ');

   writeln;
   write(' Valores diferentes de A: ');

   for iCont := 1 to 30 do
   begin
      iCont2 := 0;

      for iCont2 := 1 to 30 do
      begin
         if MValoresDiferentes[iCont,iCont2] = MValores[iCont,iCont2] then
            write(MValoresDiferentes[iCont,iCont2],'; ');
      end;
   end;

   writeln;

   readkey;
end.




