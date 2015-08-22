uses crt;

type
  TValores = array [1..100] of real;

function funcMedia(Valor: TValores): real;

var
  iCont : integer;
  fSoma : real;

begin
  fSoma := 0;

  for icont := 1 to 100 do
  begin
    fSoma := fSoma + Valor[icont];
  end;

  funcMedia := fSoma / 100;
end;

var
  iCont  : integer;
  fValor : TValores;

begin
  clrscr;

  for iCont := 1 to 100 do
    readln(fValor[iCont]);

  writeln(funcMedia(fValor):5:2);

  readkey;

end.