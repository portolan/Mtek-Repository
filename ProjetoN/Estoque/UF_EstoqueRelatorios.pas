unit UF_EstoqueRelatorios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.CategoryButtons, Vcl.ActnMan,
  Vcl.ActnColorMaps, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Mask;

type
  TFEstoqueRelatorios = class(TForm)
    GroupBox1: TGroupBox;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    editDtInicial: TMaskEdit;
    editDtFinal: TMaskEdit;
    GroupBox2: TGroupBox;
    SpeedButton2: TSpeedButton;
    editMask999: TLabel;
    Label4: TLabel;
    editMaiorque: TMaskEdit;
    editMenorque: TMaskEdit;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function criaForm(width, height : integer):TForm;
    function criaButton(form : TForm):TButton;
  end;

var
  FEstoqueRelatorios: TFEstoqueRelatorios;

implementation

{$R *.dfm}

uses UR_EstoqueRelatorios;

procedure TFEstoqueRelatorios.SpeedButton1Click(Sender: TObject);
begin
    EstoqueRelatorios.frxMovimentoPorData.Variables['dtInicial'] := strToDate(editDtInicial.Text);
    EstoqueRelatorios.frxMovimentoPorData.Variables['dtFinal'] := strToDate(editDtFinal.Text);

    EstoqueRelatorios.qMovimentoPorData.Close;
    EstoqueRelatorios.qMovimentoPorData.SQL.Text := 'select c.*, pro_descricao, emp_razao, bloc_descricao,                    '+
                                        'prat_descricao from ESTOQ_MOVIMENTO c                                                '+
                                        'inner join produtos on em_produto = pro_codigo and em_empresa = pro_empresa          '+
                                        'inner join empresa on em_empresa = emp_cod                                           '+
                                        'inner join bloco on bloc_codigo = em_bloco and bloc_empresa = em_empresa             '+
                                        'inner join prateleira on prat_codigo = em_prateleira and prat_empresa = em_empresa   '+
                                        'where em_data between :dtinicial and :dtfinal ';
    EstoqueRelatorios.qMovimentoPorData.ParamByName('dtinicial').Value := strToDate(editDtInicial.Text);
    EstoqueRelatorios.qMovimentoPorData.ParamByName('dtfinal').Value   := strToDate(editDtFinal.Text);
    EstoqueRelatorios.qMovimentoPorData.Open;

    EstoqueRelatorios.frxMovimentoPorData.ShowReport();
end;

procedure TFEstoqueRelatorios.SpeedButton2Click(Sender: TObject);
begin
    EstoqueRelatorios.frxProdutoPorPreco.Variables['maiorque'] := StrToFloat(editMaiorque.Text);
    EstoqueRelatorios.frxProdutoPorPreco.Variables['menorque'] := StrToFloat(editMenorque.Text);

    EstoqueRelatorios.qProdutoPorPreco.Close;
    EstoqueRelatorios.qProdutoPorPreco.SQL.Text := 'select c.* from produtos c where '+
                                                'c.pro_vlrvenda between :maiorque and :menorque';
    EstoqueRelatorios.qProdutoPorPreco.ParamByName('maiorque').Value := StrToFloat(editMaiorque.Text);
    EstoqueRelatorios.qProdutoPorPreco.ParamByName('menorque').Value   := StrToFloat(editMenorque.Text);
    EstoqueRelatorios.qProdutoPorPreco.Open;

    EstoqueRelatorios.frxProdutoPorPreco.ShowReport();
end;

function TFEstoqueRelatorios.criaButton(form: TForm): TButton;
begin
    Result := TButton.Create(form);
    Result.Parent := form;
    Result.Visible := true;
end;

function TFEstoqueRelatorios.criaForm(width, height : integer):TForm;
var
    form : TForm;
begin
    form            := TForm.Create(nil);
    form.Position   := poMainFormCenter;
    form.Width      := width;
    form.Height     := height;
    Result          := form;
end;

end.
