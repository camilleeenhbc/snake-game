
%-------------------------FOODGENERATE_FINAL------------------------------%

% This program create a function foodGenerate_01 that generate the food for
% the snake

%-----------------------------UPDATES-------------------------------------%

% Update: Now the food function can display the food color by using RGB

%-------------------------------------------------------------------------%

function [food] = foodGenerate()
    global food snake_x snake_y boardG boardR boardB;
    
    % Food loops
    while(1)
        % Generate random food coordinate
        food = [(randi([1 50]));randi([1 50])];
        
        % Check if the snake eats the food
        if sum(snake_x==food(1) & snake_y==food(2))==0
            break;
        end
    end
    
    % Define the food color by RGB
    boardR(food(1),food(2))=164;
    boardG(food(1),food(2))=0;
    boardB(food(1),food(2))=0;

end


