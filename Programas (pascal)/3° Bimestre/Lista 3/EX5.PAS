uses crt;               {by Matheus Portolan}

const
CTamanho = 10;

type
TMatriz = array [1..CTamanho,1..CTamanho] of integer;

function funcMiniMax(var Matriz: TMatriz): Integer;

var
   iCont1,iCont2,iCont3,iCont4: Integer;
   bMenorLinha,bMaiorMatriz: boolean;
begin
   for iCont1 := 1 to CTamanho1 do 
   begin
      for iCont2 := 1 to CTamanho1 do 
      begin
         bMaiorMatriz := true;
         bMenorLinha  := true;
         
         for iCont3 := 1 to CTamanho1 do 
         begin                  
            for iCont4 := 1 to CTamanho1 do 
            begin
               if ((Matriz[iCont1,iCont2] <= Matriz[iCont3,iCont4]) and (icont1 = icont3) and (bMenorLinha)) then
                  bMenorLinha := true
               else if icont1 = icont3 then
                  bMenorLinha := false;
            
               if ((Matriz[iCont1,iCont2] >= Matriz[iCont3,iCont4]) and (icont1 <> icont3) and (bMaiorMatriz)) then
                  bMaiorMatriz := true
               else if icont1 <> icont3 then
                  bMaiorMatriz := false;   
            end;           
         end;
         
         if ((bMenorLinha) and (bMaiorMatriz)) then
         begin
            funcMiniMax := Matriz[iCont1,iCont2];
            exit;                
         end;      
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
      for iCont2 := 1 to CTamanho do 
         read(MValores[iCont1,iCont2]);
   end;
   
   writeln('------------------------------------');
   writeln('Minimax: ',funcMiniMax(MValores));
      
   readkey;
end.




