unit uMahasiswa;

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
    Edit3: TEdit;
    Button1: TButton;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    sSkinManager1: TsSkinManager;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
     procedure hapus;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.hapus;
begin
  Edit1.Text:='';
  Edit2.Clear;
  Edit3.Clear;
end;


procedure TForm1.FormActivate(Sender: TObject);
begin
   hapus;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if (Edit1.Text='') or (Edit2.Text='') or (Edit3.Text='')then
    begin
      ShowMessage('Harus diisi!');
    end
  else
    begin
      Label8.Caption:=Edit1.Text;
      Label9.Caption:=Edit2.Text;
      Label10.Caption:=Edit3.Text;
      label11.Caption:=Edit2.Text;
      hapus;
    end;

end;

end.
