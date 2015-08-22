uses crt;                      {Exercicio 9}
                             {by Matheus Portolan}
var x: integer;

begin
    clrscr;
    x:=1000;
    for x:= x+1 to 1999 do
      begin
      if (x mod 11) = 5 then
        write(x,'/');
      end;
    readkey;
end.