unit UM_contasreceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TM_contasreceber = class(TxManuPadrao)
    procedure sbCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  M_contasreceber: TM_contasreceber;

implementation

{$R *.dfm}

procedure TM_contasreceber.FormCreate(Sender: TObject);
begin
  inherited;
   M_contasreceber.Close;
end;

procedure TM_contasreceber.sbCancelarClick(Sender: TObject);
begin
  inherited;
  M_contasreceber.Close;
end;

end.
