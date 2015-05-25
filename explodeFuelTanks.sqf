private ["_center", "_nearby", "_nearby2", "_nearby3", "_nearby4", "_nearby5", "_nearby6", "_nearby7", "_nearby8", "_rnd"];

_center = getArray(configFile >> "CfgWorlds" >> worldName >> "centerPosition");

_nearby = _center nearObjects ["Land_Ind_TankSmall", 20000];
_nearby2 = _center nearObjects ["Land_Ind_TankSmall2", 20000];
_nearby3 = _center nearObjects ["Land_Ind_TankSmall2_EP1", 20000];
_nearby4 = _center nearObjects ["Land_A_FuelStation_Feed", 20000];
_nearby5 = _center nearObjects ["Land_fuel_tank_stair", 20000];
_nearby6 = _center nearObjects ["Land_fuelstation_army", 20000];
_nearby7 = _center nearObjects ["Land_fuelstation", 20000];
_nearby8 = _center nearObjects ["Land_Fuel_tank_big", 20000];

{ 
	_rnd = (floor(random 10));
	if( _rnd < 9 ) then {
		_x setDamage 1;
	};
} forEach _nearby;

{ 
	_rnd = (floor(random 10));
	if( _rnd < 9 ) then {
		_x setDamage 1;
	};
} forEach _nearby2;

{ 
	_rnd = (floor(random 10));
	if( _rnd < 9 ) then {
		_x setDamage 1;
	};
} forEach _nearby3;

{ 
	_rnd = (floor(random 10));
	if( _rnd < 9 ) then {
		_x setDamage 1;
	};
} forEach _nearby4;

{ 
	_rnd = (floor(random 10));
	if( _rnd < 9 ) then {
		_x setDamage 1;
	};
} forEach _nearby5;

{ 
	_rnd = (floor(random 10));
	if( _rnd < 9 ) then {
		_x setDamage 1;
	};
} forEach _nearby6;

{ 
	_rnd = (floor(random 10));
	if( _rnd < 9 ) then {
		_x setDamage 1;
	};
} forEach _nearby7;

{ 
	_x hideObject true;
	//_rnd = (floor(random 10));
	//if( _rnd < 9 ) then {
	//	_x setDamage 1;
	//};
} forEach _nearby8;

_rnd;

