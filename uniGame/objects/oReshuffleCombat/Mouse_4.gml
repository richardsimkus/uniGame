
global.ownReshuffle = false;
instance_destroy(global.playerHand[0]);
array_shuffle_ext(global.playerHand);
instance_create_layer(427, 176, "playerCard", global.playerHand[0]);
instance_destroy(self);


