/// @description Insert description here
// You can write your code in this editor
audio_play_sound(gameplay_track, 1, true);
global.seeds = 0;
global.conversation = 0;
global.npcVar = obj_mother;
global.inConvo = 0;

global.MCI = 0;
MotherConversation = [];

MotherConversation[0] = "Oh? What have you found there?";
MotherConversation[1] = "That is a seed, child. It can\nprobably be of use to you.";
MotherConversation[2] = "Hold on to it until then.\nYou will know when to use them.";
MotherConversation[3] = "Come, we must continue our journey.";
//conversation[0] = "Oh? What have you found there?";
//conversation[0] = "Oh? What have you found there?";
//conversation[0] = "Oh? What have you found there?";
//conversation[0] = "Oh? What have you found there?";
//conversation[0] = "Oh? What have you found there?";
//conversation[0] = "Oh? What have you found there?";
//conversation[0] = "Oh? What have you found there?";
//conversation[0] = "Oh? What have you found there?";

global.MotherConvoLength = array_length_1d(MotherConversation); 


global.game_state = 0;
