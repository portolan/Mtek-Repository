uses crt;               {by Matheus Portolan}

const
 CTamanho = 5;

type
 TMatriz = array [1..5,1..5] of integer;

{Funcoes e Procedimentos}

var
   MValores: TMatriz;
   iSomaLinha4,iSomaColuna2,iSomaMainDiag,iSomaSecondDiag,iSoma: Integer;
   iCont,iCont2: integer;


begin
   clrscr;

   writeln(' Digite os Valores da Matriz: ');
   
   for iCont := 1 to CTamanho do
   begin
      iCont2 := 0;

      for iCont2 := 1 to CTamanho do
         read(MValores[iCont,iCont2]);
   end;

   for iCont2 := 1 to CTamanho do
      iSomaLinha4 := iSomaLinha4 + MValores[4,iCont2];
     
   for iCont := 1 to CTamanho do
      iSomaColuna2 := iSomaColuna2 + MValores[iCont,2];
   
   for iCont := 1 to CTamanho do
   begin
      iCont2 := 0;

      for iCont2 := 1 to CTamanho do
      begin
         if iCont = iCont2 then 
            iSomaMainDiag := iSomaMainDiag + MValores[iCont,iCont2];
      end;
   end;

   iCont2 := CTamanho;

   for iCont := 1 to CTamanho do
   begin
      iSomaSecondDiag := iSomaSecondDiag + MValores[iCont,iCont2];

      iCont2 := iCont2-1;
   end;

   for iCont := 1 to CTamanho do
   begin
      iCont2 := 0;

      for iCont2 := 1 to CTamanho do
         iSoma := iSoma + MValores[iCont,iCont2];
   end;

   writeln('------------------------------------------');
   writeln(' Soma da Linha 4             : ',iSomaLinha4);
   writeln(' Soma da Coluna 2            : ',iSomaColuna2);
   writeln(' Soma da Diagonal Principal  : ',iSomaMainDiag);
   writeln(' Soma da Diagonal Secundaria : ',iSomaSecondDiag);
   writeln(' Soma da Matriz              : ',iSoma);
    

   readkey;
end.




