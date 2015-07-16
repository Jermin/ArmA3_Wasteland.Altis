// Supporter Loadouts Start here 

_texDir = "client\images\vehicleTextures\";

switch (_supporterLevel) do {			
			case 1:
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			systemChat format["Welcome %1, You have a Dunce Loadout!", name player];
		};
		
	
			case 2: // Officer
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			_player addBackpack "B_TacticalPack_blk";
			_player addVest "V_PlateCarrier1_blk";
			_player forceAddUniform "U_I_G_Story_Protagonist_F";
			for "_i" from 1 to 3 do {_player addItemToUniform "16Rnd_9x21_Mag";};
			_player addItemToUniform "FirstAidKit";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";
			_player addHeadgear "H_Beret_Colonel";
			_player linkItem "ItemGPS";
			_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Silver Supporter Loadout!", name player];
		};			
		
		case 3: // Jacket
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			_player addBackpack "B_TacticalPack_blk";
			_player addVest "V_Chestrig_blk";
			_player forceAddUniform "U_OrestesBody";
			for "_i" from 1 to 3 do {_player addItemToUniform "16Rnd_9x21_Mag";};
			_player addItemToUniform "FirstAidKit";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";
			_player addGoggles "G_Shades_Red";
			_player addHeadgear "H_Bandanna_surfer_grn";
			_player linkItem "ItemGPS";
			_player setObjectTextureGlobal  [0, _texDir + "camo_red.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "camo_red.paa"];
			systemChat format["Welcome %1, You have a Silver Supporter Loadout!", name player];
		};	
		
			case 4: // Racer
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			_player addBackpack "B_TacticalPack_blk";
			_player addVest "V_TacVest_blk";
			_player forceAddUniform "U_C_Driver_1_blue";
			for "_i" from 1 to 3 do {_player addItemToUniform "16Rnd_9x21_Mag";};
			_player addItemToUniform "FirstAidKit";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";
			_player addHeadgear "H_RacingHelmet_2_F";
			_player linkItem "ItemGPS";
			systemChat format["Welcome %1, You have a Silver Supporter Loadout!", name player];
		};	
		
			case 5: // Heli
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			_player addBackpack "B_FieldPack_blk";
			_player addVest "V_Chestrig_blk";
			_player forceAddUniform "U_B_HeliPilotCoveralls";
			for "_i" from 1 to 3 do {_player addItemToUniform "16Rnd_9x21_Mag";};
			_player addItemToUniform "FirstAidKit";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";
			_player addHeadgear "H_PilotHelmetHeli_I";
			_player linkItem "ItemGPS";
			_player setObjectTextureGlobal  [0, _texDir + "woodtiger.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "woodtiger.paa"];
			systemChat format["Welcome %1, You have a Silver Supporter Loadout!", name player];
		};	
		
			case 6: // Pilot
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			_player addBackpack "B_FieldPack_blk";
			_player addVest "V_Chestrig_blk";
			_player forceAddUniform "U_O_PilotCoveralls";
			for "_i" from 1 to 3 do {_player addItemToUniform "16Rnd_9x21_Mag";};
			_player addItemToUniform "FirstAidKit";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";
			_player addHeadgear "H_PilotHelmetFighter_O";
			_player linkItem "ItemGPS";
			_player setObjectTextureGlobal  [0, _texDir + "wooddark.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "wooddark.paa"];
			systemChat format["Welcome %1, You have a Silver Supporter Loadout!", name player];		
		};
		
			case 7: // Lush
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			_player addBackpack "B_TacticalPack_blk";
			_player addVest "V_Chestrig_rgr";
			_player forceAddUniform "U_O_FullGhillie_lsh";
			for "_i" from 1 to 3 do {_player addItemToUniform "16Rnd_9x21_Mag";};
			_player addItemToUniform "FirstAidKit";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";
			_player addGoggles "G_Bandanna_khk";
			_player linkItem "ItemGPS";
			systemChat format["Welcome %1, You have a Silver Supporter Loadout!", name player];
		};	
		
			
		case 8: // Semi-Arid
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			_player addBackpack "B_TacticalPack_blk";
			_player addVest "V_Chestrig_rgr";
			_player forceAddUniform "U_O_FullGhillie_sard";
			for "_i" from 1 to 3 do {_player addItemToUniform "16Rnd_9x21_Mag";};
			_player addItemToUniform "FirstAidKit";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";
			_player addGoggles "G_Bandanna_khk";
			_player linkItem "ItemGPS";
			systemChat format["Welcome %1, You have a Silver Supporter Loadout!", name player];
		};	

		case 9: // Arid
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			_player addBackpack "B_TacticalPack_blk";
			_player addVest "V_Chestrig_rgr";
			_player forceAddUniform "U_O_FullGhillie_ard";
			for "_i" from 1 to 3 do {_player addItemToUniform "16Rnd_9x21_Mag";};
			_player addItemToUniform "FirstAidKit";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";
			_player addGoggles "G_Bandanna_khk";
			_player linkItem "ItemGPS";
			systemChat format["Welcome %1, You have a Silver Supporter Loadout!", name player];
		};	
		
		case 10: // Spec
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			_player addBackpack "B_TacticalPack_blk";
			_player addVest "V_TacVest_oli";
			_player forceAddUniform "U_B_CTRG_3";
			for "_i" from 1 to 3 do {_player addItemToUniform "16Rnd_9x21_Mag";};
			_player addItemToUniform "FirstAidKit";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";
			_player addGoggles "G_Tactical_Clear";
			_player addHeadgear "H_Booniehat_khk";
			_player linkItem "ItemGPS";
			_player setObjectTextureGlobal  [0, _texDir + "sand.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "sand.paa"];
			systemChat format["Welcome %1, You have a Silver Supporter Loadout!", name player];
		};	
		
		case 11: // O_Officer
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			_player addBackpack "B_TacticalPack_ocamo";
			_player addVest "V_TacVest_khk";
			_player forceAddUniform "U_O_OfficerUniform_ocamo";
			for "_i" from 1 to 3 do {_player addItemToUniform "16Rnd_9x21_Mag";};
			_player addItemToUniform "FirstAidKit";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";
			_player addGoggles "G_Aviator";
			_player addHeadgear "H_Beret_Colonel";
			_player linkItem "ItemGPS";
			_player setObjectTextureGlobal  [0, _texDir + "digi_wood.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "digi_wood.paa"];
			systemChat format["Welcome %1, You have a Silver Supporter Loadout!", name player];
		};	
		
		case 12: // Police
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			_player addBackpack "B_TacticalPack_blk";
			_player addVest "V_TacVest_blk_POLICE";
			_player forceAddUniform "U_Marshal";
			for "_i" from 1 to 3 do {_player addItemToUniform "16Rnd_9x21_Mag";};
			_player addItemToUniform "FirstAidKit";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";
			_player addGoggles "G_Aviator";
			_player linkItem "ItemGPS";
			systemChat format["Welcome %1, You have a Silver Supporter Loadout!", name player];
		};	
			case 13: // Terrorrist
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			_player addBackpack "B_Kitbag_cbr";
			_player addVest "V_BandollierB_khk";
			_player forceAddUniform "U_IG_Guerilla1_1";
			for "_i" from 1 to 3 do {_player addItemToUniform "16Rnd_9x21_Mag";};
			_player addItemToUniform "FirstAidKit";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";
			_player addHeadgear "H_Shemag_olive";
			_player linkItem "ItemGPS";
			_player setObjectTextureGlobal  [0, _texDir + "woodtiger.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "woodtiger.paa"];
			systemChat format["Welcome %1, You have a Silver Supporter Loadout!", name player];
		};	
	};

//			(unitBackpack _player) addmagazineCargo ["150Rnd_93x64_Mag",1];

	