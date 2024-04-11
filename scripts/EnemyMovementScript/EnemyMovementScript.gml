//var moveSpeed = argument0;

//Collision
if (place_meeting(x+enemySpeed,y,Collidables)) {
	return 0;
}
else {
	return enemySpeed;
}