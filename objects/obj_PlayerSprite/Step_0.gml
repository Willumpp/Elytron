/// @description Move to player / Look at cursor

x = obj_Player.x
y = obj_Player.y

//Look towards cursor
image_angle = point_direction(x,y,mouse_x,mouse_y) + playerAngleOffset; 