void drawBoard(float x, float y){
  stroke(0);
  strokeWeight(4);
  line(x/3, 0, x/3, x);
  line(x/1.5, 0, x/1.5, x);
  line(0, y/3, y, y/3);
  line(0, y/1.5, y, y/1.5);
}

void drawOes(int x, int y){
  fill(204, 0, 0);
  ellipse(x, y, 150, 150);
}

void a1Oe(){
  drawOes(83, 83);
}

void a2Oe(){
  drawOes(83, 249);
}

void a3Oe(){
  drawOes(83, 415);
}

void b1Oe(){
  drawOes(249, 83);
}

void b2Oe(){
  drawOes(249, 249);
}

void b3Oe(){
  drawOes(249, 415);
}

void c1Oe(){
  drawOes(415, 83);
}

void c2Oe(){
  drawOes(415, 249);
}

void c3Oe(){
  drawOes(415, 415);
}

void drawEx(int x1, int y1, int x2, int y2, int x3, int y3, int x4, int y4){
  line(x1, y1, x2, y2);
  line(x3, y3, x4, y4);
}

void a1Ex(){
  drawEx(166,0,0,166,0,0,166,166);
}

void a2Ex(){
  drawEx(166,166,0,332,0,166,166,332);
}

void a3Ex(){
  drawEx(166,332,0,498,0,332,166,498);
}

void b1Ex(){
  drawEx(332,0,166,166,166,0,332,166);
}

void b2Ex(){
  drawEx(332,166,166,332,166,166,332,332);
}

void b3Ex(){
  drawEx(332,332,166,498,166,332,332,498);
}

void c1Ex(){
  drawEx(498,0,332,166,332,0,498,166);
}

void c2Ex(){
  drawEx(498,166,332,332,332,166,498,332);
}

void c3Ex(){
  drawEx(498,332,332,498,332,332,498,498);
}
