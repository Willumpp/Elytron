/// @description BeetleT1 Step

if (disable == false) {
	//Movement
	hspeed = EnemyMovementScript();

	//Health
	EnemyHealthScript(1);
	
	//Attack player
	EnemyPlayerAttackScript(1);
}