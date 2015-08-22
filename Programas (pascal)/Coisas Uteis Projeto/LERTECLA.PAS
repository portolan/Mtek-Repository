uses crt;
var
  ch : char;
begin
    ch:= ReadKey;
    case ch of
     #0 : begin
            ch:=ReadKey; {Read ScanCode}
            case ch of
             #75 : WriteLn('Left');
             #77 : WriteLn('Right');
            end;
          end;
    #49 : WriteLn('ESC');
    end;
  readkey;
end.