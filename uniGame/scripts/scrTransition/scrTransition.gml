//Script to run the Transitions

global.midTransition = false;
global.roomTarget = -1;


//places the sequences in the room
function TransitionPlaceSequence(_type)
{
	if (layer_exists("transition")) layer_destroy("transition");
	var _lay = layer_create(-9999, "transition");
	layer_sequence_create(_lay, 0, 0, _type);
}


//called when going from one room to another using any combo of sequences
function TransitionStart(_roomTarget, _typeOut, _typeIn)
{
	if (!global.midTransition)
	{
		global.midTransition = true;
		global.roomTarget = _roomTarget;
		TransitionPlaceSequence(_typeOut);
		layer_set_target_room(_roomTarget);
		TransitionPlaceSequence(_typeIn);
		layer_reset_target_room();
		return true;
	}
	else return false;
}


//called at end of "out" transition
function TransitionChangeRoom()
{
	room_goto(global.roomTarget);
}


//called at end of "in" transition
function TransitionFinished()
{
	layer_sequence_destroy(self.elementID);
	global.midTransition = false;
}
