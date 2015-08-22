uses crt;               {by Matheus Portolan}

const
CTamanho1 = 20;
CTamanho2 = 20;

type
TMatriz = array [1..CTamanho1,1..CTamanho2] of real;
TVetor = array [1..CTamanho1] of real;

procedure procmMultiplicaPeloMaior(var Matriz: TMatriz,Vetor: TVetor);

var
   NMaior : real;
   iCont1,iCont2,iCont3: Integer;
begin
   NMaior := 0;
   iCont3 := 0;

   for iCont1 := 1 to CTamanho1 do 
   begin
      for iCont2 := 1 to CTamanho2 do 
      begin
         if Matriz[iCont1,iCont2] > NMaior then
            NMaior := Matriz[iCont1,iCont2];
      end;
      
      iCont3        := iCont3 + 1;    
      Vetor[iCont3] := NMaior;
      
      for iCont2 := 1 to CTamanho2 do 
      begin
         Matriz[iCont1,iCont2] := Matriz[iCont1,iCont2] * Vetor[iCont3];
      end;
   end;      
end;

var
   MValores: TMatriz;
   VMaiorValor: TVetor;
   iCont1,iCont2: integer;

begin
   clrscr;

   for iCont1 := 1 to CTamanho1 do 
   begin
      for iCont2 := 1 to CTamanho2 do 
         read(MValores[iCont1,iCont2]);
   end;
   
   procMultiplicaPeloMaior(MValores,VMaiorValor);
   
   writeln('------------------------------------');
   writeln('Matriz: ');
   
   for iCont1 := 1 to CTamanho1 do 
   begin
      for iCont2 := 1 to CTamanho2 do
      begin
         write(' ',MValores[iCont1,iCont2]:5:2);
         
         if iCont2 = CTamanho2 then
            writeln;
      end;   
   end;   

   readkey;
end.




