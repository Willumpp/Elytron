if ((keyboard_check(vk_space) or mouse_check_button(mb_left)) and place_empty(mouse_x,mouse_y,UIObects) 
	and obj_ShopButton.shopActive == false) { return true; }
else { return false; }