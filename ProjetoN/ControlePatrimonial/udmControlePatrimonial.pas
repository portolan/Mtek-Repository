unit udmControlePatrimonial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls, IBX.IBQuery, Vcl.Grids, Data.DB,
  IBX.IBCustomDataSet,IBX.IBUpdateSQL;

type
  TDMControlePatrimonial = class(TDataModule)
    Localizacao: TIBQuery;
    DLocalizacao: TDataSource;
    ULocalizacao: TIBUpdateSQL;
    LocalizacaoLOC_CODIGO: TIntegerField;
    LocalizacaoLOC_DESCRICAO: TIBStringField;
    LocalizacaoLOC_STATUS: TIBStringField;
    EstadoConservacao: TIBQuery;
    UEstadoCOnservacao: TIBUpdateSQL;
    DEstadoCOnservacao: TDataSource;
    EstadoConservacaoEDC_CODIGO: TIntegerField;
    EstadoConservacaoEDC_DESCRICAO: TIBStringField;
    EstadoConservacaoEDC_STATUS: TIBStringField;
    TipoBens: TIBQuery;
    UTipoBens: TIBUpdateSQL;
    DTipoBens: TDataSource;
    TipoBensTPB_CODIGO: TIntegerField;
    TipoBensTPB_DESCRICAO: TIBStringField;
    TipoBensTPB_STATUS: TIBStringField;
    Componente: TIBQuery;
    UComponente: TIBUpdateSQL;
    DComponente: TDataSource;
    ComponenteCOM_EMPRESA: TIntegerField;
    ComponenteCOM_MANUTENCAO: TIntegerField;
    ComponenteCOM_CODIGO: TIBStringField;
    ComponenteCOM_OBSERVACAO: TBlobField;
    Manutencao: TIBQuery;
    UManutencao: TIBUpdateSQL;
    DManutencao: TDataSource;
    ManutencaoMAN_EMPRESA: TIntegerField;
    ManutencaoMAN_CODIGO: TIntegerField;
    ManutencaoMAN_DESCRICAO: TIBStringField;
    ManutencaoMAN_OBSERVACAO: TBlobField;
    ManutencaoMAN_VLR_COMPONENTE: TIBBCDField;
    ManutencaoMAN_VLR_MANUTENCAO: TIBBCDField;
    ManutencaoMAN_VLR_TOTAL: TIBBCDField;
    ManutencaoMAN_AGREGA_CUSTO: TIBStringField;
    ManutencaoMAN_NUM_SERIE: TIntegerField;
    BenImobilizado: TIBQuery;
    UBenImobilizado: TIBUpdateSQL;
    DBenImobilizado: TDataSource;
    BenImobilizadoBNI_EMPRESA: TIntegerField;
    BenImobilizadoBNI_NUM_SERIE: TIntegerField;
    BenImobilizadoBNI_NR_NOTA: TIntegerField;
    BenImobilizadoBNI_FORNECEDOR: TIntegerField;
    BenImobilizadoBNI_DESCRICAO: TIBStringField;
    BenImobilizadoBNI_TIPO: TIntegerField;
    BenImobilizadoBNI_LOCALIZACAO: TIntegerField;
    BenImobilizadoBNI_ESTADO_CONSERVACAO: TIntegerField;
    BenImobilizadoBNI_DATA_AQUISICAO: TDateField;
    BenImobilizadoBNI_VLR_AQUISICAO: TIBBCDField;
    BenImobilizadoBNI_VLR_AGREGADO: TIBBCDField;
    BenImobilizadoBNI_VLR_ATUAL: TIBBCDField;
    BenImobilizadoBNI_DEPRECIACAO: TIBBCDField;
    BenImobilizadoBNI_OBSERVACAO: TBlobField;
    BenImobilizadoBNI_STATUS: TIBStringField;
    BenImobilizadoBNI_VLR_RESIDUAL: TIBBCDField;
    ComponenteCOM_VLR_COMPONENTE: TFloatField;
    ComponenteCOM_QTD: TIBBCDField;
    ComponenteCOM_VLR_TOTAL: TIBBCDField;
    BenImobilizadoBNI_CODIGO: TIBStringField;
    ManutencaoMAN_BEN: TIBStringField;
    BenImobilizadoBNI_TEMPO_DEPRECIACAO: TIntegerField;
    BenImobilizadoBNI_TEMPO_RESIDUAL: TIntegerField;
    ComponenteCOM_MOV_ESTOQUE: TIntegerField;
    procedure EstadoConservacaoAfterInsert(DataSet: TDataSet);
    procedure TipoBensAfterInsert(DataSet: TDataSet);
    procedure LocalizacaoAfterInsert(DataSet: TDataSet);
    procedure ManutencaoAfterInsert(DataSet: TDataSet);
    procedure BenImobilizadoAfterInsert(DataSet: TDataSet);
    procedure ComponenteAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Filtros : TFieldList;
    QryPadrao : TIBQuery;
    procedure VerificaCamposRequisidos (Query: TIBQuery);

  end;

var
  DMControlePatrimonial: TDMControlePatrimonial;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses dm000;

{$R *.dfm}

procedure TDMControlePatrimonial.BenImobilizadoAfterInsert(DataSet: TDataSet);
begin
   DMControlePatrimonial.BenImobilizadoBNI_STATUS.AsString := 'S';
   DMControlePatrimonial.BenImobilizadoBNI_VLR_AGREGADO.AsFloat := 0;
   DMControlePatrimonial.BenImobilizadoBNI_VLR_ATUAL.AsFloat := 0;
   DMControlePatrimonial.BenImobilizadoBNI_DEPRECIACAO.AsFloat := 0;
   DMControlePatrimonial.BenImobilizadoBNI_VLR_RESIDUAL.AsFloat := 0;

end;

procedure TDMControlePatrimonial.ComponenteAfterInsert(DataSet: TDataSet);
begin
   DMControlePatrimonial.ComponenteCOM_QTD.ASFLOAT := 0;
end;

procedure TDMControlePatrimonial.EstadoConservacaoAfterInsert(
  DataSet: TDataSet);
begin
   DMControlePatrimonial.EstadoConservacaoEDC_CODIGO.AsInteger := dmBanco.funcRecuperaProximoIdGenerator('GEN_EST_CONSERVACAO_BENS');
   DMControlePatrimonial.EstadoConservacaoEDC_STATUS.AsString := 'A';

end;

procedure TDMControlePatrimonial.LocalizacaoAfterInsert(DataSet: TDataSet);
begin
   DMControlePatrimonial.LocalizacaoLOC_CODIGO.AsInteger := DMBANCO.funcRecuperaProximoIdGenerator('GEN_LOCALIZACAO_BENS');
   DMControlePatrimonial.LocalizacaoLOC_STATUS.ASSTRING  := 'A';
end;

procedure TDMControlePatrimonial.ManutencaoAfterInsert(DataSet: TDataSet);
begin
   DMControlePatrimonial.ManutencaoMAN_CODIGO.ASINTEGER := dmBanco.funcRecuperaProximoIdGenerator('GEN_MANUTENCAO_BENS');
   DMControlePatrimonial.ManutencaoMAN_AGREGA_CUSTO.AsString := 'S';
   DMControlePatrimonial.ManutencaoMAN_VLR_COMPONENTE.ASFLOAT := 0;
   DMControlePatrimonial.ManutencaoMAN_VLR_MANUTENCAO.ASFLOAT := 0;
   DMControlePatrimonial.ManutencaoMAN_VLR_TOTAL.ASFLOAT := 0;

end;


//         if Application.MessageBox('Existe Bens Imobilizados cadastrado para este produto, deseja inativar o registro?','Aviso ao Usuário',MB_YESNO+MB_ICONQUESTION) = IDNO then
//         Exit;


procedure TDMControlePatrimonial.TipoBensAfterInsert(DataSet: TDataSet);
begin
   DMControlePatrimonial.TipoBensTPB_CODIGO.AsInteger := dmBanco.funcRecuperaProximoIdGenerator('GEN_TIPO_BENS');
   DMControlePatrimonial.TipoBensTPB_STATUS.AsString := 'A';
end;

procedure TDMControlePatrimonial.VerificaCamposRequisidos(Query: TIBQuery);
var
   i :integer;
   sl_filtros : TStringList;

begin
   try
      sl_filtros := TStringList.Create;

      Self.QryPadrao := query;

      Filtros := QryPadrao.FieldList;

      for I := 0 to Filtros.Count - 1 do
      begin
         if Filtros.Fields[i].Required and not (Filtros.Fields[i].AsString <> emptystr) then
         begin
            sl_filtros.Add ('Campo requerido sem informação: ' + Filtros.Fields[i].FieldName + slinebreak);

         end;
      end;

      if sl_filtros.Text <> EmptyStr then
      begin
         raise Exception.Create(sl_filtros.Text);

      end;

   finally
      FreeAndNil(sl_filtros);
   end;
end;

end.
