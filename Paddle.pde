class Paddle
{
  //fields
  int paddle_width;
  int paddle_height;
  int paddle_x;
  int paddle_y;
  float move;
  
  Paddle()
  {
    paddle_width = 100;
    paddle_height = 20;
    paddle_x = width/2 - paddle_width/2;
    paddle_y = 650;
  }
  
  void display()
  {
    rect(paddle_x, paddle_y, paddle_width, paddle_y);
    fill(250, 232, 63);
  }    
  
  void update()
  {
    move = mouseX;
  }
}