/// @description BeetleT1 Step

if (disable == false) {
	//Movement
	hspeed = EnemyMovementScript();

	//Health
	EnemyHealthScript(2);
	
	//Attack player
	EnemyPlayerAttackScript(2);
}