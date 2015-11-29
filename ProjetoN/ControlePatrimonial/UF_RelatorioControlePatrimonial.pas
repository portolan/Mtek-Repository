unit UF_RelatorioControlePatrimonial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls,
  UR_RelControlePatrimonial;

type
  TF_RelControlePAtrimonial = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    sbSair: TSpeedButton;
    SpeedButton1: TSpeedButton;
    CBRelatorios: TComboBox;
    Label1: TLabel;
    cbAtivo: TCheckBox;
    EdEmpresa: TEdit;
    Empresa: TLabel;
    lbDescricaoEmpresa: TLabel;
    EdProduto: TEdit;
    Produto: TLabel;
    lbDescricaoProduto: TLabel;
    EdFornecedor: TEdit;
    Fornecedor: TLabel;
    lbDescricaoFornecedor: TLabel;
    NumSerie: TLabel;
    EdNumeroSerie: TEdit;
    procedure sbSairClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ProcCamposBensImobilizados (Situacao : boolean);
    Procedure ProcHabDesCamposBenImobilizado;
    procedure CBRelatoriosChange(Sender: TObject);
    procedure CBRelatoriosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_RelControlePAtrimonial: TF_RelControlePAtrimonial;

implementation

{$R *.dfm}

procedure TF_RelControlePAtrimonial.CBRelatoriosChange(Sender: TObject);
begin
   ProcHabDesCamposBenImobilizado;
end;

procedure TF_RelControlePAtrimonial.CBRelatoriosClick(Sender: TObject);
begin
   ProcHabDesCamposBenImobilizado;
end;

procedure TF_RelControlePAtrimonial.ProcCamposBensImobilizados(
  Situacao: boolean);
begin
   Empresa.Visible                 := Situacao;
   Produto.Visible                 := Situacao;
   Fornecedor.Visible              := Situacao;
   NumSerie.Visible                := Situacao;
   EdEmpresa.Visible               := Situacao;
   EdProduto.Visible               := Situacao;
   EdFornecedor.Visible            := Situacao;
   EdNumeroSerie.Visible           := Situacao;
   lbDescricaoFornecedor.Visible   := Situacao;
   lbDescricaoEmpresa.Visible      := Situacao;
   lbDescricaoProduto.Visible      := Situacao;
end;

procedure TF_RelControlePAtrimonial.ProcHabDesCamposBenImobilizado;
begin
   ProcCamposBensImobilizados(CBRelatorios.ItemIndex = 3);
end;

procedure TF_RelControlePAtrimonial.sbSairClick(Sender: TObject);
begin
   close;
end;

procedure TF_RelControlePAtrimonial.SpeedButton1Click(Sender: TObject);
var
   c_where      : string;
   c_status     : string;
   c_empresa    : string;
   c_produto    : string;
   c_fornecedor : string;
   c_num_serie  : string;

begin
   c_where         := '';
   c_status        := '';
   c_empresa       := '';
   c_produto       := '';
   c_fornecedor    := '';
   c_num_serie     := '';


    // TIPO
   if CBRelatorios.ItemIndex = 0 then
   begin
     if cbAtivo.Checked then
        c_where := ' WHERE A.TPB_STATUS = ''A'' ';


     R_RelatorioControlePatrimonial.IB_TIPO.Close;
     R_RelatorioControlePatrimonial.IB_TIPO.SQL.Text := 'SELECT *              ' +
                                                        '  FROM TIPO_DE_BENS A ' + c_where ;
     R_RelatorioControlePatrimonial.IB_TIPO.Open;

     R_RelatorioControlePatrimonial.frxTIPO.ShowReport();
   end;

   // LOCALIZACAO
   if CBRelatorios.ItemIndex = 1 then
   begin
     if cbAtivo.Checked then
        c_where := ' WHERE A.LOC_STATUS = ''A'' ';


     R_RelatorioControlePatrimonial.IB_Localizacao.Close;
     R_RelatorioControlePatrimonial.IB_Localizacao.SQL.Text := 'SELECT *             ' +
                                                               '  FROM LOCALIZACAO A ' + c_where ;
     R_RelatorioControlePatrimonial.IB_Localizacao.Open;

     R_RelatorioControlePatrimonial.frxLocalizacao.ShowReport();
   end;

   if CBRelatorios.ItemIndex = 2 then
   begin
    if cbAtivo.Checked then
        c_where := ' WHERE A.EDC_STATUS = ''A'' ';

     R_RelatorioControlePatrimonial.IB_EstadoConservacao.Close;
     R_RelatorioControlePatrimonial.IB_EstadoConservacao.SQL.Text := 'SELECT *                       ' +
                                                                     '  FROM ESTADO_DE_CONSERVACAO A ' + c_where ;
     R_RelatorioControlePatrimonial.IB_EstadoConservacao.Open;

     R_RelatorioControlePatrimonial.frxEstadoConservacao.ShowReport();

   end;

   if CBRelatorios.ItemIndex = 3 then
   begin
      c_where := ' WHERE ';

      if cbAtivo.Checked then
         c_status := ' A.TPB_STATUS = ''A'' ';

      if EdEmpresa.Text <> EmptyStr then
         c_empresa       := ' A.BNI_EMPRESA = ' + EdEmpresa.Text;

      if EdProduto.Text <> EmptyStr then
         c_produto       := ' A.BNI_CODIGO = ' + EdProduto.Text;

      if EdFornecedor.Text <> EmptyStr then
         c_fornecedor    := '  A.BNI_FORNECEDOR = ' + EdFornecedor.Text;

      if EdNumeroSerie.Text <> EmptyStr then
         c_num_serie     := ' A.BNI_NUM_SERIE = ' + EdNumeroSerie.Text;

      if (c_status <> '' ) then
         c_where := c_where + c_status;

      if (c_empresa <> '' ) then
         c_where := c_where + c_empresa;

      if (c_produto <> '' ) then
         c_where := c_where + c_produto;

      if (c_fornecedor <> '' ) then
         c_where := c_where + c_fornecedor;

      if (c_num_serie <> '' ) then
         c_where := c_where + c_num_serie;

      if c_where = ' WHERE ' then
         c_where := '';


     R_RelatorioControlePatrimonial.IBBensImobilizados.Close;
     R_RelatorioControlePatrimonial.IBBensImobilizados.SQL.Text :=   'SELECT A.BNI_EMPRESA,                                                          ' +
                                                                     '       A.BNI_CODIGO,                                                           ' +
                                                                     '       A.BNI_NUM_SERIE,                                                        ' +
                                                                     '       A.BNI_NR_NOTA,                                                          ' +
                                                                     '       A.BNI_FORNECEDOR,                                                       ' +
                                                                     '       B.PESS_NOME AS NOME,                                                    ' +
                                                                     '       A.BNI_DESCRICAO,                                                        ' +
                                                                     '       C.TPB_DESCRICAO AS TIPO,                                                ' +
                                                                     '       D.LOC_DESCRICAO AS LOCALIZACAO,                                         ' +
                                                                     '       E.EDC_DESCRICAO AS ESTADO_CONSERVACAO,                                  ' +
                                                                     '       A.BNI_MANUTENCAO,                                                       ' +
                                                                     '       A.BNI_DATA_AQUISICAO,                                                   ' +
                                                                     '       A.BNI_VLR_AQUISICAO,                                                    ' +
                                                                     '       A.BNI_VLR_RESIDUAL,                                                     ' +
                                                                     '       A.BNI_VLR_AGREGADO,                                                     ' +
                                                                     '       A.BNI_VLR_ATUAL,                                                        ' +
                                                                     '       A.BNI_DEPRECIACAO,                                                      ' +
                                                                     '       A.BNI_STATUS                                                            ' +
                                                                     '  FROM BENS_IMOBILIZADOS A                                                     ' +
                                                                     ' INNER JOIN PESSOAS B ON B.PESS_CODIGO = A.BNI_FORNECEDOR                      ' +
                                                                     ' INNER JOIN TIPO_DE_BENS C ON A.BNI_TIPO = C.TPB_CODIGO                        ' +
                                                                     ' INNER JOIN LOCALIZACAO D ON A.BNI_LOCALIZACAO = D.LOC_CODIGO                  ' +
                                                                     ' INNER JOIN ESTADO_DE_CONSERVACAO E ON A.BNI_ESTADO_CONSERVACAO = E.EDC_CODIGO ' + c_where ;
     R_RelatorioControlePatrimonial.IBBensImobilizados.Open;

     R_RelatorioControlePatrimonial.frxBensImobilizados.ShowReport();
   end;

end;

end.
