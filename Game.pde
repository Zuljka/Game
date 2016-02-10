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
  
  paddle = new Paddle();
  ball = new Ball();
  
}
Paddle paddle; //calling the instance of paddle class
Ball ball; // calling instance of class Ball

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
  textFont(welcome_font, 48); 
  fill(255);
  text("Welcome", 250, 40);
  textFont(welcome_font, 32);
  text("Click anywhere to start", 160, 80);
}

void gameScreen()
{
  background(0);
   //stop playing a sound once game screen has been selected
  melody.close();
  
   float game_area_x = width;
   float game_area_y = height;
  //draw game field
  fill(203, 194, 109);
  rect (0, 0, game_area_x, game_area_y);
  //draw paddle
  float paddle_size = 80;
  float paddle_centre = 80/2;
  fill(222, 47, 70);
   
    rect (mouseX, 600, paddle_size, 5);
  
  //paddle.display();
  //paddle.update();
    //test to call finalScreen ( Game Over)
    
   ball.display();
   ball.update();

  if(mouseX > 600)
  {
    gameScreen = 2; //calling a finla Screen
  }
  
  
}

void finalScreen()
{
  //code for Game Over goes here  
  background(0);
  gameOver = loadFont("Cracked-70.vlw");
  
  fill(242, 15, 15);
  textFont(gameOver, 150);
  text("Game Over", 130, 350);
  text(":(", 320, 500);
  
  welcome_font = loadFont("BankGothicCLtBTRUS-48.vlw");
  textFont(welcome_font, 24); 
  fill(255);
  text("Click anywhere to try again", 190, 680);
  
  
 
}



public void mousePressed()
{
  //start game with start screen and continue
  if(gameScreen == 0)
  {
    StartGame();
  }
  
  /*start game again after Game Over without restarting a game
  I decided to start game from initial screen, instead of loading gameScreen
  */
  if(gameScreen == 2)
  {
    gameScreen = 0;
  }
}

void StartGame()
{
  gameScreen=1;
}