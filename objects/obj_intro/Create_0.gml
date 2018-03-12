/// @description Insert description here
// You can write your code in this editor
xpos = -640; //approaching 0 moves camera to the left
a = 1; //alpha transparency of fadeout/fadein
fadeout = 0; //bool while 0 fadein, while 1 fadeout (ie when a and fadeout == 1, load next room)

str = ""; //text of narration
print = ""; //draw one character at a time
l = 0; //str position to put in print
next = 0; //which string is the next

holdspace = 0;

strings[0] = "Mother, wait up--Ah--Aaah!";
strings[1] = "Ouch...";

strings[2] = "You should try to be more careful, Daughter.";
strings[3] = "Come. We must hurry.";

strings[4] = "...";
//strings[4] = "Mother is so strong and brave.";

audio_play_sound(intro_loop, 1, true);

countFrame = 0;




