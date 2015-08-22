uses crt;               {by Matheus Portolan}

const
   CTamanho = 3;

type
   TMatriz = array [1..CTamanho,1..CTamanho] of integer;

{Funcoes e Procedimentos}

var
   MValores: TMatriz;
   iCont,iCont2,iSoma: Integer;
   fMedia: Real;

begin
   clrscr;

   for iCont := 1 to CTamanho do
   begin
      for iCont2 := 1 to Ctamanho do
         readln(MValores[iCont,iCont2]);
   end;

   for iCont := 1 to CTamanho do
   begin
      for iCont2 := 1 to Ctamanho do
      begin
         if iCont = iCont2 then
            iSoma := iSoma + MValores[iCont,iCont2];
      end;
   end;

   fMedia := iSoma/CTamanho;

   writeln;
   writeln('----------------------------------------');
   writeln(' A média da diagonal principal é: ',fMedia:5:2);

   readkey;
end.




