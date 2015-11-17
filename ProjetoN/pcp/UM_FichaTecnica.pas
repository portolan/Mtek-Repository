unit UM_FichaTecnica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Tabs, Vcl.DockTabSet, Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls,
  ufrm_Relacionamento;

type
  TM_FichaTecnica = class(TxManuPadrao)
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    db_codigo: TDBEdit;
    db_unidade: TDBEdit;
    db_custo_unitario: TDBEdit;
    db_mao_obra: TDBEdit;
    db_custototal: TDBEdit;
    db_tempoproducao: TDBEdit;
    frm_empresa: TfrmRelacionamento;
    Label1: TLabel;
    db_produto: TDBEdit;
    procedure db_produtoEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  M_FichaTecnica: TM_FichaTecnica;

implementation

{$R *.dfm}

uses dm000, UDM_PCP, UP_FichaTecnica, UDM_Estoque, UP_Produto, UM_empresa,
  UP_empresa;

procedure TM_FichaTecnica.db_produtoEnter(Sender: TObject);
begin
  inherited;
      PProduto := TPProduto.Create(self);
  try
      PProduto.procInicializar(DM_Estoque.Produtos,false,true,PProduto,TPProduto);
      PProduto.ShowModal;
  finally
    DM_PCP.Ficha_TecnicaFT_PRODUTO.Value:= DM_Estoque.ProdutosPRO_CODIGO.AsString;
    DM_PCP.Ficha_TecnicaFT_EMPRESA.Value := DM_Estoque.ProdutosPRO_EMPRESA.AsInteger;
    FreeAndNil(PProduto);
  end;
end;

procedure TM_FichaTecnica.FormShow(Sender: TObject);
begin
  inherited;
             frm_empresa.procInicializar(DM_PCP.Ficha_TecnicaFT_EMPRESA,
                              DM_PCP.Ficha_TecnicaEMP_RAZAO,
                              DM_PCP.DS_Ficha_Tecnica,
                              ' SELECT A.EMP_COD, '+
                              '        A.EMP_RAZAO '+
                              '   FROM EMPRESA A '+
                              '  WHERE A.EMP_COD = :EMP ',
                               P_empresa, TP_empresa,['EMP'], ['FT_EMPRESA'],
                               ['EMP_COD','EMP_RAZAO']);
end;

end.

