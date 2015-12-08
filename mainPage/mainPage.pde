PImage backGroundImage;
int rainColor = 255;
int numOfDrops = 100;
Snow[] _snow;
boolean snowMore = false;

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

// smoke variables 
int m2;
//snowman
PImage snowman1;
PImage snowman2;
boolean showSnow = false;
int iniSnow = timer;
boolean open = false; //Open hatch or

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
  size(1920, 1080, P2D);
  backGroundImage = loadImage("background.png");
  santa = loadImage("santa.png");
  moon =   loadImage("moon.png");
  snowman1 = loadImage("snowman1.2.png");
  snowman2 = loadImage("snowman2.1.png");
  santawithreindeers = loadImage("santawithreindeers.png");
}


void draw()
{
  timer = millis();
  m2 = millis();
  image(backGroundImage, 0, 0, width, height);
  moon();

  Date(/*8*/); //Lägg ALLA luckor inom denna
  if (open == true) {
    println("OMG it's already");
    println(y+" "+m+" "+d); //insert function here
    println("I gotta get some presents!!!");
  } else {

    text("Don't open this yet", 50, 50); //Nån kul effekt ifall man inte kan öppna den här luckan
  }

  println(timer);
  tint(255, 150);
  noTint();
  santaWalking();
  noStroke();


  // Stjärnor
  _createStars();
  //day 1
  day1();
  day2();
  day3();
  day4();

  ////////////////////////////////////////////////
  // Do hatches.
  ////////////////////////////////////////////////
  //day 1
  if (doHatch(1, 250, 950, _width, _height))
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
  if (doHatch(2, 100, 920, _width, _height))
  {
    smoke1 = true;
  }

  //day 3
  if (doHatch(3, 100, 100, _width, _height))
  {
    showSnow = true;
    iniSnow = timer;
  }
  if (doHatch(4, 300, 500, _width, _height))
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

  smooth();

  // Reset mouse.
  mouseIsClicked = false;
}

// Draw the hatch and check if mouse clicked on it.
boolean doHatch(int hatchNumber, int x, int y, int _width, int _height)
{
  fill(255);
  text(hatchNumber, x + (_width / 2), y + (_height / 2));
  stroke(255);
  noFill();
  rect(x, y, _width, _height);
  noStroke();
  return mouseIsClicked && grid(x, y, _width, _height);
}

void mouseClicked()
{
  mouseIsClicked = true;
}