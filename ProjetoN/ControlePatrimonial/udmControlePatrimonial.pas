unit udmControlePatrimonial;

interface

uses
  System.SysUtils, System.Classes, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery,
  IBX.IBUpdateSQL;

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
    NumeroSerie: TIBQuery;
    UNumeroSerie: TIBUpdateSQL;
    DNumeroSerie: TDataSource;
    EstadoConservacaoEDC_CODIGO: TIntegerField;
    EstadoConservacaoEDC_DESCRICAO: TIBStringField;
    EstadoConservacaoEDC_STATUS: TIBStringField;
    NumeroSerieNSB_EMPRESA: TIntegerField;
    NumeroSerieNSB_CODIGO: TIntegerField;
    NumeroSerieNSB_STATUS: TIBStringField;
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
    ComponentePRO_DESCRICAO: TIBStringField;
    ComponenteCOM_OBSERVACAO: TBlobField;
    ComponenteCOM_VLR_COMPONENTE: TIBBCDField;
    Manutencao: TIBQuery;
    UManutencao: TIBUpdateSQL;
    DManutencao: TDataSource;
    ManutencaoMAN_EMPRESA: TIntegerField;
    ManutencaoMAN_CODIGO: TIntegerField;
    ManutencaoMAN_BEN: TIntegerField;
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
    BenImobilizadoBNI_CODIGO: TIntegerField;
    BenImobilizadoBNI_NUM_SERIE: TIntegerField;
    BenImobilizadoBNI_NR_NOTA: TIntegerField;
    BenImobilizadoBNI_FORNECEDOR: TIntegerField;
    BenImobilizadoBNI_DESCRICAO: TIBStringField;
    BenImobilizadoBNI_TIPO: TIntegerField;
    BenImobilizadoBNI_LOCALIZACAO: TIntegerField;
    BenImobilizadoBNI_ESTADO_CONSERVACAO: TIntegerField;
    BenImobilizadoBNI_MANUTENCAO: TIntegerField;
    BenImobilizadoBNI_DATA_AQUISICAO: TDateField;
    BenImobilizadoBNI_VLR_AQUISICAO: TIBBCDField;
    BenImobilizadoBNI_VLR_AGREGADO: TIBBCDField;
    BenImobilizadoBNI_VLR_ATUAL: TIBBCDField;
    BenImobilizadoBNI_DEPRECIACAO: TIBBCDField;
    BenImobilizadoBNI_OBSERVACAO: TBlobField;
    BenImobilizadoBNI_STATUS: TIBStringField;
    procedure EstadoConservacaoAfterInsert(DataSet: TDataSet);
    procedure TipoBensAfterInsert(DataSet: TDataSet);
    procedure LocalizacaoAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMControlePatrimonial: TDMControlePatrimonial;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses dm000;

{$R *.dfm}

procedure TDMControlePatrimonial.EstadoConservacaoAfterInsert(
  DataSet: TDataSet);
begin
   DMControlePatrimonial.EstadoConservacaoEDC_CODIGO.AsInteger := dmBanco.funcRecuperaProximoIdGenerator('SEQBENS_ESTADO_CONSERVACAO');
   DMControlePatrimonial.EstadoConservacaoEDC_STATUS.AsString := 'A';

end;

procedure TDMControlePatrimonial.LocalizacaoAfterInsert(DataSet: TDataSet);
begin
   DMControlePatrimonial.LocalizacaoLOC_CODIGO.AsInteger := DMBANCO.funcRecuperaProximoIdGenerator('SEQBENS_LOCALIZACAO');
   DMControlePatrimonial.LocalizacaoLOC_STATUS.ASSTRING  := 'A';
end;

procedure TDMControlePatrimonial.TipoBensAfterInsert(DataSet: TDataSet);
begin
   DMControlePatrimonial.TipoBensTPB_CODIGO.AsInteger := dmBanco.funcRecuperaProximoIdGenerator('SEQBENS_TIPO');
   DMControlePatrimonial.TipoBensTPB_STATUS.AsString := 'A';
end;

end.
