
%----------------------------GAMEOVER_01----------------------------------%

% This program create a function that checks if the game is over when snake
% bites itself and return a boolean variable 

%-------------------------------------------------------------------------%

function isGameOver = gameOver_01()

    % Define global variables to be used in this function
    global boardR boardG boardB;
    global snake_x snake_y;
    
    % Check if snake bites itself
    if sum(snake_x(2:end) == snake_x(1) & snake_y(2:end) == snake_y(1))

        % Display black board
        boardR(:, :) = 0;
        boardG(:, :) = 0;
        boardB(:, :) = 0;
        imshow(uint8(cat(3, boardR, boardG, boardB)));

        % Display Game Over messagebox 
        gameOvermsg = msgbox('Game Over!');
        
        isGameOver = true;
    else
        isGameOver = false;
    end

end
