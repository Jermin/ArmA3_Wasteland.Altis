//@file Version: 1.0
//@file Name: infomarkers.sqf
//@file Author: Cael817, GID Positioning System
//@file Desc: For placing markers





//Top left corner markers
_pos = [1000,30000,0];
_object = createMarker ["Info_1", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "Server address 176.10.245.30 Port 2302 ";
_object setMarkerColor "ColorBlack";	
_object setMarkerType "mil_unknown";

_pos = [1000,29750,0];
_object = createMarker ["Info_2", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "TeamSpeak address 176.10.245.30";
_object setMarkerColor "ColorBlack";	
_object setMarkerType "mil_unknown";
/*
_pos = [1000,29500,0];
_object = createMarker ["Info_3", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "Lorem Ipsum";
_object setMarkerColor "ColorBlack";	
_object setMarkerType "mil_unknown";

_pos = [1000,29250,0];
_object = createMarker ["Info_4", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "Lorem Ipsum";
_object setMarkerColor "ColorBlack";	
_object setMarkerType "mil_unknown";

_pos = [1000,29000,0];
_object = createMarker ["Info_5", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "Lorem Ipsum";
_object setMarkerColor "ColorBlack";	
_object setMarkerType "mil_unknown";
*/
//Spawn island warning
_pos = [14500,5870,0];
_object = createMarker ["Info_6", _pos];
_object setMarkerShape "ELLIPSE";
_object setMarkerText "...";
_object setMarkerColor "ColorRed";	
_object setMarkerType "mil_unknown";
_object setMarkerSize [120,120];
//Spawn island warning text and icon
_pos = [14500,5870,0];
_object = createMarker ["Info_7", _pos];
_object setMarkerShape "ICON";
_object setMarkerText "Dont go or Build here, you might get BANNED for doing so.";
_object setMarkerColor "ColorBlack";	
_object setMarkerType "mil_warning";
