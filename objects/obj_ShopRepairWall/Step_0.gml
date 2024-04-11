/// @description Shop purchase

if (ClickScript() and obj_Player.gold - 100 >= 0) { //If player has enough gold and clicked
	obj_Player.gold -= 100; //Take gold
	audio_play_sound(snd_ShopBuy,10,false);
	//Make purchase
	instance_destroy(obj_MiddleWall);
	instance_create_depth(-50,0,-10,obj_MiddleWall);
	CreateMiddleWall();
	image_index = 1; //Change sprite
}