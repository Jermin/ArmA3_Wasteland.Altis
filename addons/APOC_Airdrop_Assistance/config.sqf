//Configuration for Airdrop Assistance
//Author: Apoc

//APOC_AA_coolDownTime = 1; //Debug seconds
APOC_AA_coolDownTime = 1800; //Expressed in sec. 1800 = 30 minutes

APOC_AA_VehOptions =
[ // ["Menu Text",		ItemClassname,				Price,	"Drop Type"]
["Quadbike (Civilian)", "C_Quadbike_01_F", 			2000, 	 "vehicle"],
["Offroad HMG", 		"B_G_Offroad_01_armed_F",	5000, 	 "vehicle"],
["MH-9 Hummingbird",	"B_Heli_Light_01_F", 		6000,	 "vehicle"],
["Strider HMG", 		"I_MRAP_03_hmg_F", 			15000, 	 "vehicle"],
["A-143 Buzzard AA", 	"I_Plane_Fighter_03_AA_F", 	80000,  "vehicle"],
["MSE-3 Marid", 		"O_APC_Wheeled_02_rcws_F", 	30000,  "vehicle"],
["MBT-52 Kuma", 		"I_MBT_03_cannon_F", 		75000,  "vehicle"]
];

APOC_AA_SupOptions =
[// ["stringItemName", 	"Crate Type for fn_refillBox 	,Price," drop type"]
["Launchers", 			"mission_USLaunchers", 			35000, "supply"],
["Assault Rifles", 		"mission_USSpecial", 			25000, "supply"],
["DLC Rifles", 			"airdrop_DLC_Rifles", 			40000, "supply"],
["DLC LMGs", 			"airdrop_DLC_LMGs", 			45000, "supply"],
["Sniper Rifles", 		"airdrop_Snipers", 				50000, "supply"],

//"Menu Text",			"Crate Type", 			"Cost", "drop type"
["Food",				"Land_Sacks_goods_F",	5000, 	"picnic"],
["Water",				"Land_BarrelWater_F",	5000, 	"picnic"]
];
