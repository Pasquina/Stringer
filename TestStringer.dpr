program TestStringer;

uses
  Vcl.Forms,
  Unit13 in 'Unit13.pas' {Form13},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin

  System.ReportMemoryLeaksOnShutdown := True;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Sapphire Kamri');
  Application.Title := 'Test String Move Functions';
  Application.CreateForm(TForm13, Form13);
  Application.Run;
end.
