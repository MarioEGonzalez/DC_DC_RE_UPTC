unit reductor22;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,System.Math;

type
  TReductor2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Button1: TButton;
    Vo: TLabeledEdit;
    RL: TLabeledEdit;
    Vs: TLabeledEdit;
    RS: TLabeledEdit;
    D: TLabeledEdit;
    Imax: TLabeledEdit;
    Lmin: TLabeledEdit;
    Imin: TLabeledEdit;
    Irms: TLabeledEdit;
    L: TLabeledEdit;
    iL: TLabeledEdit;
    C: TLabeledEdit;
    F: TLabeledEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label10: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label11: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    delta: TLabeledEdit;
    Label12: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Reductor2: TReductor2;

implementation

{$R *.dfm}

procedure TReductor2.Button1Click(Sender: TObject);
var
 vo1,vs1,rl1,rs1,d1,lmin1,l1,il1,imin1,imax1,ilrms1,c1,f1,deltail: Real;
begin
      Formatsettings.DecimalSeparator := ',';
      Formatsettings.DecimalSeparator := '.';

               //entradas
               vo1:=strtoFloat(Vo.Text);
                vs1:=strtoFloat(Vs.Text);
                 rl1:=strtoFloat(RL.Text);
                   rs1:=strtoFloat(RS.Text);
                    f1:=strtoFloat(F.Text);

                     //Calculos
                     d1:=vo1/vs1;
                     lmin1:=((1-d1)*rl1)/(2*f1);
                     l1:= 1.25*lmin1;
                     il1:=vo1/rl1;
                     deltail:=((vs1-vo1)/l1)*d1*(1/f1);
                     imax1:=il1+(deltail/2);
                     imin1:= il1-(deltail/2);
                     ilrms1:= sqrt( (il1*il1)+(((deltail/2)/sqrt(3))*((deltail/2)/sqrt(3)))) ;
                     c1:=(1-d1)/(8*l1*rs1*f1);

                     //mostrar resultados
                      D.Text:=floattostr(d1);
                        Lmin.Text:=floattostr(lmin1);
                         L.Text:=floattostr(l1);
                          iL.Text:=floattostr(il1);
                            Imax.Text:=floattostr(imax1);
                             Imin.Text:=floattostr(imin1);
                               Irms.Text:=floattostr(ilrms1);
                                 C.Text:=floattostr(c1);
                                   delta.Text:=floattostr(deltail);



end;

procedure TReductor2.Button2Click(Sender: TObject);
begin
Reductor2.Close;
end;

end.
