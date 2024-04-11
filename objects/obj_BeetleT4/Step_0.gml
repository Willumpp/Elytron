/// @description BeetleT1 Step

if (disable == false) {
	//Movement
	hspeed = EnemyMovementScript();

	//Health
	EnemyHealthScript(4);
	
	//Attack player
	EnemyPlayerAttackScript(4);
}