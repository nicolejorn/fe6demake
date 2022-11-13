PImage lynImage;
float cursorX = 0;
float cursorY = 0;
float tileSize = 15;
float chapterNumber = 1;
float spacesMoved = 0;
float royX, royY, borsX, borsY, marcusX, marcusY, alenX, alenY, lanceX, lanceY, woltX, woltY;
Unit roy = new Unit("Roy", "Lord", 18, 5, 5, 7, 7, 5, 0, 5, 30, 150, false);
Unit marcus = new Unit("Marcus", "Paladin", 32, 9, 14, 11, 10, 9, 8, 8, 15, 135, false);
Chapter chapter1 = new Chapter(30, 15);

void setup() {
  //size((tileSize * 15),(tileSize * 10));
  size(750, 750);
  stroke(255);
  background(#86c06c);
  lynImage = loadImage("LynMonochromeFrame1.png");  
}

void draw() {
  //line(150, 25, mouseX, mouseY);
  background(#86c06c);
  if (chapterNumber == 1) { //this is the code for the map borders
    fill(0);
    noStroke();
    rect((chapter1.getChapterX() * 15), 0, 15, 50);
    rect(0, (chapter1.getChapterY() * 15), 50, 15);
  }
  //image(lynImage, 225, 105);
  roy();
  bors();
  marcus();
  wolt();
  lance();
  alen();
  cursor();
  if (cursorX == royX && cursorY == royY) {
    fill(0);
  } else {
    fill(#86c06c);
  }
  text("Roy", 200, 20); //displays Roy's name when you hover over him
  //fill(0);
  //textSize(50);
  //text(cursorX, 100, 100);
  //line(cursorX, cursorY, cursorX, (cursorY + 5));
  //line(cursorX, cursorY, (cursorX + 5), cursorY);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP && cursorY > 0) {
      cursorY -= 15;
    } else if (keyCode == DOWN && cursorY < ((chapter1.getChapterY() * 15) - 15)) {
      cursorY += 15;
    } else if (keyCode == LEFT && cursorX > 0) {
      cursorX -= 15;
    }
      else if (keyCode == RIGHT && cursorX < ((chapter1.getChapterX() * 15) - 15)) {
      cursorX += 15;
    }
    if (key == 'x' && cursorX == royX && cursorY == royY) {
        while(spacesMoved <= roy.getMovement()) {
          roy.highlightThis();
          if (keyCode == UP || keyCode == DOWN || keyCode == RIGHT || keyCode == LEFT) {
            spacesMoved += 1;
            fill(0);
            text(spacesMoved, 100, 400);
          }
      } 
    }
  }
}

void cursor() {
  noFill();
  stroke(255);
  rect(cursorX, cursorY, 15, 15);
  //fill(255);
  //rect(cursorX, cursorY, 15, 15);
}

void roy() {
  if (roy.getHighlight() == false) {
  fill(255, 0, 0);
  } else {
    fill(255);
  }
  if (chapterNumber == 1) {
    royX = roy.getStartingX();
    royY = roy.getStartingY();
  }
  noStroke();
  rect(royX, royY, 15, 15);
}

void marcus() {
   fill(255, 0, 255);
   rect(marcus.getStartingX(), marcus.getStartingY(), 15, 15);
}

void wolt() {
  fill(0, 255, 100);
  rect(royX, royY - 30, 15, 15);
}

void alen() {
  fill(0, 255, 0);
  rect(royX + 15, royY - 15, 15, 15);
}

void lance() {
  fill(150, 0, 0);
  rect(royX + 30, royY, 15, 15);
}

void bors() {
  fill(0, 100, 0);
  rect(royX + 15, royY + 15, 15, 15);
}
