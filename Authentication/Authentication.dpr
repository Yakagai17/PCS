program Authentication;

uses
  Forms,
  uAuth in 'uAuth.pas' {fAuth},
  uDM in 'uDM.pas' {DM: TDataModule},
  uMain in 'uMain.pas' {fMain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfAuth, fAuth);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfMain, fMain);
  Application.Run;
end.
