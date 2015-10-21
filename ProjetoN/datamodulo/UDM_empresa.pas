unit UDM_empresa;

interface

uses
  System.SysUtils, System.Classes, IBX.IBCustomDataSet, IBX.IBUpdateSQL,
  Data.DB, IBX.IBQuery;

type
  TDataModule2 = class(TDataModule)
    empresa: TIBQuery;
    Dempresa: TDataSource;
    Uempresa: TIBUpdateSQL;
    empresaCOD_EMPRESA: TIntegerField;
    empresaCNPJ_EMPRESA: TIBBCDField;
    empresaEMP_RAZAO: TIBStringField;
    empresaEMP_NOMEF: TIBStringField;
    empresaEMP_ENDERECO: TIBStringField;
    empresaEMP_END_NUM: TIntegerField;
    empresaEMP_BAIRRO: TIBStringField;
    empresaEMP_CIDADE: TIBStringField;
    empresaEMP_UF: TIBStringField;
    empresaEMP_CEP: TIntegerField;
    empresaEMP_FONE: TIntegerField;
    empresaEMP_TITULAR: TIBStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses dm000;

{$R *.dfm}

end.
