unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfMain = class(TForm)
    ComboBox1: TComboBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure TampilJurusan;
  end;

var
  fMain: TfMain;

implementation

uses uDM;

{$R *.dfm}

procedure TfMain.TampilJurusan();
begin
  DM.QueryJurusan.Active:=false;
  DM.QueryJurusan.SQL.Clear;
  DM.QueryJurusan.SQL.Add('select * from jurusan');
  DM.QueryJurusan.Active:= True;
  ComboBox1.Items.Clear;
  while not DM.QueryJurusan.Eof do
  begin
  ComboBox1.Items.Add(DM.QueryJurusan.fieldbyname('nama_jurusan').AsString);
  DM.QueryJurusan.Next;
  end;
end;  

procedure TfMain.FormCreate(Sender: TObject);
begin
  TampilJurusan;
end;

end.
