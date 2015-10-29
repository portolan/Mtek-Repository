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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
   telainicial.ShowModal;
end;

procedure Ttela_login.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    application.Terminate;
end;

end.
