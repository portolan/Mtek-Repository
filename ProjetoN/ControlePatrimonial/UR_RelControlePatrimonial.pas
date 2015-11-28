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
