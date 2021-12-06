class Grid{
  public Cell[][] grid;
  public Grid(){
    grid = new Cell[40][40];
    for(int row = 0;row < 40;row++){
      for(int column = 0;column < 40;column++){
        grid[row][column] = new Cell(row,column);
      }
    }
    this.placeBombs();
  }
  public void show(){
    for(int row = 0;row < 40;row++){
      for(int column = 0;column < 40;column++){
        grid[row][column].update();
      }
    }
  }
  public void placeBombs(){
    for(int row = 0;row < 40;row++){
      for(int column = 0;column < 40;column++){
        int coin = int(random(0,4));
        if(coin == 1){
          grid[row][column].bomb = true;
        }
        else{
          grid[row][column].bomb = false;
        }
      }
    }
    countBombs();
  }
  public void countBombs(){
    for(int row = 0;row < 40;row++){
      for(int column = 0;column < 40;column++){
        int count = 0;
        for(int i = -1;i<2;i++){
          for(int j = -1;j<2;j++){
            if(grid[row+j][column+i].bomb == true){
              count = count + 1;
            }
          }
        }
        grid[row][column].num = count;
      }
    }
  }
}
//1) fix bug with
