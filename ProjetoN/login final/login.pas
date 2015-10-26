unit login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.ComCtrls, IdBaseComponent, IdDateTimeStamp;

type
  Ttela_login = class(TForm)
    Image1: TImage;
    campo_usuario: TEdit;
    campo_senha: TEdit;
    entrar: TButton;
    procedure entrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  tela_login: Ttela_login;

implementation

{$R *.dfm}

uses ERP;

procedure Ttela_login.entrarClick(Sender: TObject);
begin
   telainicial := Ttelainicial.Create(Self);
   try
    tela_login.Visible := False;
    telainicial.ShowModal;
   finally
    FreeAndNil(TelaInicial);
   end;
end;

end.
