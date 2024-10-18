
%--------------------------GAMEBOARD_FINAL--------------------------------%

% This program create a GameBoard function to initilize the game board for 
% the snake game

%-----------------------------UPDATES-------------------------------------%
% Update 1: Now the game board function has the message box to display and 
% explain rules for the player and further comments were added to better 
% clarify the codes.

% Update 2: The game board is now displayed in different color using RGB

%-------------------------------------------------------------------------%

function GameBoard()

% Define global variales for this function
global axes1;
global boardR boardG boardB;
global snake_x snake_y;

% BOARD
% Initilize the game board
% Using RGB triplets to change to color as personal preference
boardR = 230*ones(50,50);
boardG = 213*ones(50,50);
boardB = 204*ones(50,50);

% SNAKE
% Define the snake's size and length
snake_x = [25 25 25 25 25 25 25 25 25];
snake_y = [30 31 32 33 34 35 36 37 38];
% Use updateSnake function to apply changes
updateSnake(snake_x,snake_y);

% FOOD
% Generate food for snake by food function
foodGenerate();

% Display the game board
imshow(uint8(cat(3,boardR,boardG,boardB)),'Parent',axes1);

% Check if the game is over 
if (gameOver)
    return;
end

end

