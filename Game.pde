/*game made as a part of a project for OOP ( 2016)
Author: Maria Kazydub
*/
 
void setup ()
{
  size (900, 700);
  startGame();
    //game does not start while key is not pressed
  //any key will start the game 
  if (!keyPressed) return;
}

char letter = 'a'; // for new game

void draw()
{

 gameScreen();

}

void startGame()
{
  text("Welcome", 400, 400);
}


void initScreen()
{
  //code of initial screen here
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

void keyPressed()
{
  
  if(key =='n')
  {
    gameScreen();
   }
}