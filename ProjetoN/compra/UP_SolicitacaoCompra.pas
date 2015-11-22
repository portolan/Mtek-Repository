unit UP_SolicitacaoCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TPSolicitacaoCompra = class(TxPesqPadrao)
    sbLiberarCompra: TSpeedButton;
    sbRecusarCompra: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure sbRecusarCompraClick(Sender: TObject);
    procedure sbLiberarCompraClick(Sender: TObject);
  private
    { Private declarations }
  public
     procedure procSelect; override;
     procedure procAntesAlterar; override;

     class procedure procChamaTela(AOwner: TComponent);
  end;

var
  PSolicitacaoCompra: TPSolicitacaoCompra;

implementation

{$R *.dfm}

uses UDM_PedCompra, UM_SolicitacaoCompra;

{ TPSolicitacaoCompra }

procedure TPSolicitacaoCompra.FormCreate(Sender: TObject);
begin
   inherited;
   procInicializar(dmPedCompra.SolicitacaoCompra, True, False, MSolicitacaoCompra, TMSolicitacaoCompra);
end;

procedure TPSolicitacaoCompra.procAntesAlterar;
begin
   inherited;
   if dmPedCompra.SolicitacaoCompraSOL_STATUS.AsString <> TNMStatusSolicitacao[tssAberto] then
      raise Exception.Create('Não é possível alterar a solicitação de compra Selecionada!');
end;

class procedure TPSolicitacaoCompra.procChamaTela(AOwner: TComponent);
begin
   PSolicitacaoCompra := TPSolicitacaoCompra.Create(AOwner);
   try
      PSolicitacaoCompra.ShowModal;
   finally
      FreeAndNil(PSolicitacaoCompra);
   end;
end;

procedure TPSolicitacaoCompra.procSelect;
begin
   inherited;
   procMontaWhere;

   dmPedCompra.SolicitacaoCompra.Close;
   dmPedCompra.SolicitacaoCompra.SQL.Text := ' SELECT A.*, '+
                                             '        B.DEP_NOME, '+
                                             '        C.PRO_DESCRICAO, '+
                                             '        D.EMP_RAZAO '+
                                             '   FROM SOLICITACAO_COMPRA A '+
                                             '  INNER JOIN DEPARTAMENTO B ON A.SOL_DEPARTAMENTO = B.DEP_COD '+
                                             '                             AND A.SOL_EMPRESA = B.DEP_EMPRESAR '+
                                             '  INNER JOIN PRODUTOS C ON A.SOL_EMPRESA = C.PRO_EMPRESA '+
                                             '                       AND A.SOL_PRODUTO = C.PRO_CODIGO '+
                                             '  INNER JOIN EMPRESA D ON A.SOL_EMPRESA = D.EMP_COD '+
                                             '  WHERE ' + c_where;
   dmPedCompra.SolicitacaoCompra.Open;
end;

procedure TPSolicitacaoCompra.sbLiberarCompraClick(Sender: TObject);
begin
   inherited;
   procBotaoVisivelHabilitado(Sender);

   if dmPedCompra.SolicitacaoCompra.IsEmpty then
      Exit;

   if dmPedCompra.SolicitacaoCompraSOL_STATUS.AsString <> TNMStatusSolicitacao[tssAberto] then
      raise Exception.Create('Não é possível alterar o status da solicitação de compra Selecionada!');

   procMontarVLocate;
   try
      dmPedCompra.funcGerarCotacao(Self,
                                   dmPedCompra.SolicitacaoCompraSOL_EMPRESA.AsInteger,
                                   dmPedCompra.SolicitacaoCompraSOL_CODIGO.AsInteger);
   finally
      procSelect;
      procLocate;
   end;
end;

procedure TPSolicitacaoCompra.sbRecusarCompraClick(Sender: TObject);
begin
   inherited;
   procBotaoVisivelHabilitado(Sender);

   if dmPedCompra.SolicitacaoCompra.IsEmpty then
      Exit;

   if dmPedCompra.SolicitacaoCompraSOL_STATUS.AsString <> TNMStatusSolicitacao[tssAberto] then
      raise Exception.Create('Não é possível alterar o status da solicitação de compra Selecionada!');

   procMontarVLocate;
   try
      dmPedCompra.procAlterarStatusSolicitacao(dmPedCompra.SolicitacaoCompraSOL_EMPRESA.AsInteger,
                                               dmPedCompra.SolicitacaoCompraSOL_CODIGO.AsInteger,
                                               tssRecusada);
   finally
      procSelect;
      procLocate;
   end;
end;

end.
