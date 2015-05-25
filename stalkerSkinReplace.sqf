private ["_skin","_look","_get","_i","_count","_l","_s","_replacement"];

// Usage: _model = [_model] call stalkerSkinReplace;

_skin = _this select 0;

//_replacement = "Sniper1_DZ";
_replacement = _skin;

if(_skin in StalkerPlayers) then {
	// Look for stalker model and change to Epoch one
	_look = 2;
	_get = 0;
} else {
	// Look for "replaced" model and change to stalker one
	_look = 0;
	_get = 2;
};
_count = (count StalkerReplacements) -1;

for "_i" from 0 to _count do {
	_l = StalkerReplacements select _i;
	_s = _l select _look;
	if(_s == _skin) then {
		_replacement = _l select _get;
	};
};
//titleText ["Done Refueling", "PLAIN DOWN", 3];

_replacement;
