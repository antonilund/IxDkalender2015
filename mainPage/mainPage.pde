boolean doEnableAllHatches = false;
boolean doAttractionMode = false;
int attractionModeDelay = 10 * 60 * 1000; // 10min.

PImage sky;

PImage backGroundImage;
int rainColor = 255;
int numOfDrops = 100;
Snow[] _snow;
boolean snowMore = false;

//import processing.sound.*;
//SoundFile christmasSound;

//Door open variables
int elThick = 5;
int _width = 75;
int _height = 75;
int time = 0;
int timer;
int count = 0;
int count2 = 0;
boolean test1 = false;
boolean test2 = false;
int bigger = 1;
int is = 1;
boolean smoke1 = false;

//snow variables
float _starSize = 0;
float growth = 1;
boolean snowB = false;
//Moon image
PImage moon;
PImage halfMoon;

// smoke variables 
int m2;
//snowman
PImage snowman1;
PImage snowman2;
boolean showSnow = false;
int iniSnow = timer;
boolean open = false; //Open hatch or

PImage snow;

boolean treeDec = false;
boolean houseDec = false;
boolean roofy = false;
PImage treeDecorImg;
PImage houseLightsImg;
PImage roofSnow;

// Attraction mode variables.
boolean attractionMode = true;
int attractionTimer = 0;

// Mouse variables.
boolean mouseIsClicked = false;

boolean[] canOpenHatch = {
  false, false, false, false, false, 
  false, false, false, false, false, 
  false, false, false, false, false, 
  false, false, false, false, false, 
  false, false, false, false
};
boolean[] hatchOpen = {
  false, false, false, false, false, 
  false, false, false, false, false, 
  false, false, false, false, false, 
  false, false, false, false, false, 
  false, false, false, false
};


void setup()
{
  //size(1920, 1080, P2D);
  fullScreen(P2D, 2); //For fullscreen on second screeen
  // size(1080, 720, P2D);
  sky = loadImage("starfield.jpg");
  skier = loadImage("skid-tomte.png");
  backGroundImage = loadImage("background.png");
  santa = loadImage("santa.png");
  moon =   loadImage("moon.png");
  halfMoon = loadImage("halfMoon.png");
  snowman1 = loadImage("snowman1.2.png");
  snowman2 = loadImage("snowman2.1.png");
  santawithreindeers = loadImage("santawithreindeers.png");
  treeDecorImg = loadImage("treeDecor.png");
  houseLightsImg = loadImage("House-lights.png");
  roofSnow = loadImage("houseSnow.png");
  polarbear = loadImage("polarbearwalk.png");
  bloodsplatter = loadImage("bloodsplatter.png");
  godjul = loadImage("godjul.png");
  lucia = loadImage("luciacrowd.png");
  santa2 = loadImage("santa2.png");
  renar = loadImage("renar.png");
  snow = loadImage("snow.png");
  initSparkelsAndMagic();

 // christmasSound = new SoundFile(this, "firstnoel.mp3");
  //christmasSound.play();
  
  if (doAttractionMode)
  {
    //d = 1;
    attractionTimer = millis();
  }
}


void draw()
{

  timer = millis();
  m2 = millis();

  if (isHatchOpen(5) && isHatchOpen(6) == false) //Detta är för lucka 5. Den måste ligga här för att ritas i bakgrunden.
  {  
       day20();
    tint(255, 15);
 
  }
    else{ 
        noTint();
    }
  image(sky, 0, 0, width, 800);
          noTint();

  image(backGroundImage, 0, 0, width, height);
  day3();
  day11();
  if (isHatchOpen(23)) {
    day23();
  }

  // Attraction mode - re-open hatch.
  if (doAttractionMode)
  {
    if (millis() > (attractionTimer + attractionModeDelay))
    {
      // Update attraction timer.
      attractionTimer = millis();

      // Close hatch.
      hatchOpen[d - 1] = false;

      /*if(d < 24)
       {
       d++;
       }
       else
       {
       d = 1;
       }*/
    }
  }

  // Check if user is allowed to open hatches.
  for (int i = 0; i < 24; i++)
  {
    Date(i + 1); //Lägg ALLA luckor inom denna
    if ((open == true) || doEnableAllHatches) {
      canOpenHatch[i] = true;
    }
  }

  noStroke();

  // Stjärnor
  _createStars();
  //day 1
  day6();
  day1();
  day2();

  day4();
  if (isHatchOpen(5))
  {
    roofy = true;
    image(roofSnow, 895, 290, 294, 174);
    day5();
  }
  day5();
  day7();
  day8();
  if (isHatchOpen(9))
  {
    treeDec = true;
    image(treeDecorImg, 555, 507, 148, 248);
    day9();
  }
  if (isHatchOpen(10))
  {
    houseDec = true;
    image(houseLightsImg, 903, 352, 281, 126);
    day10();
  }

  day12();
  day13();
  day14();
  day15();
  day16();
  day17();
  day18();
  day19();
  day21();
  day22();

  if (isHatchOpen(24))
  {
    day24();
  }

  ////////////////////////////////////////////////
  // Do hatches.
  ////////////////////////////////////////////////
  //day 1
  if (doHatch(1, 100, 100, _width, _height))
  {
    numOfDrops = 10;
    _snow = new Snow[numOfDrops];
    for (int i = 0; i < _snow.length; i++)
    {
      _snow[i] = new Snow();
    }
    snowB = true;
  }

  //day2
  if (doHatch(2, 300, 100, _width, _height))
  {
    numOfDrops = 300;
    _snow = new Snow[numOfDrops];
    for (int i = 0; i < _snow.length; i++)
    {
      _snow[i] = new Snow();
    }
    snowMore = true;
    snowB = false;
  }

  //day 3
  if (doHatch(3, 500, 100, _width, _height))
  {
  }
  if (doHatch(4, 700, 100, _width, _height))
  {
    numOfDrops = 10;
    _snow = new Snow[numOfDrops];
    for (int i = 0; i < _snow.length; i++)
    {
      _snow[i] = new Snow();
    }
    snowB = true;
  }
  doHatch(5, 900, 100, _width, _height);
  doHatch(6, 1100, 100, _width, _height);
  if (doHatch(7, 1300, 100, _width, _height))
  {
    numOfDrops = 300;
    _snow = new Snow[numOfDrops];
    for (int i = 0; i < _snow.length; i++)
    {
      _snow[i] = new Snow();
    }
    snowMore = true;
    snowB = false;
  }
  doHatch(8, 1500, 100, _width, _height);
  doHatch(9, 1700, 100, _width, _height);
  doHatch(10, 100, 200, _width, _height);
  doHatch(11, 300, 200, _width, _height);
  if (doHatch(12, 500, 200, _width, _height))
  {
    showSnow = true;
    iniSnow = timer;
  }
  doHatch(13, 700, 200, _width, _height);
  if (doHatch(14, 900, 200, _width, _height))
  {
    smoke1 = true;
  }
  doHatch(15, 1100, 200, _width, _height);
  doHatch(16, 1300, 200, _width, _height);
  doHatch(17, 1500, 200, _width, _height);
  doHatch(18, 1700, 200, _width, _height);
  doHatch(19, 500, 300, _width, _height);
  doHatch(20, 700, 300, _width, _height);
  doHatch(21, 900, 300, _width, _height);
  doHatch(22, 1100, 300, _width, _height);
  doHatch(23, 1300, 300, _width, _height);
  doHatch(24, 900, 400, _width, _height);

  updateSparkelsAndMagic();
  drawSparkelsAndMagic();


  // Reset mouse.
  mouseIsClicked = false;
}

// Draw the hatch and check if mouse clicked on it.
boolean doHatch(int hatchNumber, int x, int y, int _width, int _height)
{
  // If hatch is open hide hatch.
  if (hatchOpen[hatchNumber - 1])
  {
    return false;
  }

  fill(255);
  textSize(20);
  text(hatchNumber, x + (_width / 2-10), y + (_height / 2 + 10));
  strokeWeight(4);
  stroke(255, 110);
  noFill();
  rect(x, y, _width, _height, 5);
  noStroke();
  boolean openHatch = canOpenHatch[hatchNumber - 1] && ((doAttractionMode && (hatchNumber <= d)) || (mouseIsClicked && grid(x, y, _width, _height))); 
  if (openHatch)
  {
    createSparkelsAndMagic(x + (_width / 2), y + (_height / 2), 50);
    hatchOpen[hatchNumber - 1] = true;
  }
  return openHatch;
}

boolean isHatchOpen(int hatchNumber)
{
  return hatchOpen[hatchNumber - 1];
}

void mouseClicked()
{
  mouseIsClicked = true;
}