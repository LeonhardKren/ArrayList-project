
Particle p = new Particle(400, 400);
ArrayList<Particle> parts = new ArrayList();
float ballX = 400;
float ballY = 0;
float SpeedX = 10;
float SpeedY = 10;
void setup()
{
  size(800, 800);
  colorMode(HSB, 360, 100, 100);
  noStroke();
}
void draw()
{
  fill(0, 0);
  ellipse( ballX, ballY, 20, 20);
  ballX+=SpeedX;
  ballY+=SpeedY;
  if (ballX>800)
  {
    SpeedX*=-1;
  }
  if (ballY>800)
  {
    SpeedY*=-1;
  }
  if (ballX<0)
  {
    SpeedX*=-1;
  }
  if (ballY<0)
  {
    SpeedY*=-1;
  }

  fill(0, 10);
  rect(0, 0, width, height);
  // if(mousePressed)
  //{
  //parts.add(new Particle(mouseX,mouseY)); 
  // }

  //for(Particle temp : parts)
  //{
  // temp.Update(); 
  //}
  for (int i=parts.size()-1; i>=0; i --)
  {
    parts.get(i).Update();
    if (millis()-parts.get(i).Spawntime > parts.get(i).lifeSpan)
    {
      parts.remove(i);
    }
  }
}
void keyPressed()
{
  for (int i =0; i<1; i++)
  {
    if (key == 'w'||key=='W')
    {
      parts.add(new Particle(mouseX, mouseY)); 
      //parts.add(new Particle(800,800)); 
      //parts.add(new Particle(0,800)); 
      //parts.add(new Particle(0,0));    
      //parts.add(new Particle(800,0)); 
      parts.add(new Particle(mouseX+100, mouseY)); 
      parts.add(new Particle(mouseX-100, mouseY));
      parts.add(new Particle(mouseX, mouseY+100));
      parts.add(new Particle(mouseX, mouseY-100));
      parts.add(new Particle(mouseX+100, mouseY+100)); 
      parts.add(new Particle(mouseX-100, mouseY-100));
      parts.add(new Particle(mouseX+100, mouseY-100)); 
      parts.add(new Particle(mouseX-100, mouseY+100));
    }
   if(key == 's'||key=='S')
   {
     parts.add(new Particle(mouseX,mouseY));
   }
   if(key == 'a'||key=='A')
   {
     parts.add(new Particle(0,400));
     parts.add(new Particle(400,0));
     parts.add(new Particle(400,800));
     parts.add(new Particle(800,400));
   }
   if(key == 'd'||key=='D')
   {
    parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));parts.add(new Particle(random(0,800),random(0,800)));
    
   }
  }
}

void mouseReleased()
{
  for (int i =0; i<1; i++)
  {
    parts.add(new Particle(0,800));
    parts.add(new Particle(800,0));
    parts.add(new Particle(0,0));
    parts.add(new Particle(800,800));
  }
} 
