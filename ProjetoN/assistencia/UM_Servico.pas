unit UM_Servico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TM_Servico = class(TxManuPadrao)
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
    Label11: TLabel;
    DBMemo1: TDBMemo;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure DBEdit2Click(Sender: TObject);
    procedure DBEdit3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  M_Servico: TM_Servico;

implementation

{$R *.dfm}

uses UDM_Servico, UDM_contabil, UP_empresa, UP_departamento;


procedure TM_Servico.DBEdit2Click(Sender: TObject);
begin
  inherited;
  P_empresa := TP_empresa.Create(self);
  try
    P_empresa.procInicializar(DM_contabil.empresa,false,true,P_empresa,TP_empresa);
    P_empresa.ShowModal;
  finally
    DM_Servico.IB_ChamadoCHA_EMPRESA.Value := DM_contabil.empresaEMP_COD.AsInteger;
  end;
end;

procedure TM_Servico.DBEdit3Click(Sender: TObject);
begin
  inherited;
  P_departamento := TP_departamento.Create(Self);
  try
    P_departamento.procInicializar(DM_contabil.departamento,false,true,P_departamento,TP_departamento);
    P_departamento.ShowModal;
  finally
    DM_Servico.IB_ChamadoCHA_DEPARTAMENTO.Value := DM_contabil.departamentoDEP_COD.AsInteger;
  end;
end;

procedure TM_Servico.FormCreate(Sender: TObject);
begin
  inherited;
  DBEdit6.Text := DateToStr(date);
end;

end.
