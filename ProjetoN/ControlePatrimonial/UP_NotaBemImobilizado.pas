unit UP_NotaBemImobilizado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.Grids,
  Vcl.DBGrids, IBX.IBQuery, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons,
  UM_BensImobilizados, UP_NotaEntrada, HP_PesquisaNota;

type
  TP_PesquisaNotaBemImobilizado = class(TForm)
    DBGrid1: TDBGrid;
    cdsProdutos: TClientDataSet;
    DProdutos: TDataSource;
    cdsProdutosCDS_EMPRESA: TIntegerField;
    gbPesquisa: TGroupBox;
    Label1: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    lbEmpresa: TLabel;
    lbProduto: TLabel;
    lbFornecedor: TLabel;
    sbPesquisar: TSpeedButton;
    bt_GerarEntrada: TSpeedButton;
    sbCancelar: TSpeedButton;
    cdsProdutosCDS_FORNECEDOR: TIntegerField;
    cdsProdutosCDS_NOTA: TIntegerField;
    cdsProdutosCDS_QTD_NOTA: TFloatField;
    cdsProdutosCDS_QTD_BEN: TFloatField;
    DBEdit1: TEdit;
    DBEdit2: TEdit;
    DBEdit5: TEdit;
    DBEdit4: TEdit;
    SB_Help: TSpeedButton;
    procedure sdfExit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure sbPesquisarClick(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure sbCancelarClick(Sender: TObject);
    procedure bt_GerarEntradaClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure SB_HelpClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure PesquisaDados (i_empresa, i_nota, i_pessoa : integer; s_produto :string);
  end;

var
  P_PesquisaNotaBemImobilizado: TP_PesquisaNotaBemImobilizado;

implementation

{$R *.dfm}

uses dm000, udmControlePatrimonial, UP_empresa, UDM_contabil, UP_Produto,
  UDM_Estoque, UP_Pessoa, UDM_PedCompra;

procedure TP_PesquisaNotaBemImobilizado.sdfExit(Sender: TObject);
var
     QryVerificaEmpresa : TIBQuery;
begin
  try
     QryVerificaEmpresa := dmBanco.funcCriaQuery;

     if DBEdit1.Text <> '' then
     BEGIN
        QryVerificaEmpresa.Close;
        QryVerificaEmpresa.SQL.Clear;
        QryVerificaEmpresa.SQL.Text := 'SELECT A.EMP_COD ,         ' +
                                       '       A.EMP_RAZAO         ' +
                                       '  FROM EMPRESA A           ' +
                                       ' WHERE A.EMP_COD = :CODIGO ' ;
        QryVerificaEmpresa.ParamByName('CODIGO').AsInteger := STRTOINT(DBEdit1.Text);
        QryVerificaEmpresa.Open;
     END;

     if not (QryVerificaEmpresa.IsEmpty) then
     begin
        lbEmpresa.Caption := QryVerificaEmpresa.FieldByName('EMP_RAZAO').AsString;
        lbEmpresa.Visible := true;
     end;


     if (QryVerificaEmpresa.IsEmpty) OR (DBEdit1.Text = EMPTYSTR )then
     BEGIN
        P_empresa := TP_empresa.Create(Self);
        try
           P_empresa.ShowModal;
        finally
           DBEdit1.Text := DM_contabil.empresaEMP_COD.AsString;
           lbEmpresa.Caption := DM_contabil.empresaEMP_RAZAO.AsString;
           lbEmpresa.Visible := true;
           FreeAndNil(P_empresa);
     end;
     END;
  finally
     FreeAndNil(QryVerificaEmpresa);
  end;
end;

procedure TP_PesquisaNotaBemImobilizado.DBEdit2Exit(Sender: TObject);
var
   QryVerificaProduto : TIBQuery;

begin
  try
     QryVerificaProduto := dmBanco.funcCriaQuery;

     if DBEdit2.Text <> '' then
     BEGIN
        QryVerificaProduto.Close;
        QryVerificaProduto.SQL.Clear;
        QryVerificaProduto.SQL.Text := 'SELECT A.PRO_EMPRESA,                 ' +
                                       '       A.PRO_CODIGO,                  ' +
                                       '       A.PRO_DESCRICAO                ' +
                                       '  FROM PRODUTOS A                     ' +
                                       ' WHERE A.PRO_EMPRESA = :EMPRESA AND   ' +
                                       '       A.PRO_CODIGO = :CODIGO         ' ;
        QryVerificaProduto.ParamByName('EMPRESA').AsInteger := STRTOINT(DBEdit1.Text);
        QryVerificaProduto.ParamByName('CODIGO').AsInteger := STRTOINT(DBEdit2.Text);
        QryVerificaProduto.Open;
     END;

     if not (QryVerificaProduto.IsEmpty) then
     begin
        lbProduto.Caption := QryVerificaProduto.FieldByName('PRO_DESCRICAO').AsString;
        lbProduto.Visible := true;
     end;

     if (QryVerificaProduto.IsEmpty) OR (DBEdit2.Text = EMPTYSTR )then
     BEGIN
        PProduto := TPProduto.Create(Self);
        try
           PProduto.ShowModal;
        finally
           DBEdit2.Text := DM_Estoque.ProdutosPRO_CODIGO.AsString;
           lbProduto.Caption := DM_Estoque.ProdutosPRO_DESCRICAO.asstring;
           lbProduto.Visible := true;
           FreeAndNil(PProduto);
     end;
     END;
  finally
     FreeAndNil(QryVerificaProduto);
  end;

end;

procedure TP_PesquisaNotaBemImobilizado.DBEdit4Exit(Sender: TObject);
var
   QryVerificaNota : TIBQuery;
begin
  try
     QryVerificaNota := dmBanco.funcCriaQuery;

     if DBEdit4.Text <> '' then
     BEGIN
        QryVerificaNota.Close;
        QryVerificaNota.SQL.Clear;
        QryVerificaNota.SQL.Text := 'SELECT A.NTE_NR_NOTA                  ' +
                                    '  FROM NOTA_ENTRADA A                 ' +
                                    ' WHERE A.NTE_EMPRESA = :EMPRESA AND   ' +
                                    '       A.NTE_NR_NOTA = :NOTA AND      ' +
                                    '       A.NTE_PESSOA = :PESSOA         ' ;
        QryVerificaNota.ParamByName('EMPRESA').asinteger := STRTOINT(DBEdit1.Text);
        QryVerificaNota.ParamByName('NOTA').AsInteger := STRTOINT(DBEdit4.Text);
        QryVerificaNota.ParamByName('PESSOA').AsInteger := STRTOINT(DBEdit5.Text);
        QryVerificaNota.Open;
     END;

     if (QryVerificaNota.IsEmpty) OR (DBEdit4.Text = EMPTYSTR )then
     BEGIN
        PNotaEntrada := TPNotaEntrada.Create(Self);
        try
            PNotaEntrada.ShowModal;
        finally
            DBEdit4.Text := dmPedCompra.NotaEntradaNTE_NR_NOTA.AsString;
            FreeAndNil(PNotaEntrada);
        end;
     end;


  finally
     FreeAndNil(QryVerificaNota);
  end;
end;

procedure TP_PesquisaNotaBemImobilizado.DBEdit5Exit(Sender: TObject);
var
   QryVerificaFornecedor : TIBQuery;

begin
  try
     QryVerificaFornecedor := dmBanco.funcCriaQuery;

     if DBEdit5.Text <> '' then
     BEGIN
        QryVerificaFornecedor.Close;
        QryVerificaFornecedor.SQL.Clear;
        QryVerificaFornecedor.SQL.Text := 'SELECT A.PESS_CODIGO,              ' +
                                          '       A.PESS_NOME                 ' +
                                          '  FROM PESSOAS A                   ' +
                                          ' WHERE A.PESS_CODIGO = :FORNECEDOR ' ;
        QryVerificaFornecedor.ParamByName('FORNECEDOR').AsInteger := STRTOINT(DBEdit5.Text);
        QryVerificaFornecedor.Open;
     END;

     if NOT (QryVerificaFornecedor.IsEmpty) then
     BEGIN
        lbFornecedor.Caption := QryVerificaFornecedor.FieldByName('PESS_NOME').AsString;
        lbFornecedor.Visible := true;
     END;

     if (QryVerificaFornecedor.IsEmpty) OR (DBEdit5.Text = EMPTYSTR )then
     BEGIN
        PPessoa := TPPessoa.Create(Self);
        try
           PPessoa.ShowModal;
        finally
           DBEdit5.Text := dmPedCompra.PessoaPESS_CODIGO.AsString;
           lbFornecedor.Caption := dmPedCompra.PessoaPESS_NOME.AsString;
           lbFornecedor.Visible := true;
           FreeAndNil(PPessoa);
     end;
     END;
  finally
     FreeAndNil(QryVerificaFornecedor);
  end;
end;

procedure TP_PesquisaNotaBemImobilizado.Edit1Exit(Sender: TObject);
var
   QryVerificaFornecedor : TIBQuery;

begin
  try
     QryVerificaFornecedor := dmBanco.funcCriaQuery;

     if DBEdit5.Text <> '' then
     BEGIN
        QryVerificaFornecedor.Close;
        QryVerificaFornecedor.SQL.Clear;
        QryVerificaFornecedor.SQL.Text := 'SELECT A.PESS_CODIGO,              ' +
                                          '       A.PESS_NOME                 ' +
                                          '  FROM PESSOAS A                   ' +
                                          ' WHERE A.PESS_CODIGO = :FORNECEDOR ' ;
        QryVerificaFornecedor.ParamByName('FORNECEDOR').AsInteger := STRTOINT(DBEdit5.Text);
        QryVerificaFornecedor.Open;
     END;

     if NOT (QryVerificaFornecedor.IsEmpty) then
     BEGIN
        lbFornecedor.Caption := QryVerificaFornecedor.FieldByName('PESS_NOME').AsString;
        lbFornecedor.Visible := true;
     END;

     if (QryVerificaFornecedor.IsEmpty) OR (DBEdit5.Text = EMPTYSTR )then
     BEGIN
        PPessoa := TPPessoa.Create(Self);
        try
           PPessoa.ShowModal;
        finally
           DBEdit5.Text := dmPedCompra.PessoaPESS_CODIGO.AsString;
           lbFornecedor.Caption := dmPedCompra.PessoaPESS_NOME.AsString;
           lbFornecedor.Visible := true;
           FreeAndNil(PPessoa);
     end;
     END;
  finally
     FreeAndNil(QryVerificaFornecedor);
  end;
end;

procedure TP_PesquisaNotaBemImobilizado.FormCreate(Sender: TObject);
begin
   cdsProdutos.CreateDataSet;
end;

procedure TP_PesquisaNotaBemImobilizado.DBEdit1Exit(Sender: TObject);
var
   QryVerificaEmpresa : TIBQuery;
begin
  try
     QryVerificaEmpresa := dmBanco.funcCriaQuery;

     if DBEdit1.Text <> '' then
     BEGIN
        QryVerificaEmpresa.Close;
        QryVerificaEmpresa.SQL.Clear;
        QryVerificaEmpresa.SQL.Text := 'SELECT A.EMP_COD ,         ' +
                                       '       A.EMP_RAZAO         ' +
                                       '  FROM EMPRESA A           ' +
                                       ' WHERE A.EMP_COD = :CODIGO ' ;
        QryVerificaEmpresa.ParamByName('CODIGO').AsInteger := STRTOINT(DBEdit1.Text);
        QryVerificaEmpresa.Open;
     END;

     if not (QryVerificaEmpresa.IsEmpty) then
     begin
        lbEmpresa.Caption := QryVerificaEmpresa.FieldByName('EMP_RAZAO').AsString;
        lbEmpresa.Visible := true;
     end;


     if (QryVerificaEmpresa.IsEmpty) OR (DBEdit1.Text = EMPTYSTR )then
     BEGIN
        P_empresa := TP_empresa.Create(Self);
        try
           P_empresa.ShowModal;
        finally
           DBEdit1.Text := DM_contabil.empresaEMP_COD.AsString;
           lbEmpresa.Caption := DM_contabil.empresaEMP_RAZAO.AsString;
           lbEmpresa.Visible := true;
           FreeAndNil(P_empresa);
     end;
     END;
  finally
     FreeAndNil(QryVerificaEmpresa);
  end;
end;

procedure TP_PesquisaNotaBemImobilizado.PesquisaDados(i_empresa, i_nota,
  i_pessoa: integer; s_produto: string);
var
   QrySelecionaProdutos : TIBQuery;
begin
   QrySelecionaProdutos  := dmBanco.funcCriaQuery;
   try
      QrySelecionaProdutos.Close;
      QrySelecionaProdutos.SQL.Clear;
      QrySelecionaProdutos.SQL.Text := 'SELECT A.NTE_EMPRESA,                                            ' +
                                       '       A.NTE_NR_NOTA,                                            ' +
                                       '       A.NTE_PESSOA,                                             ' +
                                       '       B.INE_PRODUTO,                                            ' +
                                       '       B.INE_QTD                                                 ' +
                                       '  FROM NOTA_ENTRADA A                                            ' +
                                       ' INNER JOIN ITEM_NOTA_ENTRADA B ON A.NTE_EMPRESA = B.INE_EMPRESA ' +
                                       '                               AND A.NTE_NR_NOTA = B.INE_NR_NOTA ' +
                                       ' WHERE A.NTE_EMPRESA = :EMPRESA AND                              ' +
                                       '       A.NTE_NR_NOTA = :NOTA AND                                 ' +
                                       '       A.NTE_PESSOA = :PESSOA AND                                ' +
                                       '       B.INE_PRODUTO = :PRODUTO                                  ' ;
      QrySelecionaProdutos.ParamByName('EMPRESA').AsInteger := i_empresa;
      QrySelecionaProdutos.ParamByName('NOTA').AsInteger := i_nota;
      QrySelecionaProdutos.ParamByName('PESSOA').AsInteger := i_pessoa;
      QrySelecionaProdutos.ParamByName('PRODUTO').asstring := s_produto;
      QrySelecionaProdutos.Open;


   finally

   end;

end;

procedure TP_PesquisaNotaBemImobilizado.sbCancelarClick(Sender: TObject);
begin
   close;
   DMControlePatrimonial.BenImobilizado.Cancel;
end;

procedure TP_PesquisaNotaBemImobilizado.sbPesquisarClick(Sender: TObject);
var
   QrySelecionanota  : TIBQuery;
   QryVerificaSaldo  : TIBQuery;
   f_QuantidadeBen   : double;
   f_QuantidadeNota  : double;
   s_produto         : string;

begin
   f_QuantidadeBen  := 0;
   f_QuantidadeNota := 0;

   if DBEdit1.Text = EmptyStr then
   begin
      Showmessage('Atenção!, Empresa inválido, por favor informe uma empresa válida!');
      if DBEdit1.CanFocus then
         DBEdit1.SetFocus;
      exit;
   end;

   if DBEdit2.Text = EmptyStr then
   begin
      Showmessage('Atenção!, Produto inválido, por favor informe um Produto válida!');
      if DBEdit2.CanFocus then
         DBEdit2.SetFocus;
      exit;
   end;
   s_produto := DBEdit2.Text;

   if DBEdit5.Text = EmptyStr then
   begin
      Showmessage('Atenção!, Fornecedor inválido, por favor informe um Fornecedor válida!');
      if DBEdit5.CanFocus then
         DBEdit5.SetFocus;
      exit;
   end;

   if DBEdit4.Text = EmptyStr then
   begin
      Showmessage('Atenção!, Número da Nota inválido, por favor informe um Número de Nota válida!');
      if DBEdit4.CanFocus then
         DBEdit4.SetFocus;
      exit;
   end;

   QrySelecionanota := dmBanco.funcCriaQuery;
   QryVerificaSaldo := dmBanco.funcCriaQuery;

   try
      // verifica se possui entrada do item informado e a quantidade que possui na entrada
      QrySelecionanota.Close;
      QrySelecionanota.SQL.Clear;
      QrySelecionanota.sql.Text :=  'SELECT A.NTE_EMPRESA,                                            ' +
                                    '       A.NTE_NR_NOTA,                                            ' +
                                    '       A.NTE_PESSOA,                                             ' +
                                    '       B.INE_PRODUTO,                                            ' +
                                    '       B.INE_QTD                                                 ' +
                                    '  FROM NOTA_ENTRADA A                                            ' +
                                    ' INNER JOIN ITEM_NOTA_ENTRADA B ON A.NTE_EMPRESA = B.INE_EMPRESA ' +
                                    '                               AND A.NTE_NR_NOTA = B.INE_NR_NOTA ' +
                                    '                               AND A.NTE_PESSOA = B.INE_PESSOA   ' +
                                    'INNER JOIN PRODUTOS D ON B.INE_EMPRESA = D.PRO_EMPRESA           ' +
                                    '                     AND B.INE_PRODUTO = D.PRO_CODIGO            ' +
                                    ' WHERE A.NTE_EMPRESA = :EMPRESA AND                              ' +
                                    '       A.NTE_NR_NOTA = :NOTA AND                                 ' +
                                    '       A.NTE_PESSOA = :PESSOA AND                                ' +
                                    '       B.INE_PRODUTO = :PRODUTO AND                              ' +
                                    '       D.pro_grupo = ''B''                                       ' ;
      QrySelecionanota.ParamByName('EMPRESA').asinteger   := strtoint(DBEdit1.Text);
      QrySelecionanota.ParamByName('NOTA').asinteger      := strtoint(DBEdit4.Text);
      QrySelecionanota.ParamByName('PESSOA').asinteger    := strtoint(DBEdit5.Text);
      QrySelecionanota.ParamByName('PRODUTO').asstring    :=  s_produto;
      QrySelecionanota.Open;

      if QrySelecionanota.IsEmpty then
      begin
         showmessage('Não foi encontrado nenhuma nota fiscal com as informações inseridas!' + slinebreak +
                     'Por favor, revise as informações e tente novamente!'  );
         exit;
      end;

      if not (QrySelecionanota.IsEmpty) then
      begin
         f_QuantidadeNota :=  QrySelecionanota.FieldByName('INE_QTD').AsFloat;

       // verifica se ja possui entrada do item como bem imobilizado e a quantidade
         QryVerificaSaldo.Close;
         QryVerificaSaldo.sql.Clear;
         QryVerificaSaldo.sql.Text :=  'SELECT A.BNI_EMPRESA,                     ' +
                                       '       A.BNI_CODIGO,                      ' +
                                       '       A.BNI_NR_NOTA,                     ' +
                                       '       A.BNI_FORNECEDOR,                  ' +
                                       '       COUNT(A.BNI_CODIGO) AS QUANTIDADE  ' +
                                       '  FROM BENS_IMOBILIZADOS A                ' +
                                       ' WHERE A.BNI_EMPRESA = :EMPRESA AND       ' +
                                       '       A.BNI_CODIGO = :CODIGO AND         ' +
                                       '       A.BNI_NR_NOTA = :NOTA AND          ' +
                                       '       A.BNI_FORNECEDOR = :FORNECEDOR     ' +
                                       ' GROUP BY 1, 2, 3, 4                      ' ;
         QryVerificaSaldo.ParamByName('EMPRESA').ASINTEGER    := strtoint(DBEdit1.Text);
         QryVerificaSaldo.ParamByName('CODIGO').asstring      := DBEdit2.Text;
         QryVerificaSaldo.ParamByName('NOTA').AsInteger       := strtoint(DBEdit4.Text);
         QryVerificaSaldo.ParamByName('FORNECEDOR').AsInteger := strtoint(DBEdit5.Text);
         QryVerificaSaldo.Open;
         QryVerificaSaldo.First;

         if QryVerificaSaldo.FieldByName('quantidade').asfloat = null then
            f_QuantidadeBen := 0
         else
         f_QuantidadeBen := QryVerificaSaldo.FieldByName('quantidade').asfloat;

         if f_QuantidadeNota = f_QuantidadeBen then
         begin
            showmessage('Atenção! As quantidades da nota e a quantidade de registro de Bens Imobilizados são os mesmos!' + slinebreak +
                        ' Empresa: ' + QryVerificaSaldo.FieldByName('EMPRESA').asstring + ' Produto: '+ QryVerificaSaldo.FieldByName('CODIGO').asstring + ' Nota: ' +
                        QryVerificaSaldo.FieldByName('NOTA').asstring + ' Fornecedor : ' + QryVerificaSaldo.FieldByName('FORNECEDOR').asstring + ' Quantidades: ' + floattostr(f_QuantidadeNota) + Slinebreak +
                        ' Não Será possível dar continuidade, por favor revise as informações!');
            exit;
         end;


         cdsProdutos.EmptyDataSet;

         cdsProdutos.append;
         cdsProdutosCDS_EMPRESA.AsInteger    := QrySelecionanota.FieldByName('NTE_EMPRESA').AsInteger;
         cdsProdutosCDS_FORNECEDOR.asinteger := QrySelecionanota.FieldByName('NTE_PESSOA').AsInteger;
         cdsProdutosCDS_NOTA.AsInteger       := QrySelecionanota.FieldByName('NTE_NR_NOTA').asinteger;
         cdsProdutosCDS_QTD_NOTA.AsFloat     := f_QuantidadeNota;
         cdsProdutosCDS_QTD_BEN.AsFloat      := f_QuantidadeBen;
         cdsProdutos.post;

      end;

      bt_GerarEntrada.Enabled := not(cdsProdutos.IsEmpty);
   finally
      FreeAndNil(QrySelecionanota);
      FreeAndNil(QryVerificaSaldo);
   end;
end;

procedure TP_PesquisaNotaBemImobilizado.SB_HelpClick(Sender: TObject);
begin
   H_PesquisaNota := TH_PesquisaNota.Create(Self);
   try
      H_PesquisaNota.ShowModal;
   finally
      FreeAndNil(H_PesquisaNota);
   end;
end;

procedure TP_PesquisaNotaBemImobilizado.bt_GerarEntradaClick(Sender: TObject);
var
   QryRetornaDados  : TIBQuery;
begin
   QryRetornaDados := dmBanco.funcCriaQuery;
   try

      QryRetornaDados.Close;
      QryRetornaDados.SQL.Clear;
      QryRetornaDados.SQL.Text :=   'SELECT A.NTE_EMPRESA,                                            ' +
                                    '       B.INE_PRODUTO,                                            ' +
                                    '       d.pro_descricao,                                          ' +
                                    '       A.NTE_PESSOA,                                             ' +
                                    '       A.NTE_NR_NOTA,                                            ' +
                                    '       a.nte_data,                                               ' +
                                    '       B.ine_vlr_unitario                                        ' +
                                    '  FROM NOTA_ENTRADA A                                            ' +
                                    ' INNER JOIN ITEM_NOTA_ENTRADA B ON A.NTE_EMPRESA = B.INE_EMPRESA ' +
                                    '                               AND A.NTE_NR_NOTA = B.INE_NR_NOTA ' +
                                    '                               AND A.NTE_PESSOA = B.INE_PESSOA   ' +
                                    'INNER JOIN PRODUTOS D ON B.INE_EMPRESA = D.PRO_EMPRESA           ' +
                                    '                     AND B.INE_PRODUTO = D.PRO_CODIGO            ' +
                                    ' WHERE A.NTE_EMPRESA = :EMPRESA AND                              ' +
                                    '       A.NTE_NR_NOTA = :NOTA AND                                 ' +
                                    '       A.NTE_PESSOA = :PESSOA AND                                ' +
                                    '       B.INE_PRODUTO = :PRODUTO AND                              ' +
                                    '       D.pro_grupo = ''B''                                       ' ;
      QryRetornaDados.ParamByName('empresa').asstring := DBEdit1.Text;
      QryRetornaDados.ParamByName('NOTA').asstring := DBEdit4.text;
      QryRetornaDados.ParamByName('PESSOA').asstring := DBEdit5.Text;
      QryRetornaDados.ParamByName('PRODUTO').asstring := DBEdit2.Text;
      QryRetornaDados.Open;

      MBensImobilizados := TMBensImobilizados.Create(Self);
      try
         if not (DMControlePatrimonial.BenImobilizado.Active) then
         DMControlePatrimonial.BenImobilizado.Open;


         DMControlePatrimonial.BenImobilizado.Insert;
         MBensImobilizados.QryPadrao := DMControlePatrimonial.BenImobilizado;
         MBensImobilizados.b_finalizaTransacao := true;


         MBensImobilizados.dbBNI_EMPRESA.Text          := QryRetornaDados.FieldByName('NTE_EMPRESA').AsString;
         MBensImobilizados.dbBNI_CODIGO.Text           := QryRetornaDados.FieldByName('INE_PRODUTO').AsString;
         MBensImobilizados.dbBNI_DESCRICAO.Text        := QryRetornaDados.FieldByName('pro_descricao').AsString;
         MBensImobilizados.dbBNI_FORNECEDOR.Text       := QryRetornaDados.FieldByName('NTE_PESSOA').AsString;
         MBensImobilizados.dbDESCRICAO_FORNECEDOR.Text := lbFornecedor.Caption;
         MBensImobilizados.dbBNI_NR_NOTA.Text          := QryRetornaDados.FieldByName('NTE_NR_NOTA').AsString;
         MBensImobilizados.dbBNI_DATA_AQUISICAO.text   := DateToStr(QryRetornaDados.FieldByName('nte_data').AsDateTime);
         MBensImobilizados.dbBNI_VLR_AQUISICAO.text    := QryRetornaDados.FieldByName('ine_vlr_unitario').AsString;
         MBensImobilizados.dbBNI_VLR_RESIDUAL.text     := inttostr(0);
         MBensImobilizados.dbBNI_DEPRECIACAO.Text      := inttostr(0);

         MBensImobilizados.ShowModal;
      finally
         FreeAndNil(MBensImobilizados);
      end;
   finally
      FreeAndNil(QryRetornaDados);
      close;
   end;

end;


end.

