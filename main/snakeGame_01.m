
%----------------------------SNAKEGAME_01---------------------------------%

% This program create a function snakeGame_01 to run the snake game

% This first version is to create the figure, axes and all push button for
% the game. Score label is also displayed

%-------------------------------------------------------------------------%

function snakeGame_01()

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

end
