/// @description Shop purchase

if (ClickScript() and obj_Player.gold - 100 >= 0) { //If player has enough gold and clicked
	obj_Player.gold -= 100; //Take gold
	audio_play_sound(snd_ShopBuy,10,false);
	//Make purchase
	instance_create_depth(x,y,-1,obj_GunTurretBase); //Create turret
	ActivateShopScript(false); //Disable shop
}