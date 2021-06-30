unit formAluno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, ExtCtrls, ComCtrls, StdCtrls, Mask;

type
  TfrmAluno = class(TForm)
    TabControl1: TTabControl;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAluno: TfrmAluno;

implementation

uses formDados;

{$R *.dfm}

end.
