unit UR_EstoqueRelatorios;

interface

uses
  System.SysUtils, System.Classes, IBX.IBQuery, Data.DB, IBX.IBCustomDataSet,
  frxClass, frxDBSet;

type
  TEstoqueRelatorios = class(TDataModule)
    frxReportBloco: TfrxReport;
    frxDBDatasetBloco: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EstoqueRelatorios: TEstoqueRelatorios;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses dm000, UDM_Estoque;

{$R *.dfm}

end.
