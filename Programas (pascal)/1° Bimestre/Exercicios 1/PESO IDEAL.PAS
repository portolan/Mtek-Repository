uses crt;
var
x: char;
altura: real;
resultado: real;
    begin
      clrscr;
      writeln('Qual seu sexo? (F para sexo feminino e M para sexo masculino) ');
      read(x);
      if (x='M') or (x='m') or (x='F') or (x='f') then
          begin
             writeln('Qual sua altura? ');
             read(altura);
          end;
      if (x='F') or (x='f') then
        resultado:= (( 62.1* altura ) -44.7);
      if (x='M') or (x='m') then
        resultado:= (( 72.7* altura ) -58);
      if (x<>'M') and (x<>'m') and (x<>'F') and (x<>'f') then
        begin
            write('Favor escrever somente F ou M...');
            readkey;
            clrscr;
        end;
      if (x='M') or (x='m') or (x='F') or (x='f') then
      begin
         write('Seu peso ideal e de ',resultado:5:2,' quilos.');
         readkey;
      end;
    end.
