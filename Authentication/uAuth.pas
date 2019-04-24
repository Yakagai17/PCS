unit uAuth;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sSkinManager, ExtCtrls, acPNG;

type
  TfAuth = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAuth: TfAuth;

implementation

{$R *.dfm}
uses uDM, Math, uMain;

procedure TfAuth.FormCreate(Sender: TObject);
begin
Edit1.Text:='';
Edit2.Text:='';
end;

procedure TfAuth.Button1Click(Sender: TObject);
begin
  if(Edit1.Text='') or (Edit2.Text='')then
  begin
    ShowMessage('Username dan Password Harus diisi..!!!');
  end
    else
  begin
    with DM.ADOQuery1 do
    begin
      Active:=False;
      Close;
      SQL.Clear;
      SQL.Text:='SELECT username FROM users WHERE username='+
                QuotedStr(Edit1.Text)+
                'AND password='+ QuotedStr(Edit2.Text);
      Active:=True;
    end;

    if DM.ADOQuery1.IsEmpty then
    begin
      ShowMessage('Username dan Password Salah..!!!');
      Edit1.Text:='';
      Edit2.Text:='';
    end
      else
      begin
        ShowMessage('Selamat datang..!!!');
        fAuth.Hide;
        fMain.Show;
      end;    

  end;  
end;

end.
