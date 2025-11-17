void drawBoard(float x, float y) {
  stroke(0);
  strokeWeight(4);
  line(x/3, 0, x/3, x);
  line(x/1.5, 0, x/1.5, x);
  line(0, y/3, y, y/3);
  line(0, y/1.5, y, y/1.5);
}
