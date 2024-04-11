/// @description Middle wall step

if (wallHealth >= wallFullHealth * 0.8) { image_index = 0; }
else if (wallHealth < wallFullHealth * 0.8 and wallHealth >= wallFullHealth * 0.6) { image_index = 1; }
else if (wallHealth < wallFullHealth * 0.6 and wallHealth >= wallFullHealth * 0.4) { image_index = 2; }
else if (wallHealth < wallFullHealth * 0.4 and wallHealth >= wallFullHealth * 0.2) { image_index = 3; }
else if (wallHealth > wallFullHealth * 0) { image_index = 4; }
else if (wallHealth <= 0) {
	instance_destroy(id); //Destroy when health reaches 0
}
