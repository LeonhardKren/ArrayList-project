class Particle
{
  //Member Data
  PVector pos;
  PVector dir;
  float lifeSpan;
  float Spawntime;
  color c;
  boolean Switch = false;
  float gravity;

  //Constructors
  Particle(float x, float y)
  {
    gravity = 2;
    pos = new PVector(x, y);
    dir = new PVector(random(-5, 5), random(-5, 5));
    PVector ball = new PVector(ballX, ballY);
    dir=ball.sub(pos);
    dir.normalize();
    dir.mult(1.5);
    dir.add(random(-.5, .5), random(-.5, .5));
    lifeSpan = random(1500, 5500);
    c = color(random(360), 100, 100);
    Spawntime=millis();
  }
  //Functions
  void Update()
  {
    //pos = new PVector(x,y);
      dir = new PVector(random(-5, 5), random(-5, 5));
      PVector ball = new PVector(ballX, ballY);
      dir=ball.sub(pos);
      dir.normalize();
      dir.mult(2);
      dir.add(random(-.5, .5), random(-.5, .5));
      dir = new PVector(random(-5, 5), random(-5, 5));
      PVector middle = new PVector(400,400);
      dir=middle.sub(pos);
      dir.normalize();
      dir.mult(gravity);
      dir.add(random(-.5, .5), random(-.5, .5));
      gravity-=0.2;
      if(gravity<-10)
      {
        gravity*=-1;
      }



    //move   
    pos.add(dir);
    dir.add(new PVector(0, .002));
    //render
    //SpawnTime 
    //lifeSpan 
    if (millis() - Spawntime < lifeSpan)
    {
      fill(c);
      ellipse(pos.x, pos.y, 10, 10);
    }
  }
}
