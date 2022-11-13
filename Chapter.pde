public class Chapter {
  private int mapX, mapY;
  
  public Chapter() {
    this.mapX = 15;
    this.mapY = 15;
  }
  
  public Chapter(int mX, int mY) {
    mapX = mX;
    mapY = mY;
  }
  
  public int getChapterX() {
    return mapX;
  } 
  
  public int getChapterY() {
    return mapY;
  }
}
