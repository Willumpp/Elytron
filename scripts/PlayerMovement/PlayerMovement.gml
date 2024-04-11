var hspd = hspeed;
var vspd = vspeed;

#region // ----Horizontal Movement----
if ((KeyRightScript() or KeyLeftScript())) {
	hCondition = 0;

	if (KeyLeftScript()) { hCondition -= 1; }
	if (KeyRightScript()) { hCondition += 1; }
	var mxHSpd = playerSpeed*hCondition;
	
	//Accelerate
	if ((hCondition == -1 and hspd > mxHSpd) or (hCondition == 1 and  hspd < mxHSpd))  { hspd += acceleration * hCondition; }
}
else { 
	//Deccelerate
	if ((hCondition == -1 and hspd < 0) or (hCondition == 1 and hspd > 0)) { hspd -= decceleration * hCondition; }
	else { hspd = 0; }
}

if (hCondition == 0) { hspd -= decceleration * sign(hspd); }
#endregion

#region // ----Vertial Movement----
if (KeyUpScript() or KeyDownScript()) {
	vCondition = 0;

	if (KeyUpScript()) { vCondition -= 1; }
	if (KeyDownScript()) { vCondition += 1; }
	var mxVSpd = playerSpeed*vCondition;
	
	//Accelerate
	if ((vCondition == -1 and vspd > mxVSpd) or (vCondition == 1 and vspd < mxVSpd))  { vspd += acceleration * vCondition; }
}
else { 
	//Deccelerate
	if ((vCondition == -1 and vspd < 0) or (vCondition == 1 and vspd > 0)) { vspd -= decceleration * vCondition; }
	else { vspd = 0; }
}

if (vCondition == 0) { vspd -= decceleration * sign(vspd); }
#endregion

//Update speeds
hspeed = hspd;
vspeed = vspd;