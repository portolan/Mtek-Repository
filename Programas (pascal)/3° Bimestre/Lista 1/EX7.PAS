uses crt;               {by Matheus Portolan}

type
TVetor = array [1..50] of real;

function funcOrdemCrescente(var a: TVetor;iTamanhoVetor: Integer): integer;

var
   aux   : real;
   x,y : integer;

begin
   x := 0;
   y := 0;

   for x:=x+1 to iTamanhoVetor-1 do
   begin
      for y:=x+1 to iTamanhoVetor do
         if a[x]>a[y] then
         begin
            aux := a[x];
            a[x]:= a[y];
            a[y]:= aux;
         end;
   end;
end;

var
   Vetor : TVetor;
   iCont : integer;

begin
   clrscr;

   Writeln('Digite os Valores:');

   for iCont := 1 to 50 do
      read(Vetor[iCont]);

   iCont := 0;

   funcOrdemCrescente(Vetor,50);

   writeln('--------------------------');
   writeln('Ordem Crescente:');

   for iCont := 1 to 50 do
      write(Vetor[iCont]:5:0,', ');

   readkey;
end.

