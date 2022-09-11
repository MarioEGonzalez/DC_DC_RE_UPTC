unit elevadorr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TElevador = class(TForm)
    Label8: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image1: TImage;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Vs: TEdit;
    Vo: TEdit;
    RS: TEdit;
    RL: TEdit;
    Button1: TButton;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Button2: TButton;
    D: TEdit;
    Lmin: TEdit;
    iL: TEdit;
    Imin: TEdit;
    Imax: TEdit;
    C: TEdit;
    Label15: TLabel;
    F: TEdit;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Elevador: TElevador;

implementation

{$R *.dfm}

procedure TElevador.Button1Click(Sender: TObject);
var
vo1,vs1,rl1,rs1,d1,lmin1,il1,deltail1,imax1,imin1,c1,f1 : Real;
begin
           Formatsettings.DecimalSeparator := ',';
            Formatsettings.DecimalSeparator := '.';

                 // parametros de entrada
  vo1:=strtoFloat(Vo.Text);
     vs1:=strtoFloat(Vs.Text);
       rl1:=strtoFloat(RL.Text);
         rs1:=strtoFloat(RS.Text);
           f1:=strtoFloat(F.Text);

         // Calculos
               d1:= 1-(vs1/vo1);
               lmin1:= ((d1*((1-d1)*(1-d1))*rl1)/(2*f1))*1.25 ;
               il1:= vs1/((((1-d1)*(1-d1)))*rl1);
               deltail1:=(vs1*d1)/(2*lmin1*f1) ;
               imax1:=il1+deltail1;
                  imin1:=il1-deltail1;
                  c1:= d1/(rl1*rs1*f1) ;

         //Parametros de salida.
                             D.Text:=floattostr(d1);
                              Lmin.Text:=floattostr(lmin1);
                               Imax.Text:=floattostr(imax1);
                                Imin.Text:=floattostr(imin1);
                                 C.Text:=floattostr(c1);
                                  iL.Text:=floattostr(il1);








end;

procedure TElevador.Button2Click(Sender: TObject);
begin
Elevador.Close;
end;

end.
