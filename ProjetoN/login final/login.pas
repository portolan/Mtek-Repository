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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  tela_login: Ttela_login;

implementation

{$R *.dfm}

end.
