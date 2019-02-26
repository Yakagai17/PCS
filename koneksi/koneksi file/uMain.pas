unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, DB, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel1: TPanel;
    Edit2: TEdit;
    Edit3: TEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses koneksi;

{$R *.dfm}

procedure TForm1.Button4Click(Sender: TObject);
begin
with DM.ADOQuery1 do
  begin
    Active:=False;
    Close;
    SQL.Clear;
    SQL.Text:='SELECT *  FROM mahasiswa';
    Active:=True;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
with DM.ADOQuery2 do
  begin
    Active:=False;
    Close;
    SQL.Clear;
    SQL.Text:='insert into mahasiswa(nim,nama,prodi,kelas,jenis_kelamin) values('+
      QuotedStr(Edit2.Text)+
      ','+ QuotedStr(Edit3.Text)+
      ','+ QuotedStr(ComboBox1.Text)+
      ','+ QuotedStr(ComboBox2.Text)+
      ','+ QuotedStr(ComboBox3.Text)+')';
    ExecSQL;
  end;
end;

end.
