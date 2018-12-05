int angle = 0;

void setup() {
  size(1000, 1000);
  background(0);
  noStroke();
  fill(0, 102);
}

void draw() 
{
  if (mousePressed == true) {
    angle += 15;
    float val = cos(radians(angle)) * 30.0;
    for (int a = 0; a < 360; a += 40) 
    {
      float xoff = cos(radians(a)) * val;
      float yoff = sin(radians(a)) * val;
      fill(#FC363C);
      stroke(#FA67D8);
      strokeWeight(3);
      ellipse(mouseX + xoff, mouseY + yoff, val, val);
    }
    fill(#FFF86A);
    strokeWeight(1.5);
    stroke(0);
    rect(mouseX, mouseY, 50,100);
    fill(#FFF86A);
    rect(mouseX+9, mouseY+5, 12, 87);
    rect(mouseX+30, mouseY+5, 12, 87);
    fill(0);
    rect(mouseX, mouseY+50, 50,50);
    pushMatrix();
    translate(mouseX, mouseY + 50); 
    rotate(PI/3);
    fill(#FFF86A);
    rect(0, 0, 50, 50);
    rect(9, 0, 12, 87 / 2);
    rect(30, 0, 12, 87 / 2);
    popMatrix();
  }
}