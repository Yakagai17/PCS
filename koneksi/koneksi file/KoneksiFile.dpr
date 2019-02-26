program KoneksiFile;

uses
  Forms,
  uMain in 'uMain.pas' {Form1},
  koneksi in 'koneksi.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
