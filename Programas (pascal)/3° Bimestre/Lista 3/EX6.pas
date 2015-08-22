uses crt;               {by Matheus Portolan}
                           {icon2 = coluna}
const                       {icont1 = linha} 
CTamanho1 = 12;
CTamanho2 = 12;

type
TMatriz = array [1..CTamanho1,1..CTamanho2] of integer;

function funcSomaArea(var Matriz: TMatriz): integer;

var
   NSoma : integer;
   iCont1,iCont2,iContArea: Integer;
begin
   NSoma     := 0;
   iContArea := 0;

   for iCont1 := 1 to CTamanho1 do 
   begin
      for iCont2 := 1 to CTamanho2 - iContArea do 
      begin
            NSoma := NSoma + Matriz[iCont1,iCont2];
      end;
      
      iContArea := iContArea + 1;    
   end;      
end;

function funcMaiorValor(var Matriz: TMatriz): integer;

var
   NMaior : real;
   iCont1,iCont2,iArea1,iArea2,iParametro: Integer;
begin
   NMaior := 0;
   iArea1 := 2;
   iArea2 := 11;
   iParametro := 1;

   for iCont1 := 1 to CTamanho1 do 
   begin
      for iCont2 := 1 to CTamanho2 do 
      begin
         if ((Matriz[iCont1,iCont2] > NMaior) and (((iCont2 < iArea1) and (iCont2 > iArea2)) or ((iCont1 = 6) or (iCont1 = 7)))) then
            NMaior := Matriz[iCont1,iCont2];
      end;
      iArea1 := iArea1 + iParametro;
      iArea2 := iArea1 + (-1*iParametro);
      
      if iCont1 = 7 then
         iParametro := -1;
   end;      
   
   funcMaiorValor := NMaior;
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
   writeln('Soma: ',funcSomaArea(MValores));
   writeln('Maior Valor: ',funcMaiorValor(MValores));

   readkey;
end.









