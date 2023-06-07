// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function aiPlayTurn(){
	
	stats = ["size_stat", "smarts_stat", "speech_stat", "speed_stat", "strength_stat"];
	
	cardStats = {
		size_stat : 0,
		smarts_stat : 0,
		speech_stat : 0,
		speed_stat : 0,
		strength_stat: 0,
	}
	
	for (stat = 0; stat < array_length(stats); stat++;){
		currentStat = stats[stat];
		variable_struct_set(cardStats,currentStat, variable_instance_get(global.aiHand[0],stats[stat]));
	}
	
	chosenStat = "size_stat";
	
	for  (stat = 0; stat < array_length(stats); stat++;){
		if (cardStats[$ stats[stat]] > cardStats[$ chosenStat]){
		chosenStat = stats[stat];
		show_debug_message("new chosen stat {0}",chosenStat);
		}
		
	}
	
	
	global.aiThinkTimer = room_speed * 2;
	chooseStat(false,chosenStat)
}