object FrmCadastro: TFrmCadastro
  Left = 0
  Top = 0
  Caption = 'CADASTRO DE CLIENTE'
  ClientHeight = 517
  ClientWidth = 656
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
    Left = 0
    Top = 0
    Width = 656
    Height = 517
    Align = alClient
    Alignment = taLeftJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    VerticalAlignment = taAlignTop
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 654
      Height = 128
      Align = alTop
      Alignment = taLeftJustify
      BorderStyle = bsSingle
      Caption = 'Dados Pessoais'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      VerticalAlignment = taAlignTop
      object Label6: TLabel
        Left = 8
        Top = 23
        Width = 28
        Height = 18
        Caption = 'CPF'
      end
      object Label7: TLabel
        Left = 153
        Top = 23
        Width = 78
        Height = 18
        Caption = 'Identidade'
      end
      object Label8: TLabel
        Left = 8
        Top = 71
        Width = 115
        Height = 18
        Caption = 'Nome Completo'
      end
      object EdMIdentidade: TMaskEdit
        Left = 152
        Top = 39
        Width = 117
        Height = 26
        EditMask = '##.###.###-00;1;_'
        MaxLength = 13
        TabOrder = 1
        Text = '  .   .   -  '
      end
      object EdMCPF: TMaskEdit
        Left = 8
        Top = 39
        Width = 120
        Height = 26
        EditMask = '###.###.###-00;1;_'
        MaxLength = 14
        TabOrder = 0
        Text = '   .   .   -  '
      end
      object EdNome: TEdit
        Left = 8
        Top = 87
        Width = 550
        Height = 26
        TabOrder = 2
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 224
      Width = 654
      Height = 292
      Align = alBottom
      Alignment = taLeftJustify
      BorderStyle = bsSingle
      Caption = 'Endere'#231'o'
      TabOrder = 2
      VerticalAlignment = taAlignTop
      object Label1: TLabel
        Left = 8
        Top = 32
        Width = 28
        Height = 18
        Caption = 'CEP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 8
        Top = 88
        Width = 84
        Height = 18
        Caption = 'Logradouro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 437
        Top = 88
        Width = 57
        Height = 18
        Caption = 'N'#250'mero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 8
        Top = 136
        Width = 100
        Height = 18
        Caption = 'Complemento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 148
        Top = 192
        Width = 45
        Height = 18
        Caption = 'Bairro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 8
        Top = 192
        Width = 50
        Height = 18
        Caption = 'Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 292
        Top = 192
        Width = 50
        Height = 18
        Caption = 'Estado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 437
        Top = 192
        Width = 30
        Height = 18
        Caption = 'Pais'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
      end
      object EdCidade: TEdit
        Left = 8
        Top = 208
        Width = 121
        Height = 26
        TabOrder = 4
      end
      object EdLogradouro: TEdit
        Left = 8
        Top = 104
        Width = 405
        Height = 26
        TabOrder = 1
      end
      object EdPais: TEdit
        Left = 437
        Top = 208
        Width = 121
        Height = 26
        TabOrder = 7
      end
      object EdNumero: TEdit
        Left = 437
        Top = 104
        Width = 121
        Height = 26
        TabOrder = 2
      end
      object EdComplemento: TEdit
        Left = 8
        Top = 152
        Width = 550
        Height = 26
        TabOrder = 3
      end
      object EdBairro: TEdit
        Left = 148
        Top = 208
        Width = 121
        Height = 26
        TabOrder = 5
      end
      object EdEstado: TEdit
        Left = 292
        Top = 208
        Width = 121
        Height = 26
        TabOrder = 6
      end
      object EdMCEP: TMaskEdit
        Left = 8
        Top = 48
        Width = 112
        Height = 26
        EditMask = '##.###-#00;1;_'
        MaxLength = 10
        TabOrder = 0
        Text = '  .   -   '
        OnExit = EdMCEPExit
      end
      object BtnConfirmar: TBitBtn
        Left = 544
        Top = 248
        Width = 95
        Height = 33
        Caption = 'Confirmar'
        TabOrder = 8
        OnClick = BtnConfirmarClick
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 129
      Width = 654
      Height = 95
      Align = alClient
      Alignment = taLeftJustify
      BorderStyle = bsSingle
      Caption = 'Contatos'
      TabOrder = 1
      VerticalAlignment = taAlignTop
      object Label4: TLabel
        Left = 8
        Top = 29
        Width = 39
        Height = 18
        Caption = 'Email'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 443
        Top = 29
        Width = 62
        Height = 18
        Caption = 'Telefone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
      end
      object EdEmail: TEdit
        Left = 8
        Top = 45
        Width = 405
        Height = 26
        TabOrder = 0
      end
      object EdMTelefone: TMaskEdit
        Left = 443
        Top = 45
        Width = 115
        Height = 26
        EditMask = '!\(99\)000-0000;1;_'
        MaxLength = 12
        TabOrder = 1
        Text = '(  )   -    '
      end
    end
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 505
    Top = 33
    object ClientDataSet1CPF: TStringField
      FieldName = 'CPF'
    end
    object ClientDataSet1Identidade: TStringField
      FieldName = 'Identidade'
    end
    object ClientDataSet1Nome: TStringField
      FieldName = 'Nome'
    end
    object ClientDataSet1Email: TStringField
      FieldName = 'Email'
    end
    object ClientDataSet1Telefone: TStringField
      FieldName = 'Telefone'
    end
    object ClientDataSet1CEP: TStringField
      FieldName = 'CEP'
    end
    object ClientDataSet1Logradouro: TStringField
      FieldName = 'Logradouro'
    end
    object ClientDataSet1Numero: TStringField
      FieldName = 'Numero'
    end
    object ClientDataSet1Cidade: TStringField
      FieldName = 'Cidade'
    end
    object ClientDataSet1Bairro: TStringField
      FieldName = 'Bairro'
    end
    object ClientDataSet1Estado: TStringField
      FieldName = 'Estado'
    end
    object ClientDataSet1Pais: TStringField
      FieldName = 'Pais'
    end
  end
end
