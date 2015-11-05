unit Udm_contaspagar;

interface

uses
  System.SysUtils, System.Classes, IBX.IBCustomDataSet, IBX.IBUpdateSQL,
  Data.DB, IBX.IBQuery;

type
  Tdm_contaspagar = class(TDataModule)
    titulospagar: TIBQuery;
    Dtitulospagar: TDataSource;
    Utitulospagar: TIBUpdateSQL;
    titulospagarTTP_CODIGO: TIntegerField;
    titulospagarTTP_EMP_CODIGO: TIntegerField;
    titulospagarTTP_PES_CODIGO: TIntegerField;
    titulospagarTTP_CTB_CODIGO: TIntegerField;
    titulospagarTTP_CON_CODIGO: TIntegerField;
    titulospagarTTP_DESCRICAO: TIBStringField;
    titulospagarTTP_DT_EMISSAO: TDateField;
    titulospagarTTP_DT_VENCIMENTO: TDateField;
    titulospagarTTP_DT_PAGAMENTO: TDateField;
    titulospagarTTP_DT_BAIXA: TDateField;
    titulospagarTTP_DT_CANCELAMENTO: TDateField;
    titulospagarTTP_TP_TITULO: TIBStringField;
    titulospagarTTP_DESCONTO: TIBBCDField;
    titulospagarTTP_PARCELA: TIBBCDField;
    titulospagarTTP_VL_ORIGINAL: TIBBCDField;
    titulospagarTTP_VL_PAGO: TIBBCDField;
    titulospagarTTP_VL_TOTAL: TIBBCDField;
    titulospagarTTP_MR_DIARIA: TIBBCDField;
    titulospagarTTP_MT_ATRASO: TIBBCDField;
    titulospagarTTP_SITUACAO: TIBStringField;
    titulospagarTTP_TP_MORA: TIBStringField;
    titulospagarTTP_TP_MULTA: TIBStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm_contaspagar: Tdm_contaspagar;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses dm000;

{$R *.dfm}

end.
