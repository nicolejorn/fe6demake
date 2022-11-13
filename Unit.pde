public class Unit {
  private String name, myClass;
  //private String myClass;
  private int maxHP, str, skl, spd, lck, def, res, mov, startingX, startingY;
  private boolean highlighted;
  
  public Unit() {
    this.name = "";
    this.myClass = "";
    this.maxHP = 20;
    this.str = 5;
    this.skl = 5;
    this.spd = 5;
    this.def = 5;
    this.lck = 5;
    this.res = 5;
    this.mov = 5;
    this.startingX = 0;
    this.startingY = 0;
    this.highlighted = false;
  }
  
  public Unit(String nm, String mClass, int mHP, int strength, int skill, int speed, int luck, int defense, int resistance, int movement, int firstX, int firstY, boolean hlighted) {
    name = nm;
    myClass = mClass;
    maxHP = mHP;
    str = strength;
    skl = skill;
    spd = speed;
    lck = luck;
    def = defense;
    res = resistance;
    mov = movement;
    startingX = firstX;
    startingY = firstY;
    highlighted = hlighted;
  }
  
  public int getStartingX() {
    return startingX;
  } 
  
  public int getStartingY() {
    return startingY;
  }
  
  public int getMovement() {
    return mov;
  }
  
  public boolean getHighlight() {
    return highlighted;
  }
  
  public void highlightThis() {
    highlighted = true;
  }
}
