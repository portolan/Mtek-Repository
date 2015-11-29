unit UF_ChamadosRelatorios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons,
  Vcl.DBCtrls, frxClass, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery, frxDBSet;

type
  TF_ChamadosRelatorios = class(TForm)
    GroupBox1: TGroupBox;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    editDtFinal: TMaskEdit;
    editDtInicial: TMaskEdit;
    Chamados: TGroupBox;
    SpeedButton2: TSpeedButton;
    GroupBox2: TGroupBox;
    SpeedButton3: TSpeedButton;
    Label3: TLabel;
    Edit1: TEdit;
    frxDBChamadoData: TfrxDBDataset;
    IB_ChamadoDia: TIBQuery;
    IB_ChamadoDiaCHA_CODIGO: TIntegerField;
    IB_ChamadoDiaCHA_EMPRESA: TIntegerField;
    IB_ChamadoDiaCHA_DEPARTAMENTO: TIntegerField;
    IB_ChamadoDiaCHA_FUNCIONARIO: TIntegerField;
    IB_ChamadoDiaCHA_PROPRIETARIO: TIntegerField;
    IB_ChamadoDiaCHA_DESCRICAO: TIBStringField;
    IB_ChamadoDiaCHA_PRIORIDADE: TIBStringField;
    IB_ChamadoDiaCHA_STATUS: TIBStringField;
    IB_ChamadoDiaCHA_DATA_ENTRADA: TDateField;
    IB_ChamadoDiaCHA_TIPO_ERRO: TIntegerField;
    IB_ChamadoDiaCHA_DATA_SAIDA: TDateField;
    IB_ChamadoDiaEMP_RAZAO: TIBStringField;
    IB_ChamadoDiaDEP_NOME: TIBStringField;
    IB_ChamadoDiaPESS_NOME: TIBStringField;
    IB_ChamadoDiaPESS_NOME1: TIBStringField;
    IB_ChamadoDiaTER_DESCRICAO: TIBStringField;
    frxDBChamadoDia: TfrxDBDataset;
    IB_ChamadoData: TIBQuery;
    IB_ChamadoDataCHA_CODIGO: TIntegerField;
    IB_ChamadoDataCHA_EMPRESA: TIntegerField;
    IB_ChamadoDataCHA_DEPARTAMENTO: TIntegerField;
    IB_ChamadoDataCHA_FUNCIONARIO: TIntegerField;
    IB_ChamadoDataCHA_PROPRIETARIO: TIntegerField;
    IB_ChamadoDataCHA_DESCRICAO: TIBStringField;
    IB_ChamadoDataCHA_PRIORIDADE: TIBStringField;
    IB_ChamadoDataCHA_STATUS: TIBStringField;
    IB_ChamadoDataCHA_DATA_ENTRADA: TDateField;
    IB_ChamadoDataCHA_TIPO_ERRO: TIntegerField;
    IB_ChamadoDataCHA_DATA_SAIDA: TDateField;
    IB_ChamadoDataEMP_RAZAO: TIBStringField;
    IB_ChamadoDataDEP_NOME: TIBStringField;
    IB_ChamadoDataPESS_NOME: TIBStringField;
    IB_ChamadoDataPESS_NOME1: TIBStringField;
    IB_ChamadoDataTER_DESCRICAO: TIBStringField;
    frxChamadoData: TfrxReport;
    frxChamadoDia: TfrxReport;
    frxTipoErro: TfrxReport;
    frxDBTipoErro: TfrxDBDataset;
    IB_TipoErro: TIBQuery;
    IB_TipoErroCHA_CODIGO: TIntegerField;
    IB_TipoErroCHA_EMPRESA: TIntegerField;
    IB_TipoErroCHA_DEPARTAMENTO: TIntegerField;
    IB_TipoErroCHA_FUNCIONARIO: TIntegerField;
    IB_TipoErroCHA_PROPRIETARIO: TIntegerField;
    IB_TipoErroCHA_DESCRICAO: TIBStringField;
    IB_TipoErroCHA_PRIORIDADE: TIBStringField;
    IB_TipoErroCHA_STATUS: TIBStringField;
    IB_TipoErroCHA_DATA_ENTRADA: TDateField;
    IB_TipoErroCHA_TIPO_ERRO: TIntegerField;
    IB_TipoErroCHA_DATA_SAIDA: TDateField;
    IB_TipoErroEMP_RAZAO: TIBStringField;
    IB_TipoErroDEP_NOME: TIBStringField;
    IB_TipoErroPESS_NOME: TIBStringField;
    IB_TipoErroPESS_NOME1: TIBStringField;
    IB_TipoErroTER_DESCRICAO: TIBStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_ChamadosRelatorios: TF_ChamadosRelatorios;

implementation

{$R *.dfm}

uses UR_Relatorio_Chamado, UDM_Servico, UP_Tipo_Erro;

procedure TF_ChamadosRelatorios.Edit1Click(Sender: TObject);
begin
   P_Tipo_Erro := TP_Tipo_Erro.Create(self);
  try
    P_Tipo_Erro.procInicializar(DM_Servico.IB_Tipo_Erro,false,true,P_Tipo_Erro,TP_Tipo_Erro);
    P_Tipo_Erro.ShowModal;
  finally
    Edit1.text := IntToStr(DM_Servico.IB_Tipo_ErroTER_CODIGO.AsInteger);
  end;
end;

procedure TF_ChamadosRelatorios.SpeedButton1Click(Sender: TObject);
begin
    frxChamadoData.Variables['dtInicial'] := strToDate(editDtInicial.Text);
    frxChamadoData.Variables['dtFinal'] := strToDate(editDtFinal.Text);

    IB_ChamadoData.Close;
    IB_ChamadoData.SQL.Text := ' SELECT A.*, '+
                                            ' B.emp_razao, '+
                                            ' c.dep_nome, '+
                                            ' D.pess_nome, '+
                                            ' e.pess_nome, '+
                                            ' f.ter_descricao '+
                                            ' FROM CHAMADOS A '+
             ' INNER join EMPRESA B ON a.cha_empresa =  b.emp_cod '+
             ' INNER JOIN DEPARTAMENTO C ON A.CHA_DEPARTAMENTO = C.DEP_COD '+
                                      ' AND A.CHA_EMPRESA = C.DEP_EMPRESAR '+
             ' INNER JOIN PESSOAS D ON A.CHA_FUNCIONARIO = D.pess_codigo '+
             ' inner join pessoas E on a.cha_proprietario = e.pess_codigo '+
             ' inner join tipos_erros f on a.cha_tipo_erro = f.ter_codigo '+
             ' where a.cha_data_entrada between :dtinicial and :dtfinal ';
    IB_ChamadoData.ParamByName('dtInicial').Value := strToDate(editDtInicial.Text);
    IB_ChamadoData.ParamByName('dtFinal').Value   := strToDate(editDtFinal.Text);
    IB_ChamadoData.Open;

    frxChamadoData.ShowReport();
end;

procedure TF_ChamadosRelatorios.SpeedButton2Click(Sender: TObject);
begin
    DM_Servico.IB_Chamado.Close;
    DM_Servico.IB_Chamado.SQL.Text := ' SELECT A.*, '+
                                            ' B.emp_razao, '+
                                            ' c.dep_nome, '+
                                            ' D.pess_nome, '+
                                            ' e.pess_nome, '+
                                            ' f.ter_descricao '+
                                            ' FROM CHAMADOS A '+
             ' INNER join EMPRESA B ON a.cha_empresa =  b.emp_cod '+
             ' INNER JOIN DEPARTAMENTO C ON A.CHA_DEPARTAMENTO = C.DEP_COD '+
                                      ' AND A.CHA_EMPRESA = C.DEP_EMPRESAR '+
             ' INNER JOIN PESSOAS D ON A.CHA_FUNCIONARIO = D.pess_codigo '+
             ' inner join pessoas E on a.cha_proprietario = e.pess_codigo '+
             ' inner join tipos_erros f on a.cha_tipo_erro = f.ter_codigo '+
             ' where a.cha_data_entrada = current_date ';

    DM_Servico.IB_Chamado.Open;

    frxChamadoDia.ShowReport();
end;

procedure TF_ChamadosRelatorios.SpeedButton3Click(Sender: TObject);
begin
    frxTipoErro.Variables['erro'] := StrToInt(Edit1.Text);

    IB_TipoErro.Close;
    IB_TipoErro.SQL.Text := ' SELECT A.*, '+
                                            ' B.emp_razao, '+
                                            ' c.dep_nome, '+
                                            ' D.pess_nome, '+
                                            ' e.pess_nome, '+
                                            ' f.ter_descricao '+
                                            ' FROM CHAMADOS A '+
             ' INNER join EMPRESA B ON a.cha_empresa =  b.emp_cod '+
             ' INNER JOIN DEPARTAMENTO C ON A.CHA_DEPARTAMENTO = C.DEP_COD '+
                                      ' AND A.CHA_EMPRESA = C.DEP_EMPRESAR '+
             ' INNER JOIN PESSOAS D ON A.CHA_FUNCIONARIO = D.pess_codigo '+
             ' inner join pessoas E on a.cha_proprietario = e.pess_codigo '+
             ' inner join tipos_erros f on a.cha_tipo_erro = f.ter_codigo '+
             ' where f.ter_codigo = :erro ';
    IB_TipoErro.ParamByName('erro').Value := StrToInt(Edit1.Text);
    IB_TipoErro.Open;

    frxTipoErro.ShowReport();
end;

end.
