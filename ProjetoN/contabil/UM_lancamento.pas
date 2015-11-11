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
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    DBLookupComboBox4: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  M_lancamento: TM_lancamento;

implementation

{$R *.dfm}

uses UDM_contabil, UP_planodecontas, UP_centro, UP_historico;

procedure TM_lancamento.FormShow(Sender: TObject);
begin
  inherited;
  DM_contabil.empresa.Close;
  DM_contabil.empresa.SQL.Text := 'select * from empresa' ;
  DM_contabil.empresa.Open
end;

procedure TM_lancamento.SpeedButton1Click(Sender: TObject);
begin
  inherited;
    P_planodecontas := TP_planodecontas.Create(Self);
    try
      P_planodecontas.procInicializar(DM_contabil.planodecontas, false, true, P_planodecontas, TP_planodecontas);
      P_planodecontas.ShowModal;

      DM_contabil.lancamentoLANC_DEBITO.Value := DM_contabil.planodecontasPLN_CONTA.AsString;
    finally
      P_planodecontas.Free;
    end;
end;

procedure TM_lancamento.SpeedButton2Click(Sender: TObject);
begin
  inherited;
P_planodecontas := TP_planodecontas.Create(Self);
    try
      P_planodecontas.procInicializar(DM_contabil.planodecontas, false, true, P_planodecontas, TP_planodecontas);
      P_planodecontas.ShowModal;

      DM_contabil.lancamentoLANC_CREDITO.Value := DM_contabil.planodecontasPLN_CONTA.AsString;
    finally
      P_planodecontas.Free;
    end;
end;

procedure TM_lancamento.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  P_historico := TP_historico.Create(Self);
    try
      P_historico.procInicializar(DM_contabil.historico, false, true, P_historico, TP_historico);
      P_historico.ShowModal;

      DM_contabil.lancamentoLANC_HISTORICO.Value := DM_contabil.historicoHIST_NOME.AsString;
    finally
      P_historico.Free;
    end;

end;

procedure TM_lancamento.SpeedButton4Click(Sender: TObject);
begin
  inherited;
P_centro := TP_centro.Create(Self);
    try
      P_centro.procInicializar(DM_contabil.centro, false, true, P_centro, TP_centro);
      P_centro.ShowModal;

      DM_contabil.lancamentoLANC_CENTRODECUSTO_DB.Value := DM_contabil.centroCEC_NUM_CC.AsString;
    finally
      P_centro.Free;
    end;
end;

procedure TM_lancamento.SpeedButton5Click(Sender: TObject);
begin
  inherited;
P_centro := TP_centro.Create(Self);
    try
      P_centro.procInicializar(DM_contabil.centro, false, true, P_centro, TP_centro);
      P_centro.ShowModal;

      DM_contabil.lancamentoLANC_CENTRODECUSTO_CR.Value := DM_contabil.centroCEC_NUM_CC.AsString;
    finally
      P_centro.Free;
    end;
end;

end.
