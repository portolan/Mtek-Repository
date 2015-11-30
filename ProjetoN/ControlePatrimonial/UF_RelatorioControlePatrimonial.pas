unit UF_RelatorioControlePatrimonial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls,
  UR_RelControlePatrimonial, dm000, DB, IBX.IBQuery, UP_empresa, UDM_contabil,
  UDM_Estoque, UP_Produto, UP_Pessoa, UDM_PedCompra, udmControlePatrimonial,
  UP_EstadoConservacao, UP_TipoBens, UP_Localizacao;

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
    cbAnalitico: TCheckBox;
    EdTipo: TEdit;
    Tipo: TLabel;
    lbDescricaoTipo: TLabel;
    edlocalizacao: TEdit;
    Localizacao: TLabel;
    lbdescricaolocalizacao: TLabel;
    Estado_de_Conservacao: TLabel;
    edEstadoDeConservacao: TEdit;
    lbEstadoDeConservacao: TLabel;
    cbManutencao: TCheckBox;
    procedure sbSairClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ProcCamposBensImobilizados (Situacao : boolean);
    Procedure ProcHabDesCamposBenImobilizado;
    procedure CBRelatoriosChange(Sender: TObject);
    procedure CBRelatoriosClick(Sender: TObject);
    procedure EdEmpresaExit(Sender: TObject);
    procedure EdProdutoExit(Sender: TObject);
    procedure EdFornecedorExit(Sender: TObject);
    procedure edEstadoDeConservacaoExit(Sender: TObject);
    procedure EdTipoExit(Sender: TObject);
    procedure edlocalizacaoExit(Sender: TObject);
    procedure cbAnaliticoClick(Sender: TObject);
    procedure cbManutencaoClick(Sender: TObject);
  private
    { Private declarations }
   procedure ProcPossuiEmpresa (possui: boolean);
   procedure ProcCOntrolaComponente;
  public
    { Public declarations }
  end;

var
  F_RelControlePAtrimonial: TF_RelControlePAtrimonial;

implementation

{$R *.dfm}

procedure TF_RelControlePAtrimonial.cbAnaliticoClick(Sender: TObject);
begin
   ProcCOntrolaComponente;
end;

procedure TF_RelControlePAtrimonial.cbManutencaoClick(Sender: TObject);
begin
   ProcCOntrolaComponente;
end;

procedure TF_RelControlePAtrimonial.CBRelatoriosChange(Sender: TObject);
begin
   ProcHabDesCamposBenImobilizado;
end;

procedure TF_RelControlePAtrimonial.CBRelatoriosClick(Sender: TObject);
begin
   ProcHabDesCamposBenImobilizado;
end;

procedure TF_RelControlePAtrimonial.EdEmpresaExit(Sender: TObject);
var
   QryVerificaEmpresa : TIBQuery;
begin

  if EdEmpresa.Text <> '' then
  BEGIN
     QryVerificaEmpresa := dmBanco.funcCriaQuery;
     try

        QryVerificaEmpresa.Close;
        QryVerificaEmpresa.SQL.Clear;
        QryVerificaEmpresa.SQL.Text := 'SELECT A.EMP_COD ,         ' +
                                       '       A.EMP_RAZAO         ' +
                                       '  FROM EMPRESA A           ' +
                                       ' WHERE A.EMP_COD = :CODIGO ' ;
        QryVerificaEmpresa.ParamByName('CODIGO').AsInteger := STRTOINT(EdEmpresa.Text);
        QryVerificaEmpresa.Open;

        if not (QryVerificaEmpresa.IsEmpty) then
        begin
           lbDescricaoEmpresa.Caption := QryVerificaEmpresa.FieldByName('EMP_RAZAO').AsString;
           lbDescricaoEmpresa.Visible := true;
        end;

        if (QryVerificaEmpresa.IsEmpty)then
        BEGIN
           P_empresa := TP_empresa.Create(Self);
           try
              P_empresa.ShowModal;
           finally
              EdEmpresa.Text := DM_contabil.empresaEMP_COD.AsString;
              lbDescricaoEmpresa.Caption := DM_contabil.empresaEMP_RAZAO.AsString;
              lbDescricaoEmpresa.Visible := true;
              FreeAndNil(P_empresa);
           end;
        END;

     finally
        FreeAndNil(QryVerificaEmpresa);
     end;
  END
  else
     lbDescricaoEmpresa.caption := '';

  ProcPossuiEmpresa(EdEmpresa.Text <> '');

end;

procedure TF_RelControlePAtrimonial.edEstadoDeConservacaoExit(Sender: TObject);
var
   QryVerificaEstado : TIBQuery;
   b_achou           : boolean;
begin
  b_achou := false;

  if edEstadoDeConservacao.text <> EmptyStr  then
  begin

     QryVerificaEstado := dmBanco.funcCriaQuery;
     try
        QryVerificaEstado.Close;
        QryVerificaEstado.SQL.Clear;
        QryVerificaEstado.SQL.Text := 'SELECT *                        ' +
                                      '  FROM ESTADO_DE_CONSERVACAO A  ' +
                                      ' WHERE A.EDC_CODIGO = :CODIGO   ' ;
        QryVerificaEstado.ParamByName('CODIGO').AsInteger := STRTOINT(edEstadoDeConservacao.Text);
        QryVerificaEstado.Open;

        if not(QryVerificaEstado.IsEmpty) then
        begin
           lbEstadoDeConservacao.Caption := QryVerificaEstado.FieldByName('EDC_DESCRICAO').asstring;
           b_achou := TRUE;
        end
        else
           b_achou := false;

        if (b_achou = false) then
        begin

          P_EstadoConservacao := TP_EstadoConservacao.Create(Self);
          try
             P_EstadoConservacao.ShowModal;
          finally
             edEstadoDeConservacao.Text := DMControlePatrimonial.EstadoConservacaoEDC_CODIGO.AsString;
             lbEstadoDeConservacao.Caption := DMControlePatrimonial.EstadoConservacaoEDC_DESCRICAO.AsString;
             FreeAndNil(P_EstadoConservacao);
          end;
        end;

     finally
        FreeAndNil(QryVerificaEstado);
     end;
  end
  else
     lbEstadoDeConservacao.Caption := '';

end;

procedure TF_RelControlePAtrimonial.EdFornecedorExit(Sender: TObject);
var
   QryVerificaFornecedor : TIBQuery;

begin
   if EdFornecedor.Text <> '' then
   BEGIN
   QryVerificaFornecedor := dmBanco.funcCriaQuery;
     try

        QryVerificaFornecedor.Close;
        QryVerificaFornecedor.SQL.Clear;
        QryVerificaFornecedor.SQL.Text := 'SELECT A.PESS_CODIGO,              ' +
                                          '       A.PESS_NOME                 ' +
                                          '  FROM PESSOAS A                   ' +
                                          ' WHERE A.PESS_CODIGO = :FORNECEDOR ' ;
        QryVerificaFornecedor.ParamByName('FORNECEDOR').AsInteger := STRTOINT(EdFornecedor.Text);
        QryVerificaFornecedor.Open;

        if NOT (QryVerificaFornecedor.IsEmpty) then
        BEGIN
           lbDescricaoFornecedor.Caption := QryVerificaFornecedor.FieldByName('PESS_NOME').AsString;
           lbDescricaoFornecedor.Visible := true;
        END;

        if (QryVerificaFornecedor.IsEmpty)then
        BEGIN
           PPessoa := TPPessoa.Create(Self);
           try
              PPessoa.ShowModal;
           finally
              EdFornecedor.Text := dmPedCompra.PessoaPESS_CODIGO.AsString;
              lbDescricaoFornecedor.Caption := dmPedCompra.PessoaPESS_NOME.AsString;
              lbDescricaoFornecedor.Visible := true;
              FreeAndNil(PPessoa);
           end;
        END;

     finally
             FreeAndNil(QryVerificaFornecedor);
     end;
   END
   else
      lbDescricaoFornecedor.Caption := '';

end;

procedure TF_RelControlePAtrimonial.edlocalizacaoExit(Sender: TObject);
var
   QrySelecionaLocalizacao : TIBQuery;
   b_achou                : boolean;
begin
  b_achou:= false;

  if edlocalizacao.Text <> EmptyStr then
  begin

     QrySelecionaLocalizacao := dmBanco.funcCriaQuery;
     try
        QrySelecionaLocalizacao.Close;
        QrySelecionaLocalizacao.SQL.Clear;
        QrySelecionaLocalizacao.SQL.Text := 'SELECT * FROM LOCALIZACAO A WHERE A.LOC_CODIGO = :CODIGO';
        QrySelecionaLocalizacao.ParamByName('codigo').AsInteger := strtoint(edlocalizacao.Text);
        QrySelecionaLocalizacao.Open;

        if not (QrySelecionaLocalizacao.IsEmpty) then
        begin
           lbdescricaolocalizacao.Caption := QrySelecionaLocalizacao.FieldByName('LOC_DESCRICAO').AsString;
           b_achou := true;
        end;

        if (b_achou = false) then
        begin
           PLocalizacao := TPLocalizacao.Create(Self);
           try
             PLocalizacao.ShowModal;
           finally
              edlocalizacao.Text := DMControlePatrimonial.LocalizacaoLOC_CODIGO.AsString;
              lbdescricaolocalizacao.Caption := DMControlePatrimonial.LocalizacaoLOC_DESCRICAO.AsString;
              FreeAndNil(PLocalizacao);
           end;
        end;

     finally
        FreeAndNil(QrySelecionaLocalizacao);
     end;
  end
  else
     lbdescricaolocalizacao.Caption := '';

end;

procedure TF_RelControlePAtrimonial.EdProdutoExit(Sender: TObject);
var
   QryVerificaProduto : TIBQuery;
begin

     if EdProduto.Text <> '' then
     BEGIN
        QryVerificaProduto := dmBanco.funcCriaQuery;
        try
           QryVerificaProduto.Close;
           QryVerificaProduto.SQL.Clear;
           QryVerificaProduto.SQL.Text := 'SELECT A.PRO_EMPRESA,                 ' +
                                          '       A.PRO_CODIGO,                  ' +
                                          '       A.PRO_DESCRICAO                ' +
                                          '  FROM PRODUTOS A                     ' +
                                          ' WHERE A.PRO_EMPRESA = :EMPRESA AND   ' +
                                          '       A.PRO_CODIGO = :CODIGO         ' ;
           QryVerificaProduto.ParamByName('EMPRESA').AsInteger := STRTOINT(EdEmpresa.Text);
           QryVerificaProduto.ParamByName('CODIGO').AsInteger := STRTOINT(EdProduto.Text);
           QryVerificaProduto.Open;

           if not (QryVerificaProduto.IsEmpty) then
           begin
              lbDescricaoProduto.Caption := QryVerificaProduto.FieldByName('PRO_DESCRICAO').AsString;
              lbDescricaoProduto.Visible := true;
           end;

           if (QryVerificaProduto.IsEmpty) then
           BEGIN
              PProduto := TPProduto.Create(Self);
              try
                 PProduto.ShowModal;
              finally
                 EdProduto.Text := DM_Estoque.ProdutosPRO_CODIGO.AsString;
                 lbDescricaoProduto.Caption := DM_Estoque.ProdutosPRO_DESCRICAO.asstring;
                 lbDescricaoProduto.Visible := true;
                 FreeAndNil(PProduto);
              end;
           END;

        finally
           FreeAndNil(QryVerificaProduto);
        end;
     END
     else
        lbDescricaoProduto.Caption := '';
end;

procedure TF_RelControlePAtrimonial.EdTipoExit(Sender: TObject);
var
   QrySelecionaTipo : TIBQuery;
   b_achou            : boolean;
begin
   b_achou := false;

  if EdTipo.Text <> EmptyStr then
  begin

     QrySelecionaTipo := dmBanco.funcCriaQuery;
     try
        QrySelecionaTipo.Close;
        QrySelecionaTipo.SQL.Clear;
        QrySelecionaTipo.SQL.Text := 'SELECT * FROM TIPO_DE_BENS A WHERE A.TPB_CODIGO = :CODIGO';
        QrySelecionaTipo.ParamByName('codigo').AsInteger := strtoint(EdTipo.Text);
        QrySelecionaTipo.Open;

        if not (QrySelecionaTipo.IsEmpty) then
        begin
           EdTipo.Text              := QrySelecionaTipo.FieldByName('TPB_CODIGO').AsString;
           lbDescricaoTipo.Caption  := QrySelecionaTipo.FieldByName('TPB_DESCRICAO').AsString;
           b_achou := true;
        end;

        if (b_achou = false) then
        begin
           P_TipoBens := TP_TipoBens.Create(Self);
           try
             P_TipoBens.ShowModal;
           finally
              EdTipo.Text := DMControlePatrimonial.TipoBensTPB_CODIGO.AsString;
              lbDescricaoTipo.Caption := DMControlePatrimonial.TipoBensTPB_DESCRICAO.AsString;
              FreeAndNil(P_TipoBens);
           end;
        end;

     finally
        FreeAndNil(QrySelecionaTipo);
     end;
  end
  else
     lbDescricaoTipo.Caption := '';
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
   Tipo.Visible                    := Situacao;
   Localizacao.Visible             := Situacao;
   Estado_de_Conservacao.Visible   := Situacao;
   EdTipo.Visible                  := Situacao;
   edlocalizacao.Visible           := Situacao;
   edEstadoDeConservacao.Visible   := Situacao;
   lbDescricaoTipo.Visible         := Situacao;
   lbdescricaolocalizacao.Visible  := Situacao;
   lbEstadoDeConservacao.Visible   := Situacao;
   cbAnalitico.Visible             := Situacao;
   cbManutencao.Visible            := Situacao;

end;

procedure TF_RelControlePAtrimonial.ProcCOntrolaComponente;
begin

   cbAnalitico.Enabled :=  not (cbManutencao.Checked);
   cbManutencao.Enabled := not (cbAnalitico.Checked);

end;

procedure TF_RelControlePAtrimonial.ProcHabDesCamposBenImobilizado;
begin
   ProcCamposBensImobilizados(CBRelatorios.ItemIndex = 3);
end;

procedure TF_RelControlePAtrimonial.ProcPossuiEmpresa(possui: boolean);
begin
   EdProduto.Enabled := possui;
   EdProduto.Color := clWindow;
   EdFornecedor.Enabled := possui;
   EdFornecedor.Color := clWindow;
   EdNumeroSerie.Enabled :=  possui;
   EdNumeroSerie.Color := clWindow;
end;

procedure TF_RelControlePAtrimonial.sbSairClick(Sender: TObject);
begin
   close;
end;

procedure TF_RelControlePAtrimonial.SpeedButton1Click(Sender: TObject);
var
   c_where        : string;
   c_status       : string;


begin
   c_where         := '';
   c_status        := '';

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
      c_where := 'WHERE ';

      if cbAtivo.Checked then
         c_where := c_where + ' A.TPB_STATUS = ''A'' ';

      if EdEmpresa.Text <> EmptyStr then
         if c_where = 'WHERE ' then
            c_where := c_where + ' A.BNI_EMPRESA = ' + EdEmpresa.Text
         else
            c_where := c_where + ' AND A.BNI_EMPRESA = ' + EdEmpresa.Text;

      if EdProduto.Text <> EmptyStr then
         if c_where = 'WHERE ' then
            c_where := c_where +  ' A.BNI_CODIGO = ' + EdProduto.Text
         else
            c_where := c_where +  ' AND A.BNI_CODIGO = ' + EdProduto.Text;

      if EdFornecedor.Text <> EmptyStr then
         if c_where = 'WHERE ' then
            c_where := c_where +  ' A.BNI_FORNECEDOR = ' + EdFornecedor.Text
         ELSE
            c_where := c_where +  ' AND A.BNI_FORNECEDOR = ' + EdFornecedor.Text;

      if EdNumeroSerie.Text <> EmptyStr then
         if c_where = 'WHERE ' then
            c_where := c_where +  ' A.BNI_NUM_SERIE = ' + EdNumeroSerie.Text
         ELSE
            c_where := c_where +  ' AND A.BNI_NUM_SERIE = ' + EdNumeroSerie.Text;

      if EdTipo.Text <> EmptyStr then
         if c_where = 'WHERE ' then
            c_where := c_where +  ' A.BNI_TIPO = ' + EdTipo.Text
         ELSE
            c_where := c_where +  ' AND A.BNI_TIPO = ' + EdTipo.Text;

      if edlocalizacao.Text <> EmptyStr then
         if c_where = 'WHERE ' then
            c_where := c_where +  ' A.BNI_LOCALIZACAO = ' + edlocalizacao.Text
         ELSE
            c_where := c_where +  ' AND A.BNI_LOCALIZACAO = ' + edlocalizacao.Text;

      if edEstadoDeConservacao.Text <> EmptyStr then
         if c_where = 'WHERE ' then
            c_where := c_where +  ' A.BNI_ESTADO_CONSERVACAO = ' + edEstadoDeConservacao.Text
         ELSE
            c_where := c_where +  ' AND A.BNI_ESTADO_CONSERVACAO = ' + edEstadoDeConservacao.Text;

      if c_where = 'WHERE ' then
         c_where := '';

     if (cbManutencao.Checked) and not(cbAnalitico.Checked) then
     begin

        R_RelatorioControlePatrimonial.IBManutencao.Close;
        R_RelatorioControlePatrimonial.IBManutencao.SQL.Text :=  'SELECT *                                                        ' +
                                                                 '  FROM BENS_IMOBILIZADOS A                                      ' +
                                                                 ' LEFT JOIN MANUTENCAO B ON A.BNI_EMPRESA = B.MAN_EMPRESA        ' +
                                                                 '                       AND A.BNI_CODIGO = B.MAN_BEN             ' +
                                                                 '                       AND A.BNI_NUM_SERIE = B.MAN_NUM_SERIE    ' +
                                                                 ' LEFT JOIN COMPONENTE C ON B.MAN_EMPRESA = C.COM_EMPRESA        ' +
                                                                 '                       AND B.MAN_CODIGO = C.COM_MANUTENCAO      ' + c_where;
         R_RelatorioControlePatrimonial.IBManutencao.Open;
         R_RelatorioControlePatrimonial.frxManutencao.ShowReport();



     end;


     if not(cbAnalitico.Checked) and not (cbManutencao.Checked) then
     begin

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
                                                                        '       A.BNI_DATA_AQUISICAO,                                                   ' +
                                                                        '       A.BNI_VLR_AQUISICAO,                                                    ' +
                                                                        '       A.BNI_VLR_RESIDUAL,                                                     ' +
                                                                        '       A.BNI_VLR_AGREGADO,                                                     ' +
                                                                        '       A.BNI_VLR_ATUAL,                                                        ' +
                                                                        '       A.BNI_DEPRECIACAO,                                                      ' +
                                                                        '       A.BNI_STATUS,                                                           ' +
                                                                        '       A.BNI_TEMPO_DEPRECIACAO,                                                ' +
                                                                        '       A.BNI_TEMPO_RESIDUAL                                                    ' +
                                                                        '  FROM BENS_IMOBILIZADOS A                                                     ' +
                                                                        ' INNER JOIN PESSOAS B ON B.PESS_CODIGO = A.BNI_FORNECEDOR                      ' +
                                                                        ' INNER JOIN TIPO_DE_BENS C ON A.BNI_TIPO = C.TPB_CODIGO                        ' +
                                                                        ' INNER JOIN LOCALIZACAO D ON A.BNI_LOCALIZACAO = D.LOC_CODIGO                  ' +
                                                                        ' INNER JOIN ESTADO_DE_CONSERVACAO E ON A.BNI_ESTADO_CONSERVACAO = E.EDC_CODIGO ' + c_where ;
        R_RelatorioControlePatrimonial.IBBensImobilizados.Open;

        R_RelatorioControlePatrimonial.frxBensImobilizados.ShowReport();
     end;

     if (cbAnalitico.Checked) then
     begin
        R_RelatorioControlePatrimonial.IBBensImobilizadosAnalitico.Close;
        R_RelatorioControlePatrimonial.IBBensImobilizadosAnalitico.SQL.Text :=   'SELECT A.BNI_EMPRESA,                                                          ' +
                                                                                 '       A.BNI_CODIGO,                                                           ' +
                                                                                 '       A.BNI_NUM_SERIE,                                                        ' +
                                                                                 '       A.BNI_NR_NOTA,                                                          ' +
                                                                                 '       A.BNI_FORNECEDOR,                                                       ' +
                                                                                 '       B.PESS_NOME AS NOME,                                                    ' +
                                                                                 '       A.BNI_DESCRICAO,                                                        ' +
                                                                                 '       C.TPB_DESCRICAO AS TIPO,                                                ' +
                                                                                 '       D.LOC_DESCRICAO AS LOCALIZACAO,                                         ' +
                                                                                 '       E.EDC_DESCRICAO AS ESTADO_CONSERVACAO,                                  ' +
                                                                                 '       A.BNI_DATA_AQUISICAO,                                                   ' +
                                                                                 '       A.BNI_VLR_AQUISICAO,                                                    ' +
                                                                                 '       A.BNI_VLR_RESIDUAL,                                                     ' +
                                                                                 '       A.BNI_VLR_AGREGADO,                                                     ' +
                                                                                 '       A.BNI_VLR_ATUAL,                                                        ' +
                                                                                 '       A.BNI_DEPRECIACAO,                                                      ' +
                                                                                 '       A.BNI_STATUS,                                                           ' +
                                                                                 '       A.BNI_TEMPO_DEPRECIACAO,                                                ' +
                                                                                 '       A.BNI_TEMPO_RESIDUAL                                                    ' +
                                                                                 '  FROM BENS_IMOBILIZADOS A                                                     ' +
                                                                                 ' INNER JOIN PESSOAS B ON B.PESS_CODIGO = A.BNI_FORNECEDOR                      ' +
                                                                                 ' INNER JOIN TIPO_DE_BENS C ON A.BNI_TIPO = C.TPB_CODIGO                        ' +
                                                                                 ' INNER JOIN LOCALIZACAO D ON A.BNI_LOCALIZACAO = D.LOC_CODIGO                  ' +
                                                                                 ' INNER JOIN ESTADO_DE_CONSERVACAO E ON A.BNI_ESTADO_CONSERVACAO = E.EDC_CODIGO ' + c_where ;
        R_RelatorioControlePatrimonial.IBBensImobilizadosAnalitico.Open;

        R_RelatorioControlePatrimonial.frxBensImobilizadosAnalitico.ShowReport();

     end;
  end;


end;

end.
