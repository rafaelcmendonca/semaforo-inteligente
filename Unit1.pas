unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, jpeg;

type
  Trua = record
    Status:integer;
    mov:integer;
  end;
  TPriori = record
    rua:integer;
    quant:integer;
  end;
  TSemaforo = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Timer1: TTimer;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    Button1: TButton;
    rua1: TPaintBox;
    rua2: TPaintBox;
    rua3: TPaintBox;
    rua4: TPaintBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    GroupBox1: TGroupBox;
    Bevel1: TBevel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    GroupBox2: TGroupBox;
    Button2: TButton;
    Label5: TLabel;
    Edit5: TEdit;
    Timer2: TTimer;
    Button3: TButton;
    Edit6: TEdit;
    Label6: TLabel;
    Bevel2: TBevel;
    Label7: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
const
  tamarelo=15;
  limite=80;
var
  rua1a: array[1..41] of Trua;
  rua1b: array[1..41] of Trua;
  rua2a: array[1..41] of Trua;
  rua2b: array[1..41] of Trua;
  rua3a: array[1..41] of Trua;
  rua3b: array[1..41] of Trua;
  rua4a: array[1..41] of Trua;
  rua4b: array[1..41] of Trua;
  Semaforo: TSemaforo;
  priori:array[1..4] of TPriori;
  quant1:integer;
  quant2:integer;
  quant3:integer;
  quant4:integer;
  sinal1:integer;
  sinal2:integer;
  sinal3:integer;
  sinal4:integer;
  conv:integer;
  convencional_s:boolean;
  inteligente_s:boolean;
  liber1:boolean;
  liber2:boolean;
  liber3:boolean;
  liber4:boolean;
  amarelo:integer;
  vermelho1:integer;
  vermelho2:integer;
  vermelho3:integer;
  vermelho4:integer;
  tmin1:integer;
  tmin2:integer;
  tmin3:integer;
  tmin4:integer;
  nome1:integer;
  nome2:integer;
  nome3:integer;
  nome4,simucount:integer;

implementation

{$R *.dfm}

{Procedimento INTELIGENTE}
Procedure Inteligente;
Begin

end;

{Procedimento CONVENCIONAL}
procedure convencional;
begin
  if (conv=300) then
  begin
    sinal1:=2;
    sinal2:=2;
    sinal3:=2;
    sinal4:=1;
  end;

  if (conv=500) then
  begin
    sinal1:=0;
    sinal2:=2;
    sinal3:=2;
    sinal4:=2;
  end;
  if (conv=800) then
  begin
    sinal1:=1;
    sinal2:=2;
    sinal3:=2;
    sinal4:=2;
  end;
  if (conv=1000) then
  begin
    sinal1:=2;
    sinal2:=0;
    sinal3:=2;
    sinal4:=2;
  end;
  if (conv=1300) then
  begin
    sinal1:=2;
    sinal2:=1;
    sinal3:=2;
    sinal4:=2;
  end;

  if (conv=1500) then
  begin
    sinal1:=2;
    sinal2:=2;
    sinal3:=0;
    sinal4:=2;
  end;
  if (conv=1800) then
  begin
    sinal1:=2;
    sinal2:=2;
    sinal3:=1;
    sinal4:=2;
  end;

  if (conv=2000) then
  begin
    sinal1:=2;
    sinal2:=2;
    sinal3:=2;
    sinal4:=0;
    conv:=0;
  end;

end;

procedure TSemaforo.BitBtn2Click(Sender: TObject);
begin
Semaforo.close;
end;

procedure TSemaforo.BitBtn1Click(Sender: TObject);
var i:integer;
begin
  bitbtn3.Click;
  amarelo:=0;
  tmin1:=0;
  tmin2:=0;
  tmin3:=0;
  tmin4:=0;
  liber1:=false;
  liber2:=false;
  liber3:=false;
  liber4:=false;
  vermelho1:=0;
  vermelho2:=0;
  vermelho3:=0;
  vermelho4:=0;
  conv:=0;
  for i:=0 to 41 do
  begin
    rua1a[i].Status:=0;
    rua1a[i].mov:=0;
    rua1b[i].Status:=0;
    rua1b[i].mov:=0;
    rua2a[i].Status:=0;
    rua2a[i].mov:=0;
    rua2b[i].Status:=0;
    rua2b[i].mov:=0;
    rua3a[i].Status:=0;
    rua3a[i].mov:=0;
    rua3b[i].Status:=0;
    rua3b[i].mov:=0;
    rua4a[i].Status:=0;
    rua4a[i].mov:=0;
    rua4b[i].Status:=0;
    rua4b[i].mov:=0;
  end;
  nome1:=2;
  nome2:=2;
  nome3:=2;
  nome4:=2;
  sinal1:=2;
  sinal2:=2;
  sinal3:=2;
  sinal4:=2;
  quant1:=0;
  quant2:=0;
  quant3:=0;
  quant4:=0;
  button1.Click;
  timer1.Enabled:=true;
  conv:=450;
end;

procedure TSemaforo.BitBtn3Click(Sender: TObject);
var i:integer;
begin
  timer1.Enabled:=false;
  priori[1].rua:=1;
  priori[2].rua:=2;
  priori[3].rua:=3;
  priori[4].rua:=4;
  priori[1].quant:=0;
  priori[2].quant:=0;
  priori[3].quant:=0;
  priori[4].quant:=0;
  amarelo:=0;
  tmin1:=0;
  tmin2:=0;
  tmin3:=0;
  tmin4:=0;
  liber1:=true;
  liber2:=true;
  liber3:=true;
  liber4:=true;
  vermelho1:=0;
  vermelho2:=0;
  vermelho3:=0;
  vermelho4:=0;
  conv:=0;
  for i:=0 to 41 do
  begin
    rua1a[i].Status:=0;
    rua1a[i].mov:=0;
    rua1b[i].Status:=0;
    rua1b[i].mov:=0;
    rua2a[i].Status:=0;
    rua2a[i].mov:=0;
    rua2b[i].Status:=0;
    rua2b[i].mov:=0;
    rua3a[i].Status:=0;
    rua3a[i].mov:=0;
    rua3b[i].Status:=0;
    rua3b[i].mov:=0;
    rua4a[i].Status:=0;
    rua4a[i].mov:=0;
    rua4b[i].Status:=0;
    rua4b[i].mov:=0;
  end;
  nome1:=0;
  nome2:=0;
  nome3:=0;
  nome4:=0;
  sinal1:=2;
  sinal2:=2;
  sinal3:=2;
  sinal4:=2;
  quant1:=0;
  quant2:=0;
  quant3:=0;
  quant4:=0;
  rua4.Repaint;
  rua3.Repaint;
  rua2.Repaint;
  rua1.Repaint;
  button1.Click;
end;

procedure TSemaforo.BitBtn4Click(Sender: TObject);
begin
quant1:=quant1+1;
  if (quant1 mod 2=0) then
  begin
    rua1a[1].Status:=1;
    rua1a[1].mov:=1;
  end
  else
  begin
    rua1b[1].Status:=1;
    rua1b[1].mov:=1;
  end;
end;

procedure TSemaforo.BitBtn7Click(Sender: TObject);
begin
quant2:=quant2+1;
  if (quant2 mod 2=0) then
  begin
    rua2a[1].Status:=1;
    rua2a[1].mov:=1;
  end
  else
  begin
    rua2b[1].Status:=1;
    rua2b[1].mov:=1;
  end;
end;

procedure TSemaforo.BitBtn6Click(Sender: TObject);
begin
quant3:=quant3+1;
  if (quant3 mod 2=0) then
  begin
    rua3a[1].Status:=1;
    rua3a[1].mov:=1;
  end
  else
  begin
    rua3b[1].Status:=1;
    rua3b[1].mov:=1;
  end;
end;

procedure TSemaforo.BitBtn5Click(Sender: TObject);
begin
quant4:=quant4+1;
  if (quant4 mod 2=0) then
  begin
    rua4a[1].Status:=1;
    rua4a[1].mov:=1;
  end
  else
  begin
    rua4b[1].Status:=1;
    rua4b[1].mov:=1;
  end;
end;

procedure TSemaforo.Timer1Timer(Sender: TObject);
var
  i,maior,raf1,raf2:integer;
  varaux:TPriori;
begin
  button1.click;
  conv:=conv+10;
  rua4.Repaint;
  rua3.Repaint;
  rua2.Repaint;
  rua1.Repaint;
  if (sinal1=0) then
    rua1.BringToFront
  else
    if (sinal2=0) then
      rua2.BringToFront
    else
      if (sinal3=0) then
        rua3.BringToFront
      else
        if (sinal4=0) then
          rua4.BringToFront;

{********** INTELIGENTE ************}
if (radiobutton2.Checked=true) then
begin
if (rua1a[16].Status=1) then quant1:=quant1-1;
if (rua1b[16].Status=1) then quant1:=quant1-1;
if (rua2a[16].Status=1) then quant2:=quant2-1;
if (rua2b[16].Status=1) then quant2:=quant2-1;
if (rua3a[16].Status=1) then quant3:=quant3-1;
if (rua3b[16].Status=1) then quant3:=quant3-1;
if (rua4a[16].Status=1) then quant4:=quant4-1;
if (rua4b[16].Status=1) then quant4:=quant4-1;

for raf1:=1 to 4 do
begin
  if (priori[raf1].rua=1) then priori[raf1].quant:=quant1;
  if (priori[raf1].rua=2) then priori[raf1].quant:=quant2;
  if (priori[raf1].rua=3) then priori[raf1].quant:=quant3;
  if (priori[raf1].rua=4) then priori[raf1].quant:=quant4;
end;
for raf1:=1 to 3 do
begin
  for raf2:=raf1+1 to 4 do
  begin
    if (priori[raf1].quant<priori[raf2].quant) then
    begin
      varaux.rua:=priori[raf1].rua;
      varaux.quant:=priori[raf1].quant;
      priori[raf1].rua:=priori[raf2].rua;
      priori[raf1].quant:=priori[raf2].quant;
      priori[raf2].rua:=varaux.rua;
      priori[raf2].quant:=varaux.quant;
    end;
  end;
end;

if (quant1>quant2) and (quant1>quant3) and (quant1>quant4) then
  maior:=1
else
  if (quant2>quant1) and (quant2>quant3) and (quant2>quant4) then
    maior:=2
  else
    if (quant3>quant1) and (quant3>quant2) and (quant3>quant4) then
      maior:=3
    else
      if (quant4>quant1) and (quant4>quant2) and (quant4>quant3) then
        maior:=4
      else
        maior:=priori[1].rua;

if (quant1>0) and (sinal1=2) then
  tmin1:=tmin1+1;
if (quant2>0) and (sinal2=2) then
  tmin2:=tmin2+1;
if (quant3>0) and (sinal3=2) then
  tmin3:=tmin3+1;
if (quant4>0) and (sinal4=2) then
  tmin4:=tmin4+1;

if (sinal1=0) then
  tmin1:=0;
if (sinal2=0) then
  tmin2:=0;
if (sinal3=0) then
  tmin3:=0;
if (sinal4=0) then
  tmin4:=0;

if (maior=1) and (amarelo=0) then
begin
  liber1:=true;
  liber2:=false;
  liber3:=false;
  liber4:=false;
end;
if (maior=2) and (amarelo=0) then
begin
  liber1:=false;
  liber2:=true;
  liber3:=false;
  liber4:=false;
end;
if (maior=3) and (amarelo=0) then
begin
  liber1:=false;
  liber2:=false;
  liber3:=true;
  liber4:=false;
end;
if (maior=4) and (amarelo=0) then
begin
  liber1:=false;
  liber2:=false;
  liber3:=false;
  liber4:=true;
end;

if (quant1=0) and (quant2=0) and (quant3=0) and (quant4=0) then
begin
  if (timer2.Enabled=true) then
  begin
    timer2.Enabled:=false;
    Edit6.Text:=inttostr(trunc(simucount/10))+','+inttostr(trunc(10*(simucount/10-trunc(simucount/10))))+'s';
  end;
  sinal1:=2;
  sinal2:=2;
  sinal3:=2;
  sinal4:=2;
  liber1:=false;
  liber2:=false;
  liber3:=false;
  liber4:=false;
end;


if (tmin1>=limite) then
begin
  liber1:=true;
  liber2:=false;
  liber3:=false;
  liber4:=false;
end;
if (tmin2>=limite) then
begin
  liber1:=false;
  liber2:=true;
  liber3:=false;
  liber4:=false;
end;
if (tmin3>=limite) then
begin
  liber1:=false;
  liber2:=false;
  liber3:=true;
  liber4:=false;
end;
if (tmin4>=limite) then
begin
  liber1:=false;
  liber2:=false;
  liber3:=false;
  liber4:=true;
end;


if (sinal1=2) and (liber1=true) then
begin
  if (sinal1=2) and (sinal2=2) and (sinal3=2) and (sinal4=2) then
    sinal1:=0;
  if (sinal2=0) or (sinal2=1) then
  begin
    sinal2:=1;
    amarelo:=amarelo+1;
  end;
  if (sinal2=1) and (amarelo>=tamarelo) then
  begin
    amarelo:=0;
    sinal2:=2;
    tmin2:=0;
    sinal1:=0;
  end;
  if (sinal3=0) or (sinal3=1) then
  begin
    sinal3:=1;
    amarelo:=amarelo+1;
  end;
  if (sinal3=1) and (amarelo>=tamarelo) then
  begin
    amarelo:=0;
    sinal3:=2;
    tmin3:=0;
    sinal1:=0;
  end;
  if (sinal4=0) or (sinal4=1) then
  begin
    sinal4:=1;
    amarelo:=amarelo+1;
  end;
  if (sinal4=1) and (amarelo>=tamarelo) then
  begin
    amarelo:=0;
    sinal4:=2;
    tmin4:=0;
    sinal1:=0;
  end;
end;

if (sinal2=2) and (liber2=true) then
begin
  if (sinal1=2) and (sinal2=2) and (sinal3=2) and (sinal4=2) then
    sinal2:=0;
  if (sinal1=0) or (sinal1=1) then
  begin
    sinal1:=1;
    amarelo:=amarelo+1;
  end;
  if (sinal1=1) and (amarelo>=tamarelo) then
  begin
    amarelo:=0;
    sinal1:=2;
    tmin1:=0;
    sinal2:=0;
  end;
  if (sinal3=0) or (sinal3=1) then
  begin
    sinal3:=1;
    amarelo:=amarelo+1;
  end;
  if (sinal3=1) and (amarelo>=tamarelo) then
  begin
    amarelo:=0;
    sinal3:=2;
    tmin3:=0;
    sinal2:=0;
  end;
  if (sinal4=0) or (sinal4=1) then
  begin
    sinal4:=1;
    amarelo:=amarelo+1;
  end;
  if (sinal4=1) and (amarelo>=tamarelo) then
  begin
    amarelo:=0;
    sinal4:=2;
    tmin4:=0;
    sinal2:=0;
  end;
end;


if (sinal3=2) and (liber3=true) then
begin
  if (sinal1=2) and (sinal2=2) and (sinal3=2) and (sinal4=2) then
    sinal3:=0;
  if (sinal1=0) or (sinal1=1) then
  begin
    sinal1:=1;
    amarelo:=amarelo+1;
  end;
  if (sinal1=1) and (amarelo>=tamarelo) then
  begin
    amarelo:=0;
    sinal1:=2;
    tmin1:=0;
    sinal3:=0;
  end;
  if (sinal2=0) or (sinal2=1) then
  begin
    sinal2:=1;
    amarelo:=amarelo+1;
  end;
  if (sinal2=1) and (amarelo>=tamarelo) then
  begin
    amarelo:=0;
    sinal2:=2;
    tmin2:=0;
    sinal3:=0;
  end;
  if (sinal4=0) or (sinal4=1) then
  begin
    sinal4:=1;
    amarelo:=amarelo+1;
  end;
  if (sinal4=1) and (amarelo>=tamarelo) then
  begin
    amarelo:=0;
    sinal4:=2;
    tmin4:=0;
    sinal3:=0;
  end;
end;


if (sinal4=2) and (liber4=true) then
begin
  if (sinal1=2) and (sinal2=2) and (sinal3=2) and (sinal4=2) then
    sinal4:=0;
  if (sinal1=0) or (sinal1=1) then
  begin
    sinal1:=1;
    amarelo:=amarelo+1;
  end;
  if (sinal1=1) and (amarelo>=tamarelo) then
  begin
    amarelo:=0;
    sinal1:=2;
    tmin1:=0;
    sinal4:=0;
  end;
  if (sinal2=0) or (sinal2=1) then
  begin
    sinal2:=1;
    amarelo:=amarelo+1;
  end;
  if (sinal2=1) and (amarelo>=tamarelo) then
  begin
    amarelo:=0;
    sinal2:=2;
    tmin2:=0;
    sinal4:=0;
  end;
  if (sinal3=0) or (sinal3=1) then
  begin
    sinal3:=1;
    amarelo:=amarelo+1;
  end;
  if (sinal3=1) and (amarelo>=tamarelo) then
  begin
    amarelo:=0;
    sinal3:=2;
    tmin3:=0;
    sinal4:=0;
  end;
end;
end;
{********** FIM INTELIGENTE ************}
if (radiobutton1.Checked=true) then
begin
  convencional;
end;

{********** Rua 1 *************}
  {A}
  for i:=1 to 41 do
  begin
    if (rua1a[i].Status=1) then
      rua1.Canvas.Rectangle(-10+i*11,8,i*11,16);
  end;
  if ((sinal1=2) or (sinal1=1)) then
    rua1a[13].mov:=0
  else
    rua1a[13].mov:=1;

  for i:=41 downto 1 do
  begin
    if (rua1a[i-1].Status=1) and (rua1a[i].Status=1) and (rua1a[i].mov=0) then
      rua1a[i-1].mov:=0;
    if (rua1a[i-1].Status=1) and (rua1a[i].Status=1) and (rua1a[i].mov=1) then
      rua1a[i-1].mov:=1;
  end;
  if (rua1a[41].Status=1) then
  begin
      rua1a[41].Status:=0;
      rua1a[41].mov:=0;
  end;

  for i:=41 downto 2 do
  begin
    if (rua1a[i-1].Status=1) and (rua1a[i-1].mov=1) then
    begin
      rua1a[i].Status:=1;
      rua1a[i].mov:=1;
      rua1a[i-1].Status:=0;
      rua1a[i-1].mov:=0;
    end;
  end;

  {B}

  for i:=1 to 41 do
  begin
    if (rua1b[i].Status=1) then
      rua1.Canvas.Rectangle(-10+i*11,35,i*11,43);
  end;
  if ((sinal1=2) or (sinal1=1)) then
    rua1b[13].mov:=0
  else
    rua1b[13].mov:=1;

  for i:=41 downto 1 do
  begin
    if (rua1b[i-1].Status=1) and (rua1b[i].Status=1) and (rua1b[i].mov=0) then
      rua1b[i-1].mov:=0;
    if (rua1b[i-1].Status=1) and (rua1b[i].Status=1) and (rua1b[i].mov=1) then
      rua1b[i-1].mov:=1;
  end;
  if (rua1b[41].Status=1) then
  begin
    rua1b[41].Status:=0;
    rua1b[41].mov:=0;
  end;

  for i:=41 downto 2 do
  begin
    if (rua1b[i-1].Status=1) and (rua1b[i-1].mov=1) then
    begin
      rua1b[i].Status:=1;
      rua1b[i].mov:=1;
      rua1b[i-1].Status:=0;
      rua1b[i-1].mov:=0;
    end;
  end;
{**********}


{********** Rua 2 *************}
  {A}
  for i:=1 to 41 do
  begin
    if (rua2a[i].Status=1) then
      rua2.Canvas.Rectangle(8,rua2.Height-(-10+i*11),16,rua2.Height-(i*11));
  end;
  if ((sinal2=2) or (sinal2=1)) then
    rua2a[13].mov:=0
  else
    rua2a[13].mov:=1;

  for i:=41 downto 1 do
  begin
    if (rua2a[i-1].Status=1) and (rua2a[i].Status=1) and (rua2a[i].mov=0) then
      rua2a[i-1].mov:=0;
    if (rua2a[i-1].Status=1) and (rua2a[i].Status=1) and (rua2a[i].mov=1) then
      rua2a[i-1].mov:=1;
  end;
  if (rua2a[41].Status=1) then
  begin
      rua2a[41].Status:=0;
      rua2a[41].mov:=0;
  end;

  for i:=41 downto 2 do
  begin
    if (rua2a[i-1].Status=1) and (rua2a[i-1].mov=1) then
    begin
      rua2a[i].Status:=1;
      rua2a[i].mov:=1;
      rua2a[i-1].Status:=0;
      rua2a[i-1].mov:=0;
    end;
  end;

  {B}

  for i:=1 to 41 do
  begin
    if (rua2b[i].Status=1) then
      rua2.Canvas.Rectangle(35,rua2.Height-(-10+i*11),43,rua2.Height-(i*11));
  end;
  if ((sinal2=2) or (sinal2=1)) then
    rua2b[13].mov:=0
  else
    rua2b[13].mov:=1;

  for i:=41 downto 1 do
  begin
    if (rua2b[i-1].Status=1) and (rua2b[i].Status=1) and (rua2b[i].mov=0) then
      rua2b[i-1].mov:=0;
    if (rua2b[i-1].Status=1) and (rua2b[i].Status=1) and (rua2b[i].mov=1) then
      rua2b[i-1].mov:=1;
  end;
  if (rua2b[41].Status=1) then
  begin
    rua2b[41].Status:=0;
    rua2b[41].mov:=0;
  end;

  for i:=41 downto 2 do
  begin
    if (rua2b[i-1].Status=1) and (rua2b[i-1].mov=1) then
    begin
      rua2b[i].Status:=1;
      rua2b[i].mov:=1;
      rua2b[i-1].Status:=0;
      rua2b[i-1].mov:=0;
    end;
  end;
{**********}

{********** Rua 3 *************}
  {A}
  for i:=1 to 41 do
  begin
    if (rua3a[i].Status=1) then
      rua3.Canvas.Rectangle(rua3.Width-(-10+i*11),8,rua3.Width-(i*11),16);
  end;
  if ((sinal3=2) or (sinal3=1)) then
    rua3a[13].mov:=0
  else
    rua3a[13].mov:=1;

  for i:=41 downto 1 do
  begin
    if (rua3a[i-1].Status=1) and (rua3a[i].Status=1) and (rua3a[i].mov=0) then
      rua3a[i-1].mov:=0;
    if (rua3a[i-1].Status=1) and (rua3a[i].Status=1) and (rua3a[i].mov=1) then
      rua3a[i-1].mov:=1;
  end;
  if (rua3a[41].Status=1) then
  begin
      rua3a[41].Status:=0;
      rua3a[41].mov:=0;
  end;

  for i:=41 downto 2 do
  begin
    if (rua3a[i-1].Status=1) and (rua3a[i-1].mov=1) then
    begin
      rua3a[i].Status:=1;
      rua3a[i].mov:=1;
      rua3a[i-1].Status:=0;
      rua3a[i-1].mov:=0;
    end;
  end;

  {B}

  for i:=1 to 41 do
  begin
    if (rua3b[i].Status=1) then
      rua3.Canvas.Rectangle(rua3.Width-(-10+i*11),35,rua3.Width-(i*11),43);
  end;
  if ((sinal3=2) or (sinal3=1)) then
    rua3b[13].mov:=0
  else
    rua3b[13].mov:=1;

  for i:=41 downto 1 do
  begin
    if (rua3b[i-1].Status=1) and (rua3b[i].Status=1) and (rua3b[i].mov=0) then
      rua3b[i-1].mov:=0;
    if (rua3b[i-1].Status=1) and (rua3b[i].Status=1) and (rua3b[i].mov=1) then
      rua3b[i-1].mov:=1;
  end;
  if (rua3b[41].Status=1) then
  begin
    rua3b[41].Status:=0;
    rua3b[41].mov:=0;
  end;

  for i:=41 downto 2 do
  begin
    if (rua3b[i-1].Status=1) and (rua3b[i-1].mov=1) then
    begin
      rua3b[i].Status:=1;
      rua3b[i].mov:=1;
      rua3b[i-1].Status:=0;
      rua3b[i-1].mov:=0;
    end;
  end;
{**********}

{********** Rua 4 *************}
  {A}
  for i:=1 to 41 do
  begin
    if (rua4a[i].Status=1) then
      rua4.Canvas.Rectangle(8,-10+i*11,16,i*11);
  end;
  if ((sinal4=2) or (sinal4=1)) then
    rua4a[13].mov:=0
  else
    rua4a[13].mov:=1;

  for i:=41 downto 1 do
  begin
    if (rua4a[i-1].Status=1) and (rua4a[i].Status=1) and (rua4a[i].mov=0) then
      rua4a[i-1].mov:=0;
    if (rua4a[i-1].Status=1) and (rua4a[i].Status=1) and (rua4a[i].mov=1) then
      rua4a[i-1].mov:=1;
  end;
  if (rua4a[41].Status=1) then
  begin
      rua4a[41].Status:=0;
      rua4a[41].mov:=0;
  end;

  for i:=41 downto 2 do
  begin
    if (rua4a[i-1].Status=1) and (rua4a[i-1].mov=1) then
    begin
      rua4a[i].Status:=1;
      rua4a[i].mov:=1;
      rua4a[i-1].Status:=0;
      rua4a[i-1].mov:=0;
    end;
  end;

  {B}

  for i:=1 to 41 do
  begin
    if (rua4b[i].Status=1) then
      rua4.Canvas.Rectangle(35,-10+i*11,43,i*11);
  end;
  if ((sinal4=2) or (sinal4=1)) then
    rua4b[13].mov:=0
  else
    rua4b[13].mov:=1;

  for i:=41 downto 1 do
  begin
    if (rua4b[i-1].Status=1) and (rua4b[i].Status=1) and (rua4b[i].mov=0) then
      rua4b[i-1].mov:=0;
    if (rua4b[i-1].Status=1) and (rua4b[i].Status=1) and (rua4b[i].mov=1) then
      rua4b[i-1].mov:=1;
  end;
  if (rua4b[41].Status=1) then
  begin
    rua4b[41].Status:=0;
    rua4b[41].mov:=0;
  end;

  for i:=41 downto 2 do
  begin
    if (rua4b[i-1].Status=1) and (rua4b[i-1].mov=1) then
    begin
      rua4b[i].Status:=1;
      rua4b[i].mov:=1;
      rua4b[i-1].Status:=0;
      rua4b[i-1].mov:=0;
    end;
  end;
{**********}


end;

procedure TSemaforo.FormShow(Sender: TObject);
var i:integer;
begin
  priori[1].rua:=1;
  priori[2].rua:=2;
  priori[3].rua:=3;
  priori[4].rua:=4;
  priori[1].quant:=0;
  priori[2].quant:=0;
  priori[3].quant:=0;
  priori[4].quant:=0;
  amarelo:=0;
  tmin1:=0;
  tmin2:=0;
  tmin3:=0;
  tmin4:=0;
  liber1:=true;
  liber2:=true;
  liber3:=true;
  liber4:=true;
  vermelho1:=0;
  vermelho2:=0;
  vermelho3:=0;
  vermelho4:=0;
  conv:=0;
  for i:=0 to 41 do
  begin
    rua1a[i].Status:=0;
    rua1a[i].mov:=0;
    rua1b[i].Status:=0;
    rua1b[i].mov:=0;
    rua2a[i].Status:=0;
    rua2a[i].mov:=0;
    rua2b[i].Status:=0;
    rua2b[i].mov:=0;
    rua3a[i].Status:=0;
    rua3a[i].mov:=0;
    rua3b[i].Status:=0;
    rua3b[i].mov:=0;
    rua4a[i].Status:=0;
    rua4a[i].mov:=0;
    rua4b[i].Status:=0;
    rua4b[i].mov:=0;
  end;
  nome1:=2;
  nome2:=2;
  nome3:=2;
  nome4:=2;
  sinal1:=2;
  sinal2:=2;
  sinal3:=2;
  sinal4:=2;
  quant1:=0;
  quant2:=0;
  quant3:=0;
  quant4:=0;
  button1.Click;
end;

procedure TSemaforo.Image3Click(Sender: TObject);
begin
  sinal1:=sinal1+1;
  if (sinal1=3) then sinal1:=0;
  button1.Click;
end;

procedure TSemaforo.Button1Click(Sender: TObject);
begin
  if (sinal1=2) and (nome1<>2) then
  begin
    nome1:=2;
    image3.Picture.LoadFromFile('sinal_vermelho_270.bmp');
  end;
  if (sinal1=1) and (nome1<>1) then
  begin
    nome1:=1;
    image3.Picture.LoadFromFile('sinal_amarelo_270.bmp');
  end;
  if (sinal1=0) and (nome1<>0) then
  begin
    nome1:=0;
    image3.Picture.LoadFromFile('sinal_verde_270.bmp');
  end;

  if (sinal2=2) and (nome2<>2) then
  begin
    nome2:=2;
    image4.Picture.LoadFromFile('sinal_vermelho_0.bmp');
  end;
  if (sinal2=1) and (nome2<>1) then
  begin
    nome2:=1;
    image4.Picture.LoadFromFile('sinal_amarelo_0.bmp');
  end;
  if (sinal2=0) and (nome2<>0) then
  begin
    nome2:=0;
    image4.Picture.LoadFromFile('sinal_verde_0.bmp');
  end;

  if (sinal3=2) and (nome3<>2) then
  begin
    nome3:=2;
    image5.Picture.LoadFromFile('sinal_vermelho_90.bmp');
  end;
  if (sinal3=1) and (nome3<>1) then
  begin
    nome3:=1;
    image5.Picture.LoadFromFile('sinal_amarelo_90.bmp');
  end;
  if (sinal3=0) and (nome3<>0) then
  begin
    nome3:=0;
    image5.Picture.LoadFromFile('sinal_verde_90.bmp');
  end;

  if (sinal4=2) and (nome4<>2) then
  begin
    nome4:=2;
    image2.Picture.LoadFromFile('sinal_vermelho_180.bmp');
  end;
  if (sinal4=1) and (nome4<>1) then
  begin
    nome4:=1;
    image2.Picture.LoadFromFile('sinal_amarelo_180.bmp');
  end;
  if (sinal4=0) and (nome4<>0) then
  begin
    nome4:=0;
    image2.Picture.LoadFromFile('sinal_verde_180.bmp');
  end;
end;

procedure TSemaforo.Image4Click(Sender: TObject);
begin
  sinal2:=sinal2+1;
  if (sinal2=3) then sinal2:=0;
  button1.Click;

end;

procedure TSemaforo.Image5Click(Sender: TObject);
begin
  sinal3:=sinal3+1;
  if (sinal3=3) then sinal3:=0;
  button1.Click;

end;

procedure TSemaforo.Image2Click(Sender: TObject);
begin
  sinal4:=sinal4+1;
  if (sinal4=3) then sinal4:=0;
  button1.Click;

end;

procedure TSemaforo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (key='1') then
    bitbtn4.Click;
  if (key='2') then
    bitbtn7.Click;
  if (key='3') then
    bitbtn6.Click;
  if (key='4') then
    bitbtn5.Click;
end;

procedure TSemaforo.Button2Click(Sender: TObject);
var
 s1,s2,s3,s4,i:integer;
begin
  s1:=strtoint(Edit1.Text);
  s2:=strtoint(Edit2.Text);
  s3:=strtoint(Edit3.Text);
  s4:=strtoint(Edit4.Text);
  for i:=1 to s1 do
  begin
    quant1:=quant1+1;
    if (quant1 mod 2=0) then
    begin
      rua1a[i].Status:=1;
      rua1a[i].mov:=1;
    end
    else
    begin
      rua1b[i].Status:=1;
      rua1b[i].mov:=1;
    end;
  end;
  for i:=1 to s2 do
  begin
    quant2:=quant2+1;
    if (quant2 mod 2=0) then
    begin
      rua2a[i].Status:=1;
      rua2a[i].mov:=1;
    end
    else
    begin
      rua2b[i].Status:=1;
      rua2b[i].mov:=1;
    end;
  end;
  for i:=1 to s3 do
  begin
    quant3:=quant3+1;
    if (quant3 mod 2=0) then
    begin
      rua3a[i].Status:=1;
      rua3a[i].mov:=1;
    end
    else
    begin
      rua3b[i].Status:=1;
      rua3b[i].mov:=1;
    end;
  end;
  for i:=1 to s4 do
  begin
    quant4:=quant4+1;
    if (quant4 mod 2=0) then
    begin
      rua4a[i].Status:=1;
      rua4a[i].mov:=1;
    end
    else
    begin
      rua4b[i].Status:=1;
      rua4b[i].mov:=1;
    end;
  end;
  simucount:=0;

  Timer2.Enabled:=true;
end;

procedure TSemaforo.Timer2Timer(Sender: TObject);
begin
  simucount:=simucount+1;
end;

procedure TSemaforo.Button3Click(Sender: TObject);
begin
  timer2.Enabled:=false;
  Edit5.Text:=inttostr(trunc(simucount/10))+','+inttostr(trunc(10*(simucount/10-trunc(simucount/10))))+'s';
end;

end.
