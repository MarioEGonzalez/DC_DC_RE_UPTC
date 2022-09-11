unit Reductor111;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TReductor = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    vs: TLabeledEdit;
    D: TLabeledEdit;
    C: TLabeledEdit;
    R: TLabeledEdit;
    L: TLabeledEdit;
    F: TLabeledEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    imax: TEdit;
    Imin: TLabeledEdit;
    vo: TLabeledEdit;
    RS: TLabeledEdit;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Reductor: TReductor;

implementation

{$R *.dfm}

uses reductor22;

procedure TReductor.Button1Click(Sender: TObject);
 var  vs1,l1,c1,d1,f1,r1,vo1,imax1,imin1,rs1: Real;
begin
Formatsettings.DecimalSeparator := ',';
         Formatsettings.DecimalSeparator := '.';

            //variables de ingreso
            vs1:=strtoFloat(Vs.Text);
                d1:=strtoFloat(D.Text);
                  l1:=strtoFloat(L.Text);
                    c1:=strtoFloat(C.Text);
                      f1:=strtoFloat(F.Text);
                        r1:=strtoFloat(R.Text);


                  // Calculos a Realizar
                  vo1:=vs1*d1;
                  imax1:=vo1*((1/r1)+((1-d1)/(2*l1*f1))) ;
                  imin1:=vo1*((1/r1)-((1-d1)/(2*l1*f1))) ;

                 // rc2:=1-d1;
                 // rc3:= 8*l1*c1*(f*f)
                  rs1:= (1-d1)/(8*l1*c1*(f1*f1));


                  //representacion Datos
                    Vo.Text:=floattostr(vo1);
                    Imax.Text:=floattostr(imax1);
                    Imin.Text:=floattostr(imin1);
                    RS.Text:=floattostr(rs1);


end;

procedure TReductor.Button2Click(Sender: TObject);
begin
Reductor.Close;
end;

procedure TReductor.Button3Click(Sender: TObject);
begin
Reductor2.showModal;
end;

end.
