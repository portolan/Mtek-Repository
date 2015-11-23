unit UF_ChamadosRelatorios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons;

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
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_ChamadosRelatorios: TF_ChamadosRelatorios;

implementation

{$R *.dfm}

uses UR_Relatorio_Chamado, UDM_Servico;

procedure TF_ChamadosRelatorios.SpeedButton1Click(Sender: TObject);
begin
    UR_Relatorio.frxChamadoData.Variables['dtInicial'] := strToDate(editDtInicial.Text);
    UR_Relatorio.frxChamadoData.Variables['dtFinal'] := strToDate(editDtFinal.Text);

    UR_Relatorio.IB_ChamadoData.Close;
    UR_Relatorio.IB_ChamadoData.SQL.Text := ' SELECT A.*, '+
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
    UR_Relatorio.IB_ChamadoData.ParamByName('dtInicial').Value := strToDate(editDtInicial.Text);
    UR_Relatorio.IB_ChamadoData.ParamByName('dtFinal').Value   := strToDate(editDtFinal.Text);
    UR_Relatorio.IB_ChamadoData.Open;

    UR_Relatorio.frxChamadoData.ShowReport();
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

    UR_Relatorio.frxChamadoDia.ShowReport();
end;

end.
