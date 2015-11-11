unit UP_fecharcx;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.DBCtrls,
  Vcl.Buttons;

type
  TUP_fecharcaixa = class(TForm)
    lb_dataabriu: TLabel;
    dt_abriu: TDateTimePicker;
    Label1: TLabel;
    dt_fechou: TDateTimePicker;
    Label2: TLabel;
    Edit_saldototal: TEdit;
    lb_empmov: TLabel;
    blc_codemp3: TDBLookupComboBox;
    sbGravar: TSpeedButton;
    sbCancelar: TSpeedButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UP_fecharcaixa: TUP_fecharcaixa;

implementation

{$R *.dfm}

procedure TUP_fecharcaixa.FormCreate(Sender: TObject);
begin
   Left := (GetSystemMetrics(SM_CXSCREEN) - Width) div 2;
   Top := (GetSystemMetrics(SM_CYSCREEN) - Height) div 2;
end;

end.
