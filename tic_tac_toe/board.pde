void randomMove(int[] cells){
  while (true){
    int pick = cells[(int)random(cells.length)];
    switch (pick){
      case 0:
        if (!a1){
          a1Ex();
          a1 = true;
          a1Type = "X";
          turnCount++;
          return;
        }
        break;
      case 1:
        if (!b1){
          b1Ex();
          b1 = true;
          b1Type = "X";
          turnCount++;
          return;
        }
        break;
      case 2:
        if (!c1){
          c1Ex();
          c1 = true;
          c1Type = "X";
          turnCount++;
          return;
        }
        break;
      case 3:
        if (!a2){
          a2Ex();
          a2 = true;
          a2Type = "X";
          turnCount++;
          return;
        }
        break;
      case 4:
        if (!b2){
          b2Ex();
          b2 = true;
          b2Type = "X";
          turnCount++;
          return;
        }
        break;
      case 5:
        if (!c2){
          c2Ex();
          c2 = true;
          c2Type = "X";
          turnCount++;
          return;
        }
        break;
      case 6:
        if (!a3){
          a3Ex();
          a3 = true;
          a3Type = "X";
          turnCount++;
          return;
        }
        break;
      case 7:
        if (!b3){
          b3Ex();
          b3 = true;
          b3Type = "X";
          turnCount++;
          return;
        }
        break;
      case 8:
        if (!c3){
          c3Ex();
          c3 = true;
          c3Type = "X";
          turnCount++;
          return;
        }
        break;
    }
  }
}

void botTurn(){
  if (gameOver) return;
  switch (turnCount){
    case 1:
      randomMove(new int[]{0, 2, 6, 8});
      break;
    case 3:
      randomMove(new int[]{0, 2, 6, 8});
      break;
    case 5:
      if (!b2){
        b2Ex();
        b2 = true;
        b2Type = "X";
        turnCount++;
      } 
      else{
        randomMove(new int[]{3, 5, 1, 7});
      }
      break;
    case 7:
      randomMove(new int[]{3, 5, 1, 7});
      break;
    case 9:
      randomMove(new int[]{0, 1, 2, 3, 4, 5, 6, 7, 8});
      break;
  }
  gameResult = checkWin();
  if (!gameResult.equals("none")){
    println("Game Over: " + gameResult + " wins!");
    noLoop();
    gameOver = true;
  }
}

void keyPressed(){
  if (gameOver){
    println("Game Over");
    return;
  }
  println("Your Turn");
  switch(key){
    case '0':
      if (!a1){
        a1Oe();
        a1 = true;
        a1Type = "O";
        turnCount++;
      }
      else {
        println("Invalid Space");
      }
      break;
    case '1':
      if (!b1){
        b1Oe();
        b1 = true;
        b1Type = "O";
        turnCount++;
      }
      else{
        println("Invalid Space");
      }
      break;
    case '2':
      if (!c1){
        c1Oe();
        c1 = true;
        c1Type = "O";
        turnCount++;
      }
      else{
        println("Invalid Space");
      }
      break;
    case '3':
      if (!a2){
        a2Oe();
        a2 = true;
        a2Type = "O";
        turnCount++;
      }
      else{
        println("Invalid Space");
      }
      break;
    case '4':
      if (!b2){
        b2Oe();
        b2 = true;
        b2Type = "O";
        turnCount++;
      }
      else{
        println("Invalid Space");
      }
      break;
    case '5':
      if (!c2){
        c2Oe();
        c2 = true;
        c2Type = "O";
        turnCount++;
      }
      else{
        println("Invalid Space");
      }
      break;
    case '6':
      if (!a3){
        a3Oe();
        a3 = true;
        a3Type = "O";
        turnCount++;
      }
      else{
        println("Invalid Space");
      }
      break;
    case '7':
      if (!b3){
        b3Oe();
        b3 = true;
        b3Type = "O";
        turnCount++;
      }
      else{
        println("Invalid Space");
      }
      break;
    case '8':
      if (!c3){
        c3Oe();
        c3 = true;
        c3Type = "O";
        turnCount++;
      }
      else{ 
        println("Invalid Space");
      }
      break;
  }

  gameResult = checkWin();
  if (!gameResult.equals("none")) {
    println("Game Over: " + gameResult + " wins!");
    noLoop();
    gameOver = true;
  }
}

String checkWin(){
  if (a1 && a2 && a3 && a1Type.equals(a2Type) && a2Type.equals(a3Type)){ 
    return a1Type;
  }
  if (b1 && b2 && b3 && b1Type.equals(b2Type) && b2Type.equals(b3Type)){ 
    return b1Type;
  }
  if (c1 && c2 && c3 && c1Type.equals(c2Type) && c2Type.equals(c3Type)){ 
    return c1Type;
  }
  if (a1 && b1 && c1 && a1Type.equals(b1Type) && b1Type.equals(c1Type)){ 
    return a1Type;
  }
  if (a2 && b2 && c2 && a2Type.equals(b2Type) && b2Type.equals(c2Type)){ 
    return a2Type;
  }
  if (a3 && b3 && c3 && a3Type.equals(b3Type) && b3Type.equals(c3Type)){ 
    return a3Type;
  }
  if (a1 && b2 && c3 && a1Type.equals(b2Type) && b2Type.equals(c3Type)){ 
    return a1Type;
  }
  if (c1 && b2 && a3 && c1Type.equals(b2Type) && b2Type.equals(a3Type)){
    return c1Type;
  }
  if (a1 && a2 && a3 && b1 && b2 && b3 && c1 && c2 && c3){ 
    return "No one";
  }
  return "none";
}
