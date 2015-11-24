unit HP_VALORDEPRECIACAO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TH_FormaCalcDep = class(TForm)
    Memo1: TMemo;
    Panel1: TPanel;
    sbSair: TSpeedButton;
    procedure sbSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  H_FormaCalcDep: TH_FormaCalcDep;

implementation

{$R *.dfm}

procedure TH_FormaCalcDep.sbSairClick(Sender: TObject);
begin
   CLOSE;
end;

end.
