class Cell {

  int x;
  int y;
  int w;
  int index;
  boolean mine;
  boolean revealed;
  Cell(int x, int y, int w, int index) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.index = index;
    if (random(1) < .2) {
      mine = true;
    }
    revealed = true;
  }

  void show() {
    stroke(0);
    fill(250);
    rect(x * w, y * w, w, w);
    if (revealed) {
      stroke(0);
      fill(200);
      rect(x * w, y * w, w, w);
      if (mine) {
        //ellipseMode(CORNER);
        fill(0);
        ellipse(x * w + w/2, y * w + w/2, w - w/2, w - w/2);
      }
    }
  }
}