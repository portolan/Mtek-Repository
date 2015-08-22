uses crt;               {by Matheus Portolan}

const
CTamanho1 = 12;
CTamanho2 = 13;

type
TMatriz = array [1..CTamanho1,1..CTamanho2] of real;

procedure procDividePeloMaior(var Matriz: TMatriz);

var
   NMaior : real;
   iCont1,iCont2: Integer;
begin
   NMaior := 0;

   for iCont1 := 1 to CTamanho1 do 
   begin
      for iCont2 := 1 to CTamanho2 do 
      begin
         if Matriz[iCont1,iCont2] > NMaior then
            NMaior := Matriz[iCont1,iCont2];
      end;
      
      for iCont2 := 1 to CTamanho2 do 
      begin
         Matriz[iCont1,iCont2] := Matriz[iCont1,iCont2] / NMaior;
      end;
   end;      
end;

var
   MValores: TMatriz;
   iCont1,iCont2: integer;

begin
   clrscr;

   for iCont1 := 1 to CTamanho1 do 
   begin
      for iCont2 := 1 to CTamanho2 do 
         read(MValores[iCont1,iCont2]);
   end;
   
   procDividePeloMaior(MValores);
   
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




