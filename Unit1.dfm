object Form1: TForm1
  Left = 676
  Top = 14
  Width = 725
  Height = 786
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 57
    Height = 16
    Caption = 'Assunto:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS UI Gothic'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 392
    Top = 16
    Width = 21
    Height = 16
    Caption = 'De:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS UI Gothic'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 8
    Top = 440
    Width = 73
    Height = 16
    Caption = 'Mensagem:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS UI Gothic'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 8
    Top = 264
    Width = 406
    Height = 16
    Caption = 'Anexos (Pressione INSERIR ANEXOS para incluir um anexo):'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS UI Gothic'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 8
    Top = 560
    Width = 97
    Height = 22
    Caption = 'Inserir Anexos'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
      0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
      0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
      0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
      0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
      0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
      5555557FFFFF7755555555500000005555555577777775555555555555555555
      5555555555555555555555555555555555555555555555555555}
    NumGlyphs = 2
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 120
    Top = 560
    Width = 73
    Height = 22
    Caption = 'Enviar'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333333333333333333FFFFFFFFFFFFFFF000000000000
      000077777777777777770FFFFFFFFFFFFFF07F3333FFF33333370FFFF777FFFF
      FFF07F333777333333370FFFFFFFFFFFFFF07F3333FFFFFF33370FFFF777777F
      FFF07F33377777733FF70FFFFFFFFFFF99907F3FFF33333377770F777FFFFFFF
      9CA07F77733333337F370FFFFFFFFFFF9A907FFFFFFFFFFF7FF7000000000000
      0000777777777777777733333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
    OnClick = SpeedButton2Click
  end
  object Edit1: TEdit
    Left = 8
    Top = 40
    Width = 337
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 392
    Top = 40
    Width = 313
    Height = 21
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 80
    Width = 697
    Height = 161
    Caption = 'Destinat'#225'rios (Utilize Ponto e V'#237'rgula para separar os e-mails.)'
    TabOrder = 2
    object Label3: TLabel
      Left = 8
      Top = 16
      Width = 28
      Height = 13
      Caption = 'Para:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS UI Gothic'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 8
      Top = 64
      Width = 94
      Height = 13
      Caption = 'Com C'#243'pia (CC):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS UI Gothic'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 8
      Top = 112
      Width = 142
      Height = 13
      Caption = 'Com C'#243'pia Oculta (CCo):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS UI Gothic'
      Font.Style = []
      ParentFont = False
    end
    object Edit3: TEdit
      Left = 8
      Top = 32
      Width = 673
      Height = 21
      TabOrder = 0
    end
    object Edit4: TEdit
      Left = 8
      Top = 80
      Width = 673
      Height = 21
      TabOrder = 1
    end
    object Edit5: TEdit
      Left = 8
      Top = 128
      Width = 673
      Height = 21
      TabOrder = 2
    end
  end
  object Memo2: TMemo
    Left = 8
    Top = 464
    Width = 697
    Height = 89
    TabOrder = 3
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 600
    Width = 697
    Height = 129
    Caption = 'Informa'#231#245'es do servidor SMTP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS UI Gothic'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object Label8: TLabel
      Left = 8
      Top = 24
      Width = 37
      Height = 13
      Caption = 'SMTP:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS UI Gothic'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 256
      Top = 24
      Width = 55
      Height = 13
      Caption = 'USU'#193'RIO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS UI Gothic'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 504
      Top = 24
      Width = 52
      Height = 16
      Caption = 'SENHA:'
    end
    object Edit6: TEdit
      Left = 8
      Top = 40
      Width = 209
      Height = 24
      TabOrder = 0
    end
    object Edit7: TEdit
      Left = 256
      Top = 40
      Width = 217
      Height = 24
      TabOrder = 1
    end
    object Edit8: TEdit
      Left = 504
      Top = 40
      Width = 185
      Height = 24
      PasswordChar = '*'
      TabOrder = 2
    end
    object ComboBox1: TComboBox
      Left = 8
      Top = 80
      Width = 209
      Height = 24
      ItemHeight = 16
      TabOrder = 3
      Text = 'Selecione a porta SMTP'
      Items.Strings = (
        '465'
        '587'
        '993')
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 736
    Width = 717
    Height = 19
    Panels = <>
  end
  object ListBox1: TListBox
    Left = 8
    Top = 288
    Width = 705
    Height = 137
    ItemHeight = 13
    TabOrder = 6
  end
  object OpenDialog1: TOpenDialog
    Left = 288
    Top = 480
  end
  object IdSMTP1: TIdSMTP
    MaxLineAction = maException
    ReadTimeout = 0
    Port = 25
    AuthenticationType = atNone
    Left = 456
    Top = 488
  end
  object IdSSLIOHandlerSocket1: TIdSSLIOHandlerSocket
    SSLOptions.Method = sslvSSLv2
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 552
    Top = 488
  end
  object IdMessage1: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CCList = <>
    Encoding = meMIME
    Recipients = <>
    ReplyTo = <>
    Left = 376
    Top = 488
  end
end
