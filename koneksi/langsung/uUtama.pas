unit uUtama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TfUtama = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    ADOConnection1: TADOConnection;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    ADOQuery1: TADOQuery;
    Button5: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fUtama: TfUtama;

implementation

{$R *.dfm}

procedure TfUtama.FormCreate(Sender: TObject);
begin
  try
    ADOConnection1.LoginPrompt:=False;
    ADOConnection1.Connected:= False;
    ADOConnection1.ConnectionString:='Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=coba;Data Source=AL\GZL;';
    ADOConnection1.Connected:= True;
    ShowMessage('Koneksi Sukses');
  except
    ShowMessage('Koneksi Gagal');

  end;
end;

procedure TfUtama.Button4Click(Sender: TObject);
begin
  DBGrid1.DataSource:=DataSource1;
  DataSource1.DataSet:=ADOTable1;
  ADOTable1.Connection:=ADOConnection1;
  ADOTable1.TableName:='mahasiswa';
  ADOTable1.Active:=True;
end;

procedure TfUtama.Button1Click(Sender: TObject);
begin
with ADOQuery1 do
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

procedure TfUtama.Button5Click(Sender: TObject);
begin
with ADOQuery1 do
  begin
    Active:=False;
    Close;
    SQL.Clear;
    SQL.Text:='select * from mahasiswa';
    Active:=True;

  end;
end;

end.
