unit formPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Mask, DBCtrls, Grids, DBGrids,
  Buttons, Data.DB;

type
  TfrmPrincipal = class(TForm)
    TabControl1: TTabControl;
    Panel1: TPanel;
    Label1: TLabel;
    dbcAluno: TDBLookupComboBox;
    dbgItemCaixa: TDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    dbeMes: TDBEdit;
    dbeAno: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    dbtTotal: TDBText;
    lblTotalGeral: TLabel;
    Label4: TLabel;
    dbeValor: TDBEdit;
    btnOk: TButton;
    btnCancelar: TButton;
    lblContAluno: TLabel;
    btnAluno: TSpeedButton;
    Label5: TLabel;
    btnGastos: TSpeedButton;
    procedure btnAlunoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGastosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses formDados, formAluno, shellapi;

{$R *.dfm}

procedure TfrmPrincipal.btnAlunoClick(Sender: TObject);
begin
 ShellExecute(handle,'open',PChar('Caixa.mdb'), '','',SW_SHOWNORMAL);
 //application.CreateForm(tfrmaluno, frmaluno);
 //frmaluno.showmodal;
 //frmaluno.free;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
 dtmdados.qryitemcaixa.Filtered := false;
 dtmdados.qryitemcaixa.Filter   := 'codcaixa = ' + dtmdados.qryCaixaCodCaixa.AsString;
 dtmdados.qryitemcaixa.Filtered := true;

 dtmdados.qryCaixa.Last;
end;

procedure TfrmPrincipal.btnOkClick(Sender: TObject);
var TotalGeral: real;
begin
 dtmdados.qryitemcaixa.UpdateBatch;

 dtmdados.temp.Close;
 dtmdados.temp.SQL.Text := 'SELECT SUM(itemcaixa.subtotal) as Total FROM Caixa INNER JOIN ItemCaixa ON Caixa.CodCaixa = ItemCaixa.CodCaixa WHERE caixa.codcaixa = ' + dtmdados.qryCaixaCodCaixa.AsString;
 dtmdados.temp.Open;
 {***}
 totalgeral := dtmdados.temp.fieldbyname('total').asfloat;
 {***}
 dtmdados.temp.Close;
 dtmdados.temp.SQL.Text := 'UPDATE caixa SET total = "' + floattostr(totalgeral) + '" WHERE codcaixa = ' + dtmdados.qryCaixaCodCaixa.AsString;
 dtmdados.temp.ExecSQL;

 dtmdados.qryCaixa.Refresh;

 //application.MessageBox('Registro incluído com sucesso!', 'Mensagem', mb_ok + mb_iconinformation);
end;

procedure TfrmPrincipal.btnCancelarClick(Sender: TObject);
begin
 with dtmdados do
 begin
   qryitemcaixa.CancelUpdates;
   qrycaixa.Delete;

   qryitemcaixa.Filtered := false;
   qryitemcaixa.Filter   := 'codcaixa = ' + qryCaixaCodCaixa.AsString;
   qryitemcaixa.Filtered := true;
 end;
end;

procedure TfrmPrincipal.btnGastosClick(Sender: TObject);
begin
 ShellExecute(handle,'open',PChar('Gastos Escola.xlsx'), '','',SW_SHOWNORMAL);
end;

end.
