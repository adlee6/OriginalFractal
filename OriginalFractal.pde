float random = (float)(Math.random()*2*PI);

public void setup() {
  size(500,500);
  background(#FCE8F6);
  //noLoop();
  frameRate(8);
}

public void draw() {
  translate(250,250);
  leaf(0);
  leaf(2*PI/3);
  leaf(-2*PI/3);
  strokeWeight(1);
  rose(40);
}

public void rose(int petals) {
  if(petals == 0) {
    fill(#FA5871);
    ellipse(0,0,40,40);
  } else {
    rose(petals-1);
    rosePetal(-5-(int)(petals/3.5),0,(PI+petals/3)/3,6*petals/(float)(petals+1), (int)(Math.random()*3));
  }
}

public void rosePetal(int x, int y, float rot, float size, int se) {
 if(se == 0)
   fill(#FABDD7);
 else if(se == 1)
   fill(#FA7795);
 else
   fill(#FA778A);
 beginShape();
 rotate(rot);
 scale(size);
 curveVertex(x+4,y-14);
 curveVertex(x+4,y-14);
 curveVertex(x-6,y);
 curveVertex(x+4,y+12);
 curveVertex(x+3,y);
 curveVertex(x+3,y);
 endShape(CLOSE);
 scale(1/size);
}

public void leaf(float variable) {
 rotate(variable+random);
 strokeWeight(5);
 fill(#5B8957);
 beginShape();
 curveVertex(0,0);
 curveVertex(0,0);
 curveVertex(-60,90);
 curveVertex(0,180);
 curveVertex(60,90);
 curveVertex(0,0);
 curveVertex(0,0);
 endShape(CLOSE);
 resetMatrix();
 translate(250,250);
}
