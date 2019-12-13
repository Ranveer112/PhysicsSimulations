//Designed by Ranveer Randhawa
//This is a physics simulation of a planet-moon system. Planet is considered to be static, while the moon revolves arount it.
//For simplicity, moon mass is considered to be 1/G(Gravitational Constant), and planet mass is considered to be 1 kg

int x=900;
int y=900;
//float planet_mass=1
//float moon_mass=1/6.67430*10^(−11)
float vx=0;
float vy=0;
int a=600;
int b=900;
void setup(){
  size(1800, 1800);
  circle(a, b, 100);
  circle(600, 600, 100);
  circle(x, y, 30);
}
void draw(){
  background(200);
  circle(a, b, 100);
  if(x==a && y==b){
     vx+=0;
     vy+=0;
     y+=vy;
     x+=vx;
     circle(x, y, 30);
     return; 
  }
  if(x==a){
     vy+=(1/(b-y)^2)*(Math.abs(b-y))/(b-y);//direction of gravitational force
     y+=vy;
     x+=vx;
     circle(x, y, 30);
     return;
  }
  if(y==b){
     vx+=(1/(a-x)^2)*(Math.abs(a-x))/(a-x);//direction of gravitational force
    
     y+=vy;
     x+=vx;
     circle(x, y, 30);
     return;
  }

   vx+=(1/(a-x)^2)*(Math.abs(a-x))/(a-x);//direction of gravitational force
   vy+=(1/(b-y)^2)*(Math.abs(b-y))/(b-y);//direction of gravitational force
   y+=vy;
   x+=vx;
   circle(x, y, 30);
}

    
