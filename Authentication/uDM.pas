unit uDM;

interface

uses
  SysUtils, Classes, Dialogs, DB, ADODB;

type
  TDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
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

end.
