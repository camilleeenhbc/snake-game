function level()
    global t points fig;
    global boardR boardG boardB;
    global snake_x snake_y;
    global points;
    global axes1;

    % Explain the rule for player
    rule = msgbox("All you have to do is maneuver the snake head on first into the " + ...
        "food and avoid the snake coming into contact with itself","Rule","help");
    uiwait(rule); % wait for the player to read the rule

    % Print out message box
    choice = uiconfirm(fig, 'Which level you want to choose?', ...
            'Level', 'Options', {'Hard', 'Medium', 'Easy'}, ...
            'DefaultOption', 3);

    % Set the speed of the snake for each level
    if choice == "Hard"
        t = 0.08;
    elseif choice == "Medium"
        t = 0.1;
    elseif choice == "Easy"
        t = 0.2;
    end

    switch (choice)
        case 'Easy'
            if points == 5
                t = 0.15;
            elseif points == 10
                t = 0.1;
            elseif points == 15
                t = 0.05;
            end

        case 'Medium'
            if points == 5
                t = 0.08;
            elseif points == 10
                t = 0.05;
            elseif points == 15
                t = 0.03;
            end

        case 'Hard'
            if points == 5
                t = 0.05;
            elseif points == 10
                t = 0.03;
            elseif points == 15
                t = 0.02;
            end

    end

    % Check if the game is over 
    if (gameOver)
        return;
    end

end
