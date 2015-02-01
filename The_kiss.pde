//This program is created by Jincheng Cao
//A picture is created using Processing

BackgroundCircles[] backgroundCircles;// Array of tiny circles in the background
GrassShape grassShape; // Draw the shape of background grass
GrassFlower[] grassFlower1; //Array of flower1 on the grass
GrassFlower[] grassFlower2; //Array of flower2 on the grass
GrassFlower[] grassFlower3; //Array of flower3 on the grass
GrassGreen[] grassGreen1; //Array of grass1
GrassGreen[] grassGreen2; //Array of grass2
CoupleShape coupleShape; //Draw the shape of the couple, the background yellow color
CoupleLoop[] coupleLoop1; //Draw the first part of orange loops in the yellow background
CoupleLoop[] coupleLoop2; //Draw the second part of orange loops in the yellow background
CoupleClothShape coupleClothShape; //Draw the shape of cloth of the couple
ManClothSquare[] manClothSquare; //Array of squares on the man's cloth
WomanClothStripe[] womanClothStripe;//Array of stripes on the woman's cloth
WomanClothCircle womanClothCircle;//Draw the circles on the woman's cloth
CoupleBody coupleBody;//Draw the body of the couple: eyes, lip, legs, hands, shoulder


void setup() {
  size(720,720);
  
  // Background circles
  backgroundCircles = new BackgroundCircles[225];
  int index = 0;
  for (int y = 0; y <15; y++){
    for (int x = 0; x < 15; x++){
      backgroundCircles[index++] = new BackgroundCircles(x, y, int(random(-50,50)), int(random(-40,40))); 
    }
  } 
  
  //Shape of grass
  grassShape = new GrassShape();
  
  //Flower1 on the grass
  grassFlower1 = new GrassFlower[25];
  index = 0;
  for (int y = 0; y < 5; y++){
    for (int x = 0; x < 5; x++){
      grassFlower1[index++] = new GrassFlower(x, y, int(random(-20,50)), int(random(-15,45)), color(247,40,113), color(243, 252, 5), 6);
    }
  }
  
  //Flower2 on the grass
  grassFlower2 = new GrassFlower[16];
  index = 0;
  for (int y = 1; y < 5; y++){
    for (int x = 1; x < 5; x++){
      grassFlower2[index++] = new GrassFlower(x, y, int(random(-40,50)), int(random(-30,20)), color(255,255,255), color(252, 204, 5), 10);
    }
  }
  
  //Flowe3 on the grass
  grassFlower3 = new GrassFlower[9];
  index = 0;
  for (int y = 1; y < 4; y++){
    for (int x = 1; x < 4; x++){
      grassFlower3[index++] = new GrassFlower(x, y, int(random(-100,50)), int(random(-20,40)), color(134,31,11), color(250, 223, 13), 5);
    }
  }
  
  //Grass1
  grassGreen1 = new GrassGreen[36];
  index = 0;
  for (int y = 1; y < 7; y++){
    for (int x = 1; x < 7; x++){
      grassGreen1[index++] = new GrassGreen(x, y, int(random(-20,30)), int(random(-15,10)), color(27,250,13), 1 , 7);
    }
  }
  
  //Grass2
  grassGreen2 = new GrassGreen[225];
  index = 0;
  for (int y = 1; y < 16; y++){
    for (int x = 1; x < 16; x++){
      grassGreen2[index++] = new GrassGreen(x, y, int(random(-30,10)), int(random(-10,20)), color(6,67,21), 2, 16);
    }
  }
  
  //Couple shape
  coupleShape = new CoupleShape();
  
  //Loop1 in the couple's background's upper part 
  coupleLoop1 = new CoupleLoop[36];
  index = 0;
  for (int y = 0; y < 4; y++){
    for (int x = 0; x < 9; x++){
      coupleLoop1[index++] = new CoupleLoop(x, y, 225, 25, int(random(1,5)),int(random(20,32)), color(274,169,21));
    }
  }
  
  
  //Loop1 in the couple's background's lower part 
  coupleLoop2 = new CoupleLoop[90];
  index = 0;
  for (int y = 0; y < 9; y++){
    for (int x = 0; x < 10; x++){
      coupleLoop2[index++] = new CoupleLoop(x, y, 228, 245, int(random(1,5)),int(random(20,32)), color(274,169,21));
    }
  }
  
  //Shape of the couple's cloth
  coupleClothShape = new CoupleClothShape();
  
  //Squares on the man's cloth
  manClothSquare = new ManClothSquare[24];
  index = 0;
  for (int y = 0; y < 6; y++){
    for (int x = 0; x < 4; x++){
      manClothSquare[index++] = new ManClothSquare(x, y, 210, 110, int(random(1,25)), int(random(10,25)),int(random(0,255)));
    }
  }
  
  //Stripes on the woman's cloth
  womanClothStripe = new WomanClothStripe[13];
  index = 0;
  for (int x = 0; x< 13; x++){
    womanClothStripe[index++] = new WomanClothStripe(x);
  }
  
  //Circles on the woman's cloth
  womanClothCircle = new WomanClothCircle();
  
  //The body of the couple
  coupleBody = new CoupleBody();
}


//Display each object constructed previously
void draw() {
  background(201,107,49);
  
  for (int i = 0; i < 225; i++){
    backgroundCircles[i].display();  
  }
  
  grassShape.display();
  
  for (int i = 0; i < 225; i++){
    grassGreen2[i].display();  
  }
  
  for (int i = 0; i < 36; i++){
    grassGreen1[i].display();  
  }
  
  for (int i = 0; i < 25; i++){
    grassFlower1[i].display();  
  }
  
  for (int i = 0; i < 16; i++){
    grassFlower2[i].display();  
  }
  
  for (int i = 0; i < 9; i++){
    grassFlower3[i].display();  
  }
  
  coupleShape.display();
  
  for (int i = 0; i < 36; i++){
    coupleLoop1[i].display();  
  }
  
  for (int i = 0; i < 90; i++){
    coupleLoop2[i].display();  
  }
  
  coupleClothShape.display();
  
  for (int i = 0; i < 24; i++){
    manClothSquare[i].display();  
  }
  
  for (int i = 0; i < 13; i++){
    womanClothStripe[i].display();
  }  
  
  womanClothCircle.display();
  
  coupleBody.display();
  
}




// Display yellow dots in the background
class BackgroundCircles {
  int x;
  int y;
  int xDislocation;
  int yDislocation;

  BackgroundCircles(int xTemp, int yTemp, int xRandom, int yRandom) {
    x = xTemp * 61;
    y = yTemp * 61;
    xDislocation = xRandom;
    yDislocation = yRandom;
  }  
  
  void display() {
    noStroke();
    fill(252,227,33);
    ellipse(x + xDislocation, y + yDislocation, 5, 5);
  }
}


//Display the shade of green grass
class GrassShape{
  
  void display() {
    fill(43,121,12);
    beginShape();
    curveVertex(-50,720);
    curveVertex(-30,600);
    curveVertex(24,572);
    curveVertex(61,573);
    curveVertex(97,561);
    curveVertex(145,555);
    curveVertex(203,534);
    curveVertex(284,514);
    curveVertex(378,496);
    curveVertex(482,502);
    curveVertex(538,544);
    curveVertex(568,603);
    curveVertex(578,622);
    curveVertex(579,671);
    curveVertex(581,714);
    curveVertex(579,720);
    curveVertex(10,750);
    curveVertex(-100,750);
    endShape();    
  }
}


//Display flowers on the grass
class GrassFlower {
  int x;
  int y;
  int xDislocation;
  int yDislocation;
  color c1;
  color c2;
  int n;

  GrassFlower(int xTemp, int yTemp, int xRandom, int yRandom, color C1, color C2, int number) {
    x = xTemp * 130;
    y = 570 + yTemp * 40;
    xDislocation = xRandom;
    yDislocation = yRandom;
    c1 = C1;
    c2 = C2;
    n = number;
  }  
  
  void display() {
    noStroke();
    fill(c1);
    ellipse(x + xDislocation, y + yDislocation, 6,20); 
    for(int i = 1; i <=n ; i++) {
      pushMatrix();
      translate(x + xDislocation, y + yDislocation);
      rotate(radians(360/n*i));
      fill(c1);
      ellipse(0, 0, 5,20); 
      popMatrix();
  }
    fill(c2);
    ellipse(x + xDislocation, y + yDislocation, 5, 5);
  }
}


//Display green grass
class GrassGreen {
  int x;
  int y;
  int xDislocation;
  int yDislocation;
  color c;
  int r;
  int scale;

  GrassGreen(int xTemp, int yTemp, int xRandom, int yRandom, color C, int Diameter, int Scale) {
    scale = Scale;
    x = xTemp * 579 / scale;
    y = 570 + yTemp * 150 / scale ;
    xDislocation = xRandom;
    yDislocation = yRandom;
    c = C;
    r = Diameter;
    scale = Scale;
  }  
  
  void display() {
    noStroke();
    fill(c);
    for (int i = 0; i <4; i++){
      pushMatrix();
      translate(x + xDislocation + i * 1.6 * r, y + yDislocation);
      rotate(radians(350+i*6.66));
      ellipse(0, 0, r*0.6, 22*r); 
      popMatrix();
    }
  }
}
  
//Display couple's shape  
class CoupleShape{
  
  void display() {
    noStroke();
    fill(247,220,0);
    beginShape();
    curveVertex(228,601);
    curveVertex(204,519);
    curveVertex(194,478);
    curveVertex(188,401);
    curveVertex(182,299);
    curveVertex(184,224);
    curveVertex(197,121);
    curveVertex(191,70);
    curveVertex(208,33);
    curveVertex(241,14);
    curveVertex(283,5);
    curveVertex(322, 2);
    curveVertex(368,1);
    curveVertex(417,7);
    curveVertex(467,36);
    curveVertex(494,81);
    curveVertex(500,125);
    curveVertex(485,172);
    curveVertex(487,207);
    curveVertex(505,252);
    curveVertex(521,297);
    curveVertex(527,332);
    curveVertex(529,356);
    curveVertex(526,376);
    curveVertex(537,401);
    curveVertex(544,459);
    curveVertex(544,509);
    curveVertex(537,541);
    curveVertex(507,550);
    curveVertex(482,563);
    curveVertex(463,573);
    curveVertex(444,581);
    curveVertex(427,598);
    curveVertex(398,611);
    curveVertex(368,614);
    curveVertex(349,618);
    curveVertex(328,623);
    curveVertex(297,623);
    curveVertex(263,619);
    curveVertex(237,607);
    curveVertex(228,599);
    curveVertex(224,583);
    endShape();    
  }
}


//Display orange loops in the background
class CoupleLoop {
  int x;
  int y;
  int rchange;
  int loopNumber;
  int xbegin;
  int ybegin;

  color c;
  
  CoupleLoop(int xTemp, int yTemp, int xStart, int yStart, int rRandom, int nRandom, color C) {
    rchange = rRandom;
    loopNumber = nRandom;
    c = C;
    xbegin = xStart;
    ybegin = yStart;
    x = xStart + xTemp * 29;
    y = yStart + yTemp * 34 ;
  }  
  
  void display() {
    strokeWeight(3);
    stroke(c);
    ellipse(x - 3 *rchange, y + 5*rchange, loopNumber + rchange, loopNumber + rchange);
    ellipse(x - 3 *rchange, y + 5*rchange, loopNumber + rchange - 10, loopNumber + rchange - 10);
    ellipse(x - 3 *rchange, y + 5*rchange, loopNumber + rchange - 20, loopNumber + rchange - 20); 
  }
}


//Display the shape of the couple's cloth
class CoupleClothShape{
  
  void display() {
    stroke(0);
    strokeWeight(1);
    fill(255,243,3);
    beginShape();
    curveVertex(253,44);
    curveVertex(250,48);
    curveVertex(235,55);
    curveVertex(220,66);
    curveVertex(205,89);
    curveVertex(195,126);
    curveVertex(190,172);
    curveVertex(185,228);
    curveVertex(186,258);
    curveVertex(182,290);
    curveVertex(187,334);
    curveVertex(188,398);
    curveVertex(193,446);
    curveVertex(193,473);
    curveVertex(204,511);
    curveVertex(221,572);
    curveVertex(227,596);
    curveVertex(241,610);
    curveVertex(250,616);
    curveVertex(269,618);
    curveVertex(302,622);
    curveVertex(336,623);
    curveVertex(358,616);
    curveVertex(369,613);
    curveVertex(363,607);
    curveVertex(355,592);
    curveVertex(357,548);
    curveVertex(360,525);
    curveVertex(360,498);
    curveVertex(358,483);
    curveVertex(349,450);
    curveVertex(350,417);
    curveVertex(352,389);
    curveVertex(350,363);
    curveVertex(347,341);
    curveVertex(337,325);
    curveVertex(337,299);
    curveVertex(337,271);
    curveVertex(337,251);
    curveVertex(342,219);
    curveVertex(352,205);
    curveVertex(365,179);
    curveVertex(378,174);
    curveVertex(400,146);
    curveVertex(385,121);
    curveVertex(375,102);
    curveVertex(357,92);
    curveVertex(341,93);
    curveVertex(317,89);
    curveVertex(297,86);
    curveVertex(282,81);
    curveVertex(262,64);
    curveVertex(258,50);
    curveVertex(255,48);
    curveVertex(253,46);
    endShape();    
    
    fill(255,216,8);
    beginShape();
    curveVertex(369,179);
    curveVertex(356,195);
    curveVertex(350,212);
    curveVertex(342,263);
    curveVertex(336,309);
    curveVertex(339,329);
    curveVertex(349,344);
    curveVertex(349,356);
    curveVertex(349,377);
    curveVertex(350,396);
    curveVertex(347,437);
    curveVertex(354,467);
    curveVertex(356,485);
    curveVertex(351,524);
    curveVertex(351,566);
    curveVertex(357,592);
    curveVertex(375,610);
    curveVertex(393,613);
    curveVertex(410,604);
    curveVertex(429,597);
    curveVertex(441,579);
    curveVertex(466,571);
    curveVertex(455,558);
    curveVertex(439,533);
    curveVertex(430,524);
    curveVertex(430,502);
    curveVertex(419,479);
    curveVertex(422,454);
    curveVertex(435,430);
    curveVertex(435,416);
    curveVertex(429,395);
    curveVertex(422,372);
    curveVertex(422,352);
    curveVertex(424,336);
    curveVertex(433,310);
    curveVertex(440,276);
    curveVertex(440,246);
    curveVertex(441,214);
    curveVertex(443,192);
    curveVertex(442,188);
    curveVertex(435,185);
    curveVertex(423,182);
    curveVertex(400,177);
    curveVertex(384,175);
    curveVertex(372,175);
    curveVertex(369,178);
    endShape();
  }
}


//Display the squares on the man's cloth
class ManClothSquare {
  int x;
  int y;
  int xbegin;
  int ybegin;
  int squareWidth;
  int dislocation;
  int wRandom;
  int cRandom;

  ManClothSquare (int xTemp, int yTemp, int xStart, int yStart, int dislocationRandom, int widthRandom, int colorRandom) {
    xbegin = xStart;
    ybegin = yStart;
    x = xStart + xTemp * 30;
    y = yStart + yTemp * 80;
    dislocation = dislocationRandom;
    wRandom = widthRandom;
    cRandom = colorRandom;
  }  
  
  void display() {
  
    fill(cRandom, cRandom, cRandom);
    rect(x + dislocation, y - dislocation, wRandom, wRandom * 2.5);
    
  }
}


//Display the stripes on the woman's cloth
class WomanClothStripe {
  float x;
  
  WomanClothStripe(int xLocation) {
    x = xLocation * 5;
  }
  
  void display(){
    noFill();
    strokeWeight(2);
    stroke(220,150,30);
    beginShape();
    curveVertex(362 + x,178);
    curveVertex(363 + x,180);
    curveVertex(362 + x,194);
    curveVertex(356 + x,208);
    curveVertex(350 + x,227);
    curveVertex(349 + x,254);
    curveVertex(351 + x,277);
    curveVertex(360 + x,308);
    curveVertex(360 + x,325);
    curveVertex(360 + x,352);
    curveVertex(356 + x,374);
    curveVertex(358 + x,397);
    curveVertex(356 + x,417);
    curveVertex(352 + x,442);
    curveVertex(361 + x,469);
    curveVertex(367 + x,495);
    curveVertex(367 + x,521);
    curveVertex(363 + x,548);
    curveVertex(367 + x,581);
    curveVertex(373 + x,598);
    curveVertex(375 + x,602);
    endShape();       
  }
}


//Display circles on the woman's cloth
class WomanClothCircle {
  
  void display(){
    strokeWeight(1);
    stroke(0);
    fill(38,162,59);
    ellipse(400, 270, 80,70);
    fill(220, 100, 10);
    ellipse(380, 260, 30, 20);  
    fill(250, 60, 17);
    ellipse(400, 280, 20, 15); 
    fill(240, 30, 27);
    ellipse(425, 258, 30, 25);  
    fill(230, 50, 7);
    ellipse(420, 290, 25, 19); 
    fill(240, 20, 47);
    ellipse(380, 285, 25, 22);
    fill(240, 17, 76);
    ellipse(400, 247, 23, 18);
    fill(245, 10, 90);
    ellipse(405, 260, 20, 15);
    
    fill(17,196, 117);
    ellipse(403, 428, 60,45);
    fill(220, 100, 10);
    ellipse(390, 420, 20, 15);  
    fill(250, 60, 17);
    ellipse(405, 433, 30, 20); 
    fill(240, 30, 27);
    ellipse(415, 420, 25, 21);  
    fill(230, 50, 7);
    ellipse(388, 435, 25, 19); 

    fill(185,240, 162);
    ellipse(368, 322, 60, 50);
    fill (21, 120, 227);
    ellipse(370, 310, 20, 15);
    fill(25,22,111);
    ellipse(380, 330, 27, 23);
    fill(22,28,183);
    ellipse(355, 323, 25, 20);
    fill(106, 11, 142);
    ellipse(360, 335, 20, 14);
    
    fill(242, 49, 101);
    ellipse(370, 220, 40, 30);
    fill(250, 32, 13);
    ellipse(365, 220, 30, 20);  
    
 }
}


//Display the body of the couple
class CoupleBody {
  
  void display(){
    
    //The shape of the woman's face
    fill(251, 252, 232);
    beginShape();
    curveVertex(388,123);
    curveVertex(384,116);
    curveVertex(385,112);
    curveVertex(389,105);
    curveVertex(398,94);
    curveVertex(408,90);
    curveVertex(416,88);
    curveVertex(428,88);
    curveVertex(439,86);
    curveVertex(448,86);
    curveVertex(454,87);
    curveVertex(459,90);
    curveVertex(461,96);
    curveVertex(461,106);
    curveVertex(457,114);
    curveVertex(454,125);
    curveVertex(454,134);
    curveVertex(456,140);
    curveVertex(448,147);
    curveVertex(440,147);
    curveVertex(427,142);
    curveVertex(415,139);
    curveVertex(396,131);
    curveVertex(389,125);
    curveVertex(387,121);
    endShape();
    
    //The shape of the man's first hand
    fill(206,201,177);
    beginShape();
    curveVertex(367,135);
    curveVertex(376,123);
    curveVertex(383,123);
    curveVertex(396,123);
    curveVertex(410,127);
    curveVertex(419,131);
    curveVertex(421,133);
    curveVertex(417,138);
    curveVertex(407,134);
    curveVertex(398,131);
    curveVertex(391,131);
    curveVertex(389,131);
    curveVertex(398,131);
    curveVertex(409,133);
    curveVertex(419,134);
    curveVertex(420,134);
    curveVertex(422,136);
    curveVertex(426,139);
    curveVertex(423,141);
    curveVertex(410,144);
    curveVertex(402,141);
    curveVertex(395,140);
    curveVertex(391,139);
    curveVertex(402,140);
    curveVertex(411,142);
    curveVertex(424,142);
    curveVertex(422,151);
    curveVertex(407,154);
    curveVertex(398,153);
    curveVertex(390,151);
    curveVertex(385,151);
    curveVertex(382,158);
    curveVertex(375,168);
    curveVertex(370,172);
    curveVertex(368,173);
    curveVertex(365,172);
    curveVertex(365,166);
    curveVertex(363,161);
    curveVertex(360,158);
    curveVertex(357,153);
    curveVertex(361,146);
    curveVertex(365,136);
    curveVertex(370,128);
    curveVertex(376,123);
    endShape();
    
    //The shape of the man's second hand
    beginShape();
    curveVertex(475,161);
    curveVertex(473,154);
    curveVertex(465,147);
    curveVertex(457,136);
    curveVertex(455,134);
    curveVertex(452,135);
    curveVertex(453,139);
    curveVertex(457,146);
    curveVertex(461,151);
    curveVertex(467,155);
    curveVertex(468,158);
    curveVertex(460,147);
    curveVertex(453,140);
    curveVertex(447,134);
    curveVertex(443,133);
    curveVertex(443,134);
    curveVertex(444,139);
    curveVertex(450,144);
    curveVertex(455,148);
    curveVertex(457,153);
    curveVertex(460,160);
    curveVertex(454,149);
    curveVertex(446,140);
    curveVertex(443,138);
    curveVertex(441,138);
    curveVertex(440,141);
    curveVertex(442,145);
    curveVertex(444,151);
    curveVertex(448,155);
    curveVertex(452,158);
    curveVertex(454,165);
    curveVertex(454,167);
    curveVertex(452,158);
    curveVertex(447,149);
    curveVertex(444,148);
    curveVertex(442,149);
    curveVertex(444,156);
    curveVertex(448,161);
    curveVertex(453,168);
    curveVertex(452,175);
    curveVertex(449,181);
    curveVertex(450,188);
    curveVertex(459,181);
    curveVertex(468,169);
    curveVertex(473,164);
    curveVertex(475,162);
    endShape();
    
    //The shape of the woman's shoulder
    fill(247,244,225);
    beginShape();
    curveVertex(441,148);
    curveVertex(430,144);
    curveVertex(419,142);
    curveVertex(408,142);
    curveVertex(400,146);
    curveVertex(397,155);
    curveVertex(394,164);
    curveVertex(389,171);
    curveVertex(384,174);
    curveVertex(393,174);
    curveVertex(401,175);
    curveVertex(413,179);
    curveVertex(427,184);
    curveVertex(439,187);
    curveVertex(441,187);
    curveVertex(446,184);
    curveVertex(447,175);
    curveVertex(448,167);
    curveVertex(446,160);
    curveVertex(443,156);
    curveVertex(442,149);
    curveVertex(441,147);
    curveVertex(437,146);
    curveVertex(434,146);
    curveVertex(428,144);
    curveVertex(417,142);
    endShape();
    
    //The shape of the woman's arm
    beginShape();
    curveVertex(401,228);
    curveVertex(393,225);
    curveVertex(382,224);
    curveVertex(376,223);
    curveVertex(372,223);
    curveVertex(367,224);
    curveVertex(364,230);
    curveVertex(361,236);
    curveVertex(358,239);
    curveVertex(358,244);
    curveVertex(358,245);
    curveVertex(360,241);
    curveVertex(360,239);
    curveVertex(360,236);
    curveVertex(356,231);
    curveVertex(352,221);
    curveVertex(351,216);
    curveVertex(351,208);
    curveVertex(349,206);
    curveVertex(343,212);
    curveVertex(339,219);
    curveVertex(337,232);
    curveVertex(336,240);
    curveVertex(337,241);
    curveVertex(339,249);
    curveVertex(344,262);
    curveVertex(348,270);
    curveVertex(350,277);
    curveVertex(350,282);
    curveVertex(355,289);
    curveVertex(361,289);
    curveVertex(367,280);
    curveVertex(374,270);
    curveVertex(383,256);
    curveVertex(394,238);
    curveVertex(398,230);
    curveVertex(393,226);
    curveVertex(383,224);
    endShape();
    
    //The shape of the woman's first hand
    beginShape();
    curveVertex(335,168);
    curveVertex(338,155);
    curveVertex(351,145);
    curveVertex(358,138);
    curveVertex(364,123);
    curveVertex(368,119);
    curveVertex(375,118);
    curveVertex(382,120);
    curveVertex(383,121);
    curveVertex(375,123);
    curveVertex(369,125);
    curveVertex(365,131);
    curveVertex(366,133);
    curveVertex(366,136);
    curveVertex(362,142);
    curveVertex(358,145);
    curveVertex(361,144);
    curveVertex(367,140);
    curveVertex(367,140);
    curveVertex(371,135);
    curveVertex(376,134);
    curveVertex(378,136);
    curveVertex(375,141);
    curveVertex(367,148);
    curveVertex(361,153);
    curveVertex(355,159);
    curveVertex(347,164);
    curveVertex(339,166);
    curveVertex(335,167);
    curveVertex(334,162);
    curveVertex(338,153);
    curveVertex(344,149);
    endShape();
    
    //The shape of man's neck and head
    fill(232,226,194);
    beginShape();
    curveVertex(253,44);
    curveVertex(263,38);
    curveVertex(284,31);
    curveVertex(308,22);
    curveVertex(324,18);
    curveVertex(350,14);
    curveVertex(369,12);
    curveVertex(395,10);
    curveVertex(420,17);
    curveVertex(435,28);
    curveVertex(444,38);
    curveVertex(453,50);
    curveVertex(455,57);
    curveVertex(446,61);
    curveVertex(436,70);
    curveVertex(432,80);
    curveVertex(428,84);
    curveVertex(426,89);
    curveVertex(423,94);
    curveVertex(420,94);
    curveVertex(416,94);
    curveVertex(413,94);
    curveVertex(408,97);
    curveVertex(398,101);
    curveVertex(393,103);
    curveVertex(383,106);
    curveVertex(372,102);
    curveVertex(362,96);
    curveVertex(351,89);
    curveVertex(345,83);
    curveVertex(350,87);
    curveVertex(356,90);
    curveVertex(354,92);
    curveVertex(349,92);
    curveVertex(332,94);
    curveVertex(331,95);
    curveVertex(318,89);
    curveVertex(302,87);
    curveVertex(291,86);
    curveVertex(278,80);
    curveVertex(260,67);
    curveVertex(256,53);
    curveVertex(254,43);
    curveVertex(260,38);
    curveVertex(278,31);
    endShape();
    
    //The shape of the woman's second hand
    fill(247,244,225);
    beginShape();
    curveVertex(356,12);
    curveVertex(347,10);
    curveVertex(334,14);
    curveVertex(322,16);
    curveVertex(312,33);
    curveVertex(304,44);
    curveVertex(297,54);
    curveVertex(289,63);
    curveVertex(292,70);
    curveVertex(300,74);
    curveVertex(296,68);
    curveVertex(297,63);
    curveVertex(300,57);
    curveVertex(297,61);
    curveVertex(297,68);
    curveVertex(302,73);
    curveVertex(305,73);
    curveVertex(302,70);
    curveVertex(304,68);
    curveVertex(310,59);
    curveVertex(305,63);
    curveVertex(303,66);
    curveVertex(303,72);
    curveVertex(306,74);
    curveVertex(313,64);
    curveVertex(321,56);
    curveVertex(323,54);
    curveVertex(317,61);
    curveVertex(311,68);
    curveVertex(317,68);
    curveVertex(324,59);
    curveVertex(330,50);
    curveVertex(332,43);
    curveVertex(332,35);
    curveVertex(335,24);
    curveVertex(342,20);
    curveVertex(349,16);
    curveVertex(356,14);
    curveVertex(358,11);
    curveVertex(354,10);
    curveVertex(341,12);
    endShape();
    
    //The shape of the man's hair
    fill(0);
    beginShape();
    curveVertex(362,11);
    curveVertex(381,11);
    curveVertex(398,11);
    curveVertex(414,11);
    curveVertex(428,17);
    curveVertex(436,25);
    curveVertex(443,36);
    curveVertex(452,49);
    curveVertex(456,55);
    curveVertex(448,60);
    curveVertex(442,63);
    curveVertex(435,68);
    curveVertex(428,67);
    curveVertex(422,74);
    curveVertex(415,79);
    curveVertex(403,88);
    curveVertex(395,90);
    curveVertex(384,94);
    curveVertex(376,99);
    curveVertex(367,90);
    curveVertex(351,84);
    curveVertex(341,68);
    curveVertex(335,50);
    curveVertex(334,37);
    curveVertex(331,27);
    curveVertex(339,20);
    curveVertex(351,16);
    curveVertex(357,11);
    curveVertex(368,11);
    curveVertex(380,11);
    endShape();
    
    //The shape of the woman's hair
    fill(131,92,41);
    beginShape();
    curveVertex(452,57);
    curveVertex(466,62);
    curveVertex(475,72);
    curveVertex(487,86);
    curveVertex(492,101);
    curveVertex(495,113);
    curveVertex(492,133);
    curveVertex(485,156);
    curveVertex(478,161);
    curveVertex(470,154);
    curveVertex(461,141);
    curveVertex(454,132);
    curveVertex(454,121);
    curveVertex(459,110);
    curveVertex(461,101);
    curveVertex(453,88);
    curveVertex(440,87);
    curveVertex(430,87);
    curveVertex(428,87);
    curveVertex(427,84);
    curveVertex(432,76);
    curveVertex(436,72);
    curveVertex(439,66);
    curveVertex(449,59);
    curveVertex(455,59);
    curveVertex(466,63);
    curveVertex(480,79);
    endShape();
    
    //The shape of the woman's eyebrow
    strokeWeight(2);
    stroke(0);
    noFill();
    beginShape();
    vertex(446, 90);
    bezierVertex(450, 96, 449.5, 98, 445, 105);
    endShape();
    beginShape();
    vertex(446, 115);
    bezierVertex(450, 121, 449.5, 123, 445, 130);
    endShape();
    
    //The shape of the woman's eyes    
    strokeWeight(2);
    noFill();
    beginShape();
    vertex(440, 91);
    bezierVertex(437, 96, 437, 98, 440, 102);
    endShape();
    beginShape();
    vertex(440, 116);
    bezierVertex(437, 122, 437, 124, 440, 128);
    endShape();
    
    //The shape of the woman's mouth 
    
    strokeWeight(2);
    stroke(203,6,69);
    fill(245,15,58);
    ellipse(406, 112, 4, 15);
    
    //The shape of the woman's nose
    strokeWeight(0.4);
    stroke(0);
    noFill();
    beginShape();
    curveVertex(441,123);
    curveVertex(436,117);
    curveVertex(432,113);
    curveVertex(426,116);
    curveVertex(421,118);
    curveVertex(419,116);
    curveVertex(416,110);
    curveVertex(419,106);
    curveVertex(426,107);
    curveVertex(434,107);
    curveVertex(439,105);
    curveVertex(441,100);
    endShape();
    
    //The shape of the woman's legs
    fill(247,244,225);
    beginShape();
    curveVertex(472,519);
    curveVertex(492,518);
    curveVertex(511,518);
    curveVertex(525,518);
    curveVertex(539,512);
    curveVertex(547,505);
    curveVertex(558,505);
    curveVertex(563,509);
    curveVertex(568,525);
    curveVertex(537,533);
    curveVertex(502,541);
    curveVertex(482,551);
    curveVertex(459,565);
    curveVertex(442,567);
    curveVertex(432,560);
    curveVertex(430,539);
    curveVertex(430,522);
    curveVertex(434,522);
    curveVertex(446,518);
    curveVertex(459,518);
    curveVertex(459,518);
    curveVertex(470,518);
    curveVertex(478,519);
    endShape();
    
    
    beginShape();
    curveVertex(459,567);
    curveVertex(478,563);
    curveVertex(504,551);
    curveVertex(522,546);
    curveVertex(545,541);
    curveVertex(561,547);
    curveVertex(572,557);
    curveVertex(573,564);
    curveVertex(572,568);
    curveVertex(566,574);
    curveVertex(570,580);
    curveVertex(579,584);
    curveVertex(586,574);
    curveVertex(592,565);
    curveVertex(587,555);
    curveVertex(585,540);
    curveVertex(583,521);
    curveVertex(577,507);
    curveVertex(567,506);
    curveVertex(555,512);
    curveVertex(538,519);
    curveVertex(521,524);
    curveVertex(498,527);
    curveVertex(473,527.5);
    curveVertex(463,528);
    curveVertex(457,528.3);
    curveVertex(440,530);
    curveVertex(430,531);
    curveVertex(410,533);
    endShape();
    
    textAlign(RIGHT);
    textSize(14);
    text("The kiss, Gustav Klimt", 715, 610);
    textSize(21);
    text("Jincheng Cao", 713, 640);

 }
}

    




