unit UM_lancamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TM_lancamento = class(TxManuPadrao)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  M_lancamento: TM_lancamento;

implementation

{$R *.dfm}

uses UDM_contabil, UP_planodecontas;

procedure TM_lancamento.SpeedButton1Click(Sender: TObject);
begin
  inherited;
    P_planodecontas := TP_planodecontas.Create(Self);
    try
      P_planodecontas.procInicializar(DM_contabil.planodecontas, false, true, P_planodecontas, TP_planodecontas);
      P_planodecontas.ShowModal;

      DM_contabil.lancamentoLANC_DEBITO.Value := DM_contabil.planodecontasPLN_CONTA.AsInteger;
    finally
      P_planodecontas.Free;
    end;
end;

end.
