program DC_DC_UPTC;

uses
  Vcl.Forms,
  principal in 'principal.pas' {Form2},
  Reductor111 in 'Reductor111.pas' {Reductor},
  diseñoo in 'diseñoo.pas' {Diseño};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TReductor, Reductor);
  Application.CreateForm(TDiseño, Diseño);
  Application.Run;
end.
