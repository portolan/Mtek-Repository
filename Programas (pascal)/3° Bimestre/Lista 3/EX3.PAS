uses crt;               {by Matheus Portolan}

const
CTamanho1 = 50;
CTamanho2 = 50;

type
TMatriz = array [1..CTamanho1,1..CTamanho2] of real;
TVetor = array [1..CTamanho1] of real;

procedure procmMultiplicaPelaDiagonal(var Matriz: TMatriz,Vetor: TVetor);

var
   NDiagonal : real;
   iCont1,iCont2,iCont3: Integer;
begin
   NDiagonal := 0;
   iCont3    := 0;

   for iCont1 := 1 to CTamanho1 do 
   begin
      for iCont2 := 1 to CTamanho2 do 
      begin
         if iCont1 = iCont2 then
            NDiagonal := Matriz[iCont1,iCont2];
      end;
      
      iCont3        := iCont3 + 1;    
      Vetor[iCont3] := NDiagonal;
      
      for iCont2 := 1 to CTamanho2 do 
      begin
         Matriz[iCont1,iCont2] := Matriz[iCont1,iCont2] * Vetor[iCont3];
      end;
   end;      
end;

var
   MValores: TMatriz;
   VDiagonal: TVetor;
   iCont1,iCont2: integer;

begin
   clrscr;

   for iCont1 := 1 to CTamanho1 do 
   begin
      for iCont2 := 1 to CTamanho2 do 
         read(MValores[iCont1,iCont2]);
   end;
   
   procMultiplicaPelaDiagonal(MValores,VDiagonal);
   
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




