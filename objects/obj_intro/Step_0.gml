/// @description Insert description here
// You can write your code in this editor
countFrame++;

camera_set_view_pos(view_camera[0], xpos, 0);
xpos = min(xpos+1, 0);

if(!fadeout) a = max(a-0.005,0.25); else a = min(a+0.005,1);



//WAIT UNTIL THE FADE FINISHES
if(countFrame > 100){

	l += 0.5;

	print = string_copy(str, 1, l);
	
	//play falling soundeffect
	if(l == 10 && next == 1){
		audio_play_sound(fall, 1,false); 
	}

	//after about 3 seconds worth of time and not at end of array
	if(l>string_length(str)+55 && next < array_length_1d(strings)-1) {

		l = 0;
		next++;
		if(next == array_length_1d(strings)-1){
			holdspace++;
		}
	}

	str = strings[next]
}



if(next==array_length_1d(strings)-1 && countFrame >= 1000){
	fadeout = 1;
	audio_sound_gain(intro_loop, 0, 500);
}


if (a==1 && fadeout==1) {room_goto_next(); audio_stop_sound(intro_loop);}