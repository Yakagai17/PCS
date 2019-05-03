unit uMahasiswa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, Menus, ActnList, ImgList, Buttons,
  sSkinManager;

type
  TfMahasiswa = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DataSource1: TDataSource;
    pm1: TPopupMenu;
    ImageList1: TImageList;
    ActionList1: TActionList;
    E1: TMenuItem;
    H1: TMenuItem;
    act1: TAction;
    act2: TAction;
    btn1: TBitBtn;
    btn2: TBitBtn;
    edt1: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure act1Execute(Sender: TObject);
    procedure act2Execute(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure edt1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure TampilMHS;
  end;

var
  fMahasiswa: TfMahasiswa;

implementation

uses uDM, uMhs;

{$R *.dfm}

procedure TfMahasiswa.TampilMHS();
begin
  DBGrid1.DataSource:=DataSource1;
  DataSource1.DataSet:=DM.QueryView;
  DM.QueryView.Connection:=DM.ADOConnection1;
  with DM.QueryView do
    begin
      Active:=False;
      Close;
      SQL.Clear;
      SQL.Text:='SELECT * FROM mahasiswa';
      Active:=True;
    end;
end;  

procedure TfMahasiswa.FormCreate(Sender: TObject);
begin
 TampilMHS;
end;

procedure TfMahasiswa.act1Execute(Sender: TObject);
begin
fMhs.edt1.Text:=DM.QueryView['nim'];
fMhs.edt2.Text:=DM.QueryView['nama'];
fMhs.cbx1.Text:=DM.QueryView['prodi'];
fMhs.cbx2.Text:=DM.QueryView['kelas'];
fMhs.cbx3.Text:=DM.QueryView['jenis_kelamin'];
fMhs.Caption:='Ubah Data Mahasiswa';
fMhs.btn2.Caption:='Update';
fMahasiswa.Hide;
fMhs.ShowModal;
end;

procedure TfMahasiswa.act2Execute(Sender: TObject);
var kode,nama:string;
begin
Kode:=DM.QueryView['nim'];
nama:=DM.QueryView['nama'];
  if (Application.MessageBox('Yakin Dihapus?','WARNING!',
  MB_YESNO+MB_ICONWARNING)=ID_YES) then
   begin
    with DM.QueryView do
    begin
       Active:=False;
        Close;
        SQL.Clear;
        SQL.Text:='Delete FROM mahasiswa WHERE nim='+
        QuotedStr(kode)+';';
        ExecSQL;
     end;
     ShowMessage(nama+' Berhasil Dihapus');
     TampilMHS;
   end
  else
   begin
    ShowMessage('Data Batal Dihapus');
    TampilMHS;
   end;
end;

procedure TfMahasiswa.btn1Click(Sender: TObject);
begin
  fMhs.Caption:='Tambah Data Mahasiswa';
  fMhs.btn2.Caption:='Simpan';
  fMhs.HapusField;
  fMahasiswa.Hide;
  fMhs.Show;
end;

procedure TfMahasiswa.edt1Click(Sender: TObject);
begin
edt1.Clear;
end;

procedure TfMahasiswa.btn2Click(Sender: TObject);
begin
  with DM.QueryView do
  begin
    Active:=False;
    Close;
    SQL.Clear;
    SQL.Text:='select * from mahasiswa where nama like''%'+
    edt1.Text+'%''';
    Active:=True;
  end;
end;

end.
