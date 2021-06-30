object dtmDados: TdtmDados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 284
  Width = 360
  object dsCaixa: TDataSource
    DataSet = qryCaixa
    OnDataChange = dsCaixaDataChange
    Left = 104
    Top = 96
  end
  object dsAluno: TDataSource
    DataSet = qryAluno
    Left = 272
    Top = 96
  end
  object dsItemCaixa: TDataSource
    DataSet = qryItemCaixa
    Left = 104
    Top = 152
  end
  object dsAtivos: TDataSource
    DataSet = qryAtivos
    OnDataChange = dsAtivosDataChange
    Left = 272
    Top = 152
  end
  object dsConnection: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Caixa.mdb;Persist S' +
      'ecurity Info=False;'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 16
  end
  object temp: TADOQuery
    Connection = dsConnection
    Parameters = <>
    Left = 152
    Top = 16
  end
  object qryCaixa: TADOQuery
    Connection = dsConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from caixa')
    Left = 56
    Top = 96
    object qryCaixaCodCaixa: TAutoIncField
      FieldName = 'CodCaixa'
      ReadOnly = True
    end
    object qryCaixaMes: TIntegerField
      Alignment = taCenter
      FieldName = 'Mes'
      DisplayFormat = '00'
    end
    object qryCaixaAno: TIntegerField
      Alignment = taCenter
      FieldName = 'Ano'
    end
    object qryCaixaTotal: TBCDField
      FieldName = 'Total'
      currency = True
      Precision = 19
    end
  end
  object qryAtivos: TADOQuery
    Connection = dsConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from aluno'
      'where status = '#39'Ativo'#39)
    Left = 224
    Top = 152
    object qryAtivosCodAluno: TAutoIncField
      FieldName = 'CodAluno'
      ReadOnly = True
    end
    object qryAtivosNome: TWideStringField
      FieldName = 'Nome'
      Size = 100
    end
    object qryAtivosNascimento: TDateTimeField
      FieldName = 'Nascimento'
    end
    object qryAtivosPratica: TIntegerField
      FieldName = 'Pratica'
    end
    object qryAtivosEntrada: TDateTimeField
      FieldName = 'Entrada'
    end
    object qryAtivosEmail: TWideStringField
      FieldName = 'Email'
      Size = 150
    end
    object qryAtivosTelefone: TWideStringField
      FieldName = 'Telefone'
      Size = 255
    end
    object qryAtivosCelular: TWideStringField
      FieldName = 'Celular'
      Size = 255
    end
    object qryAtivosEndereco: TWideStringField
      FieldName = 'Endereco'
      Size = 200
    end
    object qryAtivosStatus: TWideStringField
      FieldName = 'Status'
      Size = 7
    end
    object qryAtivosRG: TWideStringField
      FieldName = 'RG'
      Size = 60
    end
    object qryAtivosVencimento: TIntegerField
      FieldName = 'Vencimento'
    end
    object qryAtivosHorario: TDateTimeField
      FieldName = 'Horario'
    end
    object qryAtivosPlano: TWideStringField
      FieldName = 'Plano'
      Size = 2
    end
    object qryAtivosGraduacao: TWideStringField
      FieldName = 'Graduacao'
      Size = 60
    end
    object qryAtivosBairro: TWideStringField
      FieldName = 'Bairro'
      Size = 180
    end
    object qryAtivosCidade: TWideStringField
      FieldName = 'Cidade'
      Size = 150
    end
    object qryAtivosUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qryAtivosCEP: TWideStringField
      FieldName = 'CEP'
    end
    object qryAtivosPai: TWideStringField
      FieldName = 'Pai'
      Size = 255
    end
    object qryAtivosMae: TWideStringField
      FieldName = 'Mae'
      Size = 255
    end
    object qryAtivosProfissao: TWideStringField
      FieldName = 'Profissao'
      Size = 255
    end
    object qryAtivosGrSangue: TWideStringField
      FieldName = 'GrSangue'
      Size = 4
    end
    object qryAtivosConvenio: TBooleanField
      FieldName = 'Convenio'
    end
    object qryAtivosConvenioNome: TWideStringField
      FieldName = 'ConvenioNome'
      Size = 180
    end
    object qryAtivosHospital: TWideStringField
      FieldName = 'Hospital'
      Size = 180
    end
    object qryAtivosContatoEmergencia: TWideStringField
      FieldName = 'ContatoEmergencia'
      Size = 180
    end
    object qryAtivosTelefoneEmergencia1: TWideStringField
      FieldName = 'TelefoneEmergencia1'
      Size = 255
    end
    object qryAtivosTelefoneEmergencia2: TWideStringField
      FieldName = 'TelefoneEmergencia2'
      Size = 255
    end
    object qryAtivosObservacao: TWideMemoField
      FieldName = 'Observacao'
      BlobType = ftWideMemo
    end
    object qryAtivosDesconto: TSmallintField
      FieldName = 'Desconto'
    end
  end
  object qryAluno: TADOQuery
    Connection = dsConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from aluno')
    Left = 224
    Top = 96
    object qryAlunoCodAluno: TAutoIncField
      FieldName = 'CodAluno'
      ReadOnly = True
    end
    object qryAlunoNome: TWideStringField
      FieldName = 'Nome'
      Size = 100
    end
    object qryAlunoNascimento: TDateTimeField
      FieldName = 'Nascimento'
    end
    object qryAlunoPratica: TIntegerField
      FieldName = 'Pratica'
    end
    object qryAlunoEntrada: TDateTimeField
      FieldName = 'Entrada'
    end
    object qryAlunoEmail: TWideStringField
      FieldName = 'Email'
      Size = 150
    end
    object qryAlunoTelefone: TWideStringField
      FieldName = 'Telefone'
      Size = 255
    end
    object qryAlunoCelular: TWideStringField
      FieldName = 'Celular'
      Size = 255
    end
    object qryAlunoEndereco: TWideStringField
      FieldName = 'Endereco'
      Size = 200
    end
    object qryAlunoStatus: TWideStringField
      FieldName = 'Status'
      Size = 7
    end
    object qryAlunoRG: TWideStringField
      FieldName = 'RG'
      Size = 60
    end
    object qryAlunoVencimento: TIntegerField
      FieldName = 'Vencimento'
    end
    object qryAlunoHorario: TDateTimeField
      FieldName = 'Horario'
    end
    object qryAlunoPlano: TWideStringField
      FieldName = 'Plano'
      Size = 2
    end
    object qryAlunoGraduacao: TWideStringField
      FieldName = 'Graduacao'
      Size = 60
    end
    object qryAlunoBairro: TWideStringField
      FieldName = 'Bairro'
      Size = 180
    end
    object qryAlunoCidade: TWideStringField
      FieldName = 'Cidade'
      Size = 150
    end
    object qryAlunoUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qryAlunoCEP: TWideStringField
      FieldName = 'CEP'
    end
    object qryAlunoPai: TWideStringField
      FieldName = 'Pai'
      Size = 255
    end
    object qryAlunoMae: TWideStringField
      FieldName = 'Mae'
      Size = 255
    end
    object qryAlunoProfissao: TWideStringField
      FieldName = 'Profissao'
      Size = 255
    end
    object qryAlunoGrSangue: TWideStringField
      FieldName = 'GrSangue'
      Size = 4
    end
    object qryAlunoConvenio: TBooleanField
      FieldName = 'Convenio'
    end
    object qryAlunoConvenioNome: TWideStringField
      FieldName = 'ConvenioNome'
      Size = 180
    end
    object qryAlunoHospital: TWideStringField
      FieldName = 'Hospital'
      Size = 180
    end
    object qryAlunoContatoEmergencia: TWideStringField
      FieldName = 'ContatoEmergencia'
      Size = 180
    end
    object qryAlunoTelefoneEmergencia1: TWideStringField
      FieldName = 'TelefoneEmergencia1'
      Size = 255
    end
    object qryAlunoTelefoneEmergencia2: TWideStringField
      FieldName = 'TelefoneEmergencia2'
      Size = 255
    end
    object qryAlunoObservacao: TWideMemoField
      FieldName = 'Observacao'
      BlobType = ftWideMemo
    end
    object qryAlunoDesconto: TSmallintField
      FieldName = 'Desconto'
    end
  end
  object qryItemCaixa: TADOQuery
    Connection = dsConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from itemcaixa')
    Left = 56
    Top = 152
    object qryItemCaixaCodItemCaixa: TAutoIncField
      FieldName = 'CodItemCaixa'
      ReadOnly = True
    end
    object qryItemCaixaCodCaixa: TIntegerField
      FieldName = 'CodCaixa'
    end
    object qryItemCaixaCodAluno: TIntegerField
      FieldName = 'CodAluno'
    end
    object qryItemCaixaSubTotal: TBCDField
      Alignment = taCenter
      FieldName = 'SubTotal'
      currency = True
      Precision = 19
    end
    object qryItemCaixaAluno: TStringField
      FieldKind = fkLookup
      FieldName = 'Aluno'
      LookupDataSet = qryAluno
      LookupKeyFields = 'CodAluno'
      LookupResultField = 'Nome'
      KeyFields = 'CodAluno'
      Size = 60
      Lookup = True
    end
  end
end
