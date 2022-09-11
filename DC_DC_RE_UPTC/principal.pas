unit principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    MainMenu1: TMainMenu;
    Informacion1: TMenuItem;
    Autores1: TMenuItem;
    Universidad1: TMenuItem;
    Version1: TMenuItem;
    Bibliografia1: TMenuItem;
    Referencias1: TMenuItem;
    Salir1: TMenuItem;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Image1: TImage;
    Label6: TLabel;
    N20041: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Autores1Click(Sender: TObject);
    procedure Universidad1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Referencias1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Reductor111, Autoress, universidadd, elevadorr, referenciasss;

procedure TForm2.Autores1Click(Sender: TObject);
begin
Autores.show;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
Reductor.showModal;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
Elevador.showModal;
end;

procedure TForm2.Referencias1Click(Sender: TObject);
begin
Bibliografia.showModal;
end;

procedure TForm2.Salir1Click(Sender: TObject);
begin
Form2.Close;
end;

procedure TForm2.Universidad1Click(Sender: TObject);
begin
Universidad.show;
end;

end.
