uses crt;            {Algoritmo que retorna os numeros negativos como 0}

type
  TValores = array [1..25] of integer;

function funcRetornaPositivos(var Valor : TValores): integer;

var
  cont : integer;

begin
  for cont := 1 to 5 do
    if Valor[cont] < 0 then
      Valor[cont] := 0;
end;

var
  cont : integer;
  Valores : TValores;

begin
  clrscr;

  writeln('Digite os valores do vetor:');

  for cont := 1 to 5 do
    readln(Valores[cont]);

  funcRetornaPositivos(Valores);

  writeln('Resultado:');

  for cont := 1 to 5 do
    writeln(Valores[cont]);

  readkey;
end.




