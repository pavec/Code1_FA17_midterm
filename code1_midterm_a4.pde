// QUESTION 4 -
// this is currently drawing an angled line of rectangles - it should draw a square grid.

void setup() {
  size(600, 600);
}

void draw() {
  for (int i = -90; i <= width; i+= 50) {
    for (int j = -90; j <= height; j+= 50) {
      rect(i, j, 25, 25);
    }
  }
}