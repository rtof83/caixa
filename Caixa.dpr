program Caixa;

uses
  Forms,
  formPrincipal in 'formPrincipal.pas' {frmPrincipal},
  formDados in 'formDados.pas' {dtmDados: TDataModule},
  formAluno in 'formAluno.pas' {frmAluno};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdtmDados, dtmDados);
  Application.Run;
end.
