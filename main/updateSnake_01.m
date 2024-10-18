% This program creates a function to set the color for the snake and update
% it based on its alternated coordinates in the main file

function updateSnake_01(snake_x,snake_y)
% Define global variables to be used in this function
global boardR boardG boardB;

  % Snake head
  boardR(snake_x(1),snake_y(1))=0;
  boardG(snake_x(1),snake_y(1))=150; % dark green color
  boardB(snake_x(1),snake_y(1))=0;

  % Snake
  for i=2:length(snake_x)
      boardR(snake_x(i),snake_y(i))=0;
      boardG(snake_x(i),snake_y(i))=255; % green color
      boardB(snake_x(i),snake_y(i))=0;
  end
end
