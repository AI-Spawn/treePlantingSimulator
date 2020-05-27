int walkCycle;
void move() {
  if (posY > 0) {
    if (up == true) {
      if (spriteNum <= updateNum) {
        sprite = u1;
      } else if (spriteNum <= updateNum*2) {
        sprite = u2;
      } else if (spriteNum <= updateNum*3) {
        sprite = u3;
      } else if (spriteNum <= updateNum*4) {
        sprite = u4;
      } else if (spriteNum <= updateNum*5) {
        sprite = u5;
      } else if (spriteNum <= updateNum*6) {
        sprite = u6;
      } else if (spriteNum <= updateNum*7) {
        sprite = u7;
      } else {
        spriteNum = 0;
      }
      posY -= speed;
    }
  }
  if (posY < 800) {
    if (down == true) {
      if (spriteNum <= updateNum) {
        sprite = d1;
      } else if (spriteNum <= updateNum*2) {
        sprite = d2;
      } else if (spriteNum <= updateNum*3) {
        sprite = d3;
      } else if (spriteNum <= updateNum*4) {
        sprite = d4;
      } else if (spriteNum <= updateNum*5) {
        sprite = d5;
      } else if (spriteNum <= updateNum*6) {
        sprite = d6;
      } else if (spriteNum <= updateNum*7) {
        sprite = d7;
      } else {
        spriteNum = 0;
      }
      posY += speed;
    }
  }
  if (posX > 0) {
    if (left == true) {
      if (spriteNum <= updateNum) {
        sprite = l1;
      } else if (spriteNum <= updateNum*2) {
        sprite = l2;
      } else if (spriteNum <= updateNum*3) {
        sprite = l3;
      } else if (spriteNum <= updateNum*4) {
        sprite = l4;
      } else if (spriteNum <= updateNum*5) {
        sprite = l5;
      } else {
        spriteNum = 0;
      }
      posX -= speed;
    }
  }
  if (posX < 800) {
    if (right == true) {
      if (spriteNum <= updateNum) {
        sprite = r1;
      } else if (spriteNum <= updateNum*2) {
        sprite = r2;
      } else if (spriteNum <= updateNum*3) {
        sprite = r3;
      } else if (spriteNum <= updateNum*4) {
        sprite = r4;
      } else if (spriteNum <= updateNum*5) {
        sprite = r5;
      } else {
        spriteNum = 0;
      }
      posX += speed;
    }
  }
  spriteNum += 1;
  image(sprite, posX, posY, 100, 100);
}








void keyPressed() {
  if (key == 'l') {
    devTools = true;
  }
  // if (up == false && down == false && left == false && right == false) {

  if (key == 'w' || key == 'W') {
    println("Up");
    up = true;
  }
  if (key == 'a' || key == 'A') {
    println("Left");
    left = true;
  }
  if (key == 's' || key == 'S') {
    println("Down");
    down = true;
  }
  if (key == 'd' || key == 'D') {
    println("Right");
    right = true;
  }
  //}
}
void keyReleased() {
  if (key == 'w' || key == 'W') {
    println("Not Up");
    up = false;
  }
  if (key == 'a' || key == 'A') {
    println ("Not Left");
    left = false;
  }
  if (key == 's' || key == 'S') {
    println("Not Down");
    down = false;
  }
  if (key == 'd' || key == 'D') {
    println("Not Right");
    right = false;
  }
  if(key == ' '){
    plant(posX, posY);
    //plant(posX, posY);
  }
}
