//function takes paramaters for the arrays you're moving a card from, and to, and removes from original array

function addCard(destinationArray, originalArray){
	
	if(array_length(originalArray) > 0){ //checks original array has cards in it
		array_push(destinationArray,originalArray[0]) //inserts card at the back of the deck
		array_delete(originalArray, 0, 1); //removes card from the original array
	}
	else{
		show_debug_message("Original array has no cards left in it. Stop it."); //stop trying to add cards >:(
	}
}