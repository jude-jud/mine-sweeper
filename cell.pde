class Cell {
  public int num;
  public boolean bomb, flag, click;
  public float w, h;
  public int row, column;
  public Cell(int row, int column) {
    num = 0;
    bomb = false;
    flag = false;
    click = false;
    w = 20;
    h = 20;
    this.row = row;
    this.column = column;
  }
  public void show() {
    fill(255, 255, 255);
    if (bomb == true && click == true) {
      fill(255, 0, 0);
      rect(column*20, row*20, w, h);
    } else if (click == true) {
      fill(0, 255, 0);
      rect(column*20, row*20, w, h);
      fill(0);
      text(num, column*20+10, row*20+10);
    } else {
      fill(255);
      rect(column*20, row*20, w, h);
    }
  }
  public boolean mouseover() {
    if ((mouseX >= column*20&&mouseX <= column*20+20)&&(mouseY >= row*20&&mouseY <= row*20+20)) {
      return(true);
    } else {
      return(false);
    }
  }

  public void update() {
    show();
    if (mouseover()== true && mousePressed == true) {
      click = true;
      reveal();
    }
  }
  
  public void reveal() {
    click = true;
    if (num == 0) {
      for (int i=-1; i<2; i++) {
        for (int j=-1; j<2; j++) {
          if ( !(row+j==-1 || row+j==40 || column+i==-1 || column+i==40) ) {
            if (g.grid[row+j][column+i].num==0 && g.grid[row+j][column+i].click == false) {
              g.grid[row+j][column+i].reveal();
            }
            else{
              g.grid[row+j][column+i].click = true;
            }
          }
        }
      }
    }
  }
}
