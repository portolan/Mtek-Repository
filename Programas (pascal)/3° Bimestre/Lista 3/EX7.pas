uses crt;               {by Matheus Portolan}
                           {icon2 = coluna}
const                       {icont1 = linha} 
CTamanho1 = 12;
CTamanho2 = 12;

type
TMatriz = array [1..CTamanho1,1..CTamanho2] of integer;

function funcMediaArea(var Matriz: TMatriz): real;

var
   NSoma : integer;
   iCont1,iCont2,iContArea: Integer;
begin
   NSoma     := 0;
   iContArea := CTamanho2 - 1;

   for iCont1 := 1 to CTamanho1 do 
   begin
      for iCont2 := 1 to CTamanho2 do 
      begin
         if iCont2 > iContArea then
         NSoma := NSoma + Matriz[iCont1,iCont2];
      end;
      
      iContArea := iContArea - 1;    
   end;  

   funcMediaArea := NSoma/(CTamanho1*CTamanho2); 
end;

function funcMenorValor(var Matriz: TMatriz): integer;

var
   NMaior : real;
   iCont1,iCont2,iArea1,iArea2,iParametro: Integer;
begin
   NMenor := 0;
   iArea1 := 2;
   iArea2 := 11;
   iParametro := 1;

   for iCont1 := 1 to CTamanho1 do 
   begin
      for iCont2 := 1 to CTamanho2 do 
      begin
         if ((Matriz[iCont1,iCont2] < NMenor) and (not (((iCont2 < iArea1) and (iCont2 > iArea2)) or ((iCont1 = 6) or (iCont1 = 7))))) then
            NMenor := Matriz[iCont1,iCont2];
      end;
      iArea1 := iArea1 + iParametro;
      iArea2 := iArea1 + (-1*iParametro);
      
      if iCont1 = 7 then
         iParametro := -1;
   end;      
   
   funcMenorValor := NMenor;
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
   
   writeln('------------------------------------');
   writeln('Media: ',funcMediaArea(MValores):5:2);
   writeln('Menor Valor: ',funcMenorValor(MValores));

   readkey;
end.









