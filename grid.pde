class Grid{
  public Cell[][] grid;
  public Grid(){
    grid = new Cell[40][40];
    for(int row = 0;row < 40;row++){
      for(int column = 0;column < 40;column++){
        grid[row][column] = new Cell(row,column);
      }
    }
  }
  public void show(){
    for(int row = 0;row < 40;row++){
      for(int column = 0;column < 40;column++){
        grid[row][column].show();
      }
    }
  }
  public void placeBombs(){
    for(int row = 0;row < 40;row++){
      for(int column = 0;column < 40;column++){
        int coin = int(random(0,1));
        if(coin == 1){
          grid[row][column].bomb = true;
        }
        else{
          grid[row][column].bomb = false;
        }
      }
    }
  }
}
//1) in the constructor of the grid, program a function called placeBombs
//2) use a nested for loop to go through each row and column of the 2d array of Cells
//3) randomly decided to turn on the bomb variable in the cell in the nested for loop
//4) in the show function of the Cell if the bomb variable is true then change the color to be red
//5) write a function in the Cell called mouseover that will return a boolean
//6) in the function check if the mouse is on top of the Cell object or not based on the xy coordinates
