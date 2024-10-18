
%--------------------------FOODGENERATE_01--------------------------------%

% This program create a function foodGenerate_01 that generate the food for
% the snake

%-------------------------------------------------------------------------%

function foodGenerate_01()
    global food snake_x snake_y boardG boardR boardB;
    
    % Game loops
    while(1)
    
        % Define position of the food by randmizing from 1 to 50 coordinate 
        % of the board game
        food = [(randi([1 50]));randi([1 50])];
        
        % Check if the snake eats the food
        if sum(snake_x(1)==food(1) & snake_y(1)==food(2))==0
            break;
        end
    end
    
    % Define the food color by RGB
    boardR(food(1),food(2))=255;
    boardG(food(1),food(2))=0;
    boardB(food(1),food(2))=0;

end