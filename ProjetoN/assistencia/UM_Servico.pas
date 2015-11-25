unit UM_Servico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  ufrm_Relacionamento, DB;

type
  TM_Servico = class(TxManuPadrao)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    DBMemo1: TDBMemo;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    DBEdit6: TEdit;
    DBEdit8: TEdit;
    DBEdit7: TEdit;
    DBEdit9: TEdit;
    DBEdit11: TEdit;
    Label6: TLabel;
    DBEdit10: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure DBEdit2Click(Sender: TObject);
    procedure DBEdit3Click(Sender: TObject);
    procedure DBEdit4Click(Sender: TObject);
    procedure DBEdit5Click(Sender: TObject);
    procedure DBEdit10Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  M_Servico: TM_Servico;

implementation

{$R *.dfm}

uses UDM_Servico, UDM_contabil, UP_empresa, UP_departamento, UP_Tipo_Erro,
  UM_empresa, UM_Tipo_Erro, UP_Pessoa, UDM_PedCompra, UM_departamento,
  UM_Pessoa;

procedure TM_Servico.DBEdit10Click(Sender: TObject);
begin
  inherited;
  P_Tipo_Erro := TP_Tipo_Erro.Create(self);
  try
    P_Tipo_Erro.procInicializar(DM_Servico.IB_Tipo_Erro,false,true,P_Tipo_Erro,TP_Tipo_Erro);
    P_Tipo_Erro.ShowModal;
  finally
    DM_Servico.IB_ChamadoCHA_TIPO_ERRO.Value := DM_Servico.IB_Tipo_ErroTER_CODIGO.AsInteger;
  end;
  DBEdit11.Text := DM_Servico.IB_Tipo_ErroTER_DESCRICAO.AsString;
end;

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
  DBEdit6.Text := DM_contabil.empresaEMP_RAZAO.AsString;
  DBEdit3.Text := EmptyStr;
  DBEdit8.Text := EmptyStr;
end;

procedure TM_Servico.DBEdit3Click(Sender: TObject);
begin
  inherited;
  P_departamento := TP_departamento.Create(self);
  try
    P_departamento.procInicializar(DM_contabil.departamento,false,true,P_departamento,TP_departamento);
    P_departamento.ShowModal;
  finally
    DM_Servico.IB_ChamadoCHA_DEPARTAMENTO.Value := DM_contabil.departamentoDEP_COD.AsInteger;
  end;
  if DM_Servico.IB_ChamadoCHA_EMPRESA.AsInteger <> DM_contabil.departamentoDEP_EMPRESAR.AsInteger then
    begin
      ShowMessage('Esse departamento não pertence a essa empresa!!!');
      DBEdit3.Text := EmptyStr;
      DBEdit8.Text := EmptyStr;
    end;
    DBEdit8.Text := DM_contabil.departamentoDEP_NOME.AsString;
end;

procedure TM_Servico.DBEdit4Click(Sender: TObject);
begin
  inherited;
  PPessoa := TPPessoa.Create(self);
  try
    PPessoa.procInicializar(dmPedCompra.Pessoa,false,true,PPessoa,TPPessoa);
    PPessoa.ShowModal;
  finally
    DM_Servico.IB_ChamadoCHA_FUNCIONARIO.Value := dmPedCompra.PessoaPESS_CODIGO.AsInteger;
  end;
    DBEdit7.Text := dmPedCompra.PessoaPESS_NOME.AsString;
end;

procedure TM_Servico.DBEdit5Click(Sender: TObject);
begin
  inherited;
  PPessoa := TPPessoa.Create(self);
  try
    PPessoa.procInicializar(dmPedCompra.Pessoa,false,true,PPessoa,TPPessoa);
    PPessoa.ShowModal;
  finally
    DM_Servico.IB_ChamadoCHA_PROPRIETARIO.Value := dmPedCompra.PessoaPESS_CODIGO.AsInteger;
  end;
    DBEdit9.Text := dmPedCompra.PessoaPESS_NOME.AsString;
end;

procedure TM_Servico.FormCreate(Sender: TObject);
begin
  inherited;

  if DM_Servico.IB_Chamado.State in [dsEdit] then
  begin
    DBEdit6.Text := DM_Servico.IB_ChamadoEMP_RAZAO.Value;
    DBEdit8.Text := DM_Servico.IB_ChamadoDEP_NOME.Value;
    DBEdit7.Text := DM_Servico.IB_ChamadoPESS_NOME.Value;
    DBEdit9.Text := DM_Servico.IB_ChamadoPESS_NOME1.Value;
    DBEdit11.Text := DM_Servico.IB_ChamadoTER_DESCRICAO.Value;
  end;
  DM_Servico.IB_ChamadoCHA_DATA_ENTRADA.Text :=  DateToStr(date);
end;

procedure TM_Servico.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  P_empresa := TP_empresa.Create(Self);
    try
        P_empresa.procInicializar(DM_contabil.empresa, false, false, M_empresa, TM_empresa);
        P_empresa.ShowModal;
    finally
        FreeAndNil(P_empresa);
    end;
end;

procedure TM_Servico.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  P_departamento := TP_departamento.Create(self);
  try
    P_departamento.procInicializar(DM_contabil.departamento,false,false,M_departamento,TM_departamento);
    P_departamento.ShowModal;
  finally
    FreeAndNil(P_departamento);
  end;
end;

procedure TM_Servico.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  PPessoa := TPPessoa.Create(self);
  try
    PPessoa.procInicializar(dmPedCompra.Pessoa,false,false,MPessoa,TMPessoa);
    PPessoa.ShowModal;
  finally
    FreeAndNil(PPessoa);
  end;
end;

procedure TM_Servico.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  PPessoa := TPPessoa.Create(self);
  try
    PPessoa.procInicializar(dmPedCompra.Pessoa,false,false,MPessoa,TMPessoa);
    PPessoa.ShowModal;
  finally
    FreeAndNil(PPessoa);
  end;
end;

procedure TM_Servico.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  P_Tipo_Erro := TP_Tipo_Erro.Create(self);
  try
    P_Tipo_Erro.procInicializar(dmPedCompra.Pessoa,false,false,M_Tipo_Erro,TM_Tipo_Erro);
    P_Tipo_Erro.ShowModal;
  finally
    FreeAndNil(P_Tipo_Erro);
  end;
end;

end.
