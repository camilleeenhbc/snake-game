
%----------------------------PLAYGAME_01----------------------------------%
% This program create a playGame function to control the snake's
% movement and play the Snake game

% This first stage is to create the moving snake

%-------------------------------------------------------------------------%

function playGame_01()
global axes1;
global boardR boardG boardB;
global snake_x snake_y;
global food;

while (1) %loop forever
  imshow(uint8(cat(3,boardR,boardG,boardB)),'Parent',axes1);
  len = length(snake_x);
  pause(0.1);

  % Moving snake
  if (move_status) % Check if there is movement
      for i=1:len
          boardR(snake_x(i),snake_y(i)) = 0;
          boardG(snake_x(i),snake_y(i)) = 0;
          boardB(snake_x(i),snake_y(i)) = 0;
      end

      % Check when snake eats the food
      if sum(snake_x==food(1) & snake_y==food(2))==1
          snake_x(2:len+1)=snake_x(1:len);
          snake_y(2:len+1)=snake_y(1:len);
          
          % Generate new target
          foodGenerate_01();

      % Moving snake   
      else
        snake_x(2:len)=snake_x(1:len-1);
        snake_y(2:len)=snake_y(1:len-1);
      end

      % Update snake
      updateSnake_01(snake_x, snake_y);
    end
end