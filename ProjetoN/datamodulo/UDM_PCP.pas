unit UDM_PCP;

interface

uses
  System.SysUtils, System.Classes, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery,
  IBX.IBUpdateSQL;

  type
   TStatusOrdemProducao = (tssAguardando, tssemproducao, tsscancelada, tssFinalizado);
   TStatusproducao     = (tspproduzindo, tspcancelada, tspconcluida);

const
   TNMStatusOp : Array [TStatusOrdemProducao] of String = ('A','P','C','F');
   TDSStatusOp : Array [TStatusOrdemProducao] of String = ('AGUARDANDO','PRODUZINDO','CANCELADA', 'FINALIZADA');


type
  TDM_PCP = class(TDataModule)
    DS_OrdemProducao: TDataSource;
    OrdemProducao: TIBQuery;
    UPD_OrdemProducao: TIBUpdateSQL;
    Producao: TIBQuery;
    DS_Producao: TDataSource;
    UPD_Producao: TIBUpdateSQL;
    ProducaoPROD_ORDEM: TIntegerField;
    ProducaoPROD_DESCRICAO: TIBStringField;
    ProducaoPROD_TIPO: TIBStringField;
    ProducaoPROD_DT_INICIO: TDateField;
    ProducaoPROD_DT_TERMINO: TDateField;
    ProducaoPROD_QTD_PRODUZIDA: TIntegerField;
    ProducaoPROD_STATUS: TIBStringField;
    ProducaoPROD_EMPRESA: TIntegerField;
    ProducaoPROD_COD: TIntegerField;
    Ficha_Tecnica: TIBQuery;
    DS_Ficha_Tecnica: TDataSource;
    UPD_Ficha_Tecnica: TIBUpdateSQL;
    Ficha_TecnicaFT_COD: TIntegerField;
    Ficha_TecnicaFT_PRODUTO: TIBStringField;
    Ficha_TecnicaFT_UNIDADE: TIntegerField;
    Ficha_TecnicaFT_CUSTO_UNITARIO: TIBBCDField;
    Ficha_TecnicaFT_MAO_DE_OBRA: TIBBCDField;
    Ficha_TecnicaFT_QUANTIDADE: TIntegerField;
    Ficha_TecnicaFT_CUSTO_TOTAL: TIBBCDField;
    Ficha_TecnicaFT_TEMPO_PRODUCAO: TDateTimeField;
    Ficha_TecnicaFT_EMPRESA: TIntegerField;
    Itens_Ficha: TIBQuery;
    DS_Itens_Ficha: TDataSource;
    UPD_Itens_Ficha: TIBUpdateSQL;
    Itens_FichaIFT_FICHA: TIntegerField;
    Itens_FichaIFT_PRODUTO: TIBStringField;
    Itens_FichaIFT_EMPRESA: TIntegerField;
    Itens_FichaIFT_QTD_TOTAL: TIBBCDField;
    Itens_FichaIFT_DESCRICAO: TIBStringField;
    Itens_FichaIFT_VLR_UNITARIO: TIBBCDField;
    Itens_FichaIFT_VLR_TOTAL: TIBBCDField;
    Entrega_Materia: TIBQuery;
    DS_Entrega_Materia: TDataSource;
    UPD_Entrega_Materia: TIBUpdateSQL;
    Entrega_MateriaEM0_COD: TIntegerField;
    Entrega_MateriaEM0_PESSOA: TIntegerField;
    Entrega_MateriaEM0_PRODUCAO: TIntegerField;
    Entrega_MateriaEM0_DESCRICAO: TIBStringField;
    Entrega_MateriaEM0_DT_ENTREGA: TDateField;
    Entrega_MateriaEM0_EMPRESA: TIntegerField;
    queryGenerica: TIBQuery;
    DataSource1: TDataSource;
    IBUpdateSQL1: TIBUpdateSQL;
    OrdemProducaoOP_EMPRESA: TIntegerField;
    OrdemProducaoOP_DESCRICAO: TIBStringField;
    OrdemProducaoOP_TIPO: TIBStringField;
    OrdemProducaoOP_QTD: TIntegerField;
    OrdemProducaoOP_DT_PEDIDO: TDateField;
    OrdemProducaoOP_DT_ENTREGA: TDateField;
    OrdemProducaoOP_STATUS: TIBStringField;
    OrdemProducaoOP_COD: TIntegerField;
    OrdemProducaoOP_FICHATECNICA: TIntegerField;
    OrdemProducaoOP_PRODUTO: TIBStringField;
    Ficha_TecnicaEMP_RAZAO: TIBStringField;
    Ficha_TecnicaPRO_DESCRICAO: TIBStringField;
    OrdemProducaoOP_DEPARTAMENTO: TIntegerField;
    ProducaoPROD_PRODUTO: TIBStringField;
    procedure OrdemProducaoAfterInsert(DataSet: TDataSet);
    procedure ProducaoAfterInsert(DataSet: TDataSet);
    procedure Ficha_TecnicaAfterInsert(DataSet: TDataSet);
    procedure Entrega_MateriaAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_PCP: TDM_PCP;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses dm000;



{$R *.dfm}

procedure TDM_PCP.Entrega_MateriaAfterInsert(DataSet: TDataSet);
begin
    Entrega_Materia.FieldByName('EM0_COD').Value := dmBanco.funcRecuperaProximoIdGenerator('GEN_ENTREGA_MATERIA_ID');
end;

procedure TDM_PCP.Ficha_TecnicaAfterInsert(DataSet: TDataSet);
begin
    Ficha_Tecnica.FieldByName('FT_COD').Value := dmBanco.funcRecuperaProximoIdGenerator('GEN_FICHA');
end;

procedure TDM_PCP.OrdemProducaoAfterInsert(DataSet: TDataSet);
begin
     OrdemProducao.FieldByName('OP_COD').Value := dmBanco.funcRecuperaProximoIdGenerator('GEN_ORDEM');
end;

procedure TDM_PCP.ProducaoAfterInsert(DataSet: TDataSet);
begin
    Producao.FieldByName('PROD_COD').Value := dmBanco.funcRecuperaProximoIdGenerator('GEN_PRODUCAO_ID');
end;
end.
