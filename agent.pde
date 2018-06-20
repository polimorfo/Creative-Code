class Agent {
  Vec3D loc;
  Vec3D vel= new Vec3D(0, 0, 0);
  Vec3D acc= new Vec3D(.001, 0, 0);

  Agent (Vec3D _loc) {
    loc=_loc;
  }

  void run() {
    display();
    update();
    followMouse();
  }

  void followMouse() {
    Vec3D target= new Vec3D(mouseX, mouseY, 0);//TARGET VECTOR CAN BE ANYTHING
    Vec3D dif=target.sub(loc);
    
    float distance=dif.magnitude();
    
    dif.normalize();
    dif.scaleSelf(distance/10);

    acc.addSelf(dif);
  }


  void update() {
    vel.addSelf(acc);
    vel.limit(9);
    loc.addSelf(vel);
    acc=new Vec3D(0, 0, 0);//HERE THE ACCELERATION WILL BE A NEW ONE EVERYFRAME
    //FIND WHERE THE MOUSE IS GENERATE A ECTOR TOWARD THE MOUSE AND FOLLOW IT
  }


  void display() {
    noStroke();
    fill(255);
    ellipse(loc.x, loc.y, 5, 5);
  }
}