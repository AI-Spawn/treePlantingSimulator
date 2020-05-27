PImage s0;
PImage s1;
PImage s2;
PImage s3;
PImage s4;
PImage s5;
PImage s6;
PImage s7;
PImage s8;

int arraySize = 100000;
int age = 100;
int beep = 0;


PImage droplet;
int posX = 250;
int posY = 250;
int speed = 2;
PImage sprite;
int spriteNum = 1;
int updateNum = 10;
int waterLevel = 3; 

Boolean left = false;
Boolean right = false;
Boolean down = false;
Boolean up = false;
Boolean devTools = false;


//import character i
PImage u1;
PImage u2;
PImage u3;
PImage u4;
PImage u5;
PImage u6;
PImage u7;

PImage d1;
PImage d2;
PImage d3;
PImage d4;
PImage d5;
PImage d6;
PImage d7;

PImage r1;
PImage r2;
PImage r3;
PImage r4;
PImage r5;

PImage l1;
PImage l2;
PImage l3;
PImage l4;
PImage l5;

//Tree Stuff
int tree[] = new int[arraySize];
int c = 1;
void setup() {
  imageMode(CENTER);
  while (c < arraySize) {
    tree[c] = -50; 
    c += 1;
  }
  c = 0;

  size(900, 900);
  // Parameters go inside the parentheses when the object is constructed.
  // myTree1 = new Tree(5, 10, 5);d

  //Load Images

  s0 = loadImage("sappling0.png");
  // s1 = loadImage("sappling1.png");
  s1 = s0;
  s2 = loadImage("sappling2.png");
  s3 = loadImage("sappling3.png");
  s4 = loadImage("sappling4.png");
  s5 = loadImage("sappling5.png");
  s6 = loadImage("sappling6.png");
  s7 = loadImage("Tree.png");

  droplet = loadImage("water.png");


  //load char immages
  u1 = loadImage("pb (1).png");
  u2 = loadImage("pb (2).png");
  u3 = loadImage("pb (3).png");
  u4 = loadImage("pb (4).png");
  u5 = loadImage("pb (5).png");
  u6 = loadImage("pb (6).png");
  u7 = loadImage("pb (7).png");

  d1 = loadImage("pf (1).png");
  d2 = loadImage("pf (2).png");
  d3 = loadImage("pf (3).png");
  d4 = loadImage("pf (4).png");
  d5 = loadImage("pf (5).png");
  d6 = loadImage("pf (6).png");
  d7 = loadImage("pf (7).png");

  r1 = loadImage("pr (1).png");
  r2 = loadImage("pr (2).png");
  r3 = loadImage("pr (3).png");
  r4 = loadImage("pr (4).png");
  r5 = loadImage("pr (5).png");

  l1 = loadImage("pl (1).png");
  l2 = loadImage("pl (2).png");
  l3 = loadImage("pl (3).png");
  l4 = loadImage("pl (4).png");
  l5 = loadImage("pl (5).png");
  sprite = d1;
}
 
void draw() {

  background(10, 100, 10);
  // myTree1.drive();
  // myTree1.display();
  showTrees(0, 0);
  move();
  if (devTools == true) {
    println(mouseX + " " + mouseY);
  }





  UI();
}
