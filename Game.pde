/*game made as a part of a project for OOP ( 2016)
Author: Maria Kazydub
*/


 
void setup ()
{
  size (900, 700);
  startGame();
}



void draw()
{

  background(0);
  
   float game_area_x = width - width * 0.1f;
   float game_area_y = height - height * 0.1f;
  //draw game field
  fill(252, 171, 182);
  rect (5, 5, game_area_x, game_area_y);
  //draw paddle
  fill(222, 47, 70);
  rect (mouseX, 400, 60, 5);
  text("hi:" + mouseX, game_area_x + 10, 60);
}

void startGame()
{
  text("Welcome", 400, 400);
}
