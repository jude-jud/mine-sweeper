class Cell {
  public int num;
  public boolean bomb, flag;
  public float w,h;
  public int row,column;
  public Cell(int row, int column) {
    num = 0;
    bomb = false;
    flag = false;
    w = 20;
    h = 20;
    this.row = row;
    this.column = column;
  }
  public void show(){
    fill(255,255,255);
    rect(row*20,column*20,w,h);
    if(bomb == true){
      fill(255,0,0);
    }
  }
  public void mouseover(){
    
  }
}
