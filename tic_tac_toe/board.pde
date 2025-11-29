void botTurn(){
  botChoice = int(random(0, 9));
  switch (botChoice) {
  case 0:
    if (a1){
      botTurn();
    }
    else{
      a1Ex();
      a1 = true;
    }
    break;
  case 1:
    if (a2){
      botTurn();
    }
    else{
      a2Ex();
      a2 = true;
    }
    break;
  case 2:
    if (a3){
      botTurn();
    }
    else{
      a3Ex();
      a3 = true;
    }
    break;
  case 3:
    if (b1){
      botTurn();
    }
    else{
      b1Ex();
      b1 = true;
    }
    break;
  case 4:
    if (b2){
      botTurn();
    }
    else{
      b2Ex();
      b2 = true;
    }
    break;
  case 5:
    if (b3){
      botTurn();
    }
    else{
      b3Ex();
      b3 = true;
    }
  case 6:
    if (c1){
      botTurn();
    }
    else{
      c1Ex();
      c1 = true;
    }
    break;
  case 7:
    if (c2){
      botTurn();
    }
    else{
      c2Ex();
      c2 = true;
    }
    break;
  case 8:
    if (c3){
      botTurn();
    }
    else{
      c3Ex();
      c3 = true;
    }
    break;
  default:
    println("Invalid Space");
    break;
  }
}
