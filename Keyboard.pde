import processing.sound.*;
SinOsc sin=new SinOsc(this);

color lightpink=color(255, 182, 193);

float f=0;
float a=1 ;

int wselect=-1;
int bselect=-1; 

float C0 = 16.35;
float C1 = 32.70;
float C2 = 65.41;
float C3 = 130.81; 
float C4 = 261.63; 
float C5 = 523.25; 
float C6 = 1046.50; 
float C7 = 2093.00; 
float C8 = 4186.01; 

float Cs0= 17.32;
float Cs1= 34.65;
float Cs2= 69.30;
float Cs3= 138.59;
float Cs4= 277.18;
float Cs5= 554.37;
float Cs6= 1108.73;
float Cs7= 2217.46;
float Cs8= 4434.92;

float D0 = 18.35;
float D1 = 36.71;
float D2 = 73.42;
float D3 = 146.83; 
float D4 = 293.66; 
float D5 = 587.33; 
float D6 = 1174.66; 
float D7 = 2349.32; 
float D8 = 4698.63; 

float Ds0= 19.45;
float Ds1= 38.89;
float Ds2= 77.78;
float Ds3= 155.56;
float Ds4= 311.13;
float Ds5= 622.25;
float Ds6= 1244.51;
float Ds7= 2489.02;
float Ds8= 4978.03;

float E0 = 20.60;
float E1 = 41.20;
float E2 = 82.41;
float E3 = 164.81; 
float E4 = 329.63; 
float E5 = 659.25; 
float E6 = 1318.51; 
float E7 = 2637.02; 
float E8 = 5274.04; 

float F0 = 21.83;
float F1 = 43.65;
float F2 = 87.31;
float F3 = 174.61; 
float F4 = 349.23; 
float F5 = 698.46; 
float F6 = 1396.91; 
float F7 = 2793.83; 
float F8 = 5587.65; 

float Fs0= 23.12;
float Fs1= 46.25;
float Fs2= 92.50;
float Fs3= 185.00;
float Fs4= 369.99;
float Fs5= 739.99;
float Fs6= 1479.98;
float Fs7= 2959.96;
float Fs8= 5919.91;

float G0 = 24.50;
float G1 = 49.00;
float G2 = 98.00;
float G3 = 196.00; 
float G4 = 392.00; 
float G5 = 783.99; 
float G6 = 1567.98; 
float G7 = 3135.96; 
float G8 = 6271.93; 

float Gs0= 25.96;
float Gs1= 51.91;
float Gs2= 103.83;
float Gs3= 207.65;
float Gs4= 415.30;
float Gs5= 830.61;
float Gs6= 1661.22;
float Gs7= 3322.44;
float Gs8= 6644.88;

float A0 = 27.50;
float A1 = 55.00;
float A2 = 110.00;
float A3 = 220.00; 
float A4 = 440.00; 
float A5 = 880.00; 
float A6 = 1760.00; 
float A7 = 3520.00; 
float A8 = 7040.00; 

float As0= 29.14;
float As1= 58.27;
float As2= 116.54;
float As3= 233.08;
float As4= 466.16;
float As5= 932.33;
float As6= 1864.66;
float As7= 3729.31;
float As8= 7458.62;

float B0 = 30.87;
float B1 = 61.74;
float B2 = 123.47;
float B3 = 246.94; 
float B4 = 493.88; 
float B5 = 987.77; 
float B6 = 1975.53; 
float B7 = 3951.07; 
float B8 = 7902.13; 

void keyPressed()
{
  if (keyCode==ESC) exit();
  switch(key)
  {
    case 'q': case 'Q': sin.freq(C4 ); wselect=0;  break;
    case 'w': case 'W': sin.freq(Cs4); bselect=0;  break;
    case 'e': case 'E': sin.freq(D4 ); wselect=1;  break;
    case 'r': case 'R': sin.freq(Ds4); bselect=1;  break;
    case 't': case 'T': sin.freq(E4 ); wselect=2;  break;
    case 'y': case 'Y': sin.freq(F4 ); wselect=3;  break;
    case 'u': case 'U': sin.freq(Fs4); bselect=3;  break;
    case 'i': case 'I': sin.freq(G4 ); wselect=4;  break;
    case 'o': case 'O': sin.freq(Gs4); bselect=4;  break;
    case 'p': case 'P': sin.freq(A4 ); wselect=5;  break;
    case '[': case '{': sin.freq(As4); bselect=5;  break;
    //case ']': case '}': sin.freq(B4 ); wselect=6;  break;
    case 'a': case 'A': sin.freq(B4 ); wselect=6;  break;//sin.freq(C5 ); wselect=7;  break;
    case 's': case 'S': sin.freq(C5 ); wselect=7;  break;//sin.freq(Cs5); bselect=7;  break;
    case 'd': case 'D': sin.freq(Cs5); bselect=7;  break;//sin.freq(D5 ); wselect=8;  break;
    case 'f': case 'F': sin.freq(D5 ); wselect=8;  break;//sin.freq(Ds5); bselect=8;  break;
    case 'g': case 'G': sin.freq(Ds5); bselect=8;  break;//sin.freq(E5 ); wselect=9;  break;
    case 'h': case 'H': sin.freq(E5 ); wselect=9;  break;//sin.freq(F5 ); wselect=10; break;
    case 'j': case 'J': sin.freq(F5 ); wselect=10; break;//sin.freq(Fs5); bselect=10; break;
    case 'k': case 'K': sin.freq(Fs5); bselect=10; break;//sin.freq(G5 ); wselect=11; break;
    case 'l': case 'L': sin.freq(G5 ); wselect=11; break;//sin.freq(Gs5); bselect=11; break;
    case ';': case ':': sin.freq(Gs5); bselect=11; break;//sin.freq(A5 ); wselect=12; break;
    case '\'':case '"': sin.freq(A5 ); wselect=12; break;//sin.freq(As5); bselect=12; break;
    case 'z': case 'Z': sin.freq(As5); bselect=12; break;//sin.freq(B5 ); wselect=13; break;
    case 'x': case 'X': sin.freq(B5 ); wselect=13; break;//sin.freq(C6 ); wselect=14; break;
    case 'c': case 'C': sin.freq(C6 ); wselect=14; break;//sin.freq(Cs6); bselect=14; break;
    case 'v': case 'V': sin.freq(Cs6); bselect=14; break;//sin.freq(D6 ); wselect=15; break;
    case 'b': case 'B': sin.freq(D6 ); wselect=15; break;//sin.freq(Ds6); bselect=15; break;
    case 'n': case 'N': sin.freq(Ds6); bselect=15; break;//sin.freq(E6 ); wselect=16; break;
    case 'm': case 'M': sin.freq(E6 ); wselect=16; break;//sin.freq(F6 ); wselect=17; break;
    case ',': case '<': sin.freq(F6 ); wselect=17; break;//sin.freq(Fs6); bselect=17; break;
    case '.': case '>': sin.freq(Fs6); bselect=17; break;//sin.freq(G6 ); wselect=18; break;
    case '/': case '?': sin.freq(G6 ); wselect=18; break;
  }
  if(key>='a' && key<='z' || key>='A' && key<='Z'  ||
     key=='[' || key==';' || key=='\'' ||
     key==',' || key=='.' ||key=='/'                 )
     sin.amp(a);
     
}

void keyReleased()
{
  sin.amp(0);
  wselect=-1;
  bselect=-1;
}


void setup()
{
  fullScreen(P3D);
  sin.play(f,a);
}

void mouseWheel(MouseEvent event)
{
  float e=event.getCount();
  if(e<0) a+=0.05;
  else
  if(e>0 && a>0) a-=0.05;
}
void display()
{ 
  fill(255);
  
  String s = "symphony.ttf";
  PFont font = createFont(s,100);
  textFont(font);
  text("KEYBOARD",width/2-380,125);
  s = "EuphoriaScript-Regular.ttf";
  font = createFont(s,48);
  textFont(font);
  text("Developed by:   Ranjan Bhat",width-560,height-100);
  text("Assisted and Inspired by:   Pranshu Prabhu", width-750,height-50);
  
  translate(width/2,height/2,-100);
  for(float i=0 ;i<19; i++)
  {
    if(i == wselect)
    {
      fill(lightpink);
      translate(0,0,-30);
      rect(-width/2-100 +i*(width+200)/19, 400, (width+200)/19, -800);
      translate(0,0, 30);
      fill(255);
    }
    else
      rect(-width/2-100 +i*(width+200)/19, 400, (width+200)/19, -800);
  }
  
  translate(0,0,40);
  fill(0);   
  for(float i=0; i<18 ;i++)
  {
    if(i==2 || i==6 || i==9 || i==13 || i==16) continue;
    if(i == bselect)
    {
      translate(0,0,-20);
      rect(-width/2-60 + i*(width+120)/19 + (width+200)/32 , 100, (width+200)/26 , -500); 
      translate(0,0, 20);
    }
    else
      rect(-width/2-60 + i*(width+120)/19 + (width+200)/32 , 100, (width+200)/26 , -500); 
  }
}

void draw()
{
  background(0);
  display();
}
