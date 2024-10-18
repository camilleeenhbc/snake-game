
%----------------------------PLAYGAME_02----------------------------------%
% This program create a playGame function to control the snake's
% movement and play the Snake game

% This first stage is to create the moving snake

%-----------------------------UPDATES-------------------------------------%
% Update 1: The moving snake can now go in direction.

%-------------------------------------------------------------------------%

function playGame_02()
    global axes1;
    global boardR boardG boardB;
    global snake_x snake_y;
    global food;
    global direction; direction = 1;
    global points; points = 0;
    global move_status; move_status = 0;
    global t;
    global score_num;

    %-------------------------MOVING SNAKE--------------------------------%

    while (1) %loop forever
        imshow(uint8(cat(3, boardR, boardG, boardB)), 'Parent', axes1);
        len = length(snake_x);
        pause(t);

        % Moving snake
        if (move_status) % Check if there is movement

            for i = 1:len
                boardR(snake_x(i), snake_y(i)) = 0;
                boardG(snake_x(i), snake_y(i)) = 0;
                boardB(snake_x(i), snake_y(i)) = 0;
            end

            % Check when snake eats the food
            if sum(snake_x == food(1) & snake_y == food(2)) == 1
                snake_x(2:len + 1) = snake_x(1:len);
                snake_y(2:len + 1) = snake_y(1:len);

                % Generate new target
                foodGenerate_01();

            % Moving snake
            else
                snake_x(2:len) = snake_x(1:len - 1);
                snake_y(2:len) = snake_y(1:len - 1);
            end

            %------------------------DIRECTION----------------------------%

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


            % Update snake
            updateSnake_01(snake_x, snake_y);
        end

    end

end
