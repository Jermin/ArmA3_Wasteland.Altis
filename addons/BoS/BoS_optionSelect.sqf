//	@file Version:
//	@file Name:
//	@file Author: Cael817
//	@file Created:

#define BoS_Menu_option 17001
disableSerialization;

private ["_panelType","_displayBoS","_BoS_select","_money"];
_uid = getPlayerUID player;
if (!isNil "_uid") then
{
	_panelType = _this select 0;

	_displayBoS = uiNamespace getVariable ["BoS_Menu", displayNull];

	switch (true) do
	{
		case (!isNull _displayBoS): //BoS panel
		{
			_BoS_select = _displayBoS displayCtrl BoS_Menu_option;

			switch (lbCurSel _BoS_select) do
			{
				case 0: //Re Lock Objects
				{
					closeDialog 0;
					execVM "addons\BoS\BoS_reLock.sqf";
				};
				case 1: //Mark Owned Object
				{
					closeDialog 0;
					execVM "addons\BoS\BoS_markOwned.sqf";
				};
				case 2: //Show Base Border
				{
					closeDialog 0;
					execVM "addons\BoS\BoS_showBorder.sqf";
				};
				case 3: //Repair Base Locker
				{
					closeDialog 0;
					execVM "addons\BoS\BoS_repairLocker.sqf";
				};
				case 4: //Turn off all lights
				{
					closeDialog 0;
					execVM "addons\BoS\BoS_lightsOff.sqf";;
				};
				case 5: //Turn on all lighs
				{
					closeDialog 0;
					execVM "addons\BoS\BoS_lightsOn.sqf";
				};
				case 6: //Lock Down Base
				{
					closeDialog 0;					
					execVM "addons\BoS\BoS_lockDown.sqf";
				};
				case 7: //Release Lock Down
				{
					closeDialog 0;					
					execVM "addons\BoS\BoS_releaseLockDown.sqf";
				};
				case 8: //Change Password
				{
					closeDialog 0;					
					execVM "addons\Bos\password_change.sqf";
				};					
			};
		};
	};
};
