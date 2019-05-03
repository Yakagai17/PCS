program KlikKanan;

uses
  Forms,
  uMahasiswa in 'uMahasiswa.pas' {fMahasiswa},
  uDM in 'uDM.pas' {DM: TDataModule},
  uMhs in 'uMhs.pas' {fMhs};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfMahasiswa, fMahasiswa);
  Application.CreateForm(TfMhs, fMhs);
  Application.Run;
end.
