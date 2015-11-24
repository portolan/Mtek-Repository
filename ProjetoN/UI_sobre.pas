unit UI_sobre;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  TI_sobre = class(TForm)
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Image1: TImage;
    Label3: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure chamaTela(xPai: TComponent);
  end;

var
  I_sobre: TI_sobre;

implementation

{$R *.dfm}

{ TI_sobre }

class procedure TI_sobre.chamaTela(xPai: TComponent);
begin
I_sobre := TI_sobre.Create(xPai);
try
   I_sobre.ShowModal;
finally
  Freeandnil(I_sobre);
end;
end;

end.
