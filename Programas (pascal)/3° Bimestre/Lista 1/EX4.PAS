uses crt;               {by Matheus Portolan}

type
   TVetor    = array [1..100] of integer;
   TVetor200 = array [1..200] of integer;

function funcOrdena(Vetor1,Vetor2: TVetor; var VetorF: TVetor200): integer;

var
   iCont,iContV1,iContV2: integer;

begin
   iCont   := 0;
   iContV1 := 0;   
   iContV2 := 101;


   repeat
      iCont := iCont+1;
      
      if not ((iCont mod 2) = 0) then
      begin
         iContV1 := iContV1+1;
         VetorF[iCont] := Vetor1[iContV1];  
      end;			

      if (iCont mod 2) = 0 then
      begin
         iContV2 := iContV2-1;
         VetorF[iCont] := Vetor2[iContV2];  
      end;
   until iCont = 200;
end;

var
   Vetor1,Vetor2 : TVetor;
   iCont         : integer;
   VetorFinal    : TVetor200;	

begin
   clrscr;
   
   writeln('Digite o Vetor 1:');

   for iCont := 1 to 100 do
      read(Vetor1[iCont]);

   iCont := 0;

   writeln('Digite o Vetor 2:');
 
   for iCont := 1 to 100 do
      read(Vetor2[iCont]);

   funcOrdena(Vetor1,Vetor2,VetorFinal);

   Writeln('--------------------------');
   Writeln('Vetor Final:');

   iCont := 0;
 
   for iCont := 1 to 200 do
      write(VetorFinal[iCont],', ');

   readkey;
end.




