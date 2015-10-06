/* please implement your assign1 code in this file. */

int hpValue=floor(random(101));
int treasurePosX=floor(random(600));
int treasurePosY=floor(random(400));
int enemy1PosX=0;
int enemy1PosY=floor(random(400));
int bg1PosX=0;
// int bg1PosY=0;
int bg2PosX=-641;
// int bg2PosY=0;

void setup() {
size (640, 480);
rect (0, 0, 200, 400);

println (treasurePosX);
println (treasurePosY);
println (enemy1PosY);

}
void draw() {
background(0);
int x = 0;
println (x);
ellipse(100, 100, 80, 60);
PImage backgroundImg1=loadImage("img/bg1.png");
PImage backgroundImg2=loadImage("img/bg2.png");
image (backgroundImg1, bg1PosX++, 0);
image (backgroundImg2, bg2PosX++, 0);
if (bg1PosX>641){bg1PosX=-640;};
if (bg2PosX>641){bg2PosX=-640;};

PImage fighterimg = loadImage("img/fighter.png");
image(fighterimg, 300, 300);
PImage hpImg=loadImage("img/hp.png");
image(hpImg,10,10);
println(hpValue);
rect(21, 14, hpValue, 17);
PImage treasureImg = loadImage("img/treasure.png");
image (treasureImg, treasurePosX, treasurePosY);
PImage enemyImg = loadImage("img/enemy.png");
image (enemyImg, enemy1PosX++, enemy1PosY);

// int runtimer=1;
if (enemy1PosX>600){
enemy1PosX=0;
// runtimer++;
};

// enemy1=img (enemyImg, enemy1PosX++, 100);
// if (enemy1PosX>600){enemy1PosX=0;};
}
