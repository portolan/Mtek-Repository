unit UM_caixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls;

type
  TM_caixa = class(TxManuPadrao)
    lb_dtmov: TLabel;
    lb_tipo: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    dt_mov: TDateTimePicker;
    edit_histmov: TEdit;
    cb_tipomov: TComboBox;
    edit_valormov: TEdit;
    lb_empmov: TLabel;
    blc_codemp: TDBLookupComboBox;
    Label3: TLabel;
    dbe_codmov: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  M_caixa: TM_caixa;

implementation

{$R *.dfm}

end.
