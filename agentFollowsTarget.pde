import toxi.geom.*;

Agent a;

void setup() {
  size(600, 600);

  Vec3D startLoc= new Vec3D(width/2, height/2, 0);
  a= new Agent (startLoc);
}



void draw() {
  background(111);

  a.run();
}

