unit UR_RelControlePatrimonial;

interface

uses
  System.SysUtils, System.Classes, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery,
  frxClass, frxDBSet;

type
  TR_RelatorioControlePatrimonial = class(TDataModule)
    frxTIPO: TfrxReport;
    frxDBTIPO: TfrxDBDataset;
    IB_TIPO: TIBQuery;
    IB_TIPOTPB_CODIGO: TIntegerField;
    IB_TIPOTPB_DESCRICAO: TIBStringField;
    IB_TIPOTPB_STATUS: TIBStringField;
    IB_LOCALIZACAO: TIBQuery;
    IB_LOCALIZACAOLOC_CODIGO: TIntegerField;
    IB_LOCALIZACAOLOC_DESCRICAO: TIBStringField;
    IB_LOCALIZACAOLOC_STATUS: TIBStringField;
    frxLocalizacao: TfrxReport;
    frxDBLocalizacao: TfrxDBDataset;
    frxEstadoConservacao: TfrxReport;
    frxDBEstadoConservacao: TfrxDBDataset;
    IB_EstadoConservacao: TIBQuery;
    IB_EstadoConservacaoEDC_CODIGO: TIntegerField;
    IB_EstadoConservacaoEDC_DESCRICAO: TIBStringField;
    IB_EstadoConservacaoEDC_STATUS: TIBStringField;
    frxBensImobilizados: TfrxReport;
    frxDBBensImobilizados: TfrxDBDataset;
    IBBensImobilizados: TIBQuery;
    IBBensImobilizadosBNI_EMPRESA: TIntegerField;
    IBBensImobilizadosBNI_NUM_SERIE: TIntegerField;
    IBBensImobilizadosBNI_NR_NOTA: TIntegerField;
    IBBensImobilizadosBNI_FORNECEDOR: TIntegerField;
    IBBensImobilizadosNOME: TIBStringField;
    IBBensImobilizadosBNI_DESCRICAO: TIBStringField;
    IBBensImobilizadosTIPO: TIBStringField;
    IBBensImobilizadosLOCALIZACAO: TIBStringField;
    IBBensImobilizadosESTADO_CONSERVACAO: TIBStringField;
    IBBensImobilizadosBNI_MANUTENCAO: TIntegerField;
    IBBensImobilizadosBNI_DATA_AQUISICAO: TDateField;
    IBBensImobilizadosBNI_VLR_AQUISICAO: TIBBCDField;
    IBBensImobilizadosBNI_VLR_RESIDUAL: TIBBCDField;
    IBBensImobilizadosBNI_VLR_AGREGADO: TIBBCDField;
    IBBensImobilizadosBNI_VLR_ATUAL: TIBBCDField;
    IBBensImobilizadosBNI_DEPRECIACAO: TIBBCDField;
    IBBensImobilizadosBNI_STATUS: TIBStringField;
    frxBensImobilizadosAnalitico: TfrxReport;
    frxDBBensImobilizadosAnalitico: TfrxDBDataset;
    IBBensImobilizadosAnalitico: TIBQuery;
    IBBensImobilizadosAnaliticoBNI_EMPRESA: TIntegerField;
    IBBensImobilizadosAnaliticoBNI_CODIGO: TIBStringField;
    IBBensImobilizadosAnaliticoBNI_NUM_SERIE: TIntegerField;
    IBBensImobilizadosAnaliticoBNI_NR_NOTA: TIntegerField;
    IBBensImobilizadosAnaliticoBNI_FORNECEDOR: TIntegerField;
    IBBensImobilizadosAnaliticoNOME: TIBStringField;
    IBBensImobilizadosAnaliticoBNI_DESCRICAO: TIBStringField;
    IBBensImobilizadosAnaliticoTIPO: TIBStringField;
    IBBensImobilizadosAnaliticoLOCALIZACAO: TIBStringField;
    IBBensImobilizadosAnaliticoESTADO_CONSERVACAO: TIBStringField;
    IBBensImobilizadosAnaliticoBNI_MANUTENCAO: TIntegerField;
    IBBensImobilizadosAnaliticoBNI_DATA_AQUISICAO: TDateField;
    IBBensImobilizadosAnaliticoBNI_VLR_AQUISICAO: TIBBCDField;
    IBBensImobilizadosAnaliticoBNI_VLR_RESIDUAL: TIBBCDField;
    IBBensImobilizadosAnaliticoBNI_VLR_AGREGADO: TIBBCDField;
    IBBensImobilizadosAnaliticoBNI_VLR_ATUAL: TIBBCDField;
    IBBensImobilizadosAnaliticoBNI_DEPRECIACAO: TIBBCDField;
    IBBensImobilizadosAnaliticoBNI_STATUS: TIBStringField;
    IBBensImobilizadosBNI_CODIGO: TIBStringField;
    IBBensImobilizadosAnaliticoBNI_TEMPO_DEPRECIACAO: TIntegerField;
    IBBensImobilizadosAnaliticoBNI_TEMPO_RESIDUAL: TIntegerField;
    IBBensImobilizadosBNI_TEMPO_RESIDUAL: TIntegerField;
    IBBensImobilizadosBNI_TEMPO_DEPRECIACAO: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  R_RelatorioControlePatrimonial: TR_RelatorioControlePatrimonial;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
