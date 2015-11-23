unit UR_Relatorio_Chamado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery;

type
  TUR_Relatorio = class(TForm)
    frxDBChamadoData: TfrxDBDataset;
    IB_ChamadoDia: TIBQuery;
    IB_ChamadoDiaCHA_CODIGO: TIntegerField;
    IB_ChamadoDiaCHA_EMPRESA: TIntegerField;
    IB_ChamadoDiaCHA_DEPARTAMENTO: TIntegerField;
    IB_ChamadoDiaCHA_FUNCIONARIO: TIntegerField;
    IB_ChamadoDiaCHA_PROPRIETARIO: TIntegerField;
    IB_ChamadoDiaCHA_DESCRICAO: TIBStringField;
    IB_ChamadoDiaCHA_PRIORIDADE: TIBStringField;
    IB_ChamadoDiaCHA_STATUS: TIBStringField;
    IB_ChamadoDiaCHA_DATA_ENTRADA: TDateField;
    IB_ChamadoDiaCHA_TIPO_ERRO: TIntegerField;
    IB_ChamadoDiaCHA_DATA_SAIDA: TDateField;
    IB_ChamadoDiaEMP_RAZAO: TIBStringField;
    IB_ChamadoDiaDEP_NOME: TIBStringField;
    IB_ChamadoDiaPESS_NOME: TIBStringField;
    IB_ChamadoDiaPESS_NOME1: TIBStringField;
    frxDBChamadoDia: TfrxDBDataset;
    IB_ChamadoData: TIBQuery;
    IB_ChamadoDataCHA_CODIGO: TIntegerField;
    IB_ChamadoDataCHA_EMPRESA: TIntegerField;
    IB_ChamadoDataCHA_DEPARTAMENTO: TIntegerField;
    IB_ChamadoDataCHA_FUNCIONARIO: TIntegerField;
    IB_ChamadoDataCHA_PROPRIETARIO: TIntegerField;
    IB_ChamadoDataCHA_DESCRICAO: TIBStringField;
    IB_ChamadoDataCHA_PRIORIDADE: TIBStringField;
    IB_ChamadoDataCHA_STATUS: TIBStringField;
    IB_ChamadoDataCHA_DATA_ENTRADA: TDateField;
    IB_ChamadoDataCHA_TIPO_ERRO: TIntegerField;
    IB_ChamadoDataCHA_DATA_SAIDA: TDateField;
    IB_ChamadoDataEMP_RAZAO: TIBStringField;
    IB_ChamadoDataDEP_NOME: TIBStringField;
    IB_ChamadoDataPESS_NOME: TIBStringField;
    IB_ChamadoDataPESS_NOME1: TIBStringField;
    IB_ChamadoDiaTER_DESCRICAO: TIBStringField;
    frxChamadoData: TfrxReport;
    IB_ChamadoDataTER_DESCRICAO: TIBStringField;
    frxChamadoDia: TfrxReport;
    frxTipoErro: TfrxReport;
    frxDBTipoErro: TfrxDBDataset;
    IB_TipoErro: TIBQuery;
    IB_TipoErroTER_CODIGO: TIntegerField;
    IB_TipoErroTER_DESCRICAO: TIBStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UR_Relatorio: TUR_Relatorio;

implementation

{$R *.dfm}

uses UDM_Servico, dm000, dm001;

end.
