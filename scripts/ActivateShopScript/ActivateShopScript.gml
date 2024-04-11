var enabled = argument0;

if (enabled == true) { //Enable shop
	obj_ShopBackground.visible = true;
	obj_ShopButton.shopActive = true;
}
if (enabled == false) { //Disable shop
	obj_ShopBackground.visible = false;
	obj_ShopButton.shopActive = false;
}