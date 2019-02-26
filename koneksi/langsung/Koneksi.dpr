program Koneksi;

uses
  Forms,
  uUtama in 'uUtama.pas' {fUtama};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfUtama, fUtama);
  Application.Run;
end.
