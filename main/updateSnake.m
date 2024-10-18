% This program creates a function to set the color for the snake and update
% it based on its alternated coordinates in the main file

%---Update: Using RGB to change the color of the snake 

function updateSnake(snake_x,snake_y)
% Define global variables to be used in this function
global boardR boardG boardB;

  % Color for snake head
  boardR(snake_x(1),snake_y(1))=0;
  boardG(snake_x(1),snake_y(1))=108;
  boardB(snake_x(1),snake_y(1))=212;

  % Color for snake
  for i=2:length(snake_x)
      boardR(snake_x(i),snake_y(i))=136;
      boardG(snake_x(i),snake_y(i))=200;
      boardB(snake_x(i),snake_y(i))=255;
  end
end
