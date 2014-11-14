//Maya ASCII 2015 scene
//Name: C_Robot_Run_Baked.ma
//Last modified: Fri, Nov 14, 2014 03:31:43 PM
//Codeset: UTF-8
file -rdi 1 -ns "C_Robot_Rig" -rfn "C_Robot_RigRN" -op "v=0;" "/Users/Emi-Bear/Desktop/MonsterRobotRunner/ART/C_Robot/C_Robot_Rig.ma";
file -r -ns "C_Robot_Rig" -dr 1 -rfn "C_Robot_RigRN" -op "v=0;" "/Users/Emi-Bear/Desktop/MonsterRobotRunner/ART/C_Robot/C_Robot_Rig.ma";
requires maya "2015";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOptions" -nodeType "mentalrayGlobals"
		 -nodeType "mentalrayItemsList" -dataType "byteArray" "Mayatomr" "2015.0 - 3.12.1.16 ";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201405190330-916664";
fileInfo "osv" "Mac OS X 10.9.5";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.9504755445508764 8.9556894766336548 -59.564229419212332 ;
	setAttr ".r" -type "double3" -3.5999999999934658 -539.99999999995782 0 ;
	setAttr ".rp" -type "double3" 0 4.4408920985006262e-16 0 ;
	setAttr ".rpt" -type "double3" -1.6485040534808017e-16 -3.2011027817205036e-16 -1.5411003564579974e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 60.971376276413906;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -2.4024111636356729 2.7628463091610271 -7.9405240774058026 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.36541005291005269 6.5211640211640214 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 24.888888888888889;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -26.408023182105925 8.3106477864455819 2.6714855918106997 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 0 0 -3.5527136788005009e-15 ;
	setAttr ".rpt" -type "double3" 4.7158929417610827e-15 7.4573770949171698e-20 3.2723540985014432e-15 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 29.1537364318235;
	setAttr ".ow" 220.42805525690497;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 2.7457132497175749 9.7780793779930892 0.26623476411085772 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
	setAttr -s 2 ".opt";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr -s 48 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "64";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "true";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
	setAttr ".stringOptions[28].name" -type "string" "trace camera clip";
	setAttr ".stringOptions[28].value" -type "string" "false";
	setAttr ".stringOptions[28].type" -type "string" "boolean";
	setAttr ".stringOptions[29].name" -type "string" "unified sampling";
	setAttr ".stringOptions[29].value" -type "string" "true";
	setAttr ".stringOptions[29].type" -type "string" "boolean";
	setAttr ".stringOptions[30].name" -type "string" "samples quality";
	setAttr ".stringOptions[30].value" -type "string" "0.25 0.25 0.25 0.25";
	setAttr ".stringOptions[30].type" -type "string" "color";
	setAttr ".stringOptions[31].name" -type "string" "samples min";
	setAttr ".stringOptions[31].value" -type "string" "1.0";
	setAttr ".stringOptions[31].type" -type "string" "scalar";
	setAttr ".stringOptions[32].name" -type "string" "samples max";
	setAttr ".stringOptions[32].value" -type "string" "100.0";
	setAttr ".stringOptions[32].type" -type "string" "scalar";
	setAttr ".stringOptions[33].name" -type "string" "samples error cutoff";
	setAttr ".stringOptions[33].value" -type "string" "0.0 0.0 0.0 0.0";
	setAttr ".stringOptions[33].type" -type "string" "color";
	setAttr ".stringOptions[34].name" -type "string" "samples per object";
	setAttr ".stringOptions[34].value" -type "string" "false";
	setAttr ".stringOptions[34].type" -type "string" "boolean";
	setAttr ".stringOptions[35].name" -type "string" "progressive";
	setAttr ".stringOptions[35].value" -type "string" "false";
	setAttr ".stringOptions[35].type" -type "string" "boolean";
	setAttr ".stringOptions[36].name" -type "string" "progressive max time";
	setAttr ".stringOptions[36].value" -type "string" "0";
	setAttr ".stringOptions[36].type" -type "string" "integer";
	setAttr ".stringOptions[37].name" -type "string" "progressive subsampling size";
	setAttr ".stringOptions[37].value" -type "string" "4";
	setAttr ".stringOptions[37].type" -type "string" "integer";
	setAttr ".stringOptions[38].name" -type "string" "iray";
	setAttr ".stringOptions[38].value" -type "string" "false";
	setAttr ".stringOptions[38].type" -type "string" "boolean";
	setAttr ".stringOptions[39].name" -type "string" "light relative scale";
	setAttr ".stringOptions[39].value" -type "string" "0.31831";
	setAttr ".stringOptions[39].type" -type "string" "scalar";
	setAttr ".stringOptions[40].name" -type "string" "trace camera motion vectors";
	setAttr ".stringOptions[40].value" -type "string" "false";
	setAttr ".stringOptions[40].type" -type "string" "boolean";
	setAttr ".stringOptions[41].name" -type "string" "ray differentials";
	setAttr ".stringOptions[41].value" -type "string" "true";
	setAttr ".stringOptions[41].type" -type "string" "boolean";
	setAttr ".stringOptions[42].name" -type "string" "environment lighting mode";
	setAttr ".stringOptions[42].value" -type "string" "off";
	setAttr ".stringOptions[42].type" -type "string" "string";
	setAttr ".stringOptions[43].name" -type "string" "environment lighting quality";
	setAttr ".stringOptions[43].value" -type "string" "0.2";
	setAttr ".stringOptions[43].type" -type "string" "scalar";
	setAttr ".stringOptions[44].name" -type "string" "environment lighting shadow";
	setAttr ".stringOptions[44].value" -type "string" "transparent";
	setAttr ".stringOptions[44].type" -type "string" "string";
	setAttr ".stringOptions[45].name" -type "string" "environment lighting resolution";
	setAttr ".stringOptions[45].value" -type "string" "512";
	setAttr ".stringOptions[45].type" -type "string" "integer";
	setAttr ".stringOptions[46].name" -type "string" "environment lighting shader samples";
	setAttr ".stringOptions[46].value" -type "string" "2";
	setAttr ".stringOptions[46].type" -type "string" "integer";
	setAttr ".stringOptions[47].name" -type "string" "environment lighting scale";
	setAttr ".stringOptions[47].value" -type "string" "1.0 1.0 1.0";
	setAttr ".stringOptions[47].type" -type "string" "color";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode reference -n "C_Robot_RigRN";
	setAttr -s 121 ".phl";
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".phl[108]" 0;
	setAttr ".phl[109]" 0;
	setAttr ".phl[110]" 0;
	setAttr ".phl[111]" 0;
	setAttr ".phl[112]" 0;
	setAttr ".phl[113]" 0;
	setAttr ".phl[114]" 0;
	setAttr ".phl[115]" 0;
	setAttr ".phl[116]" 0;
	setAttr ".phl[117]" 0;
	setAttr ".phl[118]" 0;
	setAttr ".phl[119]" 0;
	setAttr ".phl[120]" 0;
	setAttr ".phl[121]" 0;
	setAttr ".phl[122]" 0;
	setAttr ".phl[123]" 0;
	setAttr ".phl[124]" 0;
	setAttr ".phl[125]" 0;
	setAttr ".phl[126]" 0;
	setAttr ".phl[127]" 0;
	setAttr ".phl[128]" 0;
	setAttr ".phl[129]" 0;
	setAttr ".phl[130]" 0;
	setAttr ".phl[131]" 0;
	setAttr ".phl[132]" 0;
	setAttr ".phl[133]" 0;
	setAttr ".phl[134]" 0;
	setAttr ".phl[135]" 0;
	setAttr ".phl[136]" 0;
	setAttr ".phl[137]" 0;
	setAttr ".phl[138]" 0;
	setAttr ".phl[139]" 0;
	setAttr ".phl[140]" 0;
	setAttr ".phl[141]" 0;
	setAttr ".phl[142]" 0;
	setAttr ".phl[143]" 0;
	setAttr ".phl[144]" 0;
	setAttr ".phl[145]" 0;
	setAttr ".phl[146]" 0;
	setAttr ".phl[147]" 0;
	setAttr ".phl[148]" 0;
	setAttr ".phl[149]" 0;
	setAttr ".phl[150]" 0;
	setAttr ".phl[151]" 0;
	setAttr ".phl[152]" 0;
	setAttr ".phl[153]" 0;
	setAttr ".phl[154]" 0;
	setAttr ".phl[155]" 0;
	setAttr ".phl[156]" 0;
	setAttr ".phl[157]" 0;
	setAttr ".phl[158]" 0;
	setAttr ".phl[159]" 0;
	setAttr ".phl[160]" 0;
	setAttr ".phl[161]" 0;
	setAttr ".phl[162]" 0;
	setAttr ".phl[163]" 0;
	setAttr ".phl[164]" 0;
	setAttr ".phl[165]" 0;
	setAttr ".phl[166]" 0;
	setAttr ".phl[167]" 0;
	setAttr ".phl[168]" 0;
	setAttr ".phl[169]" 0;
	setAttr ".phl[170]" 0;
	setAttr ".phl[171]" 0;
	setAttr ".phl[172]" 0;
	setAttr ".phl[173]" 0;
	setAttr ".phl[174]" 0;
	setAttr ".phl[175]" 0;
	setAttr ".phl[176]" 0;
	setAttr ".phl[177]" 0;
	setAttr ".phl[178]" 0;
	setAttr ".phl[179]" 0;
	setAttr ".phl[180]" 0;
	setAttr ".phl[181]" 0;
	setAttr ".phl[182]" 0;
	setAttr ".phl[183]" 0;
	setAttr ".phl[184]" 0;
	setAttr ".phl[185]" 0;
	setAttr ".phl[186]" 0;
	setAttr ".phl[187]" 0;
	setAttr ".phl[188]" 0;
	setAttr ".phl[189]" 0;
	setAttr ".phl[190]" 0;
	setAttr ".phl[191]" 0;
	setAttr ".phl[192]" 0;
	setAttr ".phl[193]" 0;
	setAttr ".phl[194]" 0;
	setAttr ".phl[195]" 0;
	setAttr ".phl[196]" 0;
	setAttr ".phl[197]" 0;
	setAttr ".phl[198]" 0;
	setAttr ".phl[199]" 0;
	setAttr ".phl[200]" 0;
	setAttr ".phl[201]" 0;
	setAttr ".phl[202]" 0;
	setAttr ".phl[203]" 0;
	setAttr ".phl[204]" 0;
	setAttr ".phl[205]" 0;
	setAttr ".phl[206]" 0;
	setAttr ".phl[207]" 0;
	setAttr ".phl[208]" 0;
	setAttr ".phl[209]" 0;
	setAttr ".phl[210]" 0;
	setAttr ".phl[211]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"C_Robot_RigRN"
		"C_Robot_RigRN" 25
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_knee" "translate" 
		" -type \"double3\" 0.89754361429717999 0 5.00565334778880455"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_knee" "translateZ" 
		" -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_knee" "translateX" 
		" -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_knee" "translateY" 
		" -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_knee" "translate" 
		" -type \"double3\" -0.168131098657339 0.59321638243378327 -0.28164521405500897"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_knee" "translateX" 
		" -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_knee" "translateY" 
		" -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_knee" "translateZ" 
		" -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_knee" "rotate" 
		" -type \"double3\" 0 0 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_knee" "rotateX" 
		" -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_knee" "rotateY" 
		" -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_knee" "rotateZ" 
		" -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim" "GlobalScale" " -av -k 1 1"
		
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_knee.translateZ" 
		"C_Robot_RigRN.placeHolderList[91]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_knee.translateX" 
		"C_Robot_RigRN.placeHolderList[92]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_knee.translateY" 
		"C_Robot_RigRN.placeHolderList[93]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_knee.rotateX" 
		"C_Robot_RigRN.placeHolderList[94]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_knee.rotateY" 
		"C_Robot_RigRN.placeHolderList[95]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_knee.rotateZ" 
		"C_Robot_RigRN.placeHolderList[96]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_knee.translateX" 
		"C_Robot_RigRN.placeHolderList[97]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_knee.translateY" 
		"C_Robot_RigRN.placeHolderList[98]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_knee.translateZ" 
		"C_Robot_RigRN.placeHolderList[99]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_knee.rotateX" 
		"C_Robot_RigRN.placeHolderList[100]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_knee.rotateY" 
		"C_Robot_RigRN.placeHolderList[101]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_knee.rotateZ" 
		"C_Robot_RigRN.placeHolderList[102]" ""
		"C_Robot_RigRN" 286
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:L_foot_joint_group" "translate" 
		" -type \"double3\" 0.45535413590961493 10.51283759197447587 -0.43717832093266495"
		
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:L_foot_joint_group" "translateX" 
		" -av"
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:L_foot_joint_group" "translateY" 
		" -av"
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:L_foot_joint_group" "translateZ" 
		" -av"
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:L_foot_joint_group" "rotate" " -type \"double3\" 0 89.99999999999997158 0"
		
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:L_foot_joint_group" "rotateX" " -av"
		
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:L_foot_joint_group" "rotateY" " -av"
		
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:L_foot_joint_group" "rotateZ" " -av"
		
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:L_foot_joint_group|C_Robot_Rig:L_heel_joint|C_Robot_Rig:L_ball_joint|C_Robot_Rig:L_toe_joint" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:L_foot_joint_group|C_Robot_Rig:L_heel_joint|C_Robot_Rig:L_ball_joint|C_Robot_Rig:L_toe_joint" 
		"rotateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:R_foot_joint_group" "translate" 
		" -type \"double3\" 0.45535413590961515 10.51283759197447587 -0.43717832093266518"
		
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:R_foot_joint_group" "translateX" 
		" -av"
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:R_foot_joint_group" "translateY" 
		" -av"
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:R_foot_joint_group" "translateZ" 
		" -av"
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:R_foot_joint_group|C_Robot_Rig:R_heel_joint" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:R_foot_joint_group|C_Robot_Rig:R_heel_joint" 
		"rotateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint" 
		"rotate" " -type \"double3\" 179.99048206231731228 0 89.44602637569074943"
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint" 
		"rotateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint" 
		"rotateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint" 
		"rotateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint" 
		"segmentScaleCompensate" " 1"
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint" 
		"rotate" " -type \"double3\" 89.64093238402443831 0.98442862658362251 0.00016354873871430057"
		
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint" 
		"rotateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint" 
		"rotateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint" 
		"rotateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint" 
		"segmentScaleCompensate" " 1"
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:head_joint" 
		"translate" " -type \"double3\" 3.68277415258582508 0 0"
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:head_joint" 
		"translateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:head_joint" 
		"translateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:head_joint" 
		"translateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim" "visibility" " -av 1"
		
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim" "translate" " -type \"double3\" 0 0 0"
		
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim" "translateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim" "translateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim" "translateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim" "rotate" " -type \"double3\" 0 90 0"
		
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim" "rotateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim" "rotateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim" "rotateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim" 
		"translateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim" 
		"translateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim" 
		"translateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim" 
		"rotateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim" 
		"rotateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim" 
		"rotateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim" 
		"translateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim" 
		"translateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim" 
		"translateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim" 
		"rotateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim" 
		"rotateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim" 
		"rotateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim" 
		"translateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim" 
		"translateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim" 
		"translateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim" 
		"rotateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim" 
		"rotateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim" 
		"rotateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim" 
		"rotateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim" 
		"rotateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim" 
		"rotateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim" 
		"rotateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim" 
		"rotateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim" 
		"rotateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim" 
		"rotateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim" 
		"rotateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim" 
		"rotateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim|C_Robot_Rig:L_hand_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim|C_Robot_Rig:L_hand_anim" 
		"rotateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim|C_Robot_Rig:L_hand_anim" 
		"rotateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim|C_Robot_Rig:L_hand_anim" 
		"rotateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim|C_Robot_Rig:L_hand_anim|C_Robot_Rig:L_claw_1_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim|C_Robot_Rig:L_hand_anim|C_Robot_Rig:L_claw_1_anim" 
		"rotateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim|C_Robot_Rig:L_hand_anim|C_Robot_Rig:L_claw_1_anim" 
		"rotateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim|C_Robot_Rig:L_hand_anim|C_Robot_Rig:L_claw_1_anim" 
		"rotateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim|C_Robot_Rig:L_hand_anim|C_Robot_Rig:L_claw_2_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim|C_Robot_Rig:L_hand_anim|C_Robot_Rig:L_claw_2_anim" 
		"rotateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim|C_Robot_Rig:L_hand_anim|C_Robot_Rig:L_claw_2_anim" 
		"rotateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim|C_Robot_Rig:L_hand_anim|C_Robot_Rig:L_claw_2_anim" 
		"rotateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim" 
		"rotateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim" 
		"rotateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim" 
		"rotateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim" 
		"rotateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim" 
		"rotateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim" 
		"rotateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim" 
		"rotateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim" 
		"rotateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim" 
		"rotateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim|C_Robot_Rig:R_hand_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim|C_Robot_Rig:R_hand_anim" 
		"rotateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim|C_Robot_Rig:R_hand_anim" 
		"rotateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim|C_Robot_Rig:R_hand_anim" 
		"rotateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim|C_Robot_Rig:R_hand_anim|C_Robot_Rig:R_claw_1_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim|C_Robot_Rig:R_hand_anim|C_Robot_Rig:R_claw_1_anim" 
		"rotateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim|C_Robot_Rig:R_hand_anim|C_Robot_Rig:R_claw_1_anim" 
		"rotateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim|C_Robot_Rig:R_hand_anim|C_Robot_Rig:R_claw_1_anim" 
		"rotateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim|C_Robot_Rig:R_hand_anim|C_Robot_Rig:R_claw_2_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim|C_Robot_Rig:R_hand_anim|C_Robot_Rig:R_claw_2_anim" 
		"rotateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim|C_Robot_Rig:R_hand_anim|C_Robot_Rig:R_claw_2_anim" 
		"rotateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim|C_Robot_Rig:R_hand_anim|C_Robot_Rig:R_claw_2_anim" 
		"rotateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:head_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:head_anim" 
		"translateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:head_anim" 
		"translateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:head_anim" 
		"translateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:head_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:head_anim" 
		"rotateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:head_anim" 
		"rotateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:head_anim" 
		"rotateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:waist_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:waist_anim" 
		"translateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:waist_anim" 
		"translateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:waist_anim" 
		"translateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:waist_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:waist_anim" 
		"rotateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:waist_anim" 
		"rotateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:waist_anim" 
		"rotateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_foot_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_foot_anim" 
		"translateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_foot_anim" 
		"translateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_foot_anim" 
		"translateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_foot_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_foot_anim" 
		"rotateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_foot_anim" 
		"rotateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_foot_anim" 
		"rotateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_foot_anim" 
		"toe" " -av -k 1 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_foot_anim" 
		"ToeRoll" " -av -k 1 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_foot_anim" 
		"PivotToe" " -av -k 1 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_foot_anim" 
		"BallPivot" " -av -k 1 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_foot_anim" 
		"Bank" " -av -k 1 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_foot_anim" 
		"FootRoll" " -av -k 1 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim" 
		"translateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim" 
		"translateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim" 
		"translateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim" 
		"rotateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim" 
		"rotateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim" 
		"rotateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim" 
		"toe" " -av -k 1 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim" 
		"ToeRoll" " -av -k 1 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim" 
		"PivotToe" " -av -k 1 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim" 
		"BallPivot" " -av -k 1 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim" 
		"Bank" " -av -k 1 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim" 
		"FootRoll" " -av -k 1 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_knee_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_knee_anim" 
		"translateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_knee_anim" 
		"translateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_knee_anim" 
		"translateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_knee_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_knee_anim" 
		"rotateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_knee_anim" 
		"rotateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_knee_anim" 
		"rotateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_knee_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_knee_anim" 
		"translateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_knee_anim" 
		"translateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_knee_anim" 
		"translateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_knee_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_knee_anim" 
		"rotateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_knee_anim" 
		"rotateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_knee_anim" 
		"rotateZ" " -av"
		2 "C_Robot_Rig:Geo_Layer" "displayType" " 2"
		2 "C_Robot_Rig:Geo_Layer" "visibility" " 1"
		2 "C_Robot_Rig:Contrl_Layer" "displayType" " 0"
		2 "C_Robot_Rig:Contrl_Layer" "visibility" " 1"
		2 "C_Robot_Rig:Joint_Layer" "displayType" " 1"
		2 "C_Robot_Rig:Joint_Layer" "visibility" " 1"
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim.visibility" 
		"C_Robot_RigRN.placeHolderList[103]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim.translateX" 
		"C_Robot_RigRN.placeHolderList[104]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim.translateY" 
		"C_Robot_RigRN.placeHolderList[105]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim.translateZ" 
		"C_Robot_RigRN.placeHolderList[106]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim.rotateX" 
		"C_Robot_RigRN.placeHolderList[107]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim.rotateY" 
		"C_Robot_RigRN.placeHolderList[108]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim.rotateZ" 
		"C_Robot_RigRN.placeHolderList[109]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim.translateX" 
		"C_Robot_RigRN.placeHolderList[110]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim.translateY" 
		"C_Robot_RigRN.placeHolderList[111]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim.translateZ" 
		"C_Robot_RigRN.placeHolderList[112]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim.rotateX" 
		"C_Robot_RigRN.placeHolderList[113]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim.rotateY" 
		"C_Robot_RigRN.placeHolderList[114]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim.rotateZ" 
		"C_Robot_RigRN.placeHolderList[115]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim.translateX" 
		"C_Robot_RigRN.placeHolderList[116]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim.translateY" 
		"C_Robot_RigRN.placeHolderList[117]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim.translateZ" 
		"C_Robot_RigRN.placeHolderList[118]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim.rotateX" 
		"C_Robot_RigRN.placeHolderList[119]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim.rotateY" 
		"C_Robot_RigRN.placeHolderList[120]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim.rotateZ" 
		"C_Robot_RigRN.placeHolderList[121]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim.translateX" 
		"C_Robot_RigRN.placeHolderList[122]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim.translateY" 
		"C_Robot_RigRN.placeHolderList[123]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim.translateZ" 
		"C_Robot_RigRN.placeHolderList[124]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim.rotateX" 
		"C_Robot_RigRN.placeHolderList[125]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim.rotateY" 
		"C_Robot_RigRN.placeHolderList[126]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim.rotateZ" 
		"C_Robot_RigRN.placeHolderList[127]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim.rotateX" 
		"C_Robot_RigRN.placeHolderList[128]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim.rotateY" 
		"C_Robot_RigRN.placeHolderList[129]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim.rotateZ" 
		"C_Robot_RigRN.placeHolderList[130]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim.rotateX" 
		"C_Robot_RigRN.placeHolderList[131]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim.rotateY" 
		"C_Robot_RigRN.placeHolderList[132]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim.rotateZ" 
		"C_Robot_RigRN.placeHolderList[133]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim.rotateX" 
		"C_Robot_RigRN.placeHolderList[134]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim.rotateY" 
		"C_Robot_RigRN.placeHolderList[135]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim.rotateZ" 
		"C_Robot_RigRN.placeHolderList[136]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim|C_Robot_Rig:L_hand_anim.rotateX" 
		"C_Robot_RigRN.placeHolderList[137]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim|C_Robot_Rig:L_hand_anim.rotateY" 
		"C_Robot_RigRN.placeHolderList[138]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim|C_Robot_Rig:L_hand_anim.rotateZ" 
		"C_Robot_RigRN.placeHolderList[139]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim|C_Robot_Rig:L_hand_anim|C_Robot_Rig:L_claw_1_anim.rotateX" 
		"C_Robot_RigRN.placeHolderList[140]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim|C_Robot_Rig:L_hand_anim|C_Robot_Rig:L_claw_1_anim.rotateY" 
		"C_Robot_RigRN.placeHolderList[141]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim|C_Robot_Rig:L_hand_anim|C_Robot_Rig:L_claw_1_anim.rotateZ" 
		"C_Robot_RigRN.placeHolderList[142]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim|C_Robot_Rig:L_hand_anim|C_Robot_Rig:L_claw_2_anim.rotateX" 
		"C_Robot_RigRN.placeHolderList[143]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim|C_Robot_Rig:L_hand_anim|C_Robot_Rig:L_claw_2_anim.rotateY" 
		"C_Robot_RigRN.placeHolderList[144]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim|C_Robot_Rig:L_hand_anim|C_Robot_Rig:L_claw_2_anim.rotateZ" 
		"C_Robot_RigRN.placeHolderList[145]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim.rotateX" 
		"C_Robot_RigRN.placeHolderList[146]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim.rotateY" 
		"C_Robot_RigRN.placeHolderList[147]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim.rotateZ" 
		"C_Robot_RigRN.placeHolderList[148]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim.rotateX" 
		"C_Robot_RigRN.placeHolderList[149]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim.rotateY" 
		"C_Robot_RigRN.placeHolderList[150]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim.rotateZ" 
		"C_Robot_RigRN.placeHolderList[151]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim.rotateX" 
		"C_Robot_RigRN.placeHolderList[152]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim.rotateY" 
		"C_Robot_RigRN.placeHolderList[153]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim.rotateZ" 
		"C_Robot_RigRN.placeHolderList[154]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim|C_Robot_Rig:R_hand_anim.rotateX" 
		"C_Robot_RigRN.placeHolderList[155]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim|C_Robot_Rig:R_hand_anim.rotateY" 
		"C_Robot_RigRN.placeHolderList[156]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim|C_Robot_Rig:R_hand_anim.rotateZ" 
		"C_Robot_RigRN.placeHolderList[157]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim|C_Robot_Rig:R_hand_anim|C_Robot_Rig:R_claw_1_anim.rotateX" 
		"C_Robot_RigRN.placeHolderList[158]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim|C_Robot_Rig:R_hand_anim|C_Robot_Rig:R_claw_1_anim.rotateY" 
		"C_Robot_RigRN.placeHolderList[159]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim|C_Robot_Rig:R_hand_anim|C_Robot_Rig:R_claw_1_anim.rotateZ" 
		"C_Robot_RigRN.placeHolderList[160]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim|C_Robot_Rig:R_hand_anim|C_Robot_Rig:R_claw_2_anim.rotateX" 
		"C_Robot_RigRN.placeHolderList[161]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim|C_Robot_Rig:R_hand_anim|C_Robot_Rig:R_claw_2_anim.rotateY" 
		"C_Robot_RigRN.placeHolderList[162]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim|C_Robot_Rig:R_hand_anim|C_Robot_Rig:R_claw_2_anim.rotateZ" 
		"C_Robot_RigRN.placeHolderList[163]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:head_anim.translateX" 
		"C_Robot_RigRN.placeHolderList[164]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:head_anim.translateY" 
		"C_Robot_RigRN.placeHolderList[165]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:head_anim.translateZ" 
		"C_Robot_RigRN.placeHolderList[166]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:head_anim.rotateX" 
		"C_Robot_RigRN.placeHolderList[167]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:head_anim.rotateY" 
		"C_Robot_RigRN.placeHolderList[168]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:head_anim.rotateZ" 
		"C_Robot_RigRN.placeHolderList[169]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:waist_anim.translateX" 
		"C_Robot_RigRN.placeHolderList[170]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:waist_anim.translateY" 
		"C_Robot_RigRN.placeHolderList[171]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:waist_anim.translateZ" 
		"C_Robot_RigRN.placeHolderList[172]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:waist_anim.rotateX" 
		"C_Robot_RigRN.placeHolderList[173]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:waist_anim.rotateY" 
		"C_Robot_RigRN.placeHolderList[174]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:waist_anim.rotateZ" 
		"C_Robot_RigRN.placeHolderList[175]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_foot_anim.toe" 
		"C_Robot_RigRN.placeHolderList[176]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_foot_anim.ToeRoll" 
		"C_Robot_RigRN.placeHolderList[177]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_foot_anim.PivotToe" 
		"C_Robot_RigRN.placeHolderList[178]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_foot_anim.BallPivot" 
		"C_Robot_RigRN.placeHolderList[179]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_foot_anim.Bank" 
		"C_Robot_RigRN.placeHolderList[180]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_foot_anim.FootRoll" 
		"C_Robot_RigRN.placeHolderList[181]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_foot_anim.translateX" 
		"C_Robot_RigRN.placeHolderList[182]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_foot_anim.translateY" 
		"C_Robot_RigRN.placeHolderList[183]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_foot_anim.translateZ" 
		"C_Robot_RigRN.placeHolderList[184]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_foot_anim.rotateX" 
		"C_Robot_RigRN.placeHolderList[185]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_foot_anim.rotateY" 
		"C_Robot_RigRN.placeHolderList[186]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_foot_anim.rotateZ" 
		"C_Robot_RigRN.placeHolderList[187]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim.toe" 
		"C_Robot_RigRN.placeHolderList[188]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim.ToeRoll" 
		"C_Robot_RigRN.placeHolderList[189]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim.PivotToe" 
		"C_Robot_RigRN.placeHolderList[190]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim.BallPivot" 
		"C_Robot_RigRN.placeHolderList[191]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim.Bank" 
		"C_Robot_RigRN.placeHolderList[192]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim.FootRoll" 
		"C_Robot_RigRN.placeHolderList[193]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim.translateX" 
		"C_Robot_RigRN.placeHolderList[194]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim.translateY" 
		"C_Robot_RigRN.placeHolderList[195]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim.translateZ" 
		"C_Robot_RigRN.placeHolderList[196]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim.rotateX" 
		"C_Robot_RigRN.placeHolderList[197]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim.rotateY" 
		"C_Robot_RigRN.placeHolderList[198]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim.rotateZ" 
		"C_Robot_RigRN.placeHolderList[199]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_knee_anim.translateX" 
		"C_Robot_RigRN.placeHolderList[200]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_knee_anim.translateY" 
		"C_Robot_RigRN.placeHolderList[201]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_knee_anim.translateZ" 
		"C_Robot_RigRN.placeHolderList[202]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_knee_anim.rotateX" 
		"C_Robot_RigRN.placeHolderList[203]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_knee_anim.rotateY" 
		"C_Robot_RigRN.placeHolderList[204]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_knee_anim.rotateZ" 
		"C_Robot_RigRN.placeHolderList[205]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_knee_anim.translateX" 
		"C_Robot_RigRN.placeHolderList[206]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_knee_anim.translateY" 
		"C_Robot_RigRN.placeHolderList[207]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_knee_anim.translateZ" 
		"C_Robot_RigRN.placeHolderList[208]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_knee_anim.rotateX" 
		"C_Robot_RigRN.placeHolderList[209]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_knee_anim.rotateY" 
		"C_Robot_RigRN.placeHolderList[210]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_knee_anim.rotateZ" 
		"C_Robot_RigRN.placeHolderList[211]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode mentalrayOptions -s -n "miContourPreset";
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n"
		+ "            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 0\n                -planes 0\n                -lights 0\n                -cameras 0\n                -controlVertices 0\n"
		+ "                -hulls 0\n                -grid 1\n                -imagePlane 0\n                -joints 0\n                -ikHandles 0\n                -deformers 0\n                -dynamics 0\n                -particleInstancers 0\n                -fluids 0\n                -hairSystems 0\n                -follicles 0\n                -nCloths 0\n                -nParticles 0\n                -nRigids 0\n                -dynamicConstraints 0\n                -locators 0\n                -manipulators 1\n                -pluginShapes 0\n                -dimensions 0\n                -handles 0\n                -pivots 0\n                -textures 0\n                -strokes 0\n                -motionTrails 0\n                -clipGhosts 0\n                -greasePencils 0\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 0\n            -planes 0\n            -lights 0\n            -cameras 0\n            -controlVertices 0\n            -hulls 0\n            -grid 1\n            -imagePlane 0\n            -joints 0\n"
		+ "            -ikHandles 0\n            -deformers 0\n            -dynamics 0\n            -particleInstancers 0\n            -fluids 0\n            -hairSystems 0\n            -follicles 0\n            -nCloths 0\n            -nParticles 0\n            -nRigids 0\n            -dynamicConstraints 0\n            -locators 0\n            -manipulators 1\n            -pluginShapes 0\n            -dimensions 0\n            -handles 0\n            -pivots 0\n            -textures 0\n            -strokes 0\n            -motionTrails 0\n            -clipGhosts 0\n            -greasePencils 0\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n"
		+ "                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n"
		+ "                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n"
		+ "                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n"
		+ "            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n"
		+ "            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 0\n                -planes 0\n                -lights 0\n                -cameras 0\n                -controlVertices 0\n                -hulls 0\n                -grid 1\n                -imagePlane 0\n                -joints 1\n                -ikHandles 0\n                -deformers 0\n                -dynamics 0\n                -particleInstancers 0\n                -fluids 0\n                -hairSystems 0\n                -follicles 0\n                -nCloths 0\n                -nParticles 0\n                -nRigids 0\n                -dynamicConstraints 0\n                -locators 0\n                -manipulators 1\n                -pluginShapes 0\n                -dimensions 0\n                -handles 0\n                -pivots 0\n                -textures 0\n                -strokes 0\n                -motionTrails 0\n                -clipGhosts 0\n                -greasePencils 0\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 0\n            -planes 0\n"
		+ "            -lights 0\n            -cameras 0\n            -controlVertices 0\n            -hulls 0\n            -grid 1\n            -imagePlane 0\n            -joints 1\n            -ikHandles 0\n            -deformers 0\n            -dynamics 0\n            -particleInstancers 0\n            -fluids 0\n            -hairSystems 0\n            -follicles 0\n            -nCloths 0\n            -nParticles 0\n            -nRigids 0\n            -dynamicConstraints 0\n            -locators 0\n            -manipulators 1\n            -pluginShapes 0\n            -dimensions 0\n            -handles 0\n            -pivots 0\n            -textures 0\n            -strokes 0\n            -motionTrails 0\n            -clipGhosts 0\n            -greasePencils 0\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n"
		+ "                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n"
		+ "\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n"
		+ "                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n"
		+ "                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n"
		+ "                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n"
		+ "                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n"
		+ "                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n"
		+ "                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n"
		+ "                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n"
		+ "                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                $editorName;\n\t\t\tif (`objExists nodeEditorPanel1Info`) nodeEditor -e -restoreInfo nodeEditorPanel1Info $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t\tif (`objExists nodeEditorPanel1Info`) nodeEditor -e -restoreInfo nodeEditorPanel1Info $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 0\\n    -controlVertices 0\\n    -hulls 0\\n    -grid 1\\n    -imagePlane 0\\n    -joints 1\\n    -ikHandles 0\\n    -deformers 0\\n    -dynamics 0\\n    -particleInstancers 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 0\\n    -manipulators 1\\n    -pluginShapes 0\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 0\\n    -strokes 0\\n    -motionTrails 0\\n    -clipGhosts 0\\n    -greasePencils 0\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 0\\n    -controlVertices 0\\n    -hulls 0\\n    -grid 1\\n    -imagePlane 0\\n    -joints 1\\n    -ikHandles 0\\n    -deformers 0\\n    -dynamics 0\\n    -particleInstancers 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 0\\n    -manipulators 1\\n    -pluginShapes 0\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 0\\n    -strokes 0\\n    -motionTrails 0\\n    -clipGhosts 0\\n    -greasePencils 0\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min -1 -max 12 -ast -1 -aet 48 ";
	setAttr ".st" 6;
createNode hyperGraphInfo -n "nodeEditorPanel1Info";
createNode hyperView -n "hyperView1";
	setAttr ".dag" no;
createNode hyperLayout -n "hyperLayout1";
	setAttr ".ihi" 0;
	setAttr -s 8 ".hyp";
	setAttr ".hyp[0].nvs" 1920;
	setAttr ".hyp[1].nvs" 1920;
	setAttr ".hyp[2].nvs" 1920;
	setAttr ".hyp[3].nvs" 1920;
	setAttr ".hyp[4].nvs" 1920;
	setAttr ".hyp[5].nvs" 1920;
	setAttr ".hyp[6].nvs" 1920;
	setAttr ".hyp[7].nvs" 1920;
	setAttr ".anf" yes;
createNode animCurveTL -n "L_foot_anim_translateX";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 0 2 0 3 0 4 -0.2557526056206072 5 0.0033832932467926452
		 6 -0.20012892131944771 7 -0.050486986432440213 8 -0.2557471923607143 9 -0.58680797976185439
		 10 -0.91804183697383346 11 -1.2374667349018094 12 -1.4508256362378531 13 0;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 -0.31942489743232727 -0.31942489743232727 
		0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0 0 0 0 0 0 -0.21335889399051666 1.0373377799987793 
		0;
createNode animCurveTL -n "L_foot_anim_translateY";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 7.5344924638264592 2 5.6711951582159221
		 3 1.788483947915549 4 2.7052299662373369 5 3.4849303733004913 6 1.5719534734170459
		 7 0 8 0 9 0 10 0 11 0 12 2.2287395474758771 13 5.1392666602575092;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  -0.34487295150756836 -0.34487295150756836 
		-0.34487295150756836 -0.34487295150756836 -0.34487295150756836 -0.34487295150756836 
		0 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  4.4222636222839355 4.4222636222839355 4.4222636222839355 
		4.4222636222839355 4.4222636222839355 4.4222636222839355 2.2287395000457764 1.1054388284683228 
		-2.1996450424194336;
createNode animCurveTL -n "L_foot_anim_translateZ";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 -8.6825070306002878 2 -8.7419116232057466
		 3 -6.2428718834714081 4 3.7345198443837004 5 5.9609131066699863 6 6.3985684467610193
		 7 3.7520722767214645 8 1.2409676241707808 9 -1.2706856562780726 10 -3.7836519625357257
		 11 -6.2070274369791072 12 -9.1947966726000523 13 -8.1063823810601452;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  6.2587156295776367 6.2587156295776367 6.2587156295776367 
		6.2587156295776367 6.2587156295776367 6.2587156295776367 -2.4233753681182861 -2.4233753681182861 
		0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  -9.1021595001220703 -9.1021595001220703 
		-9.1021595001220703 -9.1021595001220703 -9.1021595001220703 -9.1021595001220703 -2.9877691268920898 
		10.762953758239746 1.0729975700378418;
createNode animCurveTL -n "R_foot_anim_translateX";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 -0.18722416858727717 2 -0.023408555312175033
		 3 -0.28314482710655092 4 -0.37406844763475799 5 -0.46531181580830105 6 -0.77147656243843721
		 7 -1.0558732677315326 8 -0.99238578681230039 9 -0.81181958715540448 10 -0.19652047965076344
		 11 -0.40247779876928291 12 -0.31898500719367845 13 -0.18722416858727717;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  -0.090923622250556946 -0.090923622250556946 
		-0.090923622250556946 -0.090923622250556946 -0.090923622250556946 -0.090923622250556946 
		-0.2059573233127594 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  -0.028604606166481972 -0.028604606166481972 
		-0.028604606166481972 -0.028604606166481972 -0.028604606166481972 -0.028604606166481972 
		0.083492793142795563 -0.45407417416572571 0.16381561756134033;
createNode animCurveTL -n "R_foot_anim_translateY";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 -0.016878808554913166 2 -0.0021103499972393094
		 3 -0.025526337577606119 4 -0.03372336895232296 5 -0.041949226516159635 6 2.414593078091027
		 7 7.8316082787986208 8 4.0800518859758714 9 1.5452773051292572 10 3.7672892724345743
		 11 3.2909631610562049 12 2.1165571806568928 13 -0.016878808554913166;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  -0.0081970309838652611 -0.0081970309838652611 
		-0.0081970309838652611 -0.0081970309838652611 -0.0081970309838652611 -0.0081970309838652611 
		-0.4763261079788208 -1.0556217432022095 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  -0.002578789135441184 -0.002578789135441184 
		-0.002578789135441184 -0.002578789135441184 -0.002578789135441184 -0.002578789135441184 
		-1.1744059324264526 0.46394109725952148 0.014768458902835846;
createNode animCurveTL -n "R_foot_anim_translateZ";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 3.8418297394918404 2 1.2443713334575965
		 3 -1.2303542518840132 4 -3.7342708064979995 5 -6.2469927894242963 6 -8.5607208362184704
		 7 -8.0514138837151297 8 -8.8175662318761443 9 -6.136748790517367 10 5.0579090327020388
		 11 6.4112502019696 12 6.3285811280262125 13 3.8418297394918404;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  -2.5039165019989014 -2.5039165019989014 
		-2.5039165019989014 -2.5039165019989014 -2.5039165019989014 -2.5039165019989014 1.3533412218093872 
		1.0212692022323608 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  7.5648541450500488 7.5648541450500488 7.5648541450500488 
		7.5648541450500488 7.5648541450500488 7.5648541450500488 -0.082669071853160858 -11.940143585205078 
		-2.5974583625793457;
createNode animCurveTL -n "root_anim_translateX";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 -2.1767205394989189 2 -2.2802829860441407
		 3 -1.9347981071844547 4 -1.4206176218229005 5 -1.1402388367656118 6 0.65171320012986356
		 7 1.8218712682753515 8 1.3358119269704809 9 0.87231688501929816 10 0.44145307006290657
		 11 -0.085855996231539944 12 -1.4257707756634614 13 -0.58620985317168828;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 -0.52730906009674072 0.32164284586906433 
		0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0 0 0 0 0 0 -1.3399147987365723 -0.55719935894012451 
		0;
createNode animCurveTL -n "root_anim_translateY";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 -0.81916381892361612 2 -2.3369001692569484
		 3 -1.540052007517567 4 -0.20312904626838213 5 -1.1086415690455329 6 -1.2058810243099636
		 7 -0.2997920360610411 8 -2.7776016942300377 9 -1.3004226695410053 10 -0.027716165367224321
		 11 -0.93382589852758768 12 -1.0495214332114327 13 -0.68362255266873784;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 -0.90610975027084351 -0.1972595602273941 
		0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  -0.21459951996803284 -0.21459951996803284 
		-0.21459951996803284 -0.21459951996803284 -0.21459951996803284 -0.21459951996803284 
		-0.1156955361366272 -0.1994723379611969 -1.2875970602035522;
createNode animCurveTL -n "root_anim_translateZ";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 0.64831425841748647 2 0.93016954872639723
		 3 -0.10826462857058247 4 0.70600480054336279 5 0.53675700004134819 6 0.60194082225539458
		 7 0.60370376836066453 8 0.14558718727452463 9 -0.20016612053628058 10 0.26483142979974772
		 11 0.41728084609063326 12 0.26913013848710804 13 0.70916496341647561;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0.15244941413402557 -0.24780051410198212 
		0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0.5364987850189209 0.5364987850189209 0.5364987850189209 
		0.5364987850189209 0.5364987850189209 0.5364987850189209 -0.14815071225166321 0.18986251950263977 
		0.13418374955654144;
createNode animCurveTL -n "torso_anim_translateX";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 0 2 -0.033690851480692924 3 0 4 0
		 5 0 6 0 7 0 8 0.032748263610172523 9 0 10 0 11 0 12 0 13 0;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "torso_anim_translateY";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 0 2 -0.4139984342011892 3 0 4 0 5 0
		 6 0 7 0 8 -0.43374331109385167 9 0 10 0 11 0 12 0 13 0;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "torso_anim_translateZ";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 0 2 -0.027382058987437598 3 0 4 0
		 5 0 6 0 7 0 8 -0.08075546156663653 9 0 10 0 11 0 12 0 13 0;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "chest_anim_translateX";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 0 2 -0.068688438934749158 3 0 4 0
		 5 0 6 0 7 0 8 -0.032262887395081194 9 0 10 0 11 0 12 0 13 0;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "chest_anim_translateY";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 0 2 -0.68143165156640484 3 0 4 0
		 5 0 6 0 7 0 8 -0.51160038625562665 9 0 10 0 11 0 12 0 13 0;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "chest_anim_translateZ";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 0 2 -0.1352170592592116 3 0 4 0 5 0
		 6 0 7 0 8 -0.035829610570982842 9 0 10 0 11 0 12 0 13 0;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "head_anim_translateX";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 5.0115975567090365e-15 2 -0.51448765758387627
		 3 -0.092600286513842667 4 -0.070428835784190416 5 -0.05285418120716244 6 -0.07351742454286897
		 7 -0.091952867801148155 8 -0.11455669872404106 9 0.15982304901506297 10 -0.064423444123285281
		 11 -0.11306113681494463 12 -0.10315307864956881 13 0;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  -0.095415703952312469 -0.095415703952312469 
		-0.095415703952312469 -0.095415703952312469 -0.095415703952312469 -0.095415703952312469 
		-0.048637691885232925 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0.08127564936876297 0.08127564936876297 
		0.08127564936876297 0.08127564936876297 0.08127564936876297 0.08127564936876297 0.0099080577492713928 
		-0.06833387166261673 0;
createNode animCurveTL -n "head_anim_translateY";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 0.37942867801443092 2 0.88547805976635463
		 3 0.36844783179732477 4 0.13146609913468454 5 0.41947041291327125 6 0.41180115379842025
		 7 0.25561474762126934 8 0.78246951840666235 9 -0.11803840915202593 10 0.095229754334190911
		 11 0.43740217793263519 12 0.2382878357866752 13 0.22040402280685473;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  -0.088062472641468048 -0.088062472641468048 
		-0.088062472641468048 -0.088062472641468048 -0.088062472641468048 -0.088062472641468048 
		0.34217241406440735 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0.48499977588653564 0.48499977588653564 
		0.48499977588653564 0.48499977588653564 0.48499977588653564 0.48499977588653564 -0.19911433756351471 
		0.50049883127212524 0;
createNode animCurveTL -n "head_anim_translateZ";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 -0.047620348212030518 2 -0.27115501832052047
		 3 0.87932283877089268 4 -0.029375741567981874 5 -1.04987400664346 6 -0.79345974809127717
		 7 -0.64182577426625353 8 -0.503002998723309 9 1.2169853804139361 10 0.067794955913171001
		 11 -0.33530928279052025 12 -0.0014221240286592524 13 0.056387276558094251;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  -0.24772199988365173 -0.24772199988365173 
		-0.24772199988365173 -0.24772199988365173 -0.24772199988365173 -0.24772199988365173 
		-0.40310424566268921 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0.27284690737724304 0.27284690737724304 
		0.27284690737724304 0.27284690737724304 0.27284690737724304 0.27284690737724304 0.33388715982437134 
		-0.021114561706781387 0;
createNode animCurveTL -n "waist_anim_translateX";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0.010408780176843654 13 0;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0 0 0 0 0 0 0.010408780537545681 0 0;
createNode animCurveTL -n "waist_anim_translateY";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 -0.0034523708205166093 13 0;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0 0 0 0 0 0 -0.0034523708745837212 0 0;
createNode animCurveTL -n "waist_anim_translateZ";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0.16740122809738839 13 0;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0 0 0 0 0 0 0.16740122437477112 0 0;
createNode animCurveTA -n "L_clavicle_anim_rotateX";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 -13.006112211528485 2 -1.115940608059875
		 3 -1.5219202370813343 4 -3.2104512228304429 5 -6.9662345537645587 6 -3.507108092246713
		 7 -4.2683925952950377 8 -4.2683925952950377 9 -4.2683925952950377 10 -4.2683925952950377
		 11 0.30308689782275 12 0.30308689782275 13 -13.006112211528485;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0.079787366092205048 0.079787366092205048 
		0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  -0.13492804765701294 -0.13492804765701294 
		-0.13492804765701294 -0.13492804765701294 -0.13492804765701294 -0.13492804765701294 
		0 -0.079787366092205048 0.15250197052955627;
createNode animCurveTA -n "L_clavicle_anim_rotateY";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 -9.4221283705020316 2 -11.440167766838181
		 3 -11.393881756149071 4 -11.04206136162874 5 -9.1647550668593407 6 -5.2480314744334402
		 7 -10.68169644319223 8 -10.68169644319223 9 -10.68169644319223 10 -10.68169644319223
		 11 0.62954854599329291 12 0.62954854599329291 13 -9.4221283705020316;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0.1974184662103653 0.1974184662103653 
		0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0 0 0 0 0 0 0 -0.1974184662103653 -0.021983610466122627;
createNode animCurveTA -n "L_clavicle_anim_rotateZ";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 6.9334283171656992 2 -15.154516508960445
		 3 -13.103792545920321 4 -4.4402322135553378 5 16.72996717791559 6 4.210931030566277
		 7 1.1695603709713109 8 1.1695603709713109 9 1.1695603709713109 10 1.1695603709713109
		 11 -3.107871838469296 12 -3.107871838469296 13 6.9334283171656992;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 -0.07465527206659317 -0.07465527206659317 
		0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0 0 0 0 0 0 0 0.07465527206659317 -0.10059847682714462;
createNode animCurveTA -n "L_claw_1_anim_rotateX";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "L_claw_1_anim_rotateY";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "L_claw_1_anim_rotateZ";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "L_claw_2_anim_rotateX";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "L_claw_2_anim_rotateY";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "L_claw_2_anim_rotateZ";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 5.8132904224545392 2 0 3 0 4 0 5 0
		 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 5.8132904224545392;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0 0 0 0 0 0 0 0 -0.10146106034517288;
createNode animCurveTA -n "L_elbow_anim_rotateX";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 0 2 0 3 101.23295160070911 4 22.361907595928841
		 5 26.597434305129379 6 22.239807037712751 7 22.384579106210531 8 20.213946875886577
		 9 23.834342938725328 10 12.675952122717897 11 -13.243064164833314 12 -12.604329798165596
		 13 0;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 -0.45237216353416443 -0.59172660112380981 
		0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  -0.3956221342086792 -0.3956221342086792 
		-0.3956221342086792 -0.3956221342086792 -0.3956221342086792 -0.3956221342086792 0.011148017831146717 
		0.69811785221099854 0;
createNode animCurveTA -n "L_elbow_anim_rotateY";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 -56.148071176726411 2 -85.850247088871711
		 3 -69.560665616314864 4 -76.746640706584316 5 -40.088928039213798 6 -25.177563199083405
		 7 -25.915620398368915 8 -7.5569590933252737 9 -9.0449907681312034 10 -11.299398454633417
		 11 -13.982108486530693 12 -41.869853215885541 13 -56.148071176726411;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 -0.046822123229503632 -0.012497495859861374 
		0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  -0.34338396787643433 -0.34338396787643433 
		-0.34338396787643433 -0.34338396787643433 -0.34338396787643433 -0.34338396787643433 
		-0.48673295974731445 0.2523743212223053 -0.12786397337913513;
createNode animCurveTA -n "L_elbow_anim_rotateZ";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 0 2 0 3 -81.314375638033681 4 -1.0351414393933367
		 5 2.7806356184337719 6 10.783904002240551 7 10.448204444511612 8 17.8799059542315
		 9 10.363388279259402 10 12.286350466710948 11 16.045375522925198 12 17.521527893519405
		 13 0;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0.065607361495494843 0.36248922348022461 
		0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  -0.17132797837257385 -0.17132797837257385 
		-0.17132797837257385 -0.17132797837257385 -0.17132797837257385 -0.17132797837257385 
		0.025763718411326408 -0.25675538182258606 0;
createNode animCurveTA -n "L_foot_anim_rotateX";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "L_foot_anim_rotateY";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 0 2 0 3 0 4 0 5 4.861270286970278
		 6 0 7 7.5088651054848885 8 7.5088651054848885 9 7.5088651054848885 10 7.5088651054848885
		 11 7.5088651054848885 12 7.5088651054848885 13 0;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0 0 0 0 0 0 0 -0.13105441629886627 0;
createNode animCurveTA -n "L_foot_anim_rotateZ";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_foot_anim_toe";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 1.1 2 -2.6 3 -4.4 4 0 5 0 6 0 7 3.2
		 8 0 9 0 10 0 11 0 12 0 13 3.8000000000000003;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  -0.69999998807907104 -0.69999998807907104 
		-0.69999998807907104 -0.69999998807907104 -0.69999998807907104 -0.69999998807907104 
		0 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  8.8999996185302734 8.8999996185302734 8.8999996185302734 
		8.8999996185302734 8.8999996185302734 8.8999996185302734 0 0 -6.4000000953674316;
createNode animCurveTU -n "L_foot_anim_ToeRoll";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 8.6 2 7.9 3 6.1000000000000005 4 0
		 5 0 6 0 7 0 8 0 9 0 10 0 11 2.1 12 6 13 7.3;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  -2.7999999523162842 -2.7999999523162842 
		-2.7999999523162842 -2.7999999523162842 -2.7999999523162842 -2.7999999523162842 2.0999999046325684 
		2.0999999046325684 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  4.6999998092651367 4.6999998092651367 4.6999998092651367 
		4.6999998092651367 4.6999998092651367 4.6999998092651367 3.9000000953674316 -2.0999999046325684 
		0.60000002384185791;
createNode animCurveTU -n "L_foot_anim_PivotToe";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 -2.5 2 0.10000000000000009 3 0.10000000000000009
		 4 0.10000000000000009 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 -2.5;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  -2.5999999046325684 -2.5999999046325684 
		-2.5999999046325684 -2.5999999046325684 -2.5999999046325684 -2.5999999046325684 0 
		0 2.5999999046325684;
createNode animCurveTU -n "L_foot_anim_BallPivot";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_foot_anim_Bank";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0.4 8 0 9 0
		 10 0 11 0 12 0 13 0;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_foot_anim_FootRoll";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 0 2 0 3 0 4 -1.1 5 -3.0000000000000004
		 6 -6.3000000000000007 7 -4.8000000000000007 8 0 9 0 10 5.5 11 5.5 12 1.6 13 0;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0 0 0 0 0 0 -3.9000000953674316 -8.8999996185302734 
		0;
createNode animCurveTA -n "L_hand_anim_rotateX";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 -6.443109219011685 2 -5.917555516729573
		 3 4.4989947850595646 4 -7.9113362346731062 5 -7.3025285416601999 6 -7.9640936047848987
		 7 -6.066691654686923 8 -6.0699209449674845 9 -10.341521853457854 10 -9.6196447722377272
		 11 -9.0321756804927098 12 -8.4359241689790938 13 -6.443109219011685;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  -0.026772832497954369 -0.026772832497954369 
		-0.026772832497954369 -0.026772832497954369 -0.026772832497954369 -0.026772832497954369 
		0.010253270156681538 0.0014069847529754043 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0.044967446476221085 0.044967446476221085 
		0.044967446476221085 0.044967446476221085 0.044967446476221085 0.044967446476221085 
		0.010406551882624626 0.033728871494531631 -0.0075153177604079247;
createNode animCurveTA -n "L_hand_anim_rotateY";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 -19.832414807014448 2 -20.019529366301132
		 3 -25.363809946051727 4 -39.920815776509976 5 -33.851956345564531 6 -40.369427478620487
		 7 2.7877923378915019 8 3.3539954268339405 9 35.203291751358329 10 28.623596391626918
		 11 20.875378646686464 12 -0.92935222896233527 13 -19.832414807014448;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  -0.205913245677948 -0.205913245677948 -0.205913245677948 
		-0.205913245677948 -0.205913245677948 -0.205913245677948 -0.13523191213607788 -0.070429861545562744 
		0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0.48593497276306152 0.48593497276306152 
		0.48593497276306152 0.48593497276306152 0.48593497276306152 0.48593497276306152 -0.38056433200836182 
		-0.48335528373718262 -0.14452876150608063;
createNode animCurveTA -n "L_hand_anim_rotateZ";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 1.1861155653309716 2 -1.6476426587633104
		 3 6.6153635112608713 4 4.0879344188756903 5 3.075083052823421 6 4.1697629401147687
		 7 -1.304197633139643 8 -1.3644768383235737 9 -17.967829068405049 10 -16.604583126009853
		 11 -15.204606090546664 12 -11.824824026229219 13 1.1861155653309716;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0.039970856159925461 0.039970856159925461 
		0.039970856159925461 0.039970856159925461 0.039970856159925461 0.039970856159925461 
		0.024434208869934082 0.01063642930239439 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  -0.078527770936489105 -0.078527770936489105 
		-0.078527770936489105 -0.078527770936489105 -0.078527770936489105 -0.078527770936489105 
		0.058988325297832489 0.24883045256137848 0.018448080867528915;
createNode animCurveTA -n "L_shoulder_anim_rotateX";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 -95.745228676403542 2 -44.132686082948695
		 3 -24.868012130347413 4 7.1469641902486858 5 7.8999972605621274 6 121.66469378259232
		 7 171.11975628094507 8 10.485305563585086 9 5.5665634165882976 10 5.6360309354255458
		 11 0 12 9.193960713540944e-15 13 -60.327577305126461;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0.59318357706069946 0.59318357706069946 
		0.59318357706069946 0.59318357706069946 0.59318357706069946 0.59318357706069946 -0.098367296159267426 
		-0.098367296159267426 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  -1.1907957792282104 -1.1907957792282104 
		-1.1907957792282104 -1.1907957792282104 -1.1907957792282104 -1.1907957792282104 0 
		0.29977789521217346 0.61252045631408691;
createNode animCurveTA -n "L_shoulder_anim_rotateY";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 -66.316792964089458 2 -54.973115775696407
		 3 -5.6682155512494816 4 50.415093694958045 5 54.77332006024313 6 85.175502128515376
		 7 59.098043519522385 8 64.173794822471763 9 35.184649586537518 10 19.653604200471683
		 11 -29.486754924523876 12 -69.76083973241245 13 -62.614263032553829;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0.64374333620071411 0.64374333620071411 
		0.64374333620071411 0.64374333620071411 0.64374333620071411 0.64374333620071411 -0.85766106843948364 
		-0.85766106843948364 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  -2.0487997531890869 -2.0487997531890869 
		-2.0487997531890869 -2.0487997531890869 -2.0487997531890869 -2.0487997531890869 -0.70291537046432495 
		1.8136385679244995 0.73746407032012939;
createNode animCurveTA -n "L_shoulder_anim_rotateZ";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 19.368629086653026 2 -38.435224302339186
		 3 -74.009232669909991 4 -72.912161298794629 5 -71.964872113631344 6 44.398816450353372
		 7 93.932454817266049 8 -68.973832569597931 9 -75.217517144269038 10 -68.534691436632642
		 11 -71.017783209853064 12 -71.017783209852979 13 -19.587733483719187;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0.23070986568927765 0.23070986568927765 
		0.23070986568927765 0.23070986568927765 0.23070986568927765 0.23070986568927765 -0.043338127434253693 
		-0.043338127434253693 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0.91415351629257202 0.91415351629257202 
		0.91415351629257202 0.91415351629257202 0.91415351629257202 0.91415351629257202 0 
		0.15998861193656921 -0.8377842903137207;
createNode animCurveTA -n "R_clavicle_anim_rotateX";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 0 2 0.3354834326724222 3 0 4 -0.55909973279839298
		 5 0 6 0 7 0 8 7.582975153415652 9 0 10 0 11 0 12 0 13 0;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_clavicle_anim_rotateY";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 -13.042158208294277 2 -16.240517470374762
		 3 -7.3904599235958495 4 -5.4617869993024861 5 -5.4902424633180749 6 -5.4902424633180749
		 7 -5.4902424633180749 8 0.28109477354438739 9 -5.4902424633180749 10 -5.4902424633180749
		 11 -5.4902424633180749 12 -5.4902424633180749 13 -13.042158208294277;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  -0.13180579245090485 -0.13180579245090485 
		-0.13180579245090485 -0.13180579245090485 -0.13180579245090485 -0.13180579245090485 
		0 0 0;
createNode animCurveTA -n "R_clavicle_anim_rotateZ";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 0 2 -6.4508553063048497 3 0 4 5.8537493222326891
		 5 0 6 0 7 0 8 6.8959668623787911 9 0 10 0 11 0 12 0 13 0;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_claw_1_anim_rotateX";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_claw_1_anim_rotateY";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_claw_1_anim_rotateZ";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_claw_2_anim_rotateX";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_claw_2_anim_rotateY";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_claw_2_anim_rotateZ";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_elbow_anim_rotateX";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 0 2 0 3 -0.42967344585831246 4 -0.4414033585384986
		 5 -0.77926684363336762 6 -0.50271848567845578 7 -0.46503436643756785 8 -1.4825859628698226
		 9 -35.027732609122303 10 4.3379850490242671 11 2.343295478526874 12 1.4019775721972212
		 13 0;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  -0.0061742761172354221 -0.0061742761172354221 
		-0.0061742761172354221 -0.0061742761172354221 -0.0061742761172354221 -0.0061742761172354221 
		-0.034813899546861649 -0.0024354399647563696 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0.013784578070044518 0.013784578070044518 
		0.013784578070044518 0.013784578070044518 0.013784578070044518 0.013784578070044518 
		-0.016429096460342407 -0.032505188137292862 0;
createNode animCurveTA -n "R_elbow_anim_rotateY";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 37.15801980949383 2 -4.4877735186353576
		 3 0.51350881402000603 4 13.247996002399013 5 27.551233648757972 6 31.276864065603437
		 7 22.493190827359673 8 73.152131589660769 9 84.104372664470048 10 74.530675356277229
		 11 60.433645179412281 12 34.45367167486377 13 58.506455876268824;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0.8242756724357605 0.8242756724357605 0.8242756724357605 
		0.8242756724357605 0.8242756724357605 0.8242756724357605 -0.24603958427906036 -0.1960396021604538 
		0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0.025554357096552849 0.025554357096552849 
		0.025554357096552849 0.025554357096552849 0.025554357096552849 0.025554357096552849 
		-0.45343607664108276 0.39512172341346741 0;
createNode animCurveTA -n "R_elbow_anim_rotateZ";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 0 2 0 3 -1.237122675959806 4 -1.334428432365957
		 5 1.3871466769630636 6 -1.4942750215480518 7 -1.4111849638485228 8 -2.652248288461013
		 9 -28.180769046380373 10 7.4774364823545616 11 5.3344736364192258 12 4.0892961033595148
		 13 0;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  -0.010269171558320522 -0.010269171558320522 
		-0.010269171558320522 -0.010269171558320522 -0.010269171558320522 -0.010269171558320522 
		-0.037401758134365082 -0.0051259533502161503 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0.033091127872467041 0.033091127872467041 
		0.033091127872467041 0.033091127872467041 0.033091127872467041 0.033091127872467041 
		-0.021732447668910027 -0.095014713704586029 0;
createNode animCurveTA -n "R_foot_anim_rotateX";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_foot_anim_rotateY";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 -2.9760744143682838 2 2.0880693368207321
		 3 2.0880693368207321 4 2.0880693368207321 5 2.0880693368207321 6 2.0880693368207321
		 7 2.0880693368207321 8 2.0880693368207321 9 2.0880693368207321 10 2.0880693368207321
		 11 2.0880693368207321 12 2.0880693368207321 13 -2.9760744143682838;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  -0.088385984301567078 -0.088385984301567078 
		-0.088385984301567078 -0.088385984301567078 -0.088385984301567078 -0.088385984301567078 
		0 0 0.088385984301567078;
createNode animCurveTA -n "R_foot_anim_rotateZ";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 5.1514566400319142 2 5.1514566400319142
		 3 5.1514566400319142 4 5.1514566400319142 5 5.1514566400319142 6 5.1514566400319142
		 7 5.1514566400319142 8 5.1514566400319142 9 5.1514566400319142 10 5.1514566400319142
		 11 5.1514566400319142 12 5.1514566400319142 13 5.1514566400319142;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_foot_anim_toe";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 2.2 2 0 3 0 4 0 5 0 6 0 7 -0.30000000000000027
		 8 -5.1000000000000005 9 -3 10 0 11 0 12 0 13 2.2;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  2.2000000476837158 2.2000000476837158 2.2000000476837158 
		2.2000000476837158 2.2000000476837158 2.2000000476837158 0 0 -2.2000000476837158;
createNode animCurveTU -n "R_foot_anim_ToeRoll";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 0 2 0 3 0 4 0 5 1.6 6 5.8000000000000007
		 7 7.9 8 6.6000000000000005 9 6.8 10 0 11 0 12 0 13 0;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0 0 0 0 0 0 0 5.8000001907348633 0;
createNode animCurveTU -n "R_foot_anim_PivotToe";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_foot_anim_BallPivot";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 -0.70000000000000007 2 -0.70000000000000007
		 3 -0.70000000000000007 4 -2.7 5 -1.3 6 -1.3 7 -1.3 8 -0.9 9 -0.9 10 0 11 0 12 0 13 -0.70000000000000007;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  -2 -2 -2 -2 -2 -2 0 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  2 2 2 2 2 2 0 -1.2999999523162842 0;
createNode animCurveTU -n "R_foot_anim_Bank";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_foot_anim_FootRoll";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 -4.8000000000000007 2 0 3 0 4 4.2
		 5 7.9 6 0 7 0 8 2.1 9 0 10 0 11 -4.2 12 -6.8000000000000007 13 -4.8000000000000007;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  4.1999998092651367 4.1999998092651367 4.1999998092651367 
		4.1999998092651367 4.1999998092651367 4.1999998092651367 -4.1999998092651367 -4.1999998092651367 
		0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  -9 -9 -9 -9 -9 -9 -2.5999999046325684 4.1999998092651367 
		4.8000001907348633;
createNode animCurveTA -n "R_hand_anim_rotateX";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 0 2 1.5785671069219376 3 2.0877210105108879
		 4 1.7119149549891379 5 1.6898982830349556 6 1.4977683744736607 7 3.0260479119994517
		 8 3.2222874469296277 9 3.7389864646431241 10 3.8828105372261792 11 3.4901292120336489
		 12 3.1710849821395759 13 0;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 -0.0068535818718373775 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  -0.027355004101991653 -0.027355004101991653 
		-0.027355004101991653 -0.027355004101991653 -0.027355004101991653 -0.027355004101991653 
		-0.0055683720856904984 -0.027393888682126999 0.033686187118291855;
createNode animCurveTA -n "R_hand_anim_rotateY";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 -31.761039201492562 2 -18.647658885080212
		 3 -44.234271390325375 4 -29.106448153406731 5 -27.736507439328236 6 -3.0275783929118028
		 7 19.1578264975306 8 27.483283133966218 9 40.120709792242785 10 42.573970038058476
		 11 35.001362809264371 12 25.650018346896669 13 -14.659207878353127;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 -0.13216692209243774 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0.047647859901189804 0.047647859901189804 
		0.047647859901189804 0.047647859901189804 0.047647859901189804 0.047647859901189804 
		-0.16321174800395966 -0.20247268676757812 -0.4282451868057251;
createNode animCurveTA -n "R_hand_anim_rotateZ";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 0 2 2.2895872796761214 3 1.3377327790554698
		 4 1.9615225807370957 5 2.0077772638700937 6 2.7153198959485616 7 1.5079471589245863
		 8 2.0023477382261996 9 2.9254643893497003 10 3.1431243836479044 11 2.5176465486151733
		 12 1.887876619772991 13 0;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 -0.010916647501289845 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  -0.040595050901174545 -0.040595050901174545 
		-0.040595050901174545 -0.040595050901174545 -0.040595050901174545 -0.040595050901174545 
		-0.010991558432579041 0.024187583476305008 0.027478661388158798;
createNode animCurveTA -n "R_shoulder_anim_rotateX";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 124.69572947651257 2 54.959485008243838
		 3 6.0820773900009026 4 5.547999446881291 5 4.8430545387166122 6 8.322863392937613
		 7 184.17500404023124 8 303.81107639176912 9 357.03150643573764 10 369.41371182856119
		 11 370.95621691574553 12 447.80324493822496 13 109.19860364555106;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0.0015936921117827296 0.0015936921117827296 
		0.0015936921117827296 0.0015936921117827296 0.0015936921117827296 0.0015936921117827296 
		0.026921791955828667 0.026921791955828667 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  1.8063615560531616 1.8063615560531616 1.8063615560531616 
		1.8063615560531616 1.8063615560531616 1.8063615560531616 1.3412336111068726 -6.3291459083557129 
		-1.1809837818145752;
createNode animCurveTA -n "R_shoulder_anim_rotateY";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 -54.112081148150061 2 -53.93769511052335
		 3 -24.604820365389454 4 -4.8558587271258542 5 41.38293503180131 6 64.047865453591456
		 7 48.149997838311727 8 85.72606891605804 9 4.8598806490511866 10 -31.751244209778985
		 11 -42.963178982570305 12 -82.551968029859324 13 -59.312825519747392;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0.41836854815483093 0.41836854815483093 
		0.41836854815483093 0.41836854815483093 0.41836854815483093 0.41836854815483093 -0.19568517804145813 
		-0.19568517804145813 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  -1.2822703123092651 -1.2822703123092651 
		-1.2822703123092651 -1.2822703123092651 -1.2822703123092651 -1.2822703123092651 -0.69095474481582642 
		1.8676950931549072 0.27818930149078369;
createNode animCurveTA -n "R_shoulder_anim_rotateZ";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 -44.909613446246773 2 36.547178040959579
		 3 81.72569085595083 4 83.794800164809772 5 86.467267312147683 6 90.754930892693935
		 7 266.65337266272678 8 382.47661905233861 9 443.69219119038758 10 432.19224601069249
		 11 429.66255667962935 12 349.18349296414067 13 -26.437783233582529;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0.041156869381666183 0.041156869381666183 
		0.041156869381666183 0.041156869381666183 0.041156869381666183 0.041156869381666183 
		-0.044151406735181808 -0.044151406735181808 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  -1.9565565586090088 -1.9565565586090088 
		-1.9565565586090088 -1.9565565586090088 -1.9565565586090088 -1.9565565586090088 -1.4046245813369751 
		-5.9150538444519043 1.4090292453765869;
createNode animCurveTA -n "chest_anim_rotateX";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 10.399221617982169 2 11.168621780019526
		 3 2.2683561007272504 4 -3.8619316649590321 5 8.2254377978174951 6 3.6944247753439221
		 7 3.3410337553167997 8 4.043577581871757 9 -1.7644418329003395 10 -1.8983448226739863
		 11 8.9292748018816468 12 8.6297132243707093 13 10.018948586375238;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  -0.075813621282577515 -0.075813621282577515 
		-0.075813621282577515 -0.075813621282577515 -0.075813621282577515 -0.075813621282577515 
		0.18897761404514313 0.18897761404514313 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0.33734604716300964 0.33734604716300964 
		0.33734604716300964 0.33734604716300964 0.33734604716300964 0.33734604716300964 -0.0052283359691500664 
		-0.10787549614906311 0.020184995606541634;
createNode animCurveTA -n "chest_anim_rotateY";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 -11.649348899542224 2 0.43459753188346423
		 3 3.1358160920204199 4 6.4239527397019369 5 9.0495546504324622 6 15.278581836024161
		 7 14.886930728374185 8 8.5832139079923309 9 3.4335102032289528 10 3.3613899114570098
		 11 -4.5401211296399424 12 -6.4209053493099306 13 -11.976791274727834;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 -0.13790738582611084 -0.13790738582611084 
		0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  -0.24042265117168427 -0.24042265117168427 
		-0.24042265117168427 -0.24042265117168427 -0.24042265117168427 -0.24042265117168427 
		-0.032825876027345657 0.34928101301193237 0.20581462979316711;
createNode animCurveTA -n "chest_anim_rotateZ";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 1.8188385825254907 2 -5.670178593179064
		 3 3.5933984172648241 4 -4.2467020269984914 5 -2.4073345194787437 6 -3.7936956047604449
		 7 -5.2204898729117346 8 -3.0039786488286069 9 2.9027693382119644 10 0.64355104739748581
		 11 2.6633348689610372 12 3.6436394253718416 13 3.6762086253399087;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0.035251878201961517 0.035251878201961517 
		0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  -0.02721891738474369 -0.02721891738474369 
		-0.02721891738474369 -0.02721891738474369 -0.02721891738474369 -0.02721891738474369 
		0.017109543085098267 -0.17494663596153259 -0.10842983424663544;
createNode animCurveTA -n "head_anim_rotateX";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 -55.007940295963522 2 -47.702628439663293
		 3 -15.628617952651318 4 -3.2504170334382221 5 -29.394571791348408 6 -42.166435611537722
		 7 -55.934795718390227 8 -43.65370407427784 9 -14.63885584476532 10 1.2043993247629197
		 11 -22.798254135794185 12 -39.250490423366358 13 -33.464716634104455;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0.3513469398021698 0.3513469398021698 0.3513469398021698 
		0.3513469398021698 0.3513469398021698 0.3513469398021698 -0.41892534494400024 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  -0.66850662231445312 -0.66850662231445312 
		-0.66850662231445312 -0.66850662231445312 -0.66850662231445312 -0.66850662231445312 
		-0.2871457040309906 -0.23750121891498566 -0.009909970685839653;
createNode animCurveTA -n "head_anim_rotateY";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 1.6785113434271488 2 -9.8439747949418734
		 3 -11.132106469681448 4 -4.2846608492748484 5 -4.4383407417104008 6 -4.4383407417103982
		 7 -5.3890559097506578 8 2.1298687584923197 9 6.1091154317552041 10 -2.7607161331786134
		 11 4.4410598298041073 12 -8.2518774706390587 13 -6.9600781073310118;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0.12569470703601837 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  -0.12147627770900726 -0.12147627770900726 
		-0.12147627770900726 -0.12147627770900726 -0.12147627770900726 -0.12147627770900726 
		-0.22153355181217194 -0.029280073940753937 -0.050333492457866669;
createNode animCurveTA -n "head_anim_rotateZ";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 -1.0981858771946718 2 11.165685458479505
		 3 -6.4057144587457486 4 -3.596096541054802 5 -5.0822989117563004 6 -5.0822989117563084
		 7 -4.6733418382878291 8 -0.44983308596262622 9 -1.4772392096827036 10 2.8325013533212204
		 11 -1.4590004585293639 12 -1.0556427380162898 13 4.5795304032273005;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 -0.074900835752487183 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0 0 0 0 0 0 0.0070399204269051552 -0.13813932240009308 
		0.11495009064674377;
createNode animCurveTA -n "root_anim_rotateX";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 24.084641149710912 2 24.009147866428805
		 3 12.735660753963163 4 20.68460455898542 5 23.238112823871468 6 24.030547538046182
		 7 23.956552326381228 8 23.693191375109247 9 18.514614094784019 10 17.644079206905879
		 11 17.578522688320579 12 22.222148235536757 13 24.084641149710912;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  -0.18299399316310883 -0.18299399316310883 
		-0.18299399316310883 -0.18299399316310883 -0.18299399316310883 -0.18299399316310883 
		-0.0011441770475357771 0.0015238453634083271 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0.38249373435974121 0.38249373435974121 
		0.38249373435974121 0.38249373435974121 0.38249373435974121 0.38249373435974121 0.081046551465988159 
		0.10994105786085129 -0.0013176063075661659;
createNode animCurveTA -n "root_anim_rotateY";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 -2.1830824880393855 2 -2.9365521024018908
		 3 -0.5423035073913095 4 -1.8924765330507949 5 0.60894406013591595 6 1.2651994331268694
		 7 1.6030469947372468 8 3.9854045568054768 9 3.4875189310968984 10 -2.9456089856097258
		 11 -3.3254881421946179 12 -7.0825418759934937 13 -2.1830824880393855;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 -0.0066301422193646431 0.010522645898163319 
		0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0 0 0 0 0 0 -0.065572954714298248 0.06296982616186142 
		-0.013150525279343128;
createNode animCurveTA -n "root_anim_rotateZ";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 4.8709038652901144 2 6.5610554089592128
		 3 2.3979892277346786 4 6.7035841995126582 5 -1.4178506717590502 6 -2.8350652508004144
		 7 0.71600270187031956 8 -4.6812192447525307 9 -3.5462531923591594 10 -2.2445245151150552
		 11 -1.0460643360324706 12 -1.790435627950768 13 4.8709038652901144;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0.020917076617479324 -0.033028207719326019 
		0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0 0 0 0 0 0 -0.012991730123758316 0.022721325978636742 
		0.029498709365725517;
createNode animCurveTA -n "torso_anim_rotateX";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 7.7705444542698654 2 3.7867439437508215
		 3 9.6665790510848897 4 3.0366611252699278 5 6.6198533167222573 6 10.334687187757464
		 7 10.191603042217027 8 10.517557364892923 9 4.8720061281763609 10 4.7234735047086751
		 11 4.5175440295607272 12 4.2925883427632074 13 7.4359175101129829;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  -0.13411989808082581 -0.13411989808082581 
		-0.13411989808082581 -0.13411989808082581 -0.13411989808082581 -0.13411989808082581 
		-0.0035941472742706537 -0.0035941472742706537 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0.16842886805534363 0.16842886805534363 
		0.16842886805534363 0.16842886805534363 0.16842886805534363 0.16842886805534363 -0.0039262175559997559 
		0.094966068863868713 -0.068773619830608368;
createNode animCurveTA -n "torso_anim_rotateY";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 -10.233554633524783 2 -5.1175533843400922
		 3 -2.342804269730435 4 -2.5048101607886553 5 2.2687911705882087 6 6.0224454127603035
		 7 6.2631676878638318 8 -0.24942539442028727 9 -3.5749462181474057 10 -3.7691996080419274
		 11 -0.076205680552884666 12 -1.8770887265639533 13 -10.47799410954247;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0.064454905688762665 0.064454905688762665 
		0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  -0.11464005708694458 -0.11464005708694458 
		-0.11464005708694458 -0.11464005708694458 -0.11464005708694458 -0.11464005708694458 
		-0.031431339681148529 0.11703536659479141 0.090015791356563568;
createNode animCurveTA -n "torso_anim_rotateZ";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 2.8595704704526859 2 -4.9906952462344583
		 3 -2.1458406788190127 4 1.2658909620924672 5 5.0007640885818709 6 4.1819396244066604
		 7 2.8448541191905186 8 4.2714172786460018 9 -3.4770312970593653 10 -1.1581908113295134
		 11 0.60103659716056457 12 1.7176285385936318 13 4.7209295527055453;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0.030704310163855553 0.030704310163855553 
		0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0.0014016083441674709 0.0014016083441674709 
		0.0014016083441674709 0.0014016083441674709 0.0014016083441674709 0.0014016083441674709 
		0.019488206133246422 0.0029598665423691273 -0.11362867057323456;
createNode animCurveTA -n "waist_anim_rotateX";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 5.1401801402590381 2 5.0946671103006631
		 3 2.2512748542192789 4 2.3663915133942348 5 -3.3779511510610458 6 -3.3779511510610458
		 7 -3.3779511510610458 8 -4.0860139108590294 9 -4.0860139108590294 10 -4.0843217685977704
		 11 -4.0843217685977704 12 -1.604594585935665 13 5.1401801402590381;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  -0.23963214457035065 -0.23963214457035065 
		-0.23963214457035065 -0.23963214457035065 -0.23963214457035065 -0.23963214457035065 
		0 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0.29005303978919983 0.29005303978919983 
		0.29005303978919983 0.29005303978919983 0.29005303978919983 0.29005303978919983 0.043279405683279037 
		0.012328493408858776 -0.00079435220686718822;
createNode animCurveTA -n "waist_anim_rotateY";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 7.994726333730096 2 -2.425799461359424
		 3 3.8990043453003311 4 3.899004345300277 5 4.4346502617566257 6 4.4346502617566257
		 7 4.4346502617566257 8 3.7924616121360595 9 3.7924616121360595 10 3.7942843441941601
		 11 3.7942843441941601 12 0.65982659767851659 13 7.994726333730096;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0.071483835577964783 0.071483835577964783 
		0.071483835577964783 0.071483835577964783 0.071483835577964783 0.071483835577964783 
		-0.054706607013940811 0.01117649395018816 -0.18187248706817627;
createNode animCurveTA -n "waist_anim_rotateZ";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  -1 0 1 1.0771171780721907 2 0.14412050651619612
		 3 0.39248090127772844 4 0.39248090127772789 5 3.6235543577113871 6 3.6235543577113871
		 7 3.6235543577113871 8 -6.2228611615724549 9 -6.2228611615724549 10 -6.1972840631507919
		 11 -6.1972840631507919 12 1.9092951545149561 13 1.0771171780721907;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 1 1 1 
		1 1 1 2 1 1;
	setAttr -s 14 ".kix[5:13]"  0.041666671633720398 0.041666671633720398 
		0.041666671633720398 0.041666671633720398 0.041666671633720398 0.041666671633720398 
		0.041666686534881592 0.041666686534881592 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[5:13]"  0.1666666716337204 0.1666666716337204 0.1666666716337204 
		0.1666666716337204 0.1666666716337204 0.1666666716337204 0.041666656732559204 0.083333343267440796 
		0.041666667908430099;
	setAttr -s 14 ".koy[5:13]"  0.01194915734231472 0.01194915734231472 
		0.01194915734231472 0.01194915734231472 0.01194915734231472 0.01194915734231472 0.14148649573326111 
		0.17140597105026245 -0.01628386415541172;
createNode animCurveTL -n "R_knee_translateX";
	setAttr ".tan" 2;
	setAttr -s 10 ".ktv[0:9]"  1 -1.9712028809706965 2 -1.9712028809706965
		 3 -1.9712028809706965 4 -1.9712028809706965 5 -0.22902366752952474 6 -0.74850525926198141
		 7 1.3253528062716948 8 0.41762480824136095 9 -0.168131098657339 10 -0.69052708095956317;
	setAttr -s 10 ".kit[8:9]"  1 2;
	setAttr -s 10 ".kot[8:9]"  1 2;
	setAttr -s 10 ".kix[8:9]"  0.041666667908430099 0.041666656732559204;
	setAttr -s 10 ".kiy[8:9]"  0 -0.52239596843719482;
	setAttr -s 10 ".kox[8:9]"  0.041666664183139801 1;
	setAttr -s 10 ".koy[8:9]"  0 0;
createNode animCurveTL -n "R_knee_translateY";
	setAttr ".tan" 2;
	setAttr -s 10 ".ktv[0:9]"  1 -0.072201301994189393 2 -0.072201301994189393
		 3 -0.072201301994189393 4 -0.072201301994189393 5 -1.5177408528476777 6 -1.581787748772622
		 7 -1.0061318720830204 8 -3.2220553955788289 9 0.59321638243378327 10 3.0476492512738664;
	setAttr -s 10 ".kit[8:9]"  1 2;
	setAttr -s 10 ".kot[8:9]"  1 2;
	setAttr -s 10 ".kix[8:9]"  0.041666667908430099 0.041666656732559204;
	setAttr -s 10 ".kiy[8:9]"  0 2.4544329643249512;
	setAttr -s 10 ".kox[8:9]"  0.041666664183139801 1;
	setAttr -s 10 ".koy[8:9]"  0 0;
createNode animCurveTL -n "R_knee_translateZ";
	setAttr ".tan" 2;
	setAttr -s 10 ".ktv[0:9]"  1 1.1960721333952988 2 1.1960721333952988
		 3 1.1960721333952988 4 1.1960721333952988 5 -1.6819801664736542 6 -3.3969071191749562
		 7 -2.0393008742739442 8 -2.3821978919914253 9 -0.28164521405500897 10 3.1520326164559456;
	setAttr -s 10 ".kit[8:9]"  1 2;
	setAttr -s 10 ".kot[8:9]"  1 2;
	setAttr -s 10 ".kix[8:9]"  0.041666667908430099 0.041666656732559204;
	setAttr -s 10 ".kiy[8:9]"  0 3.4336779117584229;
	setAttr -s 10 ".kox[8:9]"  0.041666664183139801 1;
	setAttr -s 10 ".koy[8:9]"  0 0;
createNode animCurveTA -n "R_knee_rotateX";
	setAttr ".tan" 2;
	setAttr -s 10 ".ktv[0:9]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0;
	setAttr -s 10 ".kit[8:9]"  1 2;
	setAttr -s 10 ".kot[8:9]"  1 2;
	setAttr -s 10 ".kix[8:9]"  0.041666667908430099 0.041666656732559204;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[8:9]"  0.041666664183139801 1;
	setAttr -s 10 ".koy[8:9]"  0 0;
createNode animCurveTA -n "R_knee_rotateY";
	setAttr ".tan" 2;
	setAttr -s 10 ".ktv[0:9]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0;
	setAttr -s 10 ".kit[8:9]"  1 2;
	setAttr -s 10 ".kot[8:9]"  1 2;
	setAttr -s 10 ".kix[8:9]"  0.041666667908430099 0.041666656732559204;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[8:9]"  0.041666664183139801 1;
	setAttr -s 10 ".koy[8:9]"  0 0;
createNode animCurveTA -n "R_knee_rotateZ";
	setAttr ".tan" 2;
	setAttr -s 10 ".ktv[0:9]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0;
	setAttr -s 10 ".kit[8:9]"  1 2;
	setAttr -s 10 ".kot[8:9]"  1 2;
	setAttr -s 10 ".kix[8:9]"  0.041666667908430099 0.041666656732559204;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[8:9]"  0.041666664183139801 1;
	setAttr -s 10 ".koy[8:9]"  0 0;
createNode animCurveTL -n "L_knee_translateX";
	setAttr ".tan" 2;
	setAttr -s 10 ".ktv[0:9]"  1 -0.82573745962029554 2 -0.055661613010721034
		 3 -2.1862109479068765 4 -0.83909816659791958 5 0.0076355080140735332 6 0.2828221276027767
		 7 0.53863273212492757 9 0.89754361429717999 10 0.53863273212492757 12 -0.79470060120840369;
	setAttr -s 10 ".kit[7:9]"  1 2 2;
	setAttr -s 10 ".kot[7:9]"  1 2 2;
	setAttr -s 10 ".kix[7:9]"  0.041666667908430099 0.041666656732559204 
		0.083333343267440796;
	setAttr -s 10 ".kiy[7:9]"  0 -0.35891088843345642 -1.3333333730697632;
	setAttr -s 10 ".kox[7:9]"  0.041666664183139801 0.083333343267440796 
		1;
	setAttr -s 10 ".koy[7:9]"  0 -1.3333333730697632 0;
createNode animCurveTL -n "L_knee_translateY";
	setAttr ".tan" 2;
	setAttr -s 10 ".ktv[0:9]"  1 -2.1101832934439582 2 -2.5464276755933448
		 3 0.54665367468557369 4 0.83158903120499894 5 2.8135188341997281 6 2.1325226306099467
		 7 0 9 0 10 0 12 0;
	setAttr -s 10 ".kit[7:9]"  1 2 2;
	setAttr -s 10 ".kot[7:9]"  1 2 2;
	setAttr -s 10 ".kix[7:9]"  0.041666667908430099 0.041666656732559204 
		0.083333343267440796;
	setAttr -s 10 ".kiy[7:9]"  0 0 0;
	setAttr -s 10 ".kox[7:9]"  0.041666664183139801 0.083333343267440796 
		1;
	setAttr -s 10 ".koy[7:9]"  0 0 0;
createNode animCurveTL -n "L_knee_translateZ";
	setAttr ".tan" 2;
	setAttr -s 10 ".ktv[0:9]"  1 -3.0962070800858204 2 -3.2654378751265156
		 3 3.4469071347859348 4 5.0056533477888046 5 4.2100636573073515 6 5.0840546743874206
		 7 5.0056533477888046 9 5.0056533477888046 10 5.0056533477888046 12 5.0056533477888046;
	setAttr -s 10 ".kit[7:9]"  1 2 2;
	setAttr -s 10 ".kot[7:9]"  1 2 2;
	setAttr -s 10 ".kix[7:9]"  0.041666667908430099 0.041666656732559204 
		0.083333343267440796;
	setAttr -s 10 ".kiy[7:9]"  0 0 0;
	setAttr -s 10 ".kox[7:9]"  0.041666664183139801 0.083333343267440796 
		1;
	setAttr -s 10 ".koy[7:9]"  0 0 0;
createNode animCurveTA -n "L_knee_rotateX";
	setAttr ".tan" 2;
	setAttr -s 10 ".ktv[0:9]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 12 0;
	setAttr -s 10 ".kit[7:9]"  1 2 2;
	setAttr -s 10 ".kot[7:9]"  1 2 2;
	setAttr -s 10 ".kix[7:9]"  0.041666667908430099 0.041666656732559204 
		0.083333343267440796;
	setAttr -s 10 ".kiy[7:9]"  0 0 0;
	setAttr -s 10 ".kox[7:9]"  0.041666664183139801 0.083333343267440796 
		1;
	setAttr -s 10 ".koy[7:9]"  0 0 0;
createNode animCurveTA -n "L_knee_rotateY";
	setAttr ".tan" 2;
	setAttr -s 10 ".ktv[0:9]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 12 0;
	setAttr -s 10 ".kit[7:9]"  1 2 2;
	setAttr -s 10 ".kot[7:9]"  1 2 2;
	setAttr -s 10 ".kix[7:9]"  0.041666667908430099 0.041666656732559204 
		0.083333343267440796;
	setAttr -s 10 ".kiy[7:9]"  0 0 0;
	setAttr -s 10 ".kox[7:9]"  0.041666664183139801 0.083333343267440796 
		1;
	setAttr -s 10 ".koy[7:9]"  0 0 0;
createNode animCurveTA -n "L_knee_rotateZ";
	setAttr ".tan" 2;
	setAttr -s 10 ".ktv[0:9]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 12 0;
	setAttr -s 10 ".kit[7:9]"  1 2 2;
	setAttr -s 10 ".kot[7:9]"  1 2 2;
	setAttr -s 10 ".kix[7:9]"  0.041666667908430099 0.041666656732559204 
		0.083333343267440796;
	setAttr -s 10 ".kiy[7:9]"  0 0 0;
	setAttr -s 10 ".kox[7:9]"  0.041666664183139801 0.083333343267440796 
		1;
	setAttr -s 10 ".koy[7:9]"  0 0 0;
createNode animCurveTL -n "L_knee_anim_translateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  -1 0 1 -0.67571438751590551 2 -0.45047625834393723
		 3 0.26538830085149145 4 0 5 0 6 0.13741121736673811 7 0.76971769849468485 8 1.4737229412175774
		 9 0.7368614706087887 10 0 11 0 12 -0.96346199292762336;
createNode animCurveTL -n "L_knee_anim_translateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  -1 0 1 -0.12380982542873697 2 -2.5299567436329005
		 3 -1.7131710874032406 4 2.386022630660285 5 1.9883521922169041 6 1.5906817537735234
		 7 1.1930113153301425 8 0.79534087688676203 9 0.39767043844338101 10 0 11 -1.490343185869766
		 12 -1.490343185869766;
createNode animCurveTL -n "L_knee_anim_translateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  -1 0 1 -6.354457721820399 2 -7.5175191577416758
		 3 -1.8048460143364906 4 2.0304741024228923 5 1.6920617520190768 6 1.3536494016152616
		 7 1.015237051211447 8 0.67682470080763246 9 0.33841235040381623 10 0 11 -3.8873928268390783
		 12 -3.8873928268390783;
createNode animCurveTA -n "L_knee_anim_rotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  -1 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTA -n "L_knee_anim_rotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  -1 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTA -n "L_knee_anim_rotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  -1 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTL -n "R_knee_anim_translateX";
	setAttr ".tan" 2;
	setAttr -s 9 ".ktv[0:8]"  -1 0 1 -0.95080782159693911 2 -3.0124033561662644
		 3 -2.1142234646618743 4 -0.90406190201427106 6 0.040092107847433334 7 0.24229237733536937
		 8 -0.0097356500863035045 10 0.84889318579917727;
createNode animCurveTL -n "R_knee_anim_translateY";
	setAttr ".tan" 2;
	setAttr -s 9 ".ktv[0:8]"  -1 0 1 -0.41860759550810211 2 -1.9886489678894246
		 3 -1.3485866953344119 4 -0.7085244227793992 6 -1.8517406201140576 7 -0.60584316194787369
		 8 -2.3679850156120366 10 3.1318492125506774;
createNode animCurveTL -n "R_knee_anim_translateZ";
	setAttr ".tan" 2;
	setAttr -s 9 ".ktv[0:8]"  -1 0 1 4.3958231433067283 2 4.3958231433067283
		 3 4.3958231433067265 4 -1.2941845545390471 6 -5.0054026627312362 7 -5.6817243133098678
		 8 -5.0725090028523665 10 4.3958231433067283;
createNode animCurveTA -n "R_knee_anim_rotateX";
	setAttr ".tan" 2;
	setAttr -s 9 ".ktv[0:8]"  -1 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 10 0;
createNode animCurveTA -n "R_knee_anim_rotateY";
	setAttr ".tan" 2;
	setAttr -s 9 ".ktv[0:8]"  -1 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 10 0;
createNode animCurveTA -n "R_knee_anim_rotateZ";
	setAttr ".tan" 2;
	setAttr -s 9 ".ktv[0:8]"  -1 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 10 0;
createNode animCurveTU -n "world_anim_visibility";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  -1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "world_anim_translateX";
	setAttr ".tan" 2;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTL -n "world_anim_translateY";
	setAttr ".tan" 2;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTL -n "world_anim_translateZ";
	setAttr ".tan" 2;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTA -n "world_anim_rotateX";
	setAttr ".tan" 2;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTA -n "world_anim_rotateY";
	setAttr ".tan" 2;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTA -n "world_anim_rotateZ";
	setAttr ".tan" 2;
	setAttr ".ktv[0]"  -1 0;
select -ne :time1;
	setAttr ".o" -1;
	setAttr ".unw" -1;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 3 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".mcfr" 18;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr ".hwfr" 18;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
connectAttr "world_anim_visibility.o" "C_Robot_RigRN.phl[103]";
connectAttr "world_anim_translateX.o" "C_Robot_RigRN.phl[104]";
connectAttr "world_anim_translateY.o" "C_Robot_RigRN.phl[105]";
connectAttr "world_anim_translateZ.o" "C_Robot_RigRN.phl[106]";
connectAttr "world_anim_rotateX.o" "C_Robot_RigRN.phl[107]";
connectAttr "world_anim_rotateY.o" "C_Robot_RigRN.phl[108]";
connectAttr "world_anim_rotateZ.o" "C_Robot_RigRN.phl[109]";
connectAttr "root_anim_translateX.o" "C_Robot_RigRN.phl[110]";
connectAttr "root_anim_translateY.o" "C_Robot_RigRN.phl[111]";
connectAttr "root_anim_translateZ.o" "C_Robot_RigRN.phl[112]";
connectAttr "root_anim_rotateX.o" "C_Robot_RigRN.phl[113]";
connectAttr "root_anim_rotateY.o" "C_Robot_RigRN.phl[114]";
connectAttr "root_anim_rotateZ.o" "C_Robot_RigRN.phl[115]";
connectAttr "torso_anim_translateX.o" "C_Robot_RigRN.phl[116]";
connectAttr "torso_anim_translateY.o" "C_Robot_RigRN.phl[117]";
connectAttr "torso_anim_translateZ.o" "C_Robot_RigRN.phl[118]";
connectAttr "torso_anim_rotateX.o" "C_Robot_RigRN.phl[119]";
connectAttr "torso_anim_rotateY.o" "C_Robot_RigRN.phl[120]";
connectAttr "torso_anim_rotateZ.o" "C_Robot_RigRN.phl[121]";
connectAttr "chest_anim_translateX.o" "C_Robot_RigRN.phl[122]";
connectAttr "chest_anim_translateY.o" "C_Robot_RigRN.phl[123]";
connectAttr "chest_anim_translateZ.o" "C_Robot_RigRN.phl[124]";
connectAttr "chest_anim_rotateX.o" "C_Robot_RigRN.phl[125]";
connectAttr "chest_anim_rotateY.o" "C_Robot_RigRN.phl[126]";
connectAttr "chest_anim_rotateZ.o" "C_Robot_RigRN.phl[127]";
connectAttr "L_clavicle_anim_rotateX.o" "C_Robot_RigRN.phl[128]";
connectAttr "L_clavicle_anim_rotateY.o" "C_Robot_RigRN.phl[129]";
connectAttr "L_clavicle_anim_rotateZ.o" "C_Robot_RigRN.phl[130]";
connectAttr "L_shoulder_anim_rotateX.o" "C_Robot_RigRN.phl[131]";
connectAttr "L_shoulder_anim_rotateY.o" "C_Robot_RigRN.phl[132]";
connectAttr "L_shoulder_anim_rotateZ.o" "C_Robot_RigRN.phl[133]";
connectAttr "L_elbow_anim_rotateX.o" "C_Robot_RigRN.phl[134]";
connectAttr "L_elbow_anim_rotateY.o" "C_Robot_RigRN.phl[135]";
connectAttr "L_elbow_anim_rotateZ.o" "C_Robot_RigRN.phl[136]";
connectAttr "L_hand_anim_rotateX.o" "C_Robot_RigRN.phl[137]";
connectAttr "L_hand_anim_rotateY.o" "C_Robot_RigRN.phl[138]";
connectAttr "L_hand_anim_rotateZ.o" "C_Robot_RigRN.phl[139]";
connectAttr "L_claw_1_anim_rotateX.o" "C_Robot_RigRN.phl[140]";
connectAttr "L_claw_1_anim_rotateY.o" "C_Robot_RigRN.phl[141]";
connectAttr "L_claw_1_anim_rotateZ.o" "C_Robot_RigRN.phl[142]";
connectAttr "L_claw_2_anim_rotateX.o" "C_Robot_RigRN.phl[143]";
connectAttr "L_claw_2_anim_rotateY.o" "C_Robot_RigRN.phl[144]";
connectAttr "L_claw_2_anim_rotateZ.o" "C_Robot_RigRN.phl[145]";
connectAttr "R_clavicle_anim_rotateX.o" "C_Robot_RigRN.phl[146]";
connectAttr "R_clavicle_anim_rotateY.o" "C_Robot_RigRN.phl[147]";
connectAttr "R_clavicle_anim_rotateZ.o" "C_Robot_RigRN.phl[148]";
connectAttr "R_shoulder_anim_rotateX.o" "C_Robot_RigRN.phl[149]";
connectAttr "R_shoulder_anim_rotateY.o" "C_Robot_RigRN.phl[150]";
connectAttr "R_shoulder_anim_rotateZ.o" "C_Robot_RigRN.phl[151]";
connectAttr "R_elbow_anim_rotateX.o" "C_Robot_RigRN.phl[152]";
connectAttr "R_elbow_anim_rotateY.o" "C_Robot_RigRN.phl[153]";
connectAttr "R_elbow_anim_rotateZ.o" "C_Robot_RigRN.phl[154]";
connectAttr "R_hand_anim_rotateX.o" "C_Robot_RigRN.phl[155]";
connectAttr "R_hand_anim_rotateY.o" "C_Robot_RigRN.phl[156]";
connectAttr "R_hand_anim_rotateZ.o" "C_Robot_RigRN.phl[157]";
connectAttr "R_claw_1_anim_rotateX.o" "C_Robot_RigRN.phl[158]";
connectAttr "R_claw_1_anim_rotateY.o" "C_Robot_RigRN.phl[159]";
connectAttr "R_claw_1_anim_rotateZ.o" "C_Robot_RigRN.phl[160]";
connectAttr "R_claw_2_anim_rotateX.o" "C_Robot_RigRN.phl[161]";
connectAttr "R_claw_2_anim_rotateY.o" "C_Robot_RigRN.phl[162]";
connectAttr "R_claw_2_anim_rotateZ.o" "C_Robot_RigRN.phl[163]";
connectAttr "head_anim_translateX.o" "C_Robot_RigRN.phl[164]";
connectAttr "head_anim_translateY.o" "C_Robot_RigRN.phl[165]";
connectAttr "head_anim_translateZ.o" "C_Robot_RigRN.phl[166]";
connectAttr "head_anim_rotateX.o" "C_Robot_RigRN.phl[167]";
connectAttr "head_anim_rotateY.o" "C_Robot_RigRN.phl[168]";
connectAttr "head_anim_rotateZ.o" "C_Robot_RigRN.phl[169]";
connectAttr "waist_anim_translateX.o" "C_Robot_RigRN.phl[170]";
connectAttr "waist_anim_translateY.o" "C_Robot_RigRN.phl[171]";
connectAttr "waist_anim_translateZ.o" "C_Robot_RigRN.phl[172]";
connectAttr "waist_anim_rotateX.o" "C_Robot_RigRN.phl[173]";
connectAttr "waist_anim_rotateY.o" "C_Robot_RigRN.phl[174]";
connectAttr "waist_anim_rotateZ.o" "C_Robot_RigRN.phl[175]";
connectAttr "L_foot_anim_toe.o" "C_Robot_RigRN.phl[176]";
connectAttr "L_foot_anim_ToeRoll.o" "C_Robot_RigRN.phl[177]";
connectAttr "L_foot_anim_PivotToe.o" "C_Robot_RigRN.phl[178]";
connectAttr "L_foot_anim_BallPivot.o" "C_Robot_RigRN.phl[179]";
connectAttr "L_foot_anim_Bank.o" "C_Robot_RigRN.phl[180]";
connectAttr "L_foot_anim_FootRoll.o" "C_Robot_RigRN.phl[181]";
connectAttr "L_foot_anim_translateX.o" "C_Robot_RigRN.phl[182]";
connectAttr "L_foot_anim_translateY.o" "C_Robot_RigRN.phl[183]";
connectAttr "L_foot_anim_translateZ.o" "C_Robot_RigRN.phl[184]";
connectAttr "L_foot_anim_rotateX.o" "C_Robot_RigRN.phl[185]";
connectAttr "L_foot_anim_rotateY.o" "C_Robot_RigRN.phl[186]";
connectAttr "L_foot_anim_rotateZ.o" "C_Robot_RigRN.phl[187]";
connectAttr "R_foot_anim_toe.o" "C_Robot_RigRN.phl[188]";
connectAttr "R_foot_anim_ToeRoll.o" "C_Robot_RigRN.phl[189]";
connectAttr "R_foot_anim_PivotToe.o" "C_Robot_RigRN.phl[190]";
connectAttr "R_foot_anim_BallPivot.o" "C_Robot_RigRN.phl[191]";
connectAttr "R_foot_anim_Bank.o" "C_Robot_RigRN.phl[192]";
connectAttr "R_foot_anim_FootRoll.o" "C_Robot_RigRN.phl[193]";
connectAttr "R_foot_anim_translateX.o" "C_Robot_RigRN.phl[194]";
connectAttr "R_foot_anim_translateY.o" "C_Robot_RigRN.phl[195]";
connectAttr "R_foot_anim_translateZ.o" "C_Robot_RigRN.phl[196]";
connectAttr "R_foot_anim_rotateX.o" "C_Robot_RigRN.phl[197]";
connectAttr "R_foot_anim_rotateY.o" "C_Robot_RigRN.phl[198]";
connectAttr "R_foot_anim_rotateZ.o" "C_Robot_RigRN.phl[199]";
connectAttr "L_knee_anim_translateX.o" "C_Robot_RigRN.phl[200]";
connectAttr "L_knee_anim_translateY.o" "C_Robot_RigRN.phl[201]";
connectAttr "L_knee_anim_translateZ.o" "C_Robot_RigRN.phl[202]";
connectAttr "L_knee_anim_rotateX.o" "C_Robot_RigRN.phl[203]";
connectAttr "L_knee_anim_rotateY.o" "C_Robot_RigRN.phl[204]";
connectAttr "L_knee_anim_rotateZ.o" "C_Robot_RigRN.phl[205]";
connectAttr "R_knee_anim_translateX.o" "C_Robot_RigRN.phl[206]";
connectAttr "R_knee_anim_translateY.o" "C_Robot_RigRN.phl[207]";
connectAttr "R_knee_anim_translateZ.o" "C_Robot_RigRN.phl[208]";
connectAttr "R_knee_anim_rotateX.o" "C_Robot_RigRN.phl[209]";
connectAttr "R_knee_anim_rotateY.o" "C_Robot_RigRN.phl[210]";
connectAttr "R_knee_anim_rotateZ.o" "C_Robot_RigRN.phl[211]";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "L_knee_translateZ.o" "C_Robot_RigRN.phl[91]";
connectAttr "L_knee_translateX.o" "C_Robot_RigRN.phl[92]";
connectAttr "L_knee_translateY.o" "C_Robot_RigRN.phl[93]";
connectAttr "L_knee_rotateX.o" "C_Robot_RigRN.phl[94]";
connectAttr "L_knee_rotateY.o" "C_Robot_RigRN.phl[95]";
connectAttr "L_knee_rotateZ.o" "C_Robot_RigRN.phl[96]";
connectAttr "R_knee_translateX.o" "C_Robot_RigRN.phl[97]";
connectAttr "R_knee_translateY.o" "C_Robot_RigRN.phl[98]";
connectAttr "R_knee_translateZ.o" "C_Robot_RigRN.phl[99]";
connectAttr "R_knee_rotateX.o" "C_Robot_RigRN.phl[100]";
connectAttr "R_knee_rotateY.o" "C_Robot_RigRN.phl[101]";
connectAttr "R_knee_rotateZ.o" "C_Robot_RigRN.phl[102]";
connectAttr "hyperView1.msg" "nodeEditorPanel1Info.b[0]";
connectAttr "hyperLayout1.msg" "hyperView1.hl";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"C_Robot_RigRN\" \"\" \"/Users/Emi-Bear/Desktop/MonsterRobotRunner/ART/C_Robot/C_Robot_Rig.ma\" 3061569932 \"/Users/Emi-Bear/Desktop/MonsterRobotRunner/ART/C_Robot/C_Robot_Rig.ma\" \"FileRef\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of C_Robot_Run_Baked.ma
