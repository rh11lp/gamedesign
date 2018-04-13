/// @description Insert description here
// You can write your code in this editor
if(claimed){
	instance_destroy();
}
if(!global.skippingConvo){
	global.skippingConvo = true;
	global.conversationIndex++;
}