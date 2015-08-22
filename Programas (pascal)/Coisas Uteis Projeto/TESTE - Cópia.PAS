PROGRAM Janela;
USES
  CRT;
VAR
  nom :string;
    opcao :char;
BEGIN
textbackground(white);
clrscr;
window(2,2,79,24);
textbackground(3);
clrscr;
  if KeyPressed then {se uma tecla for precionada}
    begin
    GotoXY(1,WhereY); DelLine; Write('=> '); {delline = deletar linha}
    opcao:=ReadKey;
    opcao:=UpCase(opcao); {upcase = tornar maiusculo}
    WriteLN(opcao);
    case opcao of
      '13' :begin
           WriteLN('vc digitou 1');          
           end;
      '2' :begin
           WriteLN('vc digitou 2');
           end;
      '3' :begin
           WriteLN('vc digitou 3');
           end;
      'S' :begin
           WriteLN('TCHAAAU');
           ReadKey;
           end;
      end; {fim case}
      readkey;
{writeln;
gotoXY(2,3);
textcolor(white); 
writeln('Digite seu nome:');
window(20,4,77,4);
textbackground(white);
textcolor(black); 
clrscr;
readln(nom); 
window(20,8,77,8);
writeln;
textbackground(white);}
readkey;
END.

