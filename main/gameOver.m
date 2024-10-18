
%--------------------------GAMEOVER_FINAL---------------------------------%

% This program create a function that checks if the game is over when snake
% bites itself and return a boolean variable 

%-----------------------------UPDATES-------------------------------------%
% Update: The messagebox that displays Game Over is now added more value
%  as well as can display the final score of the player. Losing sound is 
%  also added to make the game more playful.

%-------------------------------------------------------------------------%

function isGameOver = gameOver()

    % Define global variables to be used in this function
    global boardR boardG boardB;
    global snake_x snake_y;
    global points;
    global axes1;
    
    % Check if snake bites itself
    if sum(snake_x(2:end) == snake_x(1) & snake_y(2:end) == snake_y(1))
        % Create losing sound
        [a, b] = audioread('Loser.wav');
        sound(a, b);
        pause(3);

        % Display black board
        boardR(:, :) = 0;
        boardG(:, :) = 0;
        boardB(:, :) = 0;
        imshow(uint8(cat(3, boardR, boardG, boardB)),'Parent',axes1);

        % Display Game Over messagebox and show the final score
        gameOvermsg = msgbox(['Game Over! Your Score: ', num2str(points)], ...
            'Game over','error');

        isGameOver = true;
    else
        isGameOver = false;
    end

end
