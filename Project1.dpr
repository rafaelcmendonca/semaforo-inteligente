program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Semaforo};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TSemaforo, Semaforo);
  Application.Run;
end.
