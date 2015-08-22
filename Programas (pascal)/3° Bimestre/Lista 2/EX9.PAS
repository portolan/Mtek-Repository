uses crt;               {by Matheus Portolan}

const
CTamanho = 6;

type
TMatriz = array [1..CTamanho,1..CTamanho] of integer;

procedure procPopulaMatriz(iCondicao1,iCondicao2,Valor: integer;var Matriz: TMatriz);

var
   iCont1,iCont2: integer;

begin	
   for iCont1 := 1 to CTamanho do
   begin
      for iCont2 := 1 to CTamanho do
      begin
         if (((iCont1 >= iCondicao1) and (iCont1 <= iCondicao2)) and
            ((iCont2 >= iCondicao1) and (iCont2 <= iCondicao2))) or
            ((iCondicao1 = 0) or (iCondicao2 = 0)) then
            Matriz[iCont1,iCont2] := Valor;
      end;
   end;
end;


var
   MValores : TMatriz;
   iCont1,iCont2: Integer;

begin
   clrscr;

   procPopulaMatriz(0,0,1,MValores);
   procPopulaMatriz(2,5,2,MValores);
   procPopulaMatriz(3,4,3,MValores);
	
   writeln('Matriz:');
	
   for iCont1 := 1 to CTamanho do
   begin
      for iCont2 := 1 to CTamanho do
      begin
         write(' ',MValores[iCont1,iCont2]);
			
         if iCont2 = CTamanho then
            writeln;
      end;
   end;

   readkey;
end.




