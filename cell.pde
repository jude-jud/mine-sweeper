class Cell {
  public int num;
  public boolean bomb, flag,click;
  public float w,h;
  public int row,column;
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
  public void show(){
    fill(255,255,255);
    if(bomb == true && click == true){
      fill(255,0,0);
    }
    else if (click == true){
      text(num,column*20,row*20);
    }
    rect(column*20,row*20,w,h);
  }
  public boolean mouseover(){
    if((mouseX >= column*20&&mouseX <= column*20+20)&&(mouseY >= row*20&&mouseY <= row*20+20)){
      return(true);
    }
    else{
      return(false);
    }
  }
  
  public void update(){
    show();
    if(mouseover()== true && mousePressed == true){
      click = true;
    }
  }
}
