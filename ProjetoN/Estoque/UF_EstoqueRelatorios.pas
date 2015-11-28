unit UF_EstoqueRelatorios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.CategoryButtons, Vcl.ActnMan,
  Vcl.ActnColorMaps, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Mask, Vcl.Imaging.pngimage;

type
  TFEstoqueRelatorios = class(TForm)
    GroupBox1: TGroupBox;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    SpeedButton2: TSpeedButton;
    editMask999: TLabel;
    Label4: TLabel;
    editMaiorque: TEdit;
    editMenorque: TEdit;
    sbEstoqNeg: TSpeedButton;
    Panel1: TPanel;
    Label3: TLabel;
    editDtInicial: TMaskEdit;
    editDtFinal: TMaskEdit;
    Edit1: TEdit;
    GroupBox3: TGroupBox;
    sbProduto: TSpeedButton;
    sbEstoque: TSpeedButton;
    sbMarca: TSpeedButton;
    sbMovimentacao: TSpeedButton;
    sbBloco: TSpeedButton;
    sbPrateleira: TSpeedButton;
    Image1: TImage;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure editMaiorqueExit(Sender: TObject);
    procedure editMenorqueExit(Sender: TObject);
    procedure sbEstoqNegClick(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure sbEstoqueClick(Sender: TObject);
    procedure sbProdutoClick(Sender: TObject);
    procedure sbMarcaClick(Sender: TObject);
    procedure sbMovimentacaoClick(Sender: TObject);
    procedure sbBlocoClick(Sender: TObject);
    procedure sbPrateleiraClick(Sender: TObject);
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

uses UR_EstoqueRelatorios, UDM_Estoque;

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

procedure TFEstoqueRelatorios.sbEstoqueClick(Sender: TObject);
begin
    DM_Estoque.Estoque.Close;
    DM_Estoque.Estoque.SQL.Text := 'select a.*, pro_descricao, emp_razao, bloc_descricao, prat_descricao, cat_descricao from estoque a     '+
                                   ' left join produtos on estoq_empresa = pro_empresa and estoq_produto = pro_codigo                      '+
                                   ' inner join empresa on emp_cod = pro_empresa                                                           '+
                                   ' inner join bloco on estoq_bloco = bloc_codigo and estoq_empresa = bloc_empresa                        '+
                                   ' inner join prateleira on estoq_prateleira = prat_codigo and estoq_empresa = prat_empresa              '+
                                   ' inner join categoria on estoq_categoria = cat_codigo and estoq_empresa = cat_empresa';
    DM_Estoque.Estoque.Open;

    EstoqueRelatorios.frxEstoque.ShowReport();
end;

procedure TFEstoqueRelatorios.sbProdutoClick(Sender: TObject);
begin
    DM_Estoque.Produtos.Close;
    DM_Estoque.Produtos.SQL.Text := 'select b.*, emp_razao, cat_descricao from produtos b                                 '+
                                    ' inner join empresa on emp_cod = pro_empresa                                         '+
                                    ' left join categoria on cat_empresa = pro_empresa and cat_codigo = pro_categoria';
    DM_Estoque.Produtos.Open;

    EstoqueRelatorios.frxProduto.ShowReport();
end;

procedure TFEstoqueRelatorios.sbMarcaClick(Sender: TObject);
begin
    DM_Estoque.Marcas.Close;
    DM_Estoque.Marcas.SQL.Text := 'select * from marcas';
    DM_Estoque.Marcas.Open;

    EstoqueRelatorios.frxMarca.ShowReport();
end;

procedure TFEstoqueRelatorios.sbMovimentacaoClick(Sender: TObject);
begin
    DM_Estoque.MovimentoEstoque.Close;
    DM_Estoque.MovimentoEstoque.SQL.Text := 'select c.*, pro_descricao, emp_razao, bloc_descricao, prat_descricao from ESTOQ_MOVIMENTO c    '+
                                            ' inner join produtos on em_produto = pro_codigo and em_empresa = pro_empresa                   '+
                                            ' inner join empresa on em_empresa = emp_cod                                                    '+
                                            ' inner join bloco on bloc_codigo = em_bloco and bloc_empresa = em_empresa                      '+
                                            ' inner join prateleira on prat_codigo = em_prateleira and prat_empresa = em_empresa';
    DM_Estoque.MovimentoEstoque.Open;

    EstoqueRelatorios.frxMovimento.ShowReport();
end;

procedure TFEstoqueRelatorios.sbBlocoClick(Sender: TObject);
begin
    DM_Estoque.Bloco.Close;
    DM_Estoque.Bloco.SQL.Text := 'select * from bloco';
    DM_Estoque.Bloco.Open;

    EstoqueRelatorios.frxBloco.ShowReport();
end;

procedure TFEstoqueRelatorios.sbPrateleiraClick(Sender: TObject);
begin
    DM_Estoque.Prateleira.Close;
    DM_Estoque.Prateleira.SQL.Text := 'select * from prateleira';
    DM_Estoque.Prateleira.Open;

    EstoqueRelatorios.frxPrateleira.ShowReport();
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

procedure TFEstoqueRelatorios.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Key = VK_RETURN then
    begin
            if Edit1.Text = '1' then sbEstoqNegClick(nil)
            else if UpperCase(Edit1.Text) = '2' then editDtInicial.SetFocus
            else if UpperCase(Edit1.Text) = '3' then editMaiorque.SetFocus
            else if UpperCase(Edit1.Text) = 'PRO' then sbProdutoClick(nil)
            else if UpperCase(Edit1.Text) = 'EST' then sbEstoqueClick(nil)
            else if UpperCase(Edit1.Text) = 'MOV' then sbMovimentacaoClick(nil)
            else if UpperCase(Edit1.Text) = 'MARC' then sbMarcaClick(nil)
            else if UpperCase(Edit1.Text) = 'BLOC' then sbBlocoClick(nil)
            else if UpperCase(Edit1.Text) = 'PRAT' then sbPrateleiraClick(nil)
            else showMessage('Código não existe!');
    end
    else if Key = VK_ESCAPE then
        Edit1.Text := EmptyStr;
end;

procedure TFEstoqueRelatorios.editMaiorqueExit(Sender: TObject);
begin
    if editMaiorque.Text <> EmptyStr then
        editMaiorque.Text := FormatFloat('###,###,##0.0000',StrToFloat(editMaiorque.Text));
end;

procedure TFEstoqueRelatorios.editMenorqueExit(Sender: TObject);
begin
    if editMenorque.Text <> EmptyStr then
        editMenorque.Text := FormatFloat('###,###,##0.0000',StrToFloat(editMenorque.Text));
end;

procedure TFEstoqueRelatorios.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
        VK_F5 : Edit1.SetFocus;
    end;
end;

procedure TFEstoqueRelatorios.sbEstoqNegClick(Sender: TObject);
begin
    EstoqueRelatorios.qEstoqueAbaixo.Close;
    EstoqueRelatorios.qEstoqueAbaixo.SQL.Text := 'select a.*, pro_descricao, bloc_descricao, prat_descricao from estoque a   '+
                                                 '                                                                           '+
                                                 '   inner join produtos on                                                  '+
                                                 '   estoq_empresa = pro_empresa and                                         '+
                                                 '   estoq_produto = pro_codigo                                              '+
                                                 '                                                                           '+
                                                 '   inner join bloco on                                                     '+
                                                 '   estoq_empresa = bloc_empresa and                                        '+
                                                 '   estoq_bloco = bloc_codigo                                               '+
                                                 '                                                                           '+
                                                 '   inner join prateleira on                                                '+
                                                 '   estoq_empresa = prat_empresa and                                        '+
                                                 '   estoq_bloco = prat_bloco and                                            '+
                                                 '   estoq_prateleira = prat_codigo                                          '+
                                                 '                                                                           '+
                                                 '   where estoq_qtd < estoq_qtdmin';
    EstoqueRelatorios.qEstoqueAbaixo.Open;

    EstoqueRelatorios.frxEstoqueAbaixo.ShowReport();

end;

end.
