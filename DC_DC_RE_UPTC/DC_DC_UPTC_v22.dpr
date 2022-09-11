program DC_DC_UPTC_v22;

uses
  Vcl.Forms,
  principal in 'principal.pas' {Form2},
  Reductor111 in 'Reductor111.pas' {Reductor},
  reductor22 in 'reductor22.pas' {Reductor2},
  Autoress in 'Autoress.pas' {Autores},
  universidadd in 'universidadd.pas' {Universidad},
  elevadorr in 'elevadorr.pas' {Elevador},
  referenciasss in 'referenciasss.pas' {Bibliografia};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TReductor, Reductor);
  Application.CreateForm(TReductor2, Reductor2);
  Application.CreateForm(TAutores, Autores);
  Application.CreateForm(TUniversidad, Universidad);
  Application.CreateForm(TElevador, Elevador);
  Application.CreateForm(TBibliografia, Bibliografia);
  Application.Run;
end.
