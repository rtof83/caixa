object frmAluno: TfrmAluno
  Left = 219
  Top = 120
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Formul'#225'rio de Alunos'
  ClientHeight = 165
  ClientWidth = 503
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 16
  object TabControl1: TTabControl
    Left = 0
    Top = 0
    Width = 503
    Height = 165
    Align = alClient
    TabOrder = 0
    object Panel1: TPanel
      Left = 4
      Top = 6
      Width = 495
      Height = 155
      Align = alClient
      BorderStyle = bsSingle
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 40
        Width = 40
        Height = 16
        Caption = 'Aluno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 384
        Top = 40
        Width = 83
        Height = 16
        Caption = 'Nascimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 16
        Top = 96
        Width = 50
        Height = 16
        Caption = 'Pr'#225'tica'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBNavigator1: TDBNavigator
        Left = 1
        Top = 1
        Width = 489
        Height = 25
        DataSource = dtmDados.dsAluno
        Align = alTop
        Flat = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 57
        Width = 361
        Height = 24
        DataField = 'Nome'
        DataSource = dtmDados.dsAluno
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 384
        Top = 57
        Width = 89
        Height = 24
        DataField = 'Nascimento'
        DataSource = dtmDados.dsAluno
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 16
        Top = 113
        Width = 105
        Height = 24
        DataField = 'Pratica'
        DataSource = dtmDados.dsAluno
        TabOrder = 3
      end
    end
  end
end
