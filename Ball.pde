class Ball
{
  float ball_x;
  float ball_y;
  int ball_size;
  float ball_speed_x;
  float ball_speed_y;
  float ball_direction_x;
  float ball_direction_y;

  Ball()
  {
    ball_x = width/2;
    ball_y = 400;
    ball_size =10;
    ball_speed_x = 1;
    ball_speed_y = 1;
    ball_direction_x = - 3;
    ball_direction_y = - 3;
  }

  void display()
  {
    fill(255);
    ellipse(ball_x, ball_y, ball_size, ball_size);
  }

  void update()
  {
    ball_x += ball_direction_x;
    ball_y += ball_direction_y;

    if (ball_x > width || ball_x < 0)
    {
      ball_direction_x = - ball_direction_x;
    }


    if (ball_y >= height || ball_y < 0)
    {
      ball_direction_y = - ball_direction_y;
    }
  }
}