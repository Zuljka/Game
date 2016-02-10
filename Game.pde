/*game made as a part of a project for OOP ( 2016)
Author: Maria Kazydub
*/

import ddf.minim.*;


//audio
Minim minim; //audio content
AudioPlayer melody; //creating audio file
PImage bg_title; //load an image
PFont welcome_font;
PFont gameOver;


//initial screen is screen 0
int gameScreen = 0;
 

void setup ()
{
  size (700, 700);
  //loaded picture for background
  bg_title = loadImage("StartScreen.png");
  minim = new Minim(this);
  melody = minim.loadFile("main.mp3");
  
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
  //play a sound when game opens
  melody.play();
  background(bg_title);
  welcome_font = loadFont("BankGothicCLtBTRUS-48.vlw");
   stroke(0);
  textFont(welcome_font, 48); 
  text("Welcome", 250, 40);
  textFont(welcome_font, 32);
  text("Click anywhere to start", 160, 80);
}

void gameScreen()
{
  background(0);
   //stop playing a sound once game screen has been selected
  melody.close();
  
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
    
  text("hi:" + mouseX, game_area_x, 60);
  
  //test to call finalScreen ( Game Over)
  if(mouseX > 600)
  {
    finalScreen();
  }
}

void finalScreen()
{
  //code for Game Over goes here  
  background(242, 15, 15);
  welcome_font = loadFont("Cracked-70.vlw");
  textFont(gameOver, 72);
  text("Game Over", 200, 200);
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