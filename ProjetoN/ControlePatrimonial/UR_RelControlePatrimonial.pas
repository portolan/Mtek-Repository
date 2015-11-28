unit UR_RelControlePatrimonial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, IBX.IBCustomDataSet,
  IBX.IBQuery, frxClass, frxDBSet;

type
  TR_RelatorioControlePatrimonial = class(TForm)
    frxTIPO: TfrxReport;
    frxDBTIPO: TfrxDBDataset;
    IB_TIPO: TIBQuery;
    IB_TIPOTPB_CODIGO: TIntegerField;
    IB_TIPOTPB_DESCRICAO: TIBStringField;
    IB_TIPOTPB_STATUS: TIBStringField;
    IB_LOCALIZACAO: TIBQuery;
    frxLocalizacao: TfrxReport;
    frxDBLocalizacao: TfrxDBDataset;
    IB_LOCALIZACAOLOC_CODIGO: TIntegerField;
    IB_LOCALIZACAOLOC_DESCRICAO: TIBStringField;
    IB_LOCALIZACAOLOC_STATUS: TIBStringField;
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
    IBBensImobilizadosBNI_CODIGO: TIntegerField;
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
    frxDepreciacao: TfrxReport;
    frxDBDepreciacao: TfrxDBDataset;
    IBDepreciacao: TIBQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    IBStringField4: TIBStringField;
    IBStringField5: TIBStringField;
    IntegerField6: TIntegerField;
    DateField1: TDateField;
    IBBCDField1: TIBBCDField;
    IBBCDField2: TIBBCDField;
    IBBCDField3: TIBBCDField;
    IBBCDField4: TIBBCDField;
    IBBCDField5: TIBBCDField;
    IBStringField6: TIBStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  R_RelatorioControlePatrimonial: TR_RelatorioControlePatrimonial;

implementation

{$R *.dfm}

end.
