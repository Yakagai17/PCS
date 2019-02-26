unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sSkinManager;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    sSkinManager1: TsSkinManager;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Math;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var a,b,c : Integer;
begin
  if (Edit1.Text='') or (Edit2.Text='')then
  begin
    Label4.Caption:='Tidak ada!';
  end
  else
  begin
    a := StrToInt(Edit1.Text);
    b := StrToInt(Edit2.Text);
    c := a+b;

    Label4.Caption:=IntToStr(c);
    Edit1.Clear;
    Edit2.Clear;
  end

end;

procedure TForm1.FormActivate(Sender: TObject);
begin
Edit1.Text:='';
Edit2.Clear;
end;

end.
