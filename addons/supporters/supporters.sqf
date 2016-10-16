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
		
			// CTRG
			case 2: // CTRG Autorifleman
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Kitbag_rgr";
			_player addVest "V_TacVest_oli";
			_player forceAddUniform "U_B_CTRG_Soldier_F";
			for "_i" from 1 to 2 do {_player addItemToUniform "Chemlight_green";};
			for "_i" from 1 to 3 do {_player addItemToUniform "16Rnd_9x21_Mag";};
			_player addItemToUniform "MiniGrenade";
			_player addItemToUniform "SmokeShellGreen";
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 2 do {_player addItemToVest "150Rnd_556x45_Drum_Mag_F";};
			_player addItemToVest "150Rnd_556x45_Drum_Mag_Tracer_F";
			_player addItemToVest "SmokeShell";
			_player addWeapon "arifle_SPAR_02_blk_F";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_ERCO_blk_F";
			_player addPrimaryWeaponItem "bipod_01_F_blk";
			_player addWeapon "hgun_P07_khk_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetB_TI_tna_F";
			_player addGoggles "G_Balaclava_TI_G_tna_F";
			_player linkItem "ItemGPS";
			_player addItem "NVGogglesB_grn_F";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Gold+ Supporter Loadout!", name player];
		};			
		
		case 3: // CTRG Demo Specialist
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Kitbag_rgr";
			_player addVest "V_PlateCarrierIAGL_oli";
			_player forceAddUniform "U_B_CTRG_Soldier_F";
			for "_i" from 1 to 2 do {_player addItemToVest "Chemlight_green";};
			for "_i" from 1 to 3 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "MiniGrenade";};
			for "_i" from 1 to 3 do {_player addItemToVest "APERSMine_Range_Mag";};
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 2 do {_player addItemToUniform "30Rnd_556x45_Stanag_red";};
			for "_i" from 1 to 2 do {_player addItemToVest "30Rnd_556x45_Stanag_red";};
			for "_i" from 1 to 5 do {_player addItemToBackpack "30Rnd_556x45_Stanag_red";};
			_player addItemToVest "SmokeShell";
			_player addItemToVest "SmokeShellGreen";
			for "_i" from 1 to 2 do {_player addItemToBackpack "ClaymoreDirectionalMine_Remote_Mag";};
			for "_i" from 1 to 3 do {_player addItemToBackpack "APERSBoundingMine_Range_Mag";};
			_player addItemToBackpack "DemoCharge_Remote_Mag";
			for "_i" from 1 to 2 do {_player addItemToBackpack "SLAMDirectionalMine_Wire_Mag";};
			_player addWeapon "arifle_SPAR_01_blk_F";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_ERCO_blk_F";
			_player addWeapon "hgun_P07_khk_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetB_TI_tna_F";
			_player addGoggles "G_Balaclava_TI_G_tna_F";
			_player linkItem "ItemGPS";
			_player addItem "NVGogglesB_grn_F";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Gold+ Supporter Loadout!", name player];
		};	
		
			case 4: // CTRG Marksman
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Kitbag_rgr";
			_player addVest "V_TacVest_oli";
			_player forceAddUniform "U_B_CTRG_Soldier_F";
			for "_i" from 1 to 2 do {_player addItemToUniform "Chemlight_green";};
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "MiniGrenade";};
			_player addItemToUniform "FirstAidKit";
			_player addItemToUniform "20Rnd_762x51_Mag";
			for "_i" from 1 to 6 do {_player addItemToVest "20Rnd_762x51_Mag";};
			for "_i" from 1 to 3 do {_player addItemToBackpack "20Rnd_762x51_Mag";};
			_player addItemToVest "SmokeShell";
			_player addItemToUniform "SmokeShellGreen";

			_player addWeapon "arifle_SPAR_03_blk_F";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_SOS";
			_player addPrimaryWeaponItem "bipod_01_F_blk";
			_player addWeapon "hgun_P07_khk_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetB_TI_tna_F";
			_player addGoggles "G_Balaclava_TI_G_tna_F";
			_player linkItem "ItemGPS";
			_player addItem "NVGogglesB_grn_F";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Gold+ Supporter Loadout!", name player];
		};	
		
			case 5: // CTRG Scout (AT)
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Kitbag_rgr";
			_player addVest "V_TacVest_oli";
			_player forceAddUniform "U_B_CTRG_Soldier_F";
			for "_i" from 1 to 2 do {_player addItemToVest "Chemlight_green";};
			for "_i" from 1 to 3 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "MiniGrenade";};
			_player addItemToVest "SmokeShellGreen";
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 2 do {_player addItemToUniform "30Rnd_556x45_Stanag_red";};
			for "_i" from 1 to 2 do {_player addItemToVest "30Rnd_556x45_Stanag_red";};
			for "_i" from 1 to 5 do {_player addItemToBackpack "30Rnd_556x45_Stanag_red";};
			_player addItemToVest "SmokeShell";
			for "_i" from 1 to 2 do {_player addItemToBackpack "NLAW_F";};

			_player addWeapon "arifle_SPAR_01_blk_F";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_ERCO_blk_F";
			_player addWeapon "launch_NLAW_F";
			_player addWeapon "hgun_P07_khk_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetB_TI_tna_F";
			_player addGoggles "G_Balaclava_TI_G_tna_F";
			_player linkItem "ItemGPS";
			_player addItem "NVGogglesB_grn_F";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Gold+ Supporter Loadout!", name player];
		};	
		

			// NATO
			case 6: // NATO Explosive Specialist
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Carryall_cbr";
			_player addVest "V_PlateCarrierGL_rgr";
			_player forceAddUniform "U_B_CombatUniform_mcam";
			_player addItemToVest "Chemlight_green";
			_player addItemToUniform "Chemlight_green";
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "HandGrenade";};
			for "_i" from 1 to 3 do {_player addItemToVest "APERSMine_Range_Mag";};
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 2 do {_player addItemToUniform "30Rnd_65x39_caseless_mag";};
			for "_i" from 1 to 3 do {_player addItemToVest "30Rnd_65x39_caseless_mag";};
			for "_i" from 1 to 4 do {_player addItemToBackpack "30Rnd_65x39_caseless_mag";};
			_player addItemToVest "SmokeShell";
			_player addItemToVest "SmokeShellGreen";
			for "_i" from 1 to 2 do {_player addItemToBackpack "ClaymoreDirectionalMine_Remote_Mag";};
			for "_i" from 1 to 3 do {_player addItemToBackpack "APERSBoundingMine_Range_Mag";};
			_player addItemToBackpack "DemoCharge_Remote_Mag";
			for "_i" from 1 to 2 do {_player addItemToBackpack "SLAMDirectionalMine_Wire_Mag";};
			_player addWeapon "arifle_MXC_Black_F";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_Holosight";
			_player addWeapon "hgun_P07_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetSpecB";
			_player addGoggles "G_Tactical_Clear";
			_player linkItem "ItemGPS";
			_player addItem "NVGoggles";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Bronze Supporter Loadout!", name player];	
		};
		
			case 7: // NATO Grenadier
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Kitbag_rgr";
			_player addVest "V_PlateCarrierGL_rgr";
			_player forceAddUniform "U_B_CombatUniform_mcam";
			_player addItemToVest "Chemlight_green";
			_player addItemToUniform "Chemlight_green";
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "HandGrenade";};
			for "_i" from 1 to 2 do {_player addItemToVest "MiniGrenade";};
			for "_i" from 1 to 5 do {_player addItemToVest "1Rnd_HE_Grenade_shell";};
			for "_i" from 1 to 2 do {_player addItemToVest "1Rnd_Smoke_Grenade_shell";};
			_player addItemToVest "1Rnd_SmokeBlue_Grenade_shell";
			_player addItemToVest "1Rnd_SmokeGreen_Grenade_shell";
			_player addItemToVest "1Rnd_SmokeOrange_Grenade_shell";
			_player addItemToVest "SmokeShellGreen";
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 2 do {_player addItemToUniform "30Rnd_65x39_caseless_mag";};
			for "_i" from 1 to 3 do {_player addItemToVest "30Rnd_65x39_caseless_mag";};
			for "_i" from 1 to 4 do {_player addItemToBackpack "30Rnd_65x39_caseless_mag";};
			_player addItemToVest "SmokeShell";
			_player addWeapon "arifle_MX_GL_Black_F";
			_player addPrimaryWeaponItem "optic_Aco";
			_player addWeapon "hgun_P07_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetSpecB_blk";
			_player addGoggles "G_Tactical_Black";
			_player linkItem "ItemGPS";
			_player addItem "NVGoggles";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Bronze Supporter Loadout!", name player];
		};	
		
			
		case 8: // NATO Heavy Gunner
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Kitbag_rgr";
			_player addVest "V_PlateCarrier1_rgr";
			_player forceAddUniform "U_B_CombatUniform_mcam";
			for "_i" from 1 to 2 do {_player addItemToUniform "Chemlight_green";};
			for "_i" from 1 to 3 do {_player addItemToUniform "16Rnd_9x21_Mag";};
			_player addItemToUniform "SmokeShellGreen";
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 2 do {_player addItemToVest "130Rnd_338_Mag";};
			_player addItemToUniform "SmokeShell";
			_player addWeapon "MMG_02_sand_F";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_Hamr";
			_player addPrimaryWeaponItem "bipod_01_F_snd";
			_player addWeapon "hgun_P07_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetB";
			_player addGoggles "G_Tactical_Black";
			_player linkItem "ItemGPS";
			_player addItem "NVGoggles";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Bronze+ Supporter Loadout!", name player];
		};	

		case 9: // NATO Marksman
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Kitbag_rgr";
			_player addVest "V_PlateCarrier1_rgr";
			_player forceAddUniform "U_B_CombatUniform_mcam";
			_player addItemToVest "Chemlight_green";
			_player addItemToUniform "Chemlight_green";
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "HandGrenade";};
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 2 do {_player addItemToUniform "30Rnd_65x39_caseless_mag";};
			for "_i" from 1 to 3 do {_player addItemToVest "30Rnd_65x39_caseless_mag";};
			for "_i" from 1 to 4 do {_player addItemToBackpack "30Rnd_65x39_caseless_mag";};
			_player addItemToVest "SmokeShell";
			_player addItemToVest "SmokeShellGreen";

			_player addWeapon "arifle_MXM_Black_F";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_Hamr";
			_player addPrimaryWeaponItem "bipod_01_F_snd";
			_player addWeapon "hgun_P07_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetB_grass";
			_player addGoggles "G_Tactical_Clear";
			_player linkItem "ItemGPS";
			_player addItem "NVGoggles";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Bronze Supporter Loadout!", name player];
		};	
		
		case 10: // NATO Missile Specialist (AA)
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Carryall_mcamo";
			_player addVest "V_PlateCarrier1_rgr";
			_player forceAddUniform "U_B_CombatUniform_mcam";
			_player addItemToUniform "Chemlight_green";
			_player addItemToVest "Chemlight_green";
			for "_i" from 1 to 3 do {_player addItemToVest "16Rnd_9x21_Mag";};
			_player addItemToVest "SmokeShellGreen";
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 2 do {_player addItemToUniform "30Rnd_65x39_caseless_mag";};
			for "_i" from 1 to 7 do {_player addItemToVest "30Rnd_65x39_caseless_mag";};
			_player addItemToVest "SmokeShell";
			for "_i" from 1 to 2 do {_player addItemToBackpack "Titan_AA";};

			_player addWeapon "arifle_MXC_Black_F";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_Holosight";
			_player addWeapon "launch_B_Titan_F";
			_player addWeapon "hgun_P07_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetB_light_sand";
			_player addGoggles "G_Combat";
			_player linkItem "ItemGPS";
			_player addItem "NVGoggles";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Silver Supporter Loadout!", name player];
		};	
		
		case 11: // NATO Missile Specialist (AT)
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Carryall_mcamo";
			_player addVest "V_PlateCarrier1_rgr";
			_player forceAddUniform "U_B_CombatUniform_mcam";
			_player addItemToUniform "Chemlight_green";
			_player addItemToVest "Chemlight_green";
			for "_i" from 1 to 3 do {_player addItemToVest "16Rnd_9x21_Mag";};
			_player addItemToVest "SmokeShellGreen";
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 2 do {_player addItemToUniform "30Rnd_65x39_caseless_mag";};
			for "_i" from 1 to 7 do {_player addItemToVest "30Rnd_65x39_caseless_mag";};
			_player addItemToVest "SmokeShell";
			for "_i" from 1 to 2 do {_player addItemToBackpack "Titan_AT";};

			_player addWeapon "arifle_MXC_Black_F";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_Holosight";
			_player addWeapon "launch_B_Titan_short_F";
			_player addWeapon "hgun_P07_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetB_light_desert";
			_player addGoggles "G_Combat";
			_player linkItem "ItemGPS";
			_player addItem "NVGoggles";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Silver Supporter Loadout!", name player];
		};	
		
		case 12: // NATO Rifleman (AT)
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Kitbag_rgr";
			_player addVest "V_PlateCarrier2_rgr";
			_player forceAddUniform "U_B_CombatUniform_mcam";
			_player addItemToUniform "Chemlight_green";
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			_player addItemToVest "SmokeShellGreen";
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 2 do {_player addItemToUniform "30Rnd_65x39_caseless_mag";};
			for "_i" from 1 to 3 do {_player addItemToVest "30Rnd_65x39_caseless_mag";};
			for "_i" from 1 to 4 do {_player addItemToBackpack "30Rnd_65x39_caseless_mag";};
			_player addItemToVest "SmokeShell";
			for "_i" from 1 to 2 do {_player addItemToBackpack "NLAW_F";};

			_player addWeapon "arifle_MX_Black_F";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_Aco";
			_player addWeapon "launch_NLAW_F";
			_player addWeapon "hgun_P07_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetB_sand";
			_player addGoggles "G_Tactical_Clear";
			_player linkItem "ItemGPS";
			_player addItem "NVGoggles";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Silver Supporter Loadout!", name player];
		};	
			case 13: // NATO Sharpshooter
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Kitbag_rgr";
			_player addVest "V_PlateCarrier1_rgr";
			_player forceAddUniform "U_B_CombatUniform_mcam";
			_player addItemToUniform "Chemlight_green";
			_player addItemToVest "Chemlight_green";
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "HandGrenade";};
			_player addItemToUniform "FirstAidKit";
			_player addItemToUniform "20Rnd_762x51_Mag";
			for "_i" from 1 to 6 do {_player addItemToVest "20Rnd_762x51_Mag";};
			for "_i" from 1 to 2 do {_player addItemToBackpack "20Rnd_762x51_Mag";};
			_player addItemToVest "SmokeShell";
			_player addItemToVest "SmokeShellGreen";

			_player addWeapon "srifle_DMR_03_tan_F";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_AMS_snd";
			_player addPrimaryWeaponItem "bipod_01_F_snd";
			_player addWeapon "hgun_P07_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetB";
			_player addGoggles "G_Tactical_Black";
			_player linkItem "ItemGPS";
			_player addItem "NVGoggles";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Bronze Supporter Loadout!", name player];
		};	
			
			// NATO Special Forces
			
			case 14: // NATO Recon Demo Specialist
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Carryall_mcamo";
			_player addVest "V_Chestrig_rgr";
			_player forceAddUniform "U_B_CombatUniform_mcam_tshirt";
			_player addItemToVest "Chemlight_green";
			_player addItemToUniform "Chemlight_green";
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "MiniGrenade";};
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 2 do {_player addItemToUniform "30Rnd_65x39_caseless_mag";};
			for "_i" from 1 to 3 do {_player addItemToVest "30Rnd_65x39_caseless_mag";};
			for "_i" from 1 to 4 do {_player addItemToBackpack "30Rnd_65x39_caseless_mag";};
			_player addItemToVest "SmokeShell";
			_player addItemToVest "SmokeShellGreen";
			for "_i" from 1 to 3 do {_player addItemToVest "APERSMine_Range_Mag";};
			for "_i" from 1 to 2 do {_player addItemToBackpack "ClaymoreDirectionalMine_Remote_Mag";};
			for "_i" from 1 to 3 do {_player addItemToBackpack "APERSBoundingMine_Range_Mag";};
			_player addItemToBackpack "DemoCharge_Remote_Mag";
			for "_i" from 1 to 2 do {_player addItemToBackpack "SLAMDirectionalMine_Wire_Mag";};

			_player addWeapon "arifle_MXM_Black_F";
			_player addPrimaryWeaponItem "muzzle_snds_H";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_DMS";
			_player addPrimaryWeaponItem "bipod_01_F_snd";
			_player addWeapon "hgun_P07_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_Booniehat_mcamo";
			_player addGoggles "G_Tactical_Clear";
			_player linkItem "ItemGPS";
			_player addItem "NVGoggles";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Bronze Supporter Loadout!", name player];
		};
			case 15: // NATO Recon Marksman
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Kitbag_rgr";
			_player addVest "V_Chestrig_rgr";
			_player forceAddUniform "U_B_CombatUniform_mcam";
			_player addItemToVest "Chemlight_green";
			_player addItemToUniform "Chemlight_green";
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "MiniGrenade";};
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 2 do {_player addItemToUniform "30Rnd_65x39_caseless_mag";};
			for "_i" from 1 to 3 do {_player addItemToVest "30Rnd_65x39_caseless_mag";};
			for "_i" from 1 to 4 do {_player addItemToBackpack "30Rnd_65x39_caseless_mag";};
			_player addItemToVest "SmokeShell";
			_player addItemToVest "SmokeShellGreen";

			_player addWeapon "arifle_MX_Black_F";
			_player addPrimaryWeaponItem "muzzle_snds_H";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_Aco";
			_player addWeapon "hgun_P07_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_Booniehat_mcamo";
			_player addGoggles "G_Combat";
			_player linkItem "ItemGPS";
			_player addItem "NVGoggles";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Bronze Supporter Loadout!", name player];
		};
			case 16: // NATO Recon Sharpshooter
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Kitbag_rgr";
			_player addVest "V_PlateCarrier1_rgr";
			_player forceAddUniform "U_B_CombatUniform_mcam";
			for "_i" from 1 to 2 do {_player addItemToVest "Chemlight_green";};
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "MiniGrenade";};
			_player addItemToUniform "FirstAidKit";
			_player addItemToUniform "20Rnd_762x51_Mag";
			for "_i" from 1 to 6 do {_player addItemToVest "20Rnd_762x51_Mag";};
			for "_i" from 1 to 2 do {_player addItemToBackpack "20Rnd_762x51_Mag";};
			_player addItemToUniform "SmokeShell";
			_player addItemToVest "SmokeShellGreen";

			_player addWeapon "srifle_DMR_02_sniper_F";
			_player addPrimaryWeaponItem "muzzle_snds_338_sand";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_AMS_snd";
			_player addPrimaryWeaponItem "bipod_01_F_snd";
			_player addWeapon "hgun_P07_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_Watchcap_camo";
			_player addGoggles "G_Combat";
			_player linkItem "ItemGPS";
			_player addItem "NVGoggles";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Bronze+ Supporter Loadout!", name player];
		};
			case 17: // NATO Sniper (Arid)
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Kitbag_rgr";
			_player addVest "V_Chestrig_rgr";
			_player forceAddUniform "U_B_FullGhillie_ard";
			for "_i" from 1 to 2 do {_player addItemToVest "Chemlight_green";};
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "HandGrenade";};
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 2 do {_player addItemToUniform "7Rnd_408_Mag";};
			for "_i" from 1 to 3 do {_player addItemToVest "7Rnd_408_Mag";};
			for "_i" from 1 to 4 do {_player addItemToBackpack "7Rnd_408_Mag";};
			_player addItemToVest "ClaymoreDirectionalMine_Remote_Mag";
			_player addItemToVest "APERSTripMine_Wire_Mag";
			_player addItemToUniform "SmokeShell";
			_player addItemToVest "SmokeShellGreen";
			_player addItemToVest "SmokeShellBlue";
			_player addItemToVest "SmokeShellOrange";

			_player addWeapon "srifle_LRR_camo_F";
			_player addPrimaryWeaponItem "optic_LRPS";
			_player addWeapon "hgun_P07_F";
			_player addHandgunItem "muzzle_snds_L";

			_player linkItem "ItemGPS";
			_player addItem "NVGoggles";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Silver Supporter Loadout!", name player];
		};	
			case 18: // NATO Sniper (Lush)
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Kitbag_rgr";
			_player addVest "V_Chestrig_rgr";
			_player forceAddUniform "U_B_FullGhillie_lsh";
			for "_i" from 1 to 2 do {_player addItemToVest "Chemlight_green";};
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "HandGrenade";};
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 2 do {_player addItemToUniform "7Rnd_408_Mag";};
			for "_i" from 1 to 3 do {_player addItemToVest "7Rnd_408_Mag";};
			for "_i" from 1 to 4 do {_player addItemToBackpack "7Rnd_408_Mag";};
			_player addItemToVest "ClaymoreDirectionalMine_Remote_Mag";
			_player addItemToVest "APERSTripMine_Wire_Mag";
			_player addItemToUniform "SmokeShell";
			_player addItemToVest "SmokeShellGreen";
			_player addItemToVest "SmokeShellBlue";
			_player addItemToVest "SmokeShellOrange";

			_player addWeapon "srifle_LRR_camo_F";
			_player addPrimaryWeaponItem "optic_LRPS";
			_player addWeapon "hgun_P07_F";
			_player addHandgunItem "muzzle_snds_L";

			_player linkItem "ItemGPS";
			_player addItem "NVGoggles";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Silver Supporter Loadout!", name player];
		};
			case 19: // NATO Sniper (Semi-Arid)
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Kitbag_rgr";
			_player addVest "V_Chestrig_rgr";
			_player forceAddUniform "U_B_FullGhillie_sard";
			for "_i" from 1 to 2 do {_player addItemToVest "Chemlight_green";};
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "HandGrenade";};
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 2 do {_player addItemToUniform "7Rnd_408_Mag";};
			for "_i" from 1 to 3 do {_player addItemToVest "7Rnd_408_Mag";};
			for "_i" from 1 to 4 do {_player addItemToBackpack "7Rnd_408_Mag";};
			_player addItemToVest "ClaymoreDirectionalMine_Remote_Mag";
			_player addItemToVest "APERSTripMine_Wire_Mag";
			_player addItemToUniform "SmokeShell";
			_player addItemToVest "SmokeShellGreen";
			_player addItemToVest "SmokeShellBlue";
			_player addItemToVest "SmokeShellOrange";

			_player addWeapon "srifle_LRR_camo_F";
			_player addPrimaryWeaponItem "optic_LRPS";
			_player addWeapon "hgun_P07_F";
			_player addHandgunItem "muzzle_snds_L";

			_player linkItem "ItemGPS";
			_player addItem "NVGoggles";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Silver Supporter Loadout!", name player];
		};	

			// NATO (Pacific)
			case 20: // NATO (Pacific) Explosive Specialist
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Carryall_oli";
			_player addVest "V_PlateCarrierGL_tna_F";
			_player forceAddUniform "U_B_T_Soldier_F";
			_player addItemToVest "Chemlight_green";
			_player addItemToUniform "Chemlight_green";
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "HandGrenade";};
			for "_i" from 1 to 3 do {_player addItemToVest "APERSMine_Range_Mag";};
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 2 do {_player addItemToUniform "30Rnd_65x39_caseless_mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "30Rnd_65x39_caseless_mag";};
			for "_i" from 1 to 5 do {_player addItemToBackpack "30Rnd_65x39_caseless_mag";};
			_player addItemToVest "SmokeShell";
			_player addItemToVest "SmokeShellGreen";
			for "_i" from 1 to 2 do {_player addItemToBackpack "ClaymoreDirectionalMine_Remote_Mag";};
			for "_i" from 1 to 3 do {_player addItemToBackpack "APERSBoundingMine_Range_Mag";};
			_player addItemToBackpack "DemoCharge_Remote_Mag";
			for "_i" from 1 to 2 do {_player addItemToBackpack "SLAMDirectionalMine_Wire_Mag";};
			_player addWeapon "arifle_MXC_khk_F";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_Holosight_khk_F";
			_player addWeapon "hgun_P07_khk_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetB_Enh_tna_F";
			_player addGoggles "G_Combat";
			_player linkItem "ItemGPS";
			_player addItem "NVGoggles_tna_F";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Bronze Supporter Loadout!", name player];	
		};
		
			case 21: // NATO (Pacific) Grenadier
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Kitbag_rgr";
			_player addVest "V_PlateCarrierGL_tna_F";
			_player forceAddUniform "U_B_T_Soldier_F";
			_player addItemToVest "Chemlight_green";
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "HandGrenade";};
			for "_i" from 1 to 2 do {_player addItemToVest "MiniGrenade";};
			for "_i" from 1 to 5 do {_player addItemToVest "1Rnd_HE_Grenade_shell";};
			_player addItemToVest "1Rnd_SmokeBlue_Grenade_shell";
			_player addItemToVest "1Rnd_SmokeGreen_Grenade_shell";
			_player addItemToVest "1Rnd_SmokeOrange_Grenade_shell";
			_player addItemToVest "SmokeShellGreen";
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 2 do {_player addItemToUniform "30Rnd_65x39_caseless_mag";};
			for "_i" from 1 to 3 do {_player addItemToVest "30Rnd_65x39_caseless_mag";};
			for "_i" from 1 to 4 do {_player addItemToBackpack "30Rnd_65x39_caseless_mag";};
			_player addItemToVest "SmokeShell";
			_player addWeapon "arifle_MX_GL_khk_F";
			_player addPrimaryWeaponItem "optic_Aco";
			_player addWeapon "hgun_P07_khk_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetB_Enh_tna_F";
			_player addGoggles "G_Tactical_Clear";
			_player linkItem "ItemGPS";
			_player addItem "NVGoggles_tna_F";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Bronze Supporter Loadout!", name player];
		};	

		case 22: // NATO (Pacific) Marksman
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Kitbag_rgr";
			_player addVest "V_PlateCarrier1_tna_F";
			_player forceAddUniform "U_B_T_Soldier_F";
			_player addItemToVest "Chemlight_green";
			_player addItemToUniform "Chemlight_green";
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "HandGrenade";};
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 2 do {_player addItemToUniform "30Rnd_65x39_caseless_mag";};
			for "_i" from 1 to 3 do {_player addItemToVest "30Rnd_65x39_caseless_mag";};
			for "_i" from 1 to 4 do {_player addItemToBackpack "30Rnd_65x39_caseless_mag";};
			_player addItemToVest "SmokeShell";
			_player addItemToVest "SmokeShellGreen";

			_player addWeapon "arifle_MXM_khk_F";
			_player addPrimaryWeaponItem "muzzle_snds_H_khk_F";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_SOS_khk_F";
			_player addPrimaryWeaponItem "bipod_01_F_khk";
			_player addWeapon "hgun_P07_khk_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetB_tna_F";
			_player addGoggles "G_Tactical_Clear";
			_player linkItem "ItemGPS";
			_player addItem "NVGoggles_tna_F";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Bronze Supporter Loadout!", name player];
		};	
		
		case 23: // NATO (Pacific) Missile Specialist (AA)
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Carryall_oli";
			_player addVest "V_PlateCarrier1_tna_F";
			_player forceAddUniform "U_B_T_Soldier_F";
			_player addItemToUniform "Chemlight_green";
			_player addItemToVest "Chemlight_green";
			for "_i" from 1 to 3 do {_player addItemToVest "16Rnd_9x21_Mag";};
			_player addItemToVest "SmokeShellGreen";
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 2 do {_player addItemToUniform "30Rnd_65x39_caseless_mag";};
			for "_i" from 1 to 7 do {_player addItemToVest "30Rnd_65x39_caseless_mag";};
			_player addItemToVest "SmokeShell";
			for "_i" from 1 to 2 do {_player addItemToBackpack "Titan_AA";};

			_player addWeapon "arifle_MXC_khk_F";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_Holosight_khk_F";
			_player addWeapon "launch_B_Titan_tna_F";
			_player addWeapon "hgun_P07_khk_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetB_Light_tna_F";
			_player addGoggles "G_Tactical_Black";
			_player linkItem "ItemGPS";
			_player addItem "NVGoggles_tna_F";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Silver Supporter Loadout!", name player];
		};	
		
		case 24: // NATO (Pacific) Missile Specialist (AT)
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Carryall_oli";
			_player addVest "V_PlateCarrier1_tna_F";
			_player forceAddUniform "U_B_T_Soldier_F";
			_player addItemToUniform "Chemlight_green";
			_player addItemToVest "Chemlight_green";
			for "_i" from 1 to 3 do {_player addItemToVest "16Rnd_9x21_Mag";};
			_player addItemToVest "SmokeShellGreen";
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 2 do {_player addItemToUniform "30Rnd_65x39_caseless_mag";};
			for "_i" from 1 to 7 do {_player addItemToVest "30Rnd_65x39_caseless_mag";};
			_player addItemToVest "SmokeShell";
			for "_i" from 1 to 2 do {_player addItemToBackpack "Titan_AT";};

			_player addWeapon "arifle_MXC_khk_F";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_Holosight_khk_F";
			_player addWeapon "launch_B_Titan_short_tna_F";
			_player addWeapon "hgun_P07_khk_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetB_Light_tna_F";
			_player addGoggles "G_Tactical_Clear";
			_player linkItem "ItemGPS";
			_player addItem "NVGoggles_tna_F";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Silver Supporter Loadout!", name player];
		};	
		
		case 25: // NATO (Pacific) Rifleman (AT)
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Kitbag_rgr";
			_player addVest "V_PlateCarrier2_rgr";
			_player forceAddUniform "U_B_T_Soldier_F";
			_player addItemToUniform "Chemlight_green";
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			_player addItemToVest "SmokeShellGreen";
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 2 do {_player addItemToUniform "30Rnd_65x39_caseless_mag";};
			for "_i" from 1 to 3 do {_player addItemToVest "30Rnd_65x39_caseless_mag";};
			for "_i" from 1 to 4 do {_player addItemToBackpack "30Rnd_65x39_caseless_mag";};
			_player addItemToVest "SmokeShell";
			for "_i" from 1 to 2 do {_player addItemToBackpack "NLAW_F";};

			_player addWeapon "arifle_MX_khk_F";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_Aco";
			_player addWeapon "launch_NLAW_F";
			_player addWeapon "hgun_P07_khk_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetB_tna_F";
			_player addGoggles "G_Combat";
			_player linkItem "ItemGPS";
			_player addItem "NVGoggles_tna_F";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Silver Supporter Loadout!", name player];
		};	

			
			// NATO (Pacific) Special Forces
			case 26: // NATO (Pacific) Recon Demo Specialist
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Carryall_oli";
			_player addVest "V_Chestrig_rgr";
			_player forceAddUniform "U_B_T_Soldier_AR_F";
			_player addItemToVest "Chemlight_green";
			_player addItemToUniform "Chemlight_green";
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "MiniGrenade";};
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 2 do {_player addItemToUniform "30Rnd_65x39_caseless_mag";};
			for "_i" from 1 to 3 do {_player addItemToVest "30Rnd_65x39_caseless_mag";};
			for "_i" from 1 to 4 do {_player addItemToBackpack "30Rnd_65x39_caseless_mag";};
			_player addItemToVest "SmokeShell";
			_player addItemToVest "SmokeShellGreen";
			for "_i" from 1 to 3 do {_player addItemToVest "APERSMine_Range_Mag";};
			for "_i" from 1 to 2 do {_player addItemToBackpack "ClaymoreDirectionalMine_Remote_Mag";};
			for "_i" from 1 to 3 do {_player addItemToBackpack "APERSBoundingMine_Range_Mag";};
			_player addItemToBackpack "DemoCharge_Remote_Mag";
			for "_i" from 1 to 2 do {_player addItemToBackpack "SLAMDirectionalMine_Wire_Mag";};

			_player addWeapon "arifle_MX_khk_F";
			_player addPrimaryWeaponItem "muzzle_snds_H_khk_F";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_DMS";
			_player addPrimaryWeaponItem "bipod_01_F_snd";
			_player addWeapon "hgun_P07_khk_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_Booniehat_tna_F";
			_player addGoggles "G_Tactical_Clear";
			_player linkItem "ItemGPS";
			_player addItem "NVGoggles_tna_F";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Bronze Supporter Loadout!", name player];
		};

			case 27: // NATO (Pacific) Recon Marksman
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Kitbag_rgr";
			_player addVest "V_Chestrig_rgr";
			_player forceAddUniform "U_B_CombatUniform_mcam";
			_player addItemToVest "Chemlight_green";
			_player addItemToUniform "Chemlight_green";
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "MiniGrenade";};
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 2 do {_player addItemToUniform "30Rnd_65x39_caseless_mag";};
			for "_i" from 1 to 3 do {_player addItemToVest "30Rnd_65x39_caseless_mag";};
			for "_i" from 1 to 4 do {_player addItemToBackpack "30Rnd_65x39_caseless_mag";};
			_player addItemToVest "SmokeShell";
			_player addItemToVest "SmokeShellGreen";

			_player addWeapon "arifle_MXM_Black_F";
			_player addPrimaryWeaponItem "muzzle_snds_H";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_DMS";
			_player addPrimaryWeaponItem "bipod_01_F_snd";
			_player addWeapon "hgun_P07_khk_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_Booniehat_mcamo";
			_player linkItem "ItemGPS";
			_player addItem "NVGoggles_tna_F";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Bronze Supporter Loadout!", name player];
		};

			case 28: // NATO (Pacific) Sniper (Jungle)
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Kitbag_rgr";
			_player addVest "V_Chestrig_rgr";
			_player forceAddUniform "U_B_T_FullGhillie_tna_F";
			for "_i" from 1 to 2 do {_player addItemToVest "Chemlight_green";};
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "HandGrenade";};
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 2 do {_player addItemToUniform "7Rnd_408_Mag";};
			for "_i" from 1 to 3 do {_player addItemToVest "7Rnd_408_Mag";};
			for "_i" from 1 to 4 do {_player addItemToBackpack "7Rnd_408_Mag";};
			_player addItemToVest "ClaymoreDirectionalMine_Remote_Mag";
			_player addItemToVest "APERSTripMine_Wire_Mag";
			_player addItemToUniform "SmokeShell";
			_player addItemToVest "SmokeShellGreen";
			_player addItemToVest "SmokeShellBlue";
			_player addItemToVest "SmokeShellOrange";

			_player addWeapon "srifle_LRR_tna_F";
			_player addPrimaryWeaponItem "optic_LRPS_tna_F";
			_player addWeapon "hgun_P07_khk_F";
			_player addHandgunItem "muzzle_snds_L";

			_player linkItem "ItemGPS";
			_player addItem "NVGoggles_tna_F";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Silver Supporter Loadout!", name player];
		};	

			// CSAT
			
			case 29: // CSAT Autorifleman
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Kitbag_rgr";
			_player addVest "V_HarnessO_brn";
			_player forceAddUniform "U_O_CombatUniform_ocamo";
			for "_i" from 1 to 2 do {_player addItemToVest "Chemlight_red";};
			for "_i" from 1 to 3 do {_player addItemToUniform "16Rnd_9x21_Mag";};
			_player addItemToUniform "HandGrenade";
			_player addItemToVest "SmokeShellRed";
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 3 do {_player addItemToVest "150Rnd_762x54_Box";};
			_player addItemToUniform "SmokeShell";
			
			_player addWeapon "LMG_Zafir_F";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetO_ocamo";
			_player linkItem "ItemGPS";
			_player addItem "NVGoggles_OPFOR";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Bronze Supporter Loadout!", name player]; 
		};
			
			case 30: // CSAT Explosive Specialist
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Carryall_ocamo";
			_player addVest "V_HarnessO_brn";
			_player forceAddUniform "U_O_CombatUniform_ocamo";
			_player addItemToVest "Chemlight_red";
			_player addItemToUniform "Chemlight_red";
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "HandGrenade";};
			for "_i" from 1 to 3 do {_player addItemToVest "APERSMine_Range_Mag";};
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 2 do {_player addItemToUniform "30Rnd_65x39_caseless_green";};
			for "_i" from 1 to 3 do {_player addItemToVest "30Rnd_65x39_caseless_green";};
			for "_i" from 1 to 4 do {_player addItemToBackpack "30Rnd_65x39_caseless_green";};
			_player addItemToVest "SmokeShell";
			_player addItemToVest "SmokeShellRed";
			for "_i" from 1 to 2 do {_player addItemToBackpack "ClaymoreDirectionalMine_Remote_Mag";};
			for "_i" from 1 to 5 do {_player addItemToBackpack "APERSBoundingMine_Range_Mag";};
			_player addItemToBackpack "DemoCharge_Remote_Mag";
			for "_i" from 1 to 2 do {_player addItemToBackpack "SLAMDirectionalMine_Wire_Mag";};
			_player addWeapon "arifle_Katiba_C_F";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_ACO_grn";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetO_ocamo";
			_player linkItem "ItemGPS";
			_player addItem "NVGoggles_OPFOR";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Bronze Supporter Loadout!", name player];	
		};
		
			case 31: // CSAT Grenadier
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Kitbag_mcamo";
			_player addVest "V_HarnessOGL_brn";
			_player forceAddUniform "U_O_CombatUniform_ocamo";
			_player addItemToVest "Chemlight_red";
			_player addItemToUniform "Chemlight_red";
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "HandGrenade";};
			for "_i" from 1 to 2 do {_player addItemToVest "MiniGrenade";};
			for "_i" from 1 to 5 do {_player addItemToVest "1Rnd_HE_Grenade_shell";};
			_player addItemToUniform "1Rnd_Smoke_Grenade_shell";
			_player addItemToUniform "1Rnd_SmokeRed_Grenade_shell";
			_player addItemToVest "1Rnd_Smoke_Grenade_shell";
			_player addItemToVest "1Rnd_SmokeYellow_Grenade_shell";
			_player addItemToVest "1Rnd_SmokeOrange_Grenade_shell";
			_player addItemToVest "SmokeShellRed";
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 2 do {_player addItemToUniform "30Rnd_65x39_caseless_green";};
			for "_i" from 1 to 3 do {_player addItemToVest "30Rnd_65x39_caseless_green";};
			for "_i" from 1 to 4 do {_player addItemToBackpack "30Rnd_65x39_caseless_green";};
			_player addItemToVest "SmokeShell";
			_player addWeapon "arifle_Katiba_GL_F";
			_player addPrimaryWeaponItem "optic_ACO_grn";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetLeaderO_ocamo";
			_player linkItem "ItemGPS";
			_player addItem "NVGoggles_OPFOR";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Bronze Supporter Loadout!", name player];
		};	
		
			
			case 32: // CSAT Heavy Gunner
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Kitbag_mcamo";
			_player addVest "V_HarnessO_brn";
			_player forceAddUniform "U_O_CombatUniform_ocamo";
			for "_i" from 1 to 2 do {_player addItemToUniform "Chemlight_red";};
			for "_i" from 1 to 3 do {_player addItemToUniform "16Rnd_9x21_Mag";};
			_player addItemToUniform "SmokeShellRed";
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 2 do {_player addItemToVest "150Rnd_93x64_Mag";};
			_player addItemToUniform "SmokeShell";
			_player addWeapon "MMG_01_hex_F";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_Arco";
			_player addPrimaryWeaponItem "bipod_02_F_hex";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetO_ocamo";
			_player linkItem "ItemGPS";
			_player addItem "NVGoggles_OPFOR";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Bronze+ Supporter Loadout!", name player];
		};	

			case 33: // CSAT Marksman
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Kitbag_mcamo";
			_player addVest "V_TacVest_khk";
			_player forceAddUniform "U_O_CombatUniform_ocamo";
			for "_i" from 1 to 2 do {_player addItemToVest "Chemlight_red";};
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "HandGrenade";};
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 3 do {_player addItemToUniform "10Rnd_762x54_Mag";};
			for "_i" from 1 to 6 do {_player addItemToVest "10Rnd_762x54_Mag";};
			for "_i" from 1 to 3 do {_player addItemToBackpack "10Rnd_762x54_Mag";};
			_player addItemToVest "SmokeShell";
			_player addItemToVest "SmokeShellRed";

			_player addWeapon "srifle_DMR_01_F";
			_player addPrimaryWeaponItem "optic_DMS";
			_player addPrimaryWeaponItem "bipod_02_F_blk";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetO_ocamo";
			_player linkItem "ItemGPS";
			_player addItem "NVGoggles_OPFOR";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Bronze Supporter Loadout!", name player];
		};	
		
			case 34: // CSAT Missile Specialist (AA)
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Carryall_ocamo";
			_player addVest "V_TacVest_khk";
			_player forceAddUniform "U_O_CombatUniform_ocamo";
			_player addItemToUniform "Chemlight_red";
			_player addItemToVest "Chemlight_red";
			for "_i" from 1 to 3 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "HandGrenade";};
			_player addItemToVest "SmokeShellRed";
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 2 do {_player addItemToUniform "30Rnd_65x39_caseless_green";};
			for "_i" from 1 to 3 do {_player addItemToVest "30Rnd_65x39_caseless_green";};
			for "_i" from 1 to 4 do {_player addItemToBackpack "30Rnd_65x39_caseless_green";};
			_player addItemToVest "SmokeShell";
			for "_i" from 1 to 2 do {_player addItemToBackpack "Titan_AA";};

			_player addWeapon "arifle_Katiba_C_F";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_ACO_grn";
			_player addWeapon "launch_O_Titan_F";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetO_ocamo";
			_player linkItem "ItemGPS";
			_player addItem "NVGoggles_OPFOR";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Silver Supporter Loadout!", name player];
		};	
		
			case 35: // CSAT Missile Specialist (AT)
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Carryall_ocamo";
			_player addVest "V_TacVest_khk";
			_player forceAddUniform "U_O_CombatUniform_ocamo";
			_player addItemToUniform "Chemlight_red";
			_player addItemToVest "Chemlight_red";
			for "_i" from 1 to 3 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "HandGrenade";};
			_player addItemToVest "SmokeShellRed";
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 2 do {_player addItemToUniform "30Rnd_65x39_caseless_green";};
			for "_i" from 1 to 3 do {_player addItemToVest "30Rnd_65x39_caseless_green";};
			for "_i" from 1 to 4 do {_player addItemToBackpack "30Rnd_65x39_caseless_green";};
			_player addItemToVest "SmokeShell";
			for "_i" from 1 to 2 do {_player addItemToBackpack "Titan_AT";};

			_player addWeapon "arifle_Katiba_C_F";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_ACO_grn";
			_player addWeapon "launch_O_Titan_short_F";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetO_ocamo";
			_player linkItem "ItemGPS";
			_player addItem "NVGoggles_OPFOR";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Silver Supporter Loadout!", name player];
		};	
		
			case 36: // CSAT Rifleman (AT)
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Kitbag_mcamo";
			_player addVest "V_TacVest_khk";
			_player forceAddUniform "U_O_CombatUniform_ocamo";
			_player addItemToUniform "Chemlight_red";
			_player addItemToVest "Chemlight_red";
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			_player addItemToVest "SmokeShellRed";
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 2 do {_player addItemToUniform "30Rnd_65x39_caseless_green";};
			for "_i" from 1 to 3 do {_player addItemToVest "30Rnd_65x39_caseless_green";};
			for "_i" from 1 to 4 do {_player addItemToBackpack "30Rnd_65x39_caseless_green";};
			_player addItemToVest "SmokeShell";
			for "_i" from 1 to 2 do {_player addItemToBackpack "RPG32_F";};
			for "_i" from 1 to 2 do {_player addItemToBackpack "RPG32_HE_F";};

			_player addWeapon "arifle_Katiba_F";
			_player addPrimaryWeaponItem "optic_ACO_grn";
			_player addWeapon "launch_RPG32_F";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetO_ocamo";
			_player linkItem "ItemGPS";
			_player addItem "NVGoggles_OPFOR";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Bronze+ Supporter Loadout!", name player];
		};	
			case 37: // CSAT Sharpshooter (Bronze+ due to Cyrus 9.3)
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Kitbag_mcamo";
			_player addVest "V_HarnessO_brn";
			_player forceAddUniform "U_O_CombatUniform_ocamo";
			for "_i" from 1 to 2 do {_player addItemToVest "Chemlight_red";};
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "HandGrenade";};
			_player addItemToUniform "FirstAidKit";
			_player addItemToUniform "10Rnd_93x64_DMR_05_Mag";
			for "_i" from 1 to 6 do {_player addItemToVest "10Rnd_93x64_DMR_05_Mag";};
			for "_i" from 1 to 2 do {_player addItemToBackpack "10Rnd_93x64_DMR_05_Mag";};
			_player addItemToVest "SmokeShell";
			_player addItemToVest "SmokeShellRed";

			_player addWeapon "srifle_DMR_05_blk_F";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_KHS_blk";
			_player addPrimaryWeaponItem "bipod_02_F_blk";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetO_ocamo";
			_player linkItem "ItemGPS";
			_player addItem "NVGoggles_OPFOR";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Bronze+ Supporter Loadout!", name player];
		};	
			
			// CSAT Special Forces
			
			case 38: // CSAT Recon Demo Specialist
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Carryall_ocamo";
			_player addVest "V_HarnessO_brn";
			_player forceAddUniform "U_O_SpecopsUniform_ocamo";
			for "_i" from 1 to 2 do {_player addItemToVest "Chemlight_red";};
			for "_i" from 1 to 2 do {_player addItemToUniform "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "MiniGrenade";};
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 5 do {_player addItemToVest "30Rnd_65x39_caseless_green";};
			for "_i" from 1 to 4 do {_player addItemToBackpack "30Rnd_65x39_caseless_green";};
			_player addItemToUniform "SmokeShell";
			_player addItemToVest "SmokeShellRed";
			for "_i" from 1 to 3 do {_player addItemToVest "APERSMine_Range_Mag";};
			for "_i" from 1 to 5 do {_player addItemToBackpack "APERSBoundingMine_Range_Mag";};
			for "_i" from 1 to 2 do {_player addItemToBackpack "ClaymoreDirectionalMine_Remote_Mag";};
			for "_i" from 1 to 2 do {_player addItemToBackpack "SLAMDirectionalMine_Wire_Mag";};
			_player addItemToBackpack "DemoCharge_Remote_Mag";

			_player addWeapon "arifle_Katiba_F";
			_player addPrimaryWeaponItem "muzzle_snds_H";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_ACO_grn";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetSpecO_ocamo";
			_player linkItem "ItemGPS";
			_player addItem "NVGoggles_OPFOR";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Bronze Supporter Loadout!", name player];
		};
			case 39: // CSAT Recon Marksman
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Kitbag_mcamo";
			_player addVest "V_TacVest_khk";
			_player forceAddUniform "U_O_SpecopsUniform_ocamo";
			for "_i" from 1 to 2 do {_player addItemToVest "Chemlight_red";};
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "MiniGrenade";};
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 3 do {_player addItemToUniform "10Rnd_762x54_Mag";};
			for "_i" from 1 to 6 do {_player addItemToVest "10Rnd_762x54_Mag";};
			for "_i" from 1 to 3 do {_player addItemToBackpack "10Rnd_762x54_Mag";};
			_player addItemToVest "SmokeShell";
			_player addItemToVest "SmokeShellRed";

			_player addWeapon "srifle_DMR_01_F";
			_player addPrimaryWeaponItem "muzzle_snds_B";
			_player addPrimaryWeaponItem "optic_DMS";
			_player addPrimaryWeaponItem "bipod_02_F_blk";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetSpecO_blk";
			_player linkItem "ItemGPS";
			_player addItem "NVGoggles_OPFOR";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Bronze Supporter Loadout!", name player];
		};
			case 40: // CSAT Recon Pathfinder
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Carryall_ocamo";
			_player addVest "V_HarnessO_brn";
			_player forceAddUniform "U_O_SpecopsUniform_ocamo";
			_player addItemToUniform "Chemlight_red";
			_player addItemToVest "Chemlight_red";
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 3 do {_player addItemToVest "MiniGrenade";};
			_player addItemToUniform "FirstAidKit";
			_player addItemToUniform "10Rnd_127x54_Mag";
			for "_i" from 1 to 6 do {_player addItemToVest "10Rnd_127x54_Mag";};
			for "_i" from 1 to 2 do {_player addItemToBackpack "10Rnd_127x54_Mag";};
			_player addItemToUniform "SmokeShell";
			_player addItemToVest "SmokeShellRed";

			_player addWeapon "srifle_DMR_04_F";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_Nightstalker";
			_player addPrimaryWeaponItem "bipod_02_F_blk";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetSpecO_ocamo";
			_player linkItem "ItemGPS";
			_player addItem "NVGoggles_OPFOR";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Gold Supporter Loadout!", name player];
		};
			case 41: // CSAT Sniper (Arid)
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Kitbag_mcamo";
			_player addVest "V_Chestrig_khk";
			_player forceAddUniform "U_O_FullGhillie_ard";
			for "_i" from 1 to 2 do {_player addItemToVest "Chemlight_red";};
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "HandGrenade";};
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 2 do {_player addItemToUniform "5Rnd_127x108_APDS_Mag";};
			for "_i" from 1 to 4 do {_player addItemToVest "5Rnd_127x108_APDS_Mag";};
			for "_i" from 1 to 3 do {_player addItemToBackpack "5Rnd_127x108_APDS_Mag";};
			_player addItemToVest "ClaymoreDirectionalMine_Remote_Mag";
			_player addItemToVest "APERSTripMine_Wire_Mag";
			_player addItemToUniform "SmokeShell";
			_player addItemToVest "SmokeShellRed";
			_player addItemToVest "SmokeShellBlue";
			_player addItemToVest "SmokeShellYellow";

			_player addWeapon "srifle_GM6_camo_F";
			_player addPrimaryWeaponItem "optic_LRPS";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";

			_player linkItem "ItemGPS";
			_player addItem "NVGoggles_OPFOR";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Silver Supporter Loadout!", name player];
		};	
			case 42: // CSAT Sniper (Lush)
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Kitbag_mcamo";
			_player addVest "V_Chestrig_khk";
			_player forceAddUniform "U_O_FullGhillie_lsh";
			for "_i" from 1 to 2 do {_player addItemToVest "Chemlight_red";};
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "HandGrenade";};
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 2 do {_player addItemToUniform "5Rnd_127x108_APDS_Mag";};
			for "_i" from 1 to 4 do {_player addItemToVest "5Rnd_127x108_APDS_Mag";};
			for "_i" from 1 to 3 do {_player addItemToBackpack "5Rnd_127x108_APDS_Mag";};
			_player addItemToVest "ClaymoreDirectionalMine_Remote_Mag";
			_player addItemToVest "APERSTripMine_Wire_Mag";
			_player addItemToUniform "SmokeShell";
			_player addItemToVest "SmokeShellRed";
			_player addItemToVest "SmokeShellBlue";
			_player addItemToVest "SmokeShellYellow";

			_player addWeapon "srifle_GM6_camo_F";
			_player addPrimaryWeaponItem "optic_LRPS";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";

			_player linkItem "ItemGPS";
			_player addItem "NVGoggles_OPFOR";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Silver Supporter Loadout!", name player];
		};
			case 43: // CSAT Sniper (Semi-Arid)
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Kitbag_mcamo";
			_player addVest "V_Chestrig_khk";
			_player forceAddUniform "U_O_FullGhillie_sard";
			for "_i" from 1 to 2 do {_player addItemToVest "Chemlight_red";};
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "HandGrenade";};
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 2 do {_player addItemToUniform "5Rnd_127x108_APDS_Mag";};
			for "_i" from 1 to 4 do {_player addItemToVest "5Rnd_127x108_APDS_Mag";};
			for "_i" from 1 to 3 do {_player addItemToBackpack "5Rnd_127x108_APDS_Mag";};
			_player addItemToVest "ClaymoreDirectionalMine_Remote_Mag";
			_player addItemToVest "APERSTripMine_Wire_Mag";
			_player addItemToUniform "SmokeShell";
			_player addItemToVest "SmokeShellRed";
			_player addItemToVest "SmokeShellBlue";
			_player addItemToVest "SmokeShellYellow";

			_player addWeapon "srifle_GM6_camo_F";
			_player addPrimaryWeaponItem "optic_LRPS";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";

			_player linkItem "ItemGPS";
			_player addItem "NVGoggles_OPFOR";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Silver Supporter Loadout!", name player];
		};	

			// CSAT Urban
			
			case 44: // Urban Autorifleman
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Carryall_oucamo";
			_player addVest "V_HarnessO_gry";
			_player forceAddUniform "U_O_CombatUniform_oucamo";
			_player addItemToUniform "Chemlight_red";
			for "_i" from 1 to 3 do {_player addItemToUniform "16Rnd_9x21_Mag";};
			_player addItemToUniform "HandGrenade";
			_player addItemToVest "HandGrenade";
			_player addItemToUniform "SmokeShellRed";
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 3 do {_player addItemToVest "150Rnd_762x54_Box";};
			_player addItemToUniform "SmokeShell";
			
			_player addWeapon "LMG_Zafir_F";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetO_oucamo";
			_player linkItem "ItemGPS";
			_player addItem "NVGoggles_OPFOR";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Bronze Supporter Loadout!", name player]; 
		};
			
			case 45: // Urban Explosive Specialist
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Carryall_oucamo";
			_player addVest "V_HarnessO_gry";
			_player forceAddUniform "U_O_CombatUniform_oucamo";
			_player addItemToVest "Chemlight_red";
			_player addItemToUniform "Chemlight_red";
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "HandGrenade";};
			for "_i" from 1 to 3 do {_player addItemToVest "APERSMine_Range_Mag";};
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 2 do {_player addItemToUniform "30Rnd_65x39_caseless_green";};
			for "_i" from 1 to 3 do {_player addItemToVest "30Rnd_65x39_caseless_green";};
			for "_i" from 1 to 4 do {_player addItemToBackpack "30Rnd_65x39_caseless_green";};
			_player addItemToVest "SmokeShell";
			_player addItemToVest "SmokeShellRed";
			for "_i" from 1 to 2 do {_player addItemToBackpack "ClaymoreDirectionalMine_Remote_Mag";};
			for "_i" from 1 to 5 do {_player addItemToBackpack "APERSBoundingMine_Range_Mag";};
			_player addItemToBackpack "DemoCharge_Remote_Mag";
			for "_i" from 1 to 2 do {_player addItemToBackpack "SLAMDirectionalMine_Wire_Mag";};
			_player addWeapon "arifle_Katiba_C_F";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_ACO_grn";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetO_oucamo";
			_player linkItem "ItemGPS";
			_player addItem "NVGoggles_OPFOR";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Bronze Supporter Loadout!", name player];	
		};
		
			case 46: // Urban Grenadier
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Carryall_oucamo";
			_player addVest "V_HarnessOGL_gry";
			_player forceAddUniform "U_O_CombatUniform_oucamo";
			for "_i" from 1 to 2 do {_player addItemToUniform "Chemlight_red";};
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "HandGrenade";};
			for "_i" from 1 to 2 do {_player addItemToVest "MiniGrenade";};
			for "_i" from 1 to 5 do {_player addItemToVest "1Rnd_HE_Grenade_shell";};
			for "_i" from 1 to 2 do {_player addItemToVest "1Rnd_Smoke_Grenade_shell";};
			_player addItemToUniform "1Rnd_SmokeYellow_Grenade_shell";
			_player addItemToVest "1Rnd_Smoke_Grenade_shell";
			_player addItemToVest "1Rnd_SmokeRed_Grenade_shell";
			_player addItemToVest "1Rnd_SmokeOrange_Grenade_shell";
			_player addItemToVest "SmokeShellRed";
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 2 do {_player addItemToUniform "30Rnd_65x39_caseless_green";};
			for "_i" from 1 to 3 do {_player addItemToVest "30Rnd_65x39_caseless_green";};
			for "_i" from 1 to 4 do {_player addItemToBackpack "30Rnd_65x39_caseless_green";};
			_player addItemToUniform "SmokeShell";
			_player addWeapon "arifle_Katiba_GL_F";
			_player addPrimaryWeaponItem "optic_ACO_grn";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetLeaderO_oucamo";
			_player linkItem "ItemGPS";
			_player addItem "NVGoggles_OPFOR";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Bronze Supporter Loadout!", name player];
		};	
		
			
			case 47: // Urban Heavy Gunner
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Carryall_oucamo";
			_player addVest "V_HarnessO_gry";
			_player forceAddUniform "U_O_CombatUniform_oucamo";
			for "_i" from 1 to 2 do {_player addItemToUniform "Chemlight_red";};
			for "_i" from 1 to 3 do {_player addItemToUniform "16Rnd_9x21_Mag";};
			_player addItemToUniform "SmokeShellRed";
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 2 do {_player addItemToVest "150Rnd_93x64_Mag";};
			_player addItemToUniform "SmokeShell";
			_player addWeapon "MMG_01_hex_F";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_Arco";
			_player addPrimaryWeaponItem "bipod_02_F_hex";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetO_oucamo";
			_player linkItem "ItemGPS";
			_player addItem "NVGoggles_OPFOR";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Bronze+ Supporter Loadout!", name player];
		};	

			case 48: // Urban Marksman
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Carryall_oucamo";
			_player addVest "V_TacVest_blk";
			_player forceAddUniform "U_O_CombatUniform_oucamo";
			for "_i" from 1 to 2 do {_player addItemToVest "Chemlight_red";};
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "HandGrenade";};
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 3 do {_player addItemToUniform "10Rnd_762x54_Mag";};
			for "_i" from 1 to 6 do {_player addItemToVest "10Rnd_762x54_Mag";};
			for "_i" from 1 to 3 do {_player addItemToBackpack "10Rnd_762x54_Mag";};
			_player addItemToVest "SmokeShell";
			_player addItemToVest "SmokeShellRed";

			_player addWeapon "srifle_DMR_01_F";
			_player addPrimaryWeaponItem "optic_DMS";
			_player addPrimaryWeaponItem "bipod_02_F_blk";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetO_oucamo";
			_player linkItem "ItemGPS";
			_player addItem "NVGoggles_OPFOR";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Bronze Supporter Loadout!", name player];
		};	
		
			case 49: // Urban Missile Specialist (AA)
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Carryall_oucamo";
			_player addVest "V_TacVest_blk";
			_player forceAddUniform "U_O_CombatUniform_oucamo";
			_player addItemToUniform "Chemlight_red";
			_player addItemToVest "Chemlight_red";
			for "_i" from 1 to 3 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "HandGrenade";};
			_player addItemToVest "SmokeShellRed";
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 2 do {_player addItemToUniform "30Rnd_65x39_caseless_green";};
			for "_i" from 1 to 3 do {_player addItemToVest "30Rnd_65x39_caseless_green";};
			for "_i" from 1 to 4 do {_player addItemToBackpack "30Rnd_65x39_caseless_green";};
			_player addItemToVest "SmokeShell";
			for "_i" from 1 to 2 do {_player addItemToBackpack "Titan_AA";};

			_player addWeapon "arifle_Katiba_F";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_ACO_grn";
			_player addWeapon "launch_O_Titan_F";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetO_oucamo";
			_player linkItem "ItemGPS";
			_player addItem "NVGoggles_OPFOR";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Silver Supporter Loadout!", name player];
		};	
		
			case 50: // Urban Missile Specialist (AT)
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Carryall_oucamo";
			_player addVest "V_TacVest_blk";
			_player forceAddUniform "U_O_CombatUniform_oucamo";
			_player addItemToUniform "Chemlight_red";
			_player addItemToVest "Chemlight_red";
			for "_i" from 1 to 3 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "HandGrenade";};
			_player addItemToVest "SmokeShellRed";
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 2 do {_player addItemToUniform "30Rnd_65x39_caseless_green";};
			for "_i" from 1 to 3 do {_player addItemToVest "30Rnd_65x39_caseless_green";};
			for "_i" from 1 to 4 do {_player addItemToBackpack "30Rnd_65x39_caseless_green";};
			_player addItemToVest "SmokeShell";
			for "_i" from 1 to 2 do {_player addItemToBackpack "Titan_AT";};

			_player addWeapon "arifle_Katiba_F";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_ACO_grn";
			_player addWeapon "launch_O_Titan_short_F";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetO_oucamo";
			_player linkItem "ItemGPS";
			_player addItem "NVGoggles_OPFOR";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Silver Supporter Loadout!", name player];
		};	
		
			case 51: // Urban Rifleman (AT)
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Carryall_oucamo";
			_player addVest "V_TacVest_blk";
			_player forceAddUniform "U_O_CombatUniform_oucamo";
			_player addItemToUniform "Chemlight_red";
			_player addItemToVest "Chemlight_red";
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			_player addItemToVest "SmokeShellRed";
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 2 do {_player addItemToUniform "30Rnd_65x39_caseless_green";};
			for "_i" from 1 to 3 do {_player addItemToVest "30Rnd_65x39_caseless_green";};
			for "_i" from 1 to 4 do {_player addItemToBackpack "30Rnd_65x39_caseless_green";};
			_player addItemToVest "SmokeShell";
			for "_i" from 1 to 2 do {_player addItemToBackpack "RPG32_F";};
			for "_i" from 1 to 2 do {_player addItemToBackpack "RPG32_HE_F";};

			_player addWeapon "arifle_Katiba_F";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_ACO_grn";
			_player addWeapon "launch_RPG32_F";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetO_oucamo";
			_player linkItem "ItemGPS";
			_player addItem "NVGoggles_OPFOR";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Bronze+ Supporter Loadout!", name player];
		};	
			case 52: // Urban Sharpshooter (Bronze+ due to Cyrus 9.3)
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Kitbag_mcamo";
			_player addVest "V_HarnessO_gry";
			_player forceAddUniform "U_O_CombatUniform_oucamo";
			for "_i" from 1 to 2 do {_player addItemToVest "Chemlight_red";};
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "HandGrenade";};
			_player addItemToUniform "FirstAidKit";
			_player addItemToUniform "10Rnd_93x64_DMR_05_Mag";
			for "_i" from 1 to 6 do {_player addItemToVest "10Rnd_93x64_DMR_05_Mag";};
			for "_i" from 1 to 2 do {_player addItemToBackpack "10Rnd_93x64_DMR_05_Mag";};
			_player addItemToVest "SmokeShell";
			_player addItemToVest "SmokeShellRed";

			_player addWeapon "srifle_DMR_05_blk_F";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_KHS_blk";
			_player addPrimaryWeaponItem "bipod_02_F_blk";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetO_oucamo";
			_player linkItem "ItemGPS";
			_player addItem "NVGoggles_OPFOR";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Bronze+ Supporter Loadout!", name player];
		};
			// CSAT Viper
			case 53: // Viper Demo Specialist
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_ViperHarness_hex_F";
			_player forceAddUniform "U_O_V_Soldier_Viper_hex_F";
			for "_i" from 1 to 2 do {_player addItemToUniform "Chemlight_red";};
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "MiniGrenade";};
			for "_i" from 1 to 3 do {_player addItemToVest "APERSMine_Range_Mag";};
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 7 do {_player addItemToBackpack "30Rnd_65x39_caseless_green";};
			for "_i" from 1 to 3 do {_player addItemToBackpack "10Rnd_50BW_Mag_F";};
			for "_i" from 1 to 2 do {_player addItemToBackpack "SmokeShell";};
			_player addItemToBackpack "SmokeShellRed";
			_player addItemToBackpack "DemoCharge_Remote_Mag";
			_player addItemToBackpack "SLAMDirectionalMine_Wire_Mag";
			_player addWeapon "arifle_ARX_hex_F";
			_player addPrimaryWeaponItem "muzzle_snds_65_TI_hex_F";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_Arco";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetO_ViperSP_hex_F";
			_player linkItem "ItemGPS";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Platinum Supporter Loadout!", name player];
		};	
			case 54: // Viper Marksman
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_ViperHarness_hex_F";
			_player forceAddUniform "U_O_V_Soldier_Viper_hex_F";
			for "_i" from 1 to 2 do {_player addItemToUniform "Chemlight_red";};
			for "_i" from 1 to 4 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 4 do {_player addItemToVest "MiniGrenade";};
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 8 do {_player addItemToBackpack "30Rnd_65x39_caseless_green";};
			for "_i" from 1 to 5 do {_player addItemToBackpack "10Rnd_50BW_Mag_F";};
			for "_i" from 1 to 2 do {_player addItemToBackpack "SmokeShell";};
			for "_i" from 1 to 2 do {_player addItemToBackpack "SmokeShellRed";};

			_player addWeapon "arifle_ARX_hex_F";
			_player addPrimaryWeaponItem "muzzle_snds_65_TI_hex_F";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_DMS";
			_player addPrimaryWeaponItem "bipod_02_F_hex";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetO_ViperSP_hex_F";
			_player linkItem "ItemGPS";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Platinum Supporter Loadout!", name player];
		};	
			case 55: // Viper Rifleman (AT)
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_ViperHarness_hex_F";
			_player forceAddUniform "U_O_V_Soldier_Viper_hex_F";
			for "_i" from 1 to 2 do {_player addItemToUniform "Chemlight_red";};
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "MiniGrenade";};
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 4 do {_player addItemToBackpack "30Rnd_65x39_caseless_green";};
			_player addItemToBackpack "SmokeShell";
			_player addItemToBackpack "SmokeShellRed";
			for "_i" from 1 to 2 do {_player addItemToBackpack "RPG32_F";};

			_player addWeapon "arifle_ARX_hex_F";
			_player addPrimaryWeaponItem "muzzle_snds_65_TI_hex_F";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_Arco";
			_player addWeapon "launch_RPG32_F";;
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetO_ViperSP_hex_F";
			_player linkItem "ItemGPS";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Platinum Supporter Loadout!", name player];
		};	

			// CSAT (Pacific)
			
			case 56: // CSAT (Pacific) Autorifleman
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Kitbag_rgr";
			_player addVest "V_HarnessO_brn";
			_player forceAddUniform "U_O_T_Soldier_F";
			for "_i" from 1 to 2 do {_player addItemToVest "Chemlight_red";};
			_player addItemToUniform "16Rnd_9x21_Mag";
			_player addItemToVest "16Rnd_9x21_Mag";
			_player addItemToVest "HandGrenade";
			_player addItemToVest "SmokeShellRed";
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 5 do {_player addItemToVest "100Rnd_580x42_Mag_F";};
			_player addItemToVest "SmokeShell";
			
			_player addWeapon "arifle_CTARS_blk_F";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "O_NVGoggles_ghex_F";
			_player linkItem "ItemGPS";
			_player addItem "O_NVGoggles_ghex_F";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Bronze Supporter Loadout!", name player]; 
		};
			
			case 57: // CSAT (Pacific) Explosive Specialist
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Carryall_ghex_F";
			_player addVest "V_HarnessO_ghex_F";
			_player forceAddUniform "U_O_T_Soldier_F";
			for "_i" from 1 to 2 do {_player addItemToVest "Chemlight_red";};
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "HandGrenade";};
			for "_i" from 1 to 3 do {_player addItemToVest "APERSMine_Range_Mag";};
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 3 do {_player addItemToUniform "30Rnd_580x42_Mag_F";};
			for "_i" from 1 to 2 do {_player addItemToVest "30Rnd_580x42_Mag_F";};
			for "_i" from 1 to 4 do {_player addItemToBackpack "30Rnd_580x42_Mag_F";};
			_player addItemToVest "SmokeShell";
			_player addItemToVest "SmokeShellRed";
			for "_i" from 1 to 2 do {_player addItemToBackpack "ClaymoreDirectionalMine_Remote_Mag";};
			for "_i" from 1 to 5 do {_player addItemToBackpack "APERSBoundingMine_Range_Mag";};
			_player addItemToBackpack "DemoCharge_Remote_Mag";
			for "_i" from 1 to 2 do {_player addItemToBackpack "SLAMDirectionalMine_Wire_Mag";};
			_player addWeapon "arifle_Katiba_C_F";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_ACO_grn";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetO_ghex_F";
			_player linkItem "ItemGPS";
			_player addItem "O_NVGoggles_ghex_F";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Bronze Supporter Loadout!", name player];	
		};
		
			case 58: // CSAT (Pacific) Grenadier
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Kitbag_rgr";
			_player addVest "V_HarnessOGL_ghex_F";
			_player forceAddUniform "U_O_T_Soldier_F";
			for "_i" from 1 to 2 do {_player addItemToVest "Chemlight_red";};
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "HandGrenade";};
			for "_i" from 1 to 2 do {_player addItemToVest "MiniGrenade";};
			for "_i" from 1 to 5 do {_player addItemToVest "1Rnd_HE_Grenade_shell";};
			_player addItemToUniform "1Rnd_Smoke_Grenade_shell";
			_player addItemToUniform "1Rnd_SmokeYellow_Grenade_shell";
			for "_i" from 1 to 2 do {_player addItemToVest "1Rnd_Smoke_Grenade_shell";};
			_player addItemToVest "1Rnd_SmokeRed_Grenade_shell";
			_player addItemToVest "1Rnd_SmokeOrange_Grenade_shell";
			_player addItemToVest "SmokeShellRed";
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 3 do {_player addItemToUniform "30Rnd_580x42_Mag_F";};
			for "_i" from 1 to 2 do {_player addItemToVest "30Rnd_65x39_caseless_green";};
			for "_i" from 1 to 4 do {_player addItemToBackpack "30Rnd_65x39_caseless_green";};
			_player addItemToVest "SmokeShell";
			_player addWeapon "arifle_CTAR_GL_blk_F";
			_player addPrimaryWeaponItem "optic_ACO_grn";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetLeaderO_ghex_F";
			_player linkItem "ItemGPS";
			_player addItem "O_NVGoggles_ghex_F";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Bronze Supporter Loadout!", name player];
		};	
			

			case 59: // CSAT (Pacific) Marksman
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Kitbag_rgr";
			_player addVest "V_TacVest_khk";
			_player forceAddUniform "U_O_T_Soldier_F";
			for "_i" from 1 to 2 do {_player addItemToVest "Chemlight_red";};
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "HandGrenade";};
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 3 do {_player addItemToUniform "20Rnd_650x39_Cased_Mag_F";};
			for "_i" from 1 to 6 do {_player addItemToVest "20Rnd_650x39_Cased_Mag_F";};
			for "_i" from 1 to 3 do {_player addItemToBackpack "20Rnd_650x39_Cased_Mag_F";};
			_player addItemToUniform "SmokeShell";
			_player addItemToVest "SmokeShellRed";

			_player addWeapon "srifle_DMR_07_blk_F";
			_player addPrimaryWeaponItem "optic_DMS";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetO_ghex_F";
			_player linkItem "ItemGPS";
			_player addItem "O_NVGoggles_ghex_F";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Bronze Supporter Loadout!", name player];
		};	
		
			case 60: // CSAT (Pacific) Missile Specialist (AA)
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Carryall_ghex_F";
			_player addVest "V_TacVest_oli";
			_player forceAddUniform "U_O_T_Soldier_F";
			for "_i" from 1 to 2 do {_player addItemToVest "Chemlight_red";};
			for "_i" from 1 to 3 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "HandGrenade";};
			_player addItemToVest "SmokeShellRed";
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 3 do {_player addItemToUniform "30Rnd_580x42_Mag_F";};
			for "_i" from 1 to 2 do {_player addItemToVest "30Rnd_580x42_Mag_F";};
			for "_i" from 1 to 4 do {_player addItemToBackpack "30Rnd_580x42_Mag_F";};
			_player addItemToVest "SmokeShell";
			for "_i" from 1 to 2 do {_player addItemToBackpack "Titan_AA";};

			_player addWeapon "arifle_CTAR_blk_F";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_ACO_grn";
			_player addWeapon "launch_O_Titan_ghex_F";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetO_ghex_F";
			_player linkItem "ItemGPS";
			_player addItem "O_NVGoggles_ghex_F";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Silver Supporter Loadout!", name player];
		};	
		
			case 61: // CSAT (Pacific) Missile Specialist (AT)
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Carryall_ghex_F";
			_player addVest "V_TacVest_oli";
			_player forceAddUniform "U_O_T_Soldier_F";
			for "_i" from 1 to 2 do {_player addItemToVest "Chemlight_red";};
			for "_i" from 1 to 3 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "HandGrenade";};
			_player addItemToVest "SmokeShellRed";
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 3 do {_player addItemToUniform "30Rnd_580x42_Mag_F";};
			for "_i" from 1 to 2 do {_player addItemToVest "30Rnd_580x42_Mag_F";};
			for "_i" from 1 to 4 do {_player addItemToBackpack "30Rnd_580x42_Mag_F";};
			_player addItemToVest "SmokeShell";
			for "_i" from 1 to 2 do {_player addItemToBackpack "Titan_AT";};

			_player addWeapon "arifle_CTAR_blk_F";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_ACO_grn";
			_player addWeapon "launch_O_Titan_short_ghex_F";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetO_ghex_F";
			_player linkItem "ItemGPS";
			_player addItem "O_NVGoggles_ghex_F";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Silver Supporter Loadout!", name player];
		};	
		
			case 62: // CSAT (Pacific) Rifleman (AT)
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Kitbag_rgr";
			_player addVest "V_TacVest_oli";
			_player forceAddUniform "U_O_T_Soldier_F";
			_player addItemToUniform "Chemlight_red";
			_player addItemToVest "Chemlight_red";
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "Chemlight_red";};
			for "_i" from 1 to 3 do {_player addItemToUniform "30Rnd_580x42_Mag_F";};
			for "_i" from 1 to 2 do {_player addItemToVest "30Rnd_580x42_Mag_F";};
			for "_i" from 1 to 4 do {_player addItemToBackpack "30Rnd_580x42_Mag_F";};
			_player addItemToVest "SmokeShell";
			for "_i" from 1 to 2 do {_player addItemToBackpack "RPG32_F";};
			for "_i" from 1 to 2 do {_player addItemToBackpack "RPG32_HE_F";};

			_player addWeapon "arifle_CTAR_blk_F";
			_player addPrimaryWeaponItem "optic_ACO_grn";
			_player addWeapon "launch_RPG32_ghex_F";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetO_ghex_F";
			_player linkItem "ItemGPS";
			_player addItem "O_NVGoggles_ghex_F";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Bronze+ Supporter Loadout!", name player];
		};	
			
			
			// CSAT (Pacific) Special Forces
			
			case 63: // CSAT (Pacific) Recon Demo Specialist
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Carryall_ghex_F";
			_player addVest "V_HarnessO_ghex_F";
			_player forceAddUniform "U_O_T_Soldier_F";
			for "_i" from 1 to 2 do {_player addItemToVest "Chemlight_red";};
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "MiniGrenade";};
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 3 do {_player addItemToUniform "30Rnd_580x42_Mag_F";};
			for "_i" from 1 to 2 do {_player addItemToVest "30Rnd_580x42_Mag_F";};
			for "_i" from 1 to 4 do {_player addItemToBackpack "30Rnd_580x42_Mag_F";};
			_player addItemToVest "SmokeShell";
			_player addItemToVest "SmokeShellRed";
			for "_i" from 1 to 3 do {_player addItemToVest "APERSMine_Range_Mag";};
			for "_i" from 1 to 5 do {_player addItemToBackpack "APERSBoundingMine_Range_Mag";};
			for "_i" from 1 to 2 do {_player addItemToBackpack "ClaymoreDirectionalMine_Remote_Mag";};
			for "_i" from 1 to 2 do {_player addItemToBackpack "SLAMDirectionalMine_Wire_Mag";};
			_player addItemToBackpack "DemoCharge_Remote_Mag";

			_player addWeapon "arifle_CTAR_blk_F";
			_player addPrimaryWeaponItem "muzzle_snds_58_blk_F";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_ACO_grn";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetSpecO_ghex_F";
			_player linkItem "ItemGPS";
			_player addItem "O_NVGoggles_ghex_F";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Bronze Supporter Loadout!", name player];
		};
			case 64: // CSAT (Pacific) Recon Marksman
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Kitbag_rgr";
			_player addVest "V_TacVest_oli";
			_player forceAddUniform "U_O_T_Soldier_F";
			for "_i" from 1 to 2 do {_player addItemToVest "Chemlight_red";};
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "MiniGrenade";};
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 3 do {_player addItemToUniform "20Rnd_650x39_Cased_Mag_F";};
			for "_i" from 1 to 6 do {_player addItemToVest "20Rnd_650x39_Cased_Mag_F";};
			for "_i" from 1 to 3 do {_player addItemToBackpack "20Rnd_650x39_Cased_Mag_F";};
			_player addItemToUniform "SmokeShell";
			_player addItemToVest "SmokeShellRed";

			_player addWeapon "srifle_DMR_07_blk_F";
			_player addPrimaryWeaponItem "muzzle_snds_65_TI_blk_F";
			_player addPrimaryWeaponItem "optic_DMS";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetSpecO_ghex_F";
			_player linkItem "ItemGPS";
			_player addItem "O_NVGoggles_ghex_F";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Bronze Supporter Loadout!", name player];
		};
			
			case 65: // CSAT (Pacific) Sniper (Jungle)
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Kitbag_rgr";
			_player addVest "V_Chestrig_khk";
			_player forceAddUniform "U_O_T_FullGhillie_tna_F";
			for "_i" from 1 to 2 do {_player addItemToVest "Chemlight_red";};
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "HandGrenade";};
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 2 do {_player addItemToUniform "5Rnd_127x108_APDS_Mag";};
			for "_i" from 1 to 4 do {_player addItemToVest "5Rnd_127x108_APDS_Mag";};
			for "_i" from 1 to 3 do {_player addItemToBackpack "5Rnd_127x108_APDS_Mag";};
			_player addItemToVest "ClaymoreDirectionalMine_Remote_Mag";
			_player addItemToVest "APERSTripMine_Wire_Mag";
			_player addItemToUniform "SmokeShell";
			_player addItemToVest "SmokeShellRed";
			_player addItemToVest "SmokeShellBlue";
			_player addItemToVest "SmokeShellYellow";

			_player addWeapon "srifle_GM6_ghex_F";
			_player addPrimaryWeaponItem "optic_LRPS_ghex_F";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addGoggles "G_Squares";
			_player linkItem "ItemGPS";
			_player addItem "O_NVGoggles_ghex_F";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Silver Supporter Loadout!", name player];
		};	

			
			// CSAT (Pacific) Viper
			case 66: // Viper Demo Specialist
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_ViperHarness_ghex_F";
			_player forceAddUniform "U_O_V_Soldier_Viper_F";
			for "_i" from 1 to 2 do {_player addItemToUniform "Chemlight_red";};
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "MiniGrenade";};
			for "_i" from 1 to 3 do {_player addItemToVest "APERSMine_Range_Mag";};
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 7 do {_player addItemToBackpack "30Rnd_65x39_caseless_green";};
			for "_i" from 1 to 3 do {_player addItemToBackpack "10Rnd_50BW_Mag_F";};
			for "_i" from 1 to 2 do {_player addItemToBackpack "SmokeShell";};
			_player addItemToBackpack "SmokeShellRed";
			_player addItemToBackpack "DemoCharge_Remote_Mag";
			_player addItemToBackpack "SLAMDirectionalMine_Wire_Mag";
			_player addWeapon "arifle_ARX_ghex_F";
			_player addPrimaryWeaponItem "muzzle_snds_65_TI_ghex_F";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_Arco_ghex_F";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetO_ViperSP_ghex_F";
			_player linkItem "ItemGPS";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Platinum Supporter Loadout!", name player];
		};	
			case 67: // Viper Marksman
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_ViperHarness_ghex_F";
			_player forceAddUniform "U_O_V_Soldier_Viper_F";
			for "_i" from 1 to 2 do {_player addItemToUniform "Chemlight_red";};
			for "_i" from 1 to 4 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 4 do {_player addItemToVest "MiniGrenade";};
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 8 do {_player addItemToBackpack "30Rnd_65x39_caseless_green";};
			for "_i" from 1 to 5 do {_player addItemToBackpack "10Rnd_50BW_Mag_F";};
			for "_i" from 1 to 2 do {_player addItemToBackpack "SmokeShell";};
			for "_i" from 1 to 2 do {_player addItemToBackpack "SmokeShellRed";};

			_player addWeapon "arifle_ARX_ghex_F";
			_player addPrimaryWeaponItem "muzzle_snds_65_TI_ghex_F";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_DMS_ghex_F";
			_player addPrimaryWeaponItem "bipod_02_F_blk";
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetO_ViperSP_ghex_F";
			_player linkItem "ItemGPS";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Platinum Supporter Loadout!", name player];
		};	
			case 68: // Viper Rifleman (AT)
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_ViperHarness_ghex_F";
			_player forceAddUniform "U_O_V_Soldier_Viper_F";
			for "_i" from 1 to 2 do {_player addItemToUniform "Chemlight_red";};
			for "_i" from 1 to 2 do {_player addItemToVest "16Rnd_9x21_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "MiniGrenade";};
			_player addItemToUniform "FirstAidKit";
			for "_i" from 1 to 4 do {_player addItemToBackpack "30Rnd_65x39_caseless_green";};
			_player addItemToBackpack "SmokeShell";
			_player addItemToBackpack "SmokeShellRed";
			for "_i" from 1 to 2 do {_player addItemToBackpack "RPG32_F";};

			_player addWeapon "arifle_ARX_ghex_F";
			_player addPrimaryWeaponItem "muzzle_snds_65_TI_ghex_F";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_Arco_ghex_F";
			_player addWeapon "launch_RPG32_ghex_F";;
			_player addWeapon "hgun_Rook40_F";
			_player addHandgunItem "muzzle_snds_L";

			_player addHeadgear "H_HelmetO_ViperSP_hex_F";
			_player linkItem "ItemGPS";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Platinum Supporter Loadout!", name player];
		};

		case 69: // AAF Marksman
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeUniform _player;
			removeHeadgear _player;
			removeGoggles _player;
			_player addBackpack "B_Kitbag_rgr";
			_player addVest "V_PlateCarrierIA1_dgtl";
			_player forceAddUniform "U_I_CombatUniform";
			_player addItemToUniform "Chemlight_green";
			_player addItemToVest "Chemlight_green";
			for "_i" from 1 to 2 do {_player addItemToVest "9Rnd_45ACP_Mag";};
			for "_i" from 1 to 2 do {_player addItemToVest "HandGrenade";};
			_player addItemToUniform "FirstAidKit";
			_player addItemToUniform "20Rnd_762x51_Mag";
			for "_i" from 1 to 6 do {_player addItemToVest "20Rnd_762x51_Mag";};
			for "_i" from 1 to 3 do {_player addItemToBackpack "20Rnd_762x51_Mag";};
			_player addItemToVest "SmokeShell";
			_player addItemToVest "SmokeShellGreen";

			_player addWeapon "srifle_EBR_F";
			_player addPrimaryWeaponItem "acc_pointer_IR";
			_player addPrimaryWeaponItem "optic_MRCO";
			_player addPrimaryWeaponItem "bipod_03_F_blk";
			_player addWeapon "hgun_ACPC2_F";
			_player addHandgunItem "muzzle_snds_acp";

			_player addHeadgear "H_HelmetIA";
			_player linkItem "ItemGPS";
			_player addItem "NVGoggles_INDEP";
			_player addWeapon "Rangefinder";
			//_player setObjectTextureGlobal  [0, _texDir + "hex.paa"]; backpackContainer _player setObjectTextureGlobal  [0, _texDir + "hex.paa"];
			systemChat format["Welcome %1, You have a Bronze Supporter Loadout!", name player];
		};	
			
	};

//			(unitBackpack _player) addmagazineCargo ["150Rnd_93x64_Mag",1];

	