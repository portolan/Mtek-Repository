uses crt;

var
idade:integer;

begin
clrscr;
writeln('Digite sua Idade:');
read(idade);
if (idade<5) then
writeln('Idade minima e de 5 anos.');
if (idade>=5) and (idade<=7) then
writeln('Sua categoria e Infantil A.');
if (idade>=8) and (idade<=10) then
writeln('Sua categoria e Infantil B.');
if (idade>=11) and (idade<=13) then
writeln('Sua categoria e Juvenil A.');
if (idade>=14) and (idade<=17) then
writeln('Sua categoria e Juvenil B.');
if (idade>=18) then
writeln('Sua categoria e Adulto.');
readkey;
end.