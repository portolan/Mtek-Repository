unit UDM_Servico;

interface

uses
  System.SysUtils, System.Classes, Data.DB, IBX.IBCustomDataSet,
  IBX.IBUpdateSQL, IBX.IBQuery;

type
  TDM_Servico = class(TDataModule)
    IB_Chamado: TIBQuery;
    UPS_Chamado: TIBUpdateSQL;
    DS_Chamado: TDataSource;
    IB_Tipo_Erro: TIBQuery;
    UPS_Tipo_Erro: TIBUpdateSQL;
    DS_Tipo_Erro: TDataSource;
    IB_Tipo_ErroTER_CODIGO: TIntegerField;
    IB_Tipo_ErroTER_DESCRICAO: TIBStringField;
    IB_ChamadoCHA_CODIGO: TIntegerField;
    IB_ChamadoCHA_EMPRESA: TIntegerField;
    IB_ChamadoCHA_DEPARTAMENTO: TIntegerField;
    IB_ChamadoCHA_FUNCIONARIO: TIntegerField;
    IB_ChamadoCHA_PROPRIETARIO: TIntegerField;
    IB_ChamadoCHA_DESCRICAO: TIBStringField;
    IB_ChamadoCHA_PRIORIDADE: TIBStringField;
    IB_ChamadoCHA_STATUS: TIBStringField;
    IB_ChamadoCHA_DATA_ENTRADA: TDateField;
    IB_ChamadoCHA_TIPO_ERRO: TIntegerField;
    IB_ChamadoCHA_DATA_SAIDA: TDateField;
    IB_ChamadoEMP_RAZAO: TIBStringField;
    IB_ChamadoDEP_NOME: TIBStringField;
    IB_ChamadoPESS_NOME: TIBStringField;
    IB_ChamadoPESS_NOME1: TIBStringField;
    IB_ChamadoTER_DESCRICAO: TIBStringField;
    procedure IB_ChamadoAfterInsert(DataSet: TDataSet);
    procedure IB_Tipo_ErroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Servico: TDM_Servico;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses dm000, UDM_contabil;

{$R *.dfm}

procedure TDM_Servico.IB_ChamadoAfterInsert(DataSet: TDataSet);
begin
  IB_Chamado.FieldByName('CHA_CODIGO').Value := dmBanco.funcRecuperaProximoIdGenerator('GEN_CHAMADO');
end;

procedure TDM_Servico.IB_Tipo_ErroAfterInsert(DataSet: TDataSet);
begin
  IB_Tipo_Erro.FieldByName('TER_CODIGO').Value := dmBanco.funcRecuperaProximoIdGenerator('GEN_TIPO_ERRO');
end;

end.
