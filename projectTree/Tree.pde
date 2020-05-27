
//// Even though there are multiple objects, we still only need one class. 
//// No matter how many cookies we make, only one cookie cutter is needed.
//class Tree { 
//  color c;
//  float xpos;
//  float ypos;
//  float age;

//  // The Constructor is defined with arguments.
//  Tree(float tempXpos, float tempYpos, int age) { 
//    xpos = tempXpos;
//    ypos = tempYpos;
//  }

//  void display() {
//    stroke(0);
//    fill(c);
//    rectMode(CENTER);
//    image(sappling, xpos, ypos, 100, 100);
//  }

//  void age() {
//    age += 1;
//    if (age >= 100) {
//    }
//  }
//}
void plant(int treeX, int treeY) {
  tree[c] = posX;
  tree[c+1] = posY;
  tree[c+2] = 0;
  c += 3;
}


void showTrees(int size, int offset) {
  for (int i = 0; i < (arraySize - 2); i+=3) {
    if (tree[i+2] >= 0) {
      s8 = s0;
      size = 100;
      offset = 15;
      if (tree[i+2] >= age * 1) {
        s8 = s0;
        offset = 15;
      }
      if (tree[i+2] >= age * 2) {
        s8 = s2;
        size = 125;
        offset = 15;
      }
      if (tree[i+2] >= age * 3) {
        s8 = s3;
        offset = 15;
      }
      if (tree[i+2] >= age * 4) {
        size = 150;
        offset = 13;
        s8 = s4;
      }
      if (tree[i+2] >= age * 5) {
        s8 = s5;
        offset = -18;
      }
      if (tree[i+2] >= age * 6) {
        size = 200;
        s8 = s6;
        offset = 10;
      }
      if (tree[i+2] >= age * 7) {
        size = 225;
        s8 = s7;
        offset = -30;
      }
      // offset = int((size - 100)/2);
      if (tree[i+2] >= 0) {
        tree[i+2] += 1;
      }
      image(s8, tree[i], tree[i+1] + (offset), size, size);
    }
  }
}
