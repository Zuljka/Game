class Ball
{
  float ball_x;
  float ball_y;
  int ball_size;
  int ball_speed_x;
  int ball_speed_y;
  int ball_direction; 
  
  Ball()
  {
    ball_x = width/2;
    ball_y = 400;
    ball_size =10;
    ball_speed_x = 1;
    ball_speed_y = 1;
    ball_direction = 3;
  }

  void display()
  {
    fill(255);
    ellipse(ball_x, ball_y, ball_size, ball_size);
  }
  
  void update()
  {
    ball_x += ball_direction;
    ball_y += ball_direction;
    
    if(ball_x >= width || ball_x <= 0)
    {
      ball_direction *= -1;
    }
    
    
    if (ball_y >= height)
    {
      ball_direction *= -1;
    }
  }
}