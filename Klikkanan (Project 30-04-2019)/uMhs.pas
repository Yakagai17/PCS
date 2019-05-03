unit uMhs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfMhs = class(TForm)
    btn1: TBitBtn;
    edt1: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    edt2: TEdit;
    btn2: TBitBtn;
    cbx1: TComboBox;
    cbx2: TComboBox;
    cbx3: TComboBox;
    lbl6: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure HapusField;
  end;

var
  fMhs: TfMhs;

implementation

uses uDM,uMahasiswa;

{$R *.dfm}

procedure TfMhs.HapusField();
begin
  edt1.Clear;
  edt2.Clear;
  cbx1.Text:='- PILIH -';
  cbx2.Text:='- PILIH -';
  cbx3.Text:='- PILIH -';
end;

procedure TfMhs.btn1Click(Sender: TObject);
begin
fMhs.Hide;
fMahasiswa.Show;
end;

procedure TfMhs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
fMhs.Hide;
fMahasiswa.Show;
end;

end.
