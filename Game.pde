/*game made as a part of a project for OOP ( 2016)
Author: Maria Kazydub
*/
 
PImage bg_title; 
//initial screen is screen 0 
int gameScreen = 0;
 

void setup ()
{
  size (700, 700);
  //loaded picture for background
  bg_title = loadImage("StartScreen.png");
}

void draw()
{
  if(gameScreen == 0)
  {
    initScreen();
  }
  else if(gameScreen == 1)
  {
    gameScreen();
  }
  else if(gameScreen == 2)
  {
    finalScreen();
  }
}

//start screen asking to press a mouse to start a game
void initScreen()
{
  text("Welcome", 350, 40);
  background(bg_title);
}

void gameScreen()
{
  background(0);
  
   float game_area_x = width - width * 0.1f;
   float game_area_y = height - height * 0.1f;
  //draw game field
  fill(252, 171, 182);
  rect (5, 5, game_area_x, game_area_y);
  //draw paddle
  float paddle_size = 80;
  float paddle_centre = 80/2;
  fill(222, 47, 70);
   
    rect (mouseX, 600, paddle_size, 5);
    
  text("hi:" + mouseX, game_area_x + 10, 60);
}

void finalScreen()
{
  //code for Game Over goes here
}



public void mousePressed()
{
  if(gameScreen == 0)
  {
    StartGame();
  }
}

void StartGame()
{
  gameScreen=1;
}