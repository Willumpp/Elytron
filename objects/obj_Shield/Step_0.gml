/// @description Shield step
// Destroy self when health reaches 0

if (obj_ShieldHealthText.shieldHealth <= 0 or global.hardMode == true) {
	obj_ShieldHealthText.shieldHealth = 0;
	audio_play_sound(snd_ShieldBreak,10,false);
	instance_destroy(id);
}