
%----------------------------GAMEBOARD_01---------------------------------%

% This program create a GameBoard function to initilize the game board for 
% the snake game

%-------------------------------------------------------------------------%

function GameBoard_01()
global axes1;
global boardR boardG boardB;
global snake_x snake_y;

% Board
boardR = zeros(50,50);
boardG = zeros(50,50);
boardB = zeros(50,50);

% Snake
snake_x = [25 25 25 25 25 25 25 25 25];
snake_y = [30 31 32 33 34 35 36 37 38];
updateSnake_01(snake_x,snake_y);

% Food
foodGenerate_01();

% Display the game board
imshow(uint8(cat(3,boardR,boardG,boardB)),'Parent',axes1);

end

