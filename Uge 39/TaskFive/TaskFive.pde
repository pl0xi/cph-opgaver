int [][] board= new int [8][8]; //<>//
float sideLength;
void setup() {
  size(350, 350);
  for (int i = 0; i < board.length; i++) {
    for (int b = 0; b < board.length; b++) {
      board[i][b] = b%2;
    }
  }

  sideLength = width/8.0;
}

void draw() {
  for (int i = 0; i < board.length; i++) {
    int colorChange = i%2;
    for (int b = 0; b < board.length; b++) {
      if (board[i][b] == colorChange) {
        fill(255);
      } else {
        fill(0);
      }
      rect(i * sideLength, b * sideLength, sideLength, sideLength);
    }
  }
}
