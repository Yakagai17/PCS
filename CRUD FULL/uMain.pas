unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TfMain = class(TForm)
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
    Edit1: TEdit;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure TampilData;
    procedure HapusData;
  end;

var
  fMain: TfMain;

implementation

{$R *.dfm}
//Untuk Menghubung DataModul atau Form lain
uses uDM, Math;

procedure TfMain.TampilData();
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

procedure TfMain.HapusData();
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  ComboBox1.Text:='- PILIH -';
  ComboBox2.Text:='- PILIH -';
  ComboBox3.Text:='- PILIH -';
end;  

procedure TfMain.FormCreate(Sender: TObject);
begin
  HapusData;
  TampilData;
end;

procedure TfMain.Button4Click(Sender: TObject);
begin
  TampilData;
end;

procedure TfMain.Button1Click(Sender: TObject);
begin
  if (Edit2.Text='') or (Edit3.Text='') or (ComboBox1.Text='- PILIH -') or
  (ComboBox2.Text='- PILIH -') or (ComboBox3.Text='- PILIH -')then
    begin
    ShowMessage('Lengkapi Data!');
    end
  else
    begin
      if (Application.MessageBox('Yakin Simpan Sekarang?','WARNING!',
      MB_YESNO+MB_ICONWARNING)=ID_YES) then
        begin
          try
          DM.ADOConnection1.BeginTrans;
            with DM.QueryInsert do
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
          Edit2.SetFocus;
          DM.ADOConnection1.CommitTrans;
            ShowMessage('Data Tersimpan');
            TampilData;
            HapusData;

        except DM.ADOConnection1.RollbackTrans;
            ShowMessage('Gagal Simpan');
        end;
          end
      else
      begin
        ShowMessage('Data Tidak Disimpan');
      end;
    end;
end;

procedure TfMain.DBGrid1CellClick(Column: TColumn);
begin
Edit1.Text:=DM.QueryView['id'];
Edit2.Text:=DM.QueryView['nim'];
Edit3.Text:=DM.QueryView['nama'];
ComboBox1.Text:=DM.QueryView['prodi'];
ComboBox2.Text:=DM.QueryView['kelas'];
ComboBox3.Text:=DM.QueryView['jenis_kelamin'];
//Edit1.Enabled:=False;
end;

procedure TfMain.Button2Click(Sender: TObject);
begin
  if (Edit1.Text='') then
    begin
       ShowMessage('ID Tidak boleh kosong!');
    end
    else
    begin
      if (Application.MessageBox('Yakin Ubah Sekarang?','WARNING!',
      MB_YESNO+MB_ICONWARNING)=ID_YES) then
        begin
            try
              DM.ADOConnection1.BeginTrans;
              //Perinta untuk update
              with DM.QueryUpdate do
              begin
                Active:=False;
                Close;
                SQL.Clear;
                SQL.Text:='update mahasiswa set nim='+QuotedStr(Edit2.Text)+
                ',nama='+QuotedStr(Edit3.Text)+
                ',prodi='+QuotedStr(ComboBox1.Text)+
                ',kelas='+QuotedStr(ComboBox2.Text)+
                ',jenis_kelamin='+QuotedStr(ComboBox3.Text)+
                ' where id='+QuotedStr(Edit1.Text);
                ExecSQL;
              end;

              DM.ADOConnection1.CommitTrans;
      //        Edit1.Enabled:=True;
              TampilData;
              ShowMessage('Sukses Ubah Data ID = '+ Edit1.Text);
              HapusData;
            except DM.ADOConnection1.RollbackTrans;
               ShowMessage('Gagal Ubah data ini!');
            end;
            end
      else
        begin
          ShowMessage('Data Batal DiUbah');
        end;
    end;
end;

procedure TfMain.Button3Click(Sender: TObject);
begin
if (Edit1.Text='') then
    begin
       ShowMessage('ID Tidak boleh kosong!');
    end
    else
    begin
      if (Application.MessageBox('Yakin Hapus Sekarang?','WARNING!',
      MB_YESNO+MB_ICONWARNING)=ID_YES) then
        begin
          try
            DM.ADOConnection1.BeginTrans;
            //Perinta untuk delete
            with DM.QueryDelete do
            begin
              Active:=False;
              Close;
              SQL.Clear;
              SQL.Text:='DELETE FROM mahasiswa WHERE id='+QuotedStr(Edit1.Text);
              ExecSQL;
            end;

            DM.ADOConnection1.CommitTrans;
            ShowMessage('Sukses DELETE Data ID = '+ Edit1.Text);
            TampilData;
            HapusData;
          except DM.ADOConnection1.RollbackTrans;
             ShowMessage('Gagal DETELE data ini!');
          end;
      end
      else
        begin
          ShowMessage('Data Batal dihapus');
        end;
    end;
end;

end.
