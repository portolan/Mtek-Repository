uses crt;               {by Matheus Portolan}

type
    TValores = array [1..10] of real;

function funcSomaValores(valor: TValores): real;

var
   iCont: integer;
   fSoma: real;

begin
     fSoma := 0;

     for iCont := 1 to 10 do
         fSoma := fSoma + valor[iCont];

     funcSomaValores := fSoma;
end;

var
   Valor : TValores;
   iCont : integer;

begin
     clrscr;

     writeln('Digite os valores:');

     for iCont := 1 to 10 do
         readln(Valor[iCont]);

     writeln('------------------');
     write('Resultado: ');
     writeln(funcSomaValores(Valor):5:2);

     readkey;
end.




