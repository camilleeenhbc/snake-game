
%-----------------------------GAMEBOARD_02--------------------------------%

% This program create a GameBoard function to initilize the game board for 
% the snake game

%-----------------------------UPDATES-------------------------------------%
% Update 1: Now the game board function has the message box to display and 
% explain rules for the player and further comments were added to better 
% clarify the codes.

%-------------------------------------------------------------------------%

function GameBoard_02()

%Define global variales for this function
global axes1;
global boardR boardG boardB;
global snake_x snake_y;

% Initilize the game board
boardR = zeros(50,50);
boardG = zeros(50,50);
boardB = zeros(50,50);

% Create the snake
snake_x = [25 25 25 25 25 25 25 25 25];
snake_y = [30 31 32 33 34 35 36 37 38];
updateSnake_01(snake_x,snake_y);

% Generate food for snake
foodGenerate_01();

% Display the board
imshow(uint8(cat(3,boardR,boardG,boardB)),'Parent',axes1);

% ADD RULE FOR THE PLAYER
% Explain the rule for player
rule = msgbox("All you have to do is maneuver the snake head on first into the " + ...
    "food and avoid the snake coming into contact with itself","Rule","help");
uiwait(rule); % wait for the player to read the rule

end

