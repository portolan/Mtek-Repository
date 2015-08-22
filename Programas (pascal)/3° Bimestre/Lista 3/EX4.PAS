uses crt;               {by Matheus Portolan}

const
CTamanho1 = 60;
CTamanho2 = 10;

type
TMatriz = array [1..61,1..CTamanho2] of real;

procedure procSomarLinhas(var Matriz: TMatriz);

var
   fSoma : real;
   iCont1,iCont2: Integer;
begin
   for iCont2 := 1 to CTamanho2 do 
   begin
      NMaior := 0;
   
      for iCont1 := 1 to CTamanho1 do 
      begin
         fSoma := Matriz[iCont1,iCont2] + fSoma;
      end;

      Matriz[iCont2,iCont1] := fSoma;
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
   
   procSomarLinhas(MValores);
   
   writeln('------------------------------------');
   writeln('Matriz: ');
   
   for iCont1 := 1 to 61 do 
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




