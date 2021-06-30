object frmPrincipal: TfrmPrincipal
  Left = 217
  Top = 118
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Sistema Caixa Shao Lin'
  ClientHeight = 579
  ClientWidth = 456
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object TabControl1: TTabControl
    Left = 0
    Top = 0
    Width = 456
    Height = 579
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 566
    object Panel1: TPanel
      Left = 4
      Top = 6
      Width = 448
      Height = 569
      Align = alClient
      BorderStyle = bsSingle
      TabOrder = 0
      ExplicitHeight = 556
      object Label1: TLabel
        Left = 8
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
        Left = 8
        Top = 88
        Width = 30
        Height = 16
        Caption = 'M'#234's'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 56
        Top = 88
        Width = 28
        Height = 16
        Caption = 'Ano'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbtTotal: TDBText
        Left = 374
        Top = 542
        Width = 59
        Height = 16
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'Total'
        DataSource = dtmDados.dsCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblTotalGeral: TLabel
        Left = 128
        Top = 145
        Width = 119
        Height = 24
        Caption = 'lblTotalGeral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 128
        Top = 88
        Width = 38
        Height = 16
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblContAluno: TLabel
        Left = 8
        Top = 542
        Width = 72
        Height = 13
        Caption = 'lblContAluno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnAluno: TSpeedButton
        Left = 360
        Top = 56
        Width = 75
        Height = 25
        Caption = '-> Alunos'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnAlunoClick
      end
      object Label5: TLabel
        Left = 8
        Top = 145
        Width = 109
        Height = 24
        Caption = 'Total Geral:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnGastos: TSpeedButton
        Left = 259
        Top = 96
        Width = 75
        Height = 25
        Caption = 'Gastos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnGastosClick
      end
      object dbcAluno: TDBLookupComboBox
        Left = 8
        Top = 57
        Width = 353
        Height = 24
        DataField = 'CodAluno'
        DataSource = dtmDados.dsItemCaixa
        KeyField = 'CodAluno'
        ListField = 'Nome'
        ListSource = dtmDados.dsAluno
        NullValueKey = 46
        TabOrder = 0
      end
      object dbgItemCaixa: TDBGrid
        Left = 8
        Top = 205
        Width = 425
        Height = 332
        DataSource = dtmDados.dsItemCaixa
        Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Aluno'
            Width = 319
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SubTotal'
            Width = 71
            Visible = True
          end>
      end
      object dbeMes: TDBEdit
        Left = 8
        Top = 105
        Width = 33
        Height = 24
        DataField = 'Mes'
        DataSource = dtmDados.dsCaixa
        TabOrder = 2
      end
      object dbeAno: TDBEdit
        Left = 56
        Top = 105
        Width = 49
        Height = 24
        DataField = 'Ano'
        DataSource = dtmDados.dsCaixa
        TabOrder = 3
      end
      object DBNavigator1: TDBNavigator
        Left = 1
        Top = 1
        Width = 442
        Height = 25
        DataSource = dtmDados.dsCaixa
        Align = alTop
        Flat = True
        Hints.Strings = (
          'Primeiro Registro'
          'Registro Anterior'
          'Pr'#243'ximo Registro'
          #218'ltimo Registro'
          'Inserir M'#234's'
          'Excluir M'#234's'
          'Editar M'#234's'
          'Confirmar'
          'Cancelar'
          'Atualizar')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
      end
      object DBNavigator2: TDBNavigator
        Left = 8
        Top = 181
        Width = 420
        Height = 25
        DataSource = dtmDados.dsItemCaixa
        VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
        Flat = True
        Hints.Strings = (
          'Primeiro Registro'
          'Registro Anterior'
          'Pr'#243'ximo Registro'
          #218'ltimo Registro'
          'Inserir Aluno'
          'Excluir Aluno'
          'Editar Aluno'
          'Confirmar'
          'Cancelar'
          'Atualizar')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
      end
      object dbeValor: TDBEdit
        Left = 128
        Top = 104
        Width = 65
        Height = 24
        DataField = 'SubTotal'
        DataSource = dtmDados.dsItemCaixa
        TabOrder = 6
      end
      object btnOk: TButton
        Left = 360
        Top = 96
        Width = 75
        Height = 25
        Caption = 'Ok'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        OnClick = btnOkClick
      end
      object btnCancelar: TButton
        Left = 360
        Top = 128
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        OnClick = btnCancelarClick
      end
    end
  end
end
