program TestStringer;

uses
  Vcl.Forms,
  Unit13 in 'Unit13.pas' {Form13};

{$R *.res}

begin

  System.ReportMemoryLeaksOnShutdown := True;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Test String Move Functions';
  Application.CreateForm(TForm13, Form13);
  Application.Run;
end.
