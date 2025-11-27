void setup() {
  size(500, 500);
  background(204, 0, 0);
}  

void draw() {
  drawBoard(height, width);
  drawOes(83, 83);
  drawEx(0, 166);
  setButton(0, 0);
}

void noLoop(){
  mousePressed(0, 0, " 1 ");
}

void mousePressed(int x, int y, String buttonNum) {
  if (mouseX > x && mouseX < x + buttonWidth && mouseY > y && mouseY < y + buttonHeight) {
    println("Button" + buttonNum + "clicked");
  }
}
