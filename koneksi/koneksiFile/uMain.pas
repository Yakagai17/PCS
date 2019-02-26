unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, DB, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel1: TPanel;
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
    DBGrid1: TDBGrid;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    ADOQuery1: TADOQuery;
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var NamaFile,svr,dbku,hos,pss,CS,InScur,pass:String;
    List:TStringList;
begin
  try
    NamaFile:='koneksi';
    NamaFile:= ChangeFileExt(NamaFile,'.ini');
    List:=TStringList.Create;
    try
      List.NameValueSeparator:=':';
      try
      List.LoadFromFile(NamaFile);
      svr:=List.Values['SVR'];
      dbku:=List.Values['DB'];
      hos:=List.Values['ID'];
    if hos='' then
    begin
    hos:='sa';
    InScur:='Integrated Security=SSPI';
    end
    else
    begin
    hos:=hos;
    InScur:='Integrated Security=';
    end;
    pss:=List.Values['PAS'];
    if pss='' then pass:=List.Values['PAS'];
    CS:='Provider=SQLOLEDB.1;Password='+pss+';'+InScur+';Persist Security Info=true;User ID='+hos+';;Initial Catalog='+dbku+';Data Source='+svr+';';
    Except
    end;
    finally
    List.Free;
    end;
    ADOConnection1.connected:=false;
    ADOConnection1.LoginPrompt:=False;
    ADOConnection1.isolationLevel:=ilReadCommitted;
    ADOConnection1.ConnectionString:=CS;
    ADOConnection1.connected:=true;
    ShowMessage('koneksi database berhasil');
    Except
    ShowMessage('koeksi database gagal');
    end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
DBGrid1.DataSource:=DataSource1;
  DataSource1.DataSet:=ADOTable1;
  ADOTable1.Connection:=ADOConnection1;
  ADOTable1.TableName:='mahasiswa';
  ADOTable1.Active:=True;
end;

end.
