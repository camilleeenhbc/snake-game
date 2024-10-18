% This program creates a welcoming function to welcome the users and lead
% to the snake game

function [] = welcoming()

% Display "Snake" in ASCII art
disp("  ____              _ " +newline + ...              
     " / ___| _ __   __ _| | _____" + newline +...
     " \___ \| '_ \ / _` | |/ / _ \" + newline +...
     "  ___) | | | | (_| |   <  __/ " +newline +...
     " |____/|_| |_|\__,_|_|\_\___|"+newline);


% Add audio effect
[a,b]=audioread('welcome.wav');
sound(a,b)

% Pause 3 seconds before the next step
pause(3);

% Prompt the user for their name
name = input("Please enter your name: ",'s');

% Print the welcoming with player's name
fprintf("Hi %s, welcome to Snake game!\n",name);

% Print out press enter if the player is ready to start the game
pause(2);
start = input("Please press enter to start the game");

end