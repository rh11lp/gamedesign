/// @description Insert description here
// You can write your code in this editor
audio_play_sound(gameplay_track, 1, true);
global.seeds = 0;
global.conversation = 0;
global.dontWander = 0;

//this object should be used for interactions
global.npcVar = obj_mother;

numMonsters = 0;
maxMonsters = 3;
global.spawnPhase = 0;

//detect if currently in a conversation
global.inConvo = 0;

//mother conversation index. move this along to move through conversations
global.MCI = 0;

/*AVAILABLE GAME STATES
	0 - BEGINNING TO FIRST CHECK IN WITH MOTHER
	1 - SECOND CHECK IN WITH MOTHER
	2 - AMBUSH
	9 - DON'T WANDER OFF -- IF THE GAME_STATE IS EVER CHANGED TO 9, SAVE THE ORIGINAL GAME_STATE FIRST, AND AT THE
		END OF THE CONVERSATION, RETURN TO THE ORIGINAL GAME_STATE
*/
global.game_state = 0;

global.inCombat = false;
global.numEnemy = 0;


//STATE 0 - BEGIN
MotherConversation[0, 0] = "Oh? What have you found there?";
MotherConversation[0, 1] = "That is a seed, child. It can\nprobably be of use to you.";
MotherConversation[0, 2] = "Hold on to it until then.\nYou will know when to use them.";
MotherConversation[0, 3] = "Come, we must continue our journey.";

//STATE 1 - READY TO GO
MotherConversation[1, 0] = "Are you ready? The path becomes\ndangerous from here on out.";
MotherConversation[1, 1] = "Good. Try to stay close.";

MotherConversation[2, 0] = "Ah! An ambush!";

MotherConversation[3, 0] = "Daughter, that was very brave of you.";
MotherConversation[3, 1] = "Thank you for helping.";
MotherConversation[3, 2] = "Now come, we must continue.";

//STATE 2 - DONT WANDER 
MotherConversation[9, 0] = "My daughter, please do not leave my sight.";
MotherConversation[9, 1] = "Don't wander too far.";
MotherConversation[9, 2] = "Stay nearby so that I can protect you.";



global.MotherConvoLength = array_length_2d(MotherConversation, global.game_state); 

global.inCombat = false;
global.numEnemy = 0;
