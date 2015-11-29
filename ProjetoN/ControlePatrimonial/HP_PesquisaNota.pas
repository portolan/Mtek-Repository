unit HP_PesquisaNota;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TH_PesquisaNota = class(TForm)
    memo1: TMemo;
    Panel1: TPanel;
    sbSair: TSpeedButton;
    procedure sbSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  H_PesquisaNota: TH_PesquisaNota;

implementation

{$R *.dfm}

procedure TH_PesquisaNota.sbSairClick(Sender: TObject);
begin
   close;
end;

end.
