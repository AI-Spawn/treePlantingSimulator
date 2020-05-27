void UI() {
    imageMode(CORNER);
  if (waterLevel >= 1) {
    image(droplet, 10, 10, 50, 73);
  }
  if (waterLevel >= 2) {
    image(droplet, 60, 10, 50, 73);
  }
  if (waterLevel >= 3) {

    image(droplet, 110, 10, 50, 73);
  }
  if (waterLevel >= 4) {
    image(droplet, 160, 10, 50, 73);
  }
  if (waterLevel >= 5) {
    image(droplet, 210, 10, 50, 73);
  }
  imageMode(CENTER);
}
/*
void UI(){
 waterLevel = waterLevel2;
 while(waterLevel2 > 0){
 print("HI");
 waterLevel2 -= 1;
 }
 
 }
 */
