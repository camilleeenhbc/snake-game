
%--------------------------PLAYGAME_FINAL---------------------------------%
% This program create a playGame function to control the snake's
% movement and play the Snake game

%-----------------------------UPDATES-------------------------------------%
% Update 1: The moving snake can now go in directions

% Update 2: The function can now check if the game is over using gameOver
% function

% Update 3: Sounds were added when snake eats the food or when game is
% over, shown in gameOver function. Score is also recorded in this version.

%-------------------------------------------------------------------------%

function playGame()
    global axes1 fig;
    global boardR boardG boardB;
    global snake_x snake_y;
    global food;
    global direction; direction = 1;
    global points; points = 0;
    global move_status; move_status = 0;
    global t;
    global score_num;

    %---------------------------MOVING SNAKE------------------------------%

    while (1) %loop forever
        imshow(uint8(cat(3, boardR, boardG, boardB)), 'Parent', axes1);

        len = length(snake_x);
        pause(t);

        % Moving snake
        if (move_status)

            for i = 1:len
                boardR(snake_x(i), snake_y(i)) = 230;
                boardG(snake_x(i), snake_y(i)) = 213;
                boardB(snake_x(i), snake_y(i)) = 204;
            end

            % Check when snake eats the target
            if snake_x(1) == food(1) && snake_y(1) == food(2)
                snake_x(2:len + 1) = snake_x(1:len);
                snake_y(2:len + 1) = snake_y(1:len);
                
                % Add sound when snake eats food
                [c, d] = audioread('food.wav');
                sound(c, d);

                % Generate new food
                foodGenerate();
                
                % Record and displays score
                points = points + 1;
                score_num.Text = num2str(points);

            % Moving snake
            else
                snake_x(2:len) = snake_x(1:len - 1);
                snake_y(2:len) = snake_y(1:len - 1);
            end

            %-----------------------DIRECTION-----------------------------%

            % Right
            if direction == 1
                if snake_y(1) == 50
                    snake_y(1) = 1;
                else
                    snake_y(1) = snake_y(1) + 1;
                end

            % Up
            elseif direction == 2
                if snake_x(1) == 1
                    snake_x(1) = 50;
                else
                    snake_x(1) = snake_x(1) - 1;
                end

            % Left
            elseif direction == 3
               if snake_y(1) == 1
                    snake_y(1) = 50;
                else
                    snake_y(1) = snake_y(1) - 1;
                end

            % Down
            elseif direction == 4
                if snake_x(1) == 50
                    snake_x(1) = 1;
                else
                    snake_x(1) = snake_x(1) + 1;
                end

            end

            updateSnake(snake_x, snake_y);

            %------------------------GAME OVER----------------------------%

            % Check if the game is over using the final updated gameOver
            % function
            if (gameOver())
                break;
            end

        end

    end

end
