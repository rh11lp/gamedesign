/// @description Insert description here
// You can write your code in this editor

xpos = 1156; //approaching 0 moves camera to the left
ypos = 360;
a = 1; //alpha transparency of fadeout/fadein
fadeout = 0; //bool while 0 fadein, while 1 fadeout (ie when a and fadeout == 1, load next room)

str = ""; //text of narration
print = ""; //draw one character at a time
l = 0; //str position to put in print
next = 0; //which string is the next

holdspace = 0;

strings[0] = "Mother, wait up!";
strings[1] = "Aaah!";
strings[2] = "Ouch...";

strings[3] = "You should try to be more careful, Daughter.";
strings[4] = "Come. We must hurry.";

strings[5] = "...";

audio_play_sound(intro_loop, 1, true);
musicGain = 1;

countFrame = 0;

path_start(camera_intro, 2, path_action_stop, 1);




