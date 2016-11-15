class Particle {
  float x; 
  float y;
  float dx;
  float dy;
  color c1;
  color c2;
  color c3;
  float s;
  float life;
  float speedX;
  float speedY;
  int opacity;
  
  //constructor
  Particle(float _x, float _y) {
    x = _x;
    y = _y;

    speedX = random(-2, 2);
    speedY = random(-5, 0);
    //dx = random(-3, 3);
   // dy = random(-3, 3);
   opacity=100;
    //c = color(random(150), random(0,20), random(0,10), opacity);
    s = random(10,100);
   // println("created a ball!");
    life = 60;
  }

  void display() {
    noStroke();
    fill(c1);
   ellipse(x, y, s, s);
   fill(c2);
   ellipse(x, y-40, s, s);
   fill (c3);
    ellipse(x, y-50, s, s);
  // triangle(x,y, x, y+s, x+s,y+s);
    
  }

  void update() {
    // c = color(random(150), random(0,20), random(0,10), opacity--);
    life--;
    s = map(life, 60, 0, 50, 0);
    
  
//c1 = color(random(230, 255), random(8,40), random(5,25),map(opacity,0,255,20,100));
    //  c1 = color(random(230, 255), random(80, 100), random(0,40),map(opacity,0,255,20,100));
 c2 = color(random(130, 255), random(30,130), random(0,25),map(opacity,0,255,20,100));
    c3 = color(random(180, 255), random(100, 140), random(0,40),map(opacity,0,255,20,100));
    //if (x < s/2 || x > width-s/2) {
    //  dx *= -1;
    //  x += dx;
    //} else {
    //  x += dx;
    //} 
    
    //if (y < s/2 || y > height-s/2) {
    //  dy *= -1;
    //  y += dy;
    //} else { 
    //  y += dy;
    //}
    
   x = x + speedX;
   y = y + speedY;
    
  }
  
  void setSize(float siz) {
    s = siz;
  }
}