// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: paintUniform.sqf
//	@file Author: LouD
//	@file Created: 14-02-2015

closeDialog 0;

startMenu =
[
	["Paint Clothing",true],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["THIS PAINTS YOUR UNIFORM", [2],  "", -2, [["expression", ""]], "1", "0"],
		["AND BACKPACK. THIS IS", [3],  "", -2, [["expression", ""]], "1", "0"],
		["RESET AT DEATH, RELOG OR", [4],  "", -2, [["expression", ""]], "1", "0"],
		["SERVER RESET! CLICK NEXT", [5],  "", -2, [["expression", ""]], "1", "0"],
		["IF YOU UNDERSTAND THIS.", [6],  "", -2, [["expression", ""]], "1", "0"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],		
		["NEXT", [8], "#USER:paintMenu", -5, [["expression", ""]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Cancel", [11], "", -3, [["expression", ""]], "1", "1"]
];
	
paintMenu =
[
	["Paint Clothing",true],
		["Hello Kitty ($ 500)", [2],  "", -5, [["expression", "[2] execVM 'client\systems\generalStore\painter.sqf'"]], "1", "1"],
		["Skulls ($ 500)", [3],  "", -5, [["expression", "[3] execVM 'client\systems\generalStore\painter.sqf'"]], "1", "1"],
		["Green Camo ($ 500)", [4],  "", -5, [["expression", "[4] execVM 'client\systems\generalStore\painter.sqf'"]], "1", "1"],
		["Orange Camo ($ 500)", [5],  "", -5, [["expression", "[5] execVM 'client\systems\generalStore\painter.sqf'"]], "1", "1"],
		["Red Camo ($ 500)", [6],  "", -5, [["expression", "[6] execVM 'client\systems\generalStore\painter.sqf'"]], "1", "1"],
		["Pink Camo ($ 500)", [7],  "", -5, [["expression", "[7] execVM 'client\systems\generalStore\painter.sqf'"]], "1", "1"],
		["Red Digi Camo ($ 500)", [8],  "", -5, [["expression", "[8] execVM 'client\systems\generalStore\painter.sqf'"]], "1", "1"],
		["Ice Camo ($ 500)", [9],  "", -5, [["expression", "[9] execVM 'client\systems\generalStore\painter.sqf'"]], "1", "1"],
		["Digital Camo ($ 500)", [10],  "", -5, [["expression", "[10] execVM 'client\systems\generalStore\painter.sqf'"]], "1", "1"],
		["Snakeskin Camo ($ 500)", [11],  "", -5, [["expression", "[11] execVM 'client\systems\generalStore\painter.sqf'"]], "1", "1"],
		["Yellow Camo ($ 500)", [12],  "", -5, [["expression", "[12] execVM 'client\systems\generalStore\painter.sqf'"]], "1", "1"],
		//["", [-1], "", -5, [["expression", ""]], "1", "0"],
		//["Next page", [10], "#USER:Supports", -5, [["expression", ""]], "1", "1"],
	["Cancel", [20], "", -3, [["expression", ""]], "1", "1"]
];
		
showCommandingMenu "#USER:startMenu";