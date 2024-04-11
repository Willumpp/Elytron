/// @description BeetleT1 Step

if (disable == false) {
	//Movement
	hspeed = EnemyMovementScript();

	//Health
	EnemyHealthScript(3);
	
	//Attack player
	EnemyPlayerAttackScript(3);
}