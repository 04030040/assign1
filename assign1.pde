/* please implement your assign1 code in this file. */

int canvasSizeX=640;
int canvasSizeY=480;
int hpValue=floor(random(101)); //fighter hp value
//int hpValue=20;
int treasurePosX=floor(random(canvasSizeX-90))+50;
int treasurePosY=floor(random(canvasSizeY-90))+50;
int enemy1PosX=0;
int enemy1PosY=floor(random(canvasSizeY-90))+50;
int fighterPosX=floor(random(canvasSizeX-90))+50;
int fighterPosY=floor(random(canvasSizeY-90))+50;
int bg1PosX=0;
// int bg1PosY=0;
int bg2PosX=-641;
// int bg2PosY=0;


void setup() {
size (640, 480);
//println (treasurePosX);
//println (treasurePosY);
//println (enemy1PosY);

}
void draw() {
//background(0);
int x = 0;

//ellipse(100, 100, 80, 60);
PImage backgroundImg1=loadImage("img/bg1.png");
PImage backgroundImg2=loadImage("img/bg2.png");
image (backgroundImg1, bg1PosX++, 0);
image (backgroundImg2, bg2PosX++, 0);
if (bg1PosX>641){bg1PosX=-640;};
if (bg2PosX>641){bg2PosX=-640;};

PImage enemyImg = loadImage("img/enemy.png");
image (enemyImg, enemy1PosX++, enemy1PosY);

PImage treasureImg = loadImage("img/treasure.png");

PImage treasureImg = loadImage("img/treasure.png");
image (treasureImg, 100, 100);
//image (treasureImg, treasurePosX, treasurePosY);
println("treasurePosX=", treasurePosX);
println("treasurePosY=", treasurePosY);

PImage fighterimg = loadImage("img/fighter.png");
image(fighterimg, fighterPosX, fighterPosY);
stroke(0,255,0);
//line (fighterPosX-20, fighterPosY+25, fighterPosX-10, fighterPosY+25); //bullet
PImage hpImg=loadImage("img/hp.png");
image(hpImg,10,10);
println("hpValue=", hpValue);
stroke(0,0,50);fill(0,0,50);
rect(21, 15, 190, 20); //full hp == 190 hp
stroke(0,0,200);fill(0,0,200);
if (hpValue<40){stroke(250,20,20);fill(250,20,20);}
rect(21, 15, hpValue, 20);



// int runtimer=1;
if (enemy1PosX>600){
enemy1PosX=0;
// runtimer++;
};

// enemy1=img (enemyImg, enemy1PosX++, 100);
// if (enemy1PosX>600){enemy1PosX=0;};
}
