unit UP_abrircx;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.DBCtrls,
  Vcl.Buttons;

type
  TUP_abrircaixa = class(TForm)
    lb_dtutimofechacx: TLabel;
    dt_dataultfechamento: TDateTimePicker;
    lb_saldoant: TLabel;
    Edit_saldoant: TEdit;
    dt_abertura: TDateTimePicker;
    lb_datainicial: TLabel;
    lb_empmov: TLabel;
    blc_codemp2: TDBLookupComboBox;
    sbabrircaixa: TSpeedButton;
    sbCancelar: TSpeedButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UP_abrircaixa: TUP_abrircaixa;

implementation

{$R *.dfm}


procedure TUP_abrircaixa.FormCreate(Sender: TObject);
begin
    Left := (GetSystemMetrics(SM_CXSCREEN) - Width) div 2;
    Top := (GetSystemMetrics(SM_CYSCREEN) - Height) div 2;
end;

end.
