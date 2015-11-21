object FEstoqueAjuda: TFEstoqueAjuda
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'FEstoqueAjuda'
  ClientHeight = 298
  ClientWidth = 586
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 77
    Height = 13
    Caption = 'Erros Comuns'
    Color = clActiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 27
    Width = 438
    Height = 13
    Caption = 
      'N'#227'o se pode excluir uma prateleira ou bloco se tiver algum produ' +
      'to cadastrado no estoque.'
  end
  object Label3: TLabel
    Left = 40
    Top = 46
    Width = 367
    Height = 13
    Caption = 
      'N'#227'o se pode excluir um produto do estoque se houver algum movime' +
      'nta'#231#227'o.'
  end
  object Label4: TLabel
    Left = 40
    Top = 65
    Width = 337
    Height = 13
    Caption = 
      'N'#227'o se pode excluir uma categoria se tiver algum produto cadastr' +
      'ado.'
  end
  object Label5: TLabel
    Left = 40
    Top = 84
    Width = 315
    Height = 13
    Caption = 'N'#227'o se pode excluir uma marca se tiver algum produt cadastrado.'
  end
  object Label6: TLabel
    Left = 133
    Top = 261
    Width = 314
    Height = 13
    Caption = 'Conforme surgirem novidades no Sistema, surgir'#227'o novas regras.'
  end
  object Label7: TLabel
    Left = 189
    Top = 277
    Width = 211
    Height = 13
    Caption = 'A equipe de suporte agradece sua aten'#231#227'o.'
  end
end
