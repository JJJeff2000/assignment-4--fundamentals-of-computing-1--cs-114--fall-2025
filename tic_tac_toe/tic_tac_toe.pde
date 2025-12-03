void setup(){
  size(500, 500);
  background(204, 0, 0);
  println("Game Start");
}  

void draw(){
  drawBoard(height, width);
  botTurn();
}
