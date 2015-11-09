unit UDM_contabil;

interface

uses
  System.SysUtils, System.Classes, IBX.IBCustomDataSet, IBX.IBUpdateSQL,
  Data.DB, IBX.IBQuery, Dialogs, Vcl.Mask;

type
  TDM_contabil = class(TDataModule)
    empresa: TIBQuery;
    Dempresa: TDataSource;
    Uempresa: TIBUpdateSQL;
    centro: TIBQuery;
    Dcentro: TDataSource;
    Ucentro: TIBUpdateSQL;
    lancamento: TIBQuery;
    Dlancamento: TDataSource;
    Ulancamento: TIBUpdateSQL;
    departamento: TIBQuery;
    Ddepartamento: TDataSource;
    Udepartamento: TIBUpdateSQL;
    planodecontas: TIBQuery;
    Dplanodecontas: TDataSource;
    Uplanodecontas: TIBUpdateSQL;
    historico: TIBQuery;
    Dhistorico: TDataSource;
    Uhistorico: TIBUpdateSQL;
    centroCEC_COD: TIntegerField;
    centroCEC_NUM_CC: TIntegerField;
    centroCEC_DESC_CC: TIBStringField;
    centroCEC_ANALITICO: TIBStringField;
    centroCEC_COD_GRUPO: TIntegerField;
    lancamentoLANC_NR_LOTE: TIntegerField;
    lancamentoLANC_NR_LANCAMENTO: TIntegerField;
    lancamentoLANC_DT_LANCAMENTO: TDateField;
    lancamentoLANC_DEBITO: TIntegerField;
    lancamentoLANC_CENTRODECUSTO_DB: TIntegerField;
    lancamentoLANC_CREDITO: TIntegerField;
    lancamentoLANC_CENTRODECUSTO_CR: TIntegerField;
    lancamentoLANC_HISTORICO: TIntegerField;
    lancamentoLANC_VAR_HISTORICO: TIBStringField;
    lancamentoLANC_VALOR: TIntegerField;
    departamentoDEP_COD: TIntegerField;
    departamentoDEP_EMPRESAR: TIntegerField;
    departamentoDEP_NOME: TIBStringField;
    departamentoDEP_DESC: TIBStringField;
    planodecontasPLN_COD_CONTA: TIntegerField;
    planodecontasPLN_CONTA: TIntegerField;
    planodecontasPLN_DESC_CONTA: TIBStringField;
    planodecontasPLN_ANALITICA: TIBStringField;
    historicoHIST_COD: TIntegerField;
    historicoHIST_NOME: TIBStringField;
    empresaEMP_COD: TIntegerField;
    empresaEMP_CNPJ: TIBStringField;
    empresaEMP_RAZAO: TIBStringField;
    empresaEMP_NOMEF: TIBStringField;
    empresaEMP_ENDERECO: TIBStringField;
    empresaEMP_END_NUM: TIntegerField;
    empresaEMP_BAIRRO: TIBStringField;
    empresaEMP_CIDADE: TIBStringField;
    empresaEMP_UF: TIBStringField;
    empresaEMP_CEP: TIBStringField;
    empresaEMP_FONE: TIBStringField;
    empresaEMP_TITULAR: TIBStringField;
    procedure planodecontasAfterInsert(DataSet: TDataSet);
    procedure centroAfterInsert(DataSet: TDataSet);
    procedure empresaBeforePost(DataSet: TDataSet);
    procedure empresaAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_contabil: TDM_contabil;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses dm000;

{$R *.dfm}

procedure TDM_contabil.centroAfterInsert(DataSet: TDataSet);
begin
  DM_contabil.centroCEC_ANALITICO.AsString := 'N';

end;

procedure TDM_contabil.empresaAfterInsert(DataSet: TDataSet);
begin
empresa.FieldByName('EMP_COD').Value := dmBanco.funcRecuperaProximoIdGenerator('GEN_EMPRESA_ID');
end;

procedure TDM_contabil.empresaBeforePost(DataSet: TDataSet);
begin
   if DM_contabil.empresaEMP_CNPJ.AsString = '' then
   begin
      ShowMessage('Campo CPF é de preenchimento obrigatório.');
      abort;
   end;
   if DM_contabil.empresaEMP_RAZAO.AsString = '' then
   begin
      ShowMessage('Campo RAZÃO SOCIAL é de preenchimento obrigatório.');
      abort;
   end;
   if DM_contabil.empresaEMP_NOMEF.AsString = '' then
   begin
      ShowMessage('Campo NOME FANTASIA é de preenchimento obrigatório.');
      abort;
   end;
   if DM_contabil.empresaEMP_ENDERECO.AsString = '' then
   begin
      ShowMessage('Campo ENDEREÇO é de preenchimento obrigatório.');
      abort;
   end;
   if DM_contabil.empresaEMP_END_NUM.AsString = '' then
   begin
      ShowMessage('Campo NUMERO é de preenchimento obrigatório.');
      abort;
   end;
   if DM_contabil.empresaEMP_BAIRRO.AsString = '' then
   begin
      ShowMessage('Campo BAIRRO é de preenchimento obrigatório.');
      abort;
   end;
   if DM_contabil.empresaEMP_CIDADE.AsString = '' then
   begin
      ShowMessage('Campo CIDADE é de preenchimento obrigatório.');
      abort;
   end;
   if DM_contabil.empresaEMP_UF.AsString = '' then
   begin
      ShowMessage('Campo UF é de preenchimento obrigatório.');
      abort;
   end;
   if DM_contabil.empresaEMP_CEP.AsString = '' then
   begin
      ShowMessage('Campo CEP é de preenchimento obrigatório.');
      abort;
   end;
   if DM_contabil.empresaEMP_FONE.AsString = '' then
   begin
      ShowMessage('Campo TELEFONE é de preenchimento obrigatório.');
      abort;
   end;
   if DM_contabil.empresaEMP_TITULAR.AsString = '' then
   begin
      ShowMessage('Campo TITULAR é de preenchimento obrigatório.');
      abort;
   end;
end;

procedure TDM_contabil.planodecontasAfterInsert(DataSet: TDataSet);
begin
  DM_contabil.planodecontasPLN_ANALITICA.AsString := 'N';
end;

end.
