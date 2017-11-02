// QUESTION 6 -
// map() the values properly so that the clock hands are displayed at the correct angle

float seconds;
float minutes;
float hours;
 int radius = min(width, height) / 2;

  
void setup() {
  size(400,400);
}

void draw() {
  background(255);
  
  fill(220);
  noStroke();
  ellipse(width/2, height/2, 230, 230);
  
  // these are the values that need mapping
  seconds = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;
  minutes = map(minute()+ norm(second(), 0, 60), 0, 60, 0, TWO_PI)- HALF_PI;
  hours = map(hour()+ norm(minute(), 0, 60), 0, 24, 0, TWO_PI*2)-HALF_PI;
  
  stroke(0);
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(seconds));
  strokeWeight(1);
  line(0, 0, 0+ cos(seconds)*(radius * 0.72), -100+ sin(seconds) * (radius * 0.72));
  popMatrix();
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(minutes));
  strokeWeight(2);
  line(0, 0, 0+cos(minutes) *(radius * 0.60), -80+ sin(minutes) * (radius * 0.60));
  popMatrix();
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(hours));
  strokeWeight(3);
  line(0, 0, 0+cos(hours) * (radius * 0.50), -60+ sin(hours) *(radius * 0.50));
  popMatrix();
}