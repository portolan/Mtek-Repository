

    Program tabela_ASCII;
    Uses CRT;
    Var codigo: Integer;

    Begin

        clrscr;

        For codigo := 32 to 255 do
        write(chr(codigo):3, ' ', codigo:3, ' ');

        Readln;

    End.




