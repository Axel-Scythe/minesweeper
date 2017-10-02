//MineSweeper
ArrayList<Cell> Cells;

int cellCount = 10;

void setup() {
  size(401, 401);
  Cells = new ArrayList<Cell>();
  int index = 0;
  for (int i = 0; i < cellCount; i++) {
    for (int j = 0; j < cellCount; j++) {
      Cells.add(new Cell(i, j, 40, index));
      index++;
    }
  }
}

void draw() {
  for (Cell c : Cells) {
    c.show();
  }
}