import shapes3d.*;
import camera3D.*;

Camera3D camera3D;
Ellipsoid earth;

ArrayList<ParticleSystem> systems = new ArrayList<ParticleSystem>();

void setup() {
  size(800, 800, P3D);
   camera3D = new Camera3D(this);
  camera3D.setBackgroundColor(0);
  camera3D.setCameraTarget(width / 2f, height / 2f, -700);
  earth = new Ellipsoid(this, 30, 30);
  earth.setRadius(180);
  earth.setTexture("land_ocean_ice_2048.png");
  earth.drawMode(Shape3D.TEXTURE);
  
}

void preDraw() {
  earth.rotateBy(0, radians(0.3f), 0);
}

void draw() {
  background(0);
  
  for (int i = 0; i < systems.size(); i++) {
    ParticleSystem t = systems.get(i);
    t.update();
  }
  
  translate(width / 2, height / 2, -200);
  earth.draw();

  translate(0, 0, -500);
  imageMode(CENTER);
  
  
} 

void mousePressed() {
  systems.add(new ParticleSystem(mouseX,mouseY));
}