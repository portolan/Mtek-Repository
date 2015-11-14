unit ufrm_Relacionamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtCtrls, UTelaPadrao;

type
   ArrayString = Array of String;
   Array2String = Array [1..2] of String;

type
  TfrmRelacionamento = class(TFrame)
    pnlFrame: TPanel;
    DBE_CAMPO: TDBEdit;
    DBT_DESCRICAO: TDBText;
    lbTitulo: TLabel;
    panelFundo: TPanel;
    procedure DBE_CAMPOExit(Sender: TObject);
  private
    c_sql : String;
    tela_pesquisa: TForm;
    tela_classe : TFormClass;
    ParametrosSQL : ArrayString;
    CamposSQL : ArrayString;
    CamposTela : ArrayString;

  public
    c_whereTela : String;

     procedure procInicializar(CAMPO_CHAVE, CAMPO_DESCRICAO: TField;   // Campos que serao Codigo e Descricao
                               DataSource: TDataSource; // DataSource dos campos passados como parametro
                               c_sql: String; // sql que será executado para vererificar se o código digitado existe
                               tela_pesquisa: TForm; // tela de pesquisa que irá abrir caso o código não exista
                               tela_classe: TFormClass; // classe da tela de pesquisa passada por parametro
                               ParametrosSQL, CamposSQL: ArrayString; // parametros e campos
                                                                     //(que serao passados por parametro) do sql passado
                               CamposTela : ArrayString;  // campos de código e descricao que irá pegar da tela aberta
                               c_whereTela: String = '');
  end;

implementation

{$R *.dfm}

uses dm000;

{ TfrmRelacionamento }

procedure TfrmRelacionamento.DBE_CAMPOExit(Sender: TObject);
var AuxQry : TIBQuery;
   I : Integer;
   procedure chamaTela;
   begin
      tela_pesquisa := tela_classe.Create(Self);
      try
         TxPesqPadrao(tela_pesquisa).b_finalizaTransacao := False;
         TxPesqPadrao(tela_pesquisa).b_somenteConsulta   := True;
         TxPesqPadrao(tela_pesquisa).c_where_tela        := c_whereTela;

         tela_pesquisa.ShowModal;

         DBE_CAMPO.Field.Value     := TxPesqPadrao(tela_pesquisa).QryPadrao.FieldByName(CamposTela[0]).Value;
         DBT_DESCRICAO.Field.Value := TxPesqPadrao(tela_pesquisa).QryPadrao.FieldByName(CamposTela[1]).Value;

         if DBE_CAMPO.Canfocus then
            DBE_CAMPO.Setfocus;
      finally
         FreeAndNil(tela_pesquisa);
      end;   
   end;
   
begin
   if (not DBE_CAMPO.Field.Required) and (DBE_CAMPO.Field.AsString.IsEmpty) then
   begin
      DBT_DESCRICAO.Field.Clear;
      Exit;
   end;      

   AuxQry := dmBanco.funcCriaQuery;      
   try         
      AuxQry.Close;
      AuxQry.SQL.Text := c_sql;
      for I := 0 to Length(ParametrosSQL) - 1 do
         AuxQry.ParamByName(ParametrosSQL[I]).Value := DBE_CAMPO.Field.DataSet.FieldByName(CamposSQL[I]).Value;
      AuxQry.Open;

      if AuxQry.IsEmpty then
         chamaTela
      else
      begin
         DBE_CAMPO.Field.Value     := AuxQry.FieldByName(CamposTela[0]).Value;
         DBT_DESCRICAO.Field.Value := AuxQry.FieldByName(CamposTela[1]).Value;
      end;
   finally
      FreeAndNil(AuxQry);
   end;
end;

procedure TfrmRelacionamento.procInicializar(CAMPO_CHAVE, CAMPO_DESCRICAO: TField; DataSource: TDataSource; c_sql: String;
  tela_pesquisa: TForm; tela_classe: TFormClass; ParametrosSQL, CamposSQL: ArrayString; CamposTela : ArrayString;
  c_whereTela: String);
begin
   DBE_CAMPO.DataSource     := DataSource;
   DBT_DESCRICAO.DataSource := DataSource;
   DBE_CAMPO.DataField      := CAMPO_CHAVE.FieldName;
   DBT_DESCRICAO.DataField  := CAMPO_DESCRICAO.FieldName;

   if lbTitulo.Caption = 'Campo' then
      lbTitulo.Caption := CAMPO_CHAVE.DisplayLabel;

   Self.c_sql         := c_sql;
   Self.tela_pesquisa := tela_pesquisa;
   Self.tela_classe   := tela_classe;
   Self.ParametrosSQL := ParametrosSQL;
   Self.CamposSQL     := CamposSQL;
   Self.CamposTela    := CamposTela;
   Self.c_whereTela   := c_whereTela;
end;

end.
