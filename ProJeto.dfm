object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 332
  ClientWidth = 698
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 362
    Top = 8
    Width = 329
    Height = 316
    TabOrder = 0
    object Label6: TLabel
      Left = 13
      Top = 15
      Width = 23
      Height = 13
      Caption = 'CEP:'
    end
    object Label7: TLabel
      Left = 13
      Top = 62
      Width = 55
      Height = 13
      Caption = 'Logradouro'
    end
    object Label8: TLabel
      Left = 276
      Top = 63
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
    end
    object Label9: TLabel
      Left = 13
      Top = 102
      Width = 65
      Height = 13
      Caption = 'Complemento'
    end
    object Label10: TLabel
      Left = 13
      Top = 140
      Width = 28
      Height = 13
      Caption = 'Bairro'
    end
    object Label11: TLabel
      Left = 13
      Top = 181
      Width = 33
      Height = 13
      Caption = 'Cidade'
    end
    object Label12: TLabel
      Left = 13
      Top = 222
      Width = 33
      Height = 13
      Caption = 'Estado'
    end
    object Label13: TLabel
      Left = 13
      Top = 265
      Width = 19
      Height = 13
      Caption = 'Pa'#237's'
    end
    object Label14: TLabel
      Left = 1
      Top = 1
      Width = 52
      Height = 13
      Caption = 'Endere'#231'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Ed_CEP: TEdit
      Left = 13
      Top = 28
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Ed_Log: TEdit
      Left = 13
      Top = 76
      Width = 265
      Height = 21
      TabOrder = 1
    end
    object Ed_LogNum: TEdit
      Left = 283
      Top = 76
      Width = 30
      Height = 21
      TabOrder = 2
    end
    object Ed_Complemento: TEdit
      Left = 13
      Top = 116
      Width = 300
      Height = 21
      TabOrder = 3
    end
    object Ed_Bairro: TEdit
      Left = 13
      Top = 154
      Width = 300
      Height = 21
      TabOrder = 4
    end
    object Ed_Cidade: TEdit
      Left = 13
      Top = 195
      Width = 300
      Height = 21
      TabOrder = 5
    end
    object Ed_UF: TEdit
      Left = 13
      Top = 237
      Width = 300
      Height = 21
      TabOrder = 6
    end
    object Ed_Pais: TEdit
      Left = 13
      Top = 279
      Width = 300
      Height = 21
      TabOrder = 7
    end
  end
  object Button1: TButton
    Left = 192
    Top = 274
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 1
  end
  object Button2: TButton
    Left = 111
    Top = 274
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 30
    Top = 274
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
  end
  object Panel2: TPanel
    Left = 11
    Top = 8
    Width = 329
    Height = 249
    TabOrder = 4
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object Label2: TLabel
      Left = 8
      Top = 66
      Width = 56
      Height = 13
      Caption = 'Identidade:'
    end
    object Label3: TLabel
      Left = 8
      Top = 151
      Width = 46
      Height = 13
      Caption = 'Telefone:'
    end
    object Label4: TLabel
      Left = 8
      Top = 109
      Width = 23
      Height = 13
      Caption = 'CPF:'
    end
    object Label5: TLabel
      Left = 8
      Top = 193
      Width = 28
      Height = 13
      Caption = 'Email:'
    end
    object Ed_Nome: TEdit
      Left = 8
      Top = 43
      Width = 305
      Height = 21
      TabOrder = 0
    end
    object Ed_Identidade: TEdit
      Left = 8
      Top = 85
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Ed_CPF: TEdit
      Left = 8
      Top = 128
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object Ed_Telefone: TEdit
      Left = 8
      Top = 170
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object Ed_Email: TEdit
      Left = 8
      Top = 212
      Width = 305
      Height = 21
      TabOrder = 4
    end
  end
end
