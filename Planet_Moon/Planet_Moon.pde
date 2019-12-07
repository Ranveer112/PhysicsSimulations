//Designed by Ranveer Randhawa
//This is a physics simulation of a planet-moon system. Planet is considered to be static, while the moon revolves arount it.
//For simplicity, moon mass is considered to be 1/G(Gravitational Constant), and planet mass is considered to be 1 kg

int x=1100;
int y=10;
//float planet_mass=1
//float moon_mass=1/6.67430*10^(−11)
float acc_x=1/(300-x)^2;
float acc_y=1/(300-y)^2;
float vx=10;
float vy=1;

void setup(){
  size(1200, 1200);
  ellipse(300, 300, 100, 1500);
  circle(x, y, 30);
}
void draw(){
   background(200);
   circle(300, 300, 100);
   if(x<30){
     vx=-vx;
     x+=vx;
     circle(x, y, 30);
     return;
   }
   if(y<30){
     vy=-vy;
     y+=vy;
     x+=vx;
     circle(x, y, 30);
     return;
   }
   if(y>=1170){
     vy=-vy;
     y+=vy;
     x+=vx;
     circle(x, y, 30);
     return;
   }
   if(x>=1170){
    vx=-vx;
    x+=vx;
    circle(x, y, 30);
    return;
   }
   if(x<1170 && y<1170){
      vx+=acc_x*(Math.abs(300-x))/(300-x);//direction of gravitational force
      vy+=acc_y*(Math.abs(300-y))/(300-y);//direction of gravitational force
      y+=vy;
      x+=vx;
      circle(x, y, 30);
   }
  
    
    
}
