%----------------------------SNAKEGAME_02---------------------------------%

% This program create a function snakeGame_01 to run the snake game

%-----------------------------UPDATES-------------------------------------%

% Update 1: Use the GameBoard_01 function to display the gameboard to the
% figure

% Update 2: Create callback function for the push buttons

%-------------------------------------------------------------------------%
function snakeGame_03()

    % Define axes1 as global variable to be used in playGame function
    global axes1;
    
    % Create figure
    fig = uifigure('Name','Snake Game','Position',[50 150 630 500], ...
        'KeyPressFcn',@KeyPressFcn);
    
    % Create the axes
    axes1 = uiaxes('Parent', fig, 'Position', [10 -20 480 480],'Visible','off');
    
    % Start Game Button
    startGame = uicontrol("Parent",fig,"Style","pushbutton","String","Start game", ...
        "Position",[474 301 100 45],'Callback',@start_game_Callback);
    
    % End game Button
    endGame = uicontrol("Parent",fig,"Style","pushbutton","String","End game", ...
        "Position",[474 102 100 45],'Callback',@end_game_Callback);
    
    % Pause button
    pause = uicontrol("Parent",fig,"Style","pushbutton","String","Pause", ...
        "Position",[500 208 45 33],'Callback',@pause_Callback);
    
    % Up button
    up = uicontrol("Parent",fig,"Style","pushbutton","String","Up", ...
        "Position",[500 253 45 33],'Callback',@up_Callback);
    
    % Down button
    down = uicontrol("Parent",fig,"Style","pushbutton","String","Down", ...
        "Position",[500 161 45 33],'Callback',@down_Callback);
    
    % Left button
    left = uicontrol("Parent",fig,"Style","pushbutton","String","Left", ...
        "Position",[447 208 45 33],'Callback',@left_Callback);
    
    % Right button
    right = uicontrol("Parent",fig,"Style","pushbutton","String","Right", ...
        "Position",[552 208 45 33],'Callback',@right_Callback);
    
    % Score label
    score = uilabel('Parent',fig,'Position',[477 383 102 24],'Text','Score', ...
        'WordWrap','on','FontSize',15);
    
    % Score display label
    score_num = uilabel('Parent',fig,'Position',[527 384 49 23], ...
        'BackgroundColor',[1 1 1],'WordWrap','on','HorizontalAlignment','center', ...
        'VerticalAlignment','center','FontSize',15);
    
    % Set the score display's text to be 0
    score_num.Text = '0';
    
    
    % Initilize the Game Board and explain the rule
    GameBoard_01();
    
    %----------------------CALLBACK FUNCTIONS-----------------------------%
    
        % Start Game Callback
        function start_game_Callback(src, event)
            playGame_03();
        end
    
        % End game callback
        function end_game_Callback(src, event)
            close;
        end
    
        % Pause push button callback
        function pause_Callback(src, event)
            global move_status;
            move_status = 0;
        end
        
        % Right push button callback
        function right_Callback(src, event)
            global direction move_status;
            direction = 1;
            move_status = 1;
        end
        
        % Left push button callback
        function left_Callback(src, event)
            global direction move_status;
            direction = 3;
            move_status = 1;
        end
        
        % Down push button callback
        function down_Callback(src, event)
            global direction move_status;
            direction = 4;
            move_status = 1;
        end
        
        % Up push button callback
        function up_Callback(src, event)
            global direction move_status;
            direction = 2;
            move_status = 1;
        end

end



