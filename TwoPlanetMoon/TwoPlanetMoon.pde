//Designed by Ranveer Randhawa
//This is a physics simulation of a planet-moon system. Planet is considered to be static, while the moon revolves arount it.
//For simplicity, moon mass is considered to be 1/G(Gravitational Constant), and planet mass is considered to be 1 kg

int x=0;
int y=0;
//float planet_mass=1
//float moon_mass=1/6.67430*10^(−11)

float vx=50;
float vy=0;

void setup(){
   size(1800, 1800);
   circle(300, 300, 100);
   circle(600, 600, 100);
   circle(x, y, 30);
}
void draw(){
   background(200);
   circle(300, 300, 100);
   circle(600, 600, 100);
   if(x==300 && y==300){
      vx+=(1/(600-x)^2)*(Math.abs(600-x))/(600-x);
      vy+=(1/(600-y)^2)*(Math.abs(600-y))/(600-y);
      y+=vy;
      x+=vx;
      circle(x, y, 30);
      return;
   }
   if(x==600 && y==600){
      vx+=(1/(300-x)^2)*(Math.abs(300-x))/(300-x);
      vy+=(1/(300-y)^2)*(Math.abs(300-y))/(300-y);
      y+=vy;
      x+=vx;
      circle(x, y, 30);
      return;
   }
   if((x==300 && y!=600) ||( x==600 && y!=300) || (y==300 && x!=600) || (y==600 && x!=300)){
      if(y==300){
         vx+=((1/(600-x)^2)*(Math.abs(600-x))/(600-x))+(1/(300-x)^2)*(Math.abs(300-x))/(300-x);
         vy+=(1/(600-y)^2)*(Math.abs(600-y))/(600-y);
      }
      if(x==300){
         vy+=((1/(600-y)^2)*(Math.abs(600-y))/(600-y))+((1/(300-y)^2)*(Math.abs(300-y))/(300-y));
         vx+=(1/(600-x)^2)*(Math.abs(600-x))/(600-x);
      }
      if(y==600){
         vx+=((1/(600-x)^2)*(Math.abs(600-x))/(600-x))+((1/(300-x)^2)*(Math.abs(300-x))/(300-x));
         vy+=(1/(300-y)^2)*(Math.abs(300-y))/(300-y);
      }
      if(x==600){
         vy+=(1/(600-y)^2)*(Math.abs(600-y))/(600-y);
         vx+=((1/(300-y)^2)*(Math.abs(300-y))/(300-y))+((1/(300-x)^2)*(Math.abs(300-x))/(300-x));
      }
      y+=vy;
      x+=vx;
      circle(x, y, 30);
      return;
   }
   if(x==300 && y==600){
      vx+=(1/(600-x)^2)*(Math.abs(600-x))/(600-x);
      vy+=(1/(300-y)^2)*(Math.abs(300-y))/(300-y);
      y+=vy;
      x+=vx;
      circle(x, y, 30);
      return;
   }
   if(y==300 && x==600){
      vx+=(1/(300-x)^2)*(Math.abs(300-x))/(300-x);
      vy+=(1/(600-y)^2)*(Math.abs(600-y))/(600-y);
      y+=vy;
      x+=vx;
      circle(x, y, 30);
      return;
   }
   
   vx+=((1/(600-x)^2)*(Math.abs(600-x))/(600-x))+((1/(300-x)^2)*(Math.abs(300-x))/(300-x));//direction of gravitational force
   vy+=((1/(600-y)^2)*(Math.abs(600-y))/(600-y))+((1/(300-y)^2)*(Math.abs(300-y))/(300-y));//direction of gravitational force
   y+=vy;
   x+=vx;
   circle(x, y, 30);
}
