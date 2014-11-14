//Maya ASCII 2015 scene
//Name: C_Robot_Run_Baked.ma
//Last modified: Thu, Nov 13, 2014 04:46:01 PM
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
	setAttr ".t" -type "double3" -21.586560359378584 1.832142049751142 0.50455311273393022 ;
	setAttr ".r" -type "double3" 9.0000000000000053 -441.59999999995955 -5.443059869356193e-15 ;
	setAttr ".rp" -type "double3" 0 4.4408920985006262e-16 0 ;
	setAttr ".rpt" -type "double3" -1.6485040534808017e-16 -3.2011027817205036e-16 -1.5411003564579974e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 22.831469988285299;
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
	setAttr -s 623 ".phl";
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
	setAttr ".phl[212]" 0;
	setAttr ".phl[213]" 0;
	setAttr ".phl[214]" 0;
	setAttr ".phl[215]" 0;
	setAttr ".phl[216]" 0;
	setAttr ".phl[217]" 0;
	setAttr ".phl[218]" 0;
	setAttr ".phl[219]" 0;
	setAttr ".phl[220]" 0;
	setAttr ".phl[221]" 0;
	setAttr ".phl[222]" 0;
	setAttr ".phl[223]" 0;
	setAttr ".phl[224]" 0;
	setAttr ".phl[225]" 0;
	setAttr ".phl[226]" 0;
	setAttr ".phl[227]" 0;
	setAttr ".phl[228]" 0;
	setAttr ".phl[229]" 0;
	setAttr ".phl[230]" 0;
	setAttr ".phl[231]" 0;
	setAttr ".phl[232]" 0;
	setAttr ".phl[233]" 0;
	setAttr ".phl[234]" 0;
	setAttr ".phl[235]" 0;
	setAttr ".phl[236]" 0;
	setAttr ".phl[237]" 0;
	setAttr ".phl[238]" 0;
	setAttr ".phl[239]" 0;
	setAttr ".phl[240]" 0;
	setAttr ".phl[241]" 0;
	setAttr ".phl[242]" 0;
	setAttr ".phl[243]" 0;
	setAttr ".phl[244]" 0;
	setAttr ".phl[245]" 0;
	setAttr ".phl[246]" 0;
	setAttr ".phl[247]" 0;
	setAttr ".phl[248]" 0;
	setAttr ".phl[249]" 0;
	setAttr ".phl[250]" 0;
	setAttr ".phl[251]" 0;
	setAttr ".phl[252]" 0;
	setAttr ".phl[253]" 0;
	setAttr ".phl[254]" 0;
	setAttr ".phl[255]" 0;
	setAttr ".phl[256]" 0;
	setAttr ".phl[257]" 0;
	setAttr ".phl[258]" 0;
	setAttr ".phl[259]" 0;
	setAttr ".phl[260]" 0;
	setAttr ".phl[261]" 0;
	setAttr ".phl[262]" 0;
	setAttr ".phl[263]" 0;
	setAttr ".phl[264]" 0;
	setAttr ".phl[265]" 0;
	setAttr ".phl[266]" 0;
	setAttr ".phl[267]" 0;
	setAttr ".phl[268]" 0;
	setAttr ".phl[269]" 0;
	setAttr ".phl[270]" 0;
	setAttr ".phl[271]" 0;
	setAttr ".phl[272]" 0;
	setAttr ".phl[273]" 0;
	setAttr ".phl[274]" 0;
	setAttr ".phl[275]" 0;
	setAttr ".phl[276]" 0;
	setAttr ".phl[277]" 0;
	setAttr ".phl[278]" 0;
	setAttr ".phl[279]" 0;
	setAttr ".phl[280]" 0;
	setAttr ".phl[281]" 0;
	setAttr ".phl[282]" 0;
	setAttr ".phl[283]" 0;
	setAttr ".phl[284]" 0;
	setAttr ".phl[285]" 0;
	setAttr ".phl[286]" 0;
	setAttr ".phl[287]" 0;
	setAttr ".phl[288]" 0;
	setAttr ".phl[289]" 0;
	setAttr ".phl[290]" 0;
	setAttr ".phl[291]" 0;
	setAttr ".phl[292]" 0;
	setAttr ".phl[293]" 0;
	setAttr ".phl[294]" 0;
	setAttr ".phl[295]" 0;
	setAttr ".phl[296]" 0;
	setAttr ".phl[297]" 0;
	setAttr ".phl[298]" 0;
	setAttr ".phl[299]" 0;
	setAttr ".phl[300]" 0;
	setAttr ".phl[301]" 0;
	setAttr ".phl[302]" 0;
	setAttr ".phl[303]" 0;
	setAttr ".phl[304]" 0;
	setAttr ".phl[305]" 0;
	setAttr ".phl[306]" 0;
	setAttr ".phl[307]" 0;
	setAttr ".phl[308]" 0;
	setAttr ".phl[309]" 0;
	setAttr ".phl[310]" 0;
	setAttr ".phl[311]" 0;
	setAttr ".phl[312]" 0;
	setAttr ".phl[313]" 0;
	setAttr ".phl[314]" 0;
	setAttr ".phl[315]" 0;
	setAttr ".phl[316]" 0;
	setAttr ".phl[317]" 0;
	setAttr ".phl[318]" 0;
	setAttr ".phl[319]" 0;
	setAttr ".phl[320]" 0;
	setAttr ".phl[321]" 0;
	setAttr ".phl[322]" 0;
	setAttr ".phl[323]" 0;
	setAttr ".phl[324]" 0;
	setAttr ".phl[325]" 0;
	setAttr ".phl[326]" 0;
	setAttr ".phl[327]" 0;
	setAttr ".phl[328]" 0;
	setAttr ".phl[329]" 0;
	setAttr ".phl[330]" 0;
	setAttr ".phl[331]" 0;
	setAttr ".phl[332]" 0;
	setAttr ".phl[333]" 0;
	setAttr ".phl[334]" 0;
	setAttr ".phl[335]" 0;
	setAttr ".phl[336]" 0;
	setAttr ".phl[337]" 0;
	setAttr ".phl[338]" 0;
	setAttr ".phl[339]" 0;
	setAttr ".phl[340]" 0;
	setAttr ".phl[341]" 0;
	setAttr ".phl[342]" 0;
	setAttr ".phl[343]" 0;
	setAttr ".phl[344]" 0;
	setAttr ".phl[345]" 0;
	setAttr ".phl[346]" 0;
	setAttr ".phl[347]" 0;
	setAttr ".phl[348]" 0;
	setAttr ".phl[349]" 0;
	setAttr ".phl[350]" 0;
	setAttr ".phl[351]" 0;
	setAttr ".phl[352]" 0;
	setAttr ".phl[353]" 0;
	setAttr ".phl[354]" 0;
	setAttr ".phl[355]" 0;
	setAttr ".phl[356]" 0;
	setAttr ".phl[357]" 0;
	setAttr ".phl[358]" 0;
	setAttr ".phl[359]" 0;
	setAttr ".phl[360]" 0;
	setAttr ".phl[361]" 0;
	setAttr ".phl[362]" 0;
	setAttr ".phl[363]" 0;
	setAttr ".phl[364]" 0;
	setAttr ".phl[365]" 0;
	setAttr ".phl[366]" 0;
	setAttr ".phl[367]" 0;
	setAttr ".phl[368]" 0;
	setAttr ".phl[369]" 0;
	setAttr ".phl[370]" 0;
	setAttr ".phl[371]" 0;
	setAttr ".phl[372]" 0;
	setAttr ".phl[373]" 0;
	setAttr ".phl[374]" 0;
	setAttr ".phl[375]" 0;
	setAttr ".phl[376]" 0;
	setAttr ".phl[377]" 0;
	setAttr ".phl[378]" 0;
	setAttr ".phl[379]" 0;
	setAttr ".phl[380]" 0;
	setAttr ".phl[381]" 0;
	setAttr ".phl[382]" 0;
	setAttr ".phl[383]" 0;
	setAttr ".phl[384]" 0;
	setAttr ".phl[385]" 0;
	setAttr ".phl[386]" 0;
	setAttr ".phl[387]" 0;
	setAttr ".phl[388]" 0;
	setAttr ".phl[389]" 0;
	setAttr ".phl[390]" 0;
	setAttr ".phl[391]" 0;
	setAttr ".phl[392]" 0;
	setAttr ".phl[393]" 0;
	setAttr ".phl[394]" 0;
	setAttr ".phl[395]" 0;
	setAttr ".phl[396]" 0;
	setAttr ".phl[397]" 0;
	setAttr ".phl[398]" 0;
	setAttr ".phl[399]" 0;
	setAttr ".phl[400]" 0;
	setAttr ".phl[401]" 0;
	setAttr ".phl[402]" 0;
	setAttr ".phl[403]" 0;
	setAttr ".phl[404]" 0;
	setAttr ".phl[405]" 0;
	setAttr ".phl[406]" 0;
	setAttr ".phl[407]" 0;
	setAttr ".phl[408]" 0;
	setAttr ".phl[409]" 0;
	setAttr ".phl[410]" 0;
	setAttr ".phl[411]" 0;
	setAttr ".phl[412]" 0;
	setAttr ".phl[413]" 0;
	setAttr ".phl[414]" 0;
	setAttr ".phl[415]" 0;
	setAttr ".phl[416]" 0;
	setAttr ".phl[417]" 0;
	setAttr ".phl[418]" 0;
	setAttr ".phl[419]" 0;
	setAttr ".phl[420]" 0;
	setAttr ".phl[421]" 0;
	setAttr ".phl[422]" 0;
	setAttr ".phl[423]" 0;
	setAttr ".phl[424]" 0;
	setAttr ".phl[425]" 0;
	setAttr ".phl[426]" 0;
	setAttr ".phl[427]" 0;
	setAttr ".phl[428]" 0;
	setAttr ".phl[429]" 0;
	setAttr ".phl[430]" 0;
	setAttr ".phl[431]" 0;
	setAttr ".phl[432]" 0;
	setAttr ".phl[433]" 0;
	setAttr ".phl[434]" 0;
	setAttr ".phl[435]" 0;
	setAttr ".phl[436]" 0;
	setAttr ".phl[437]" 0;
	setAttr ".phl[438]" 0;
	setAttr ".phl[439]" 0;
	setAttr ".phl[440]" 0;
	setAttr ".phl[441]" 0;
	setAttr ".phl[442]" 0;
	setAttr ".phl[443]" 0;
	setAttr ".phl[444]" 0;
	setAttr ".phl[445]" 0;
	setAttr ".phl[446]" 0;
	setAttr ".phl[447]" 0;
	setAttr ".phl[448]" 0;
	setAttr ".phl[449]" 0;
	setAttr ".phl[450]" 0;
	setAttr ".phl[451]" 0;
	setAttr ".phl[452]" 0;
	setAttr ".phl[453]" 0;
	setAttr ".phl[454]" 0;
	setAttr ".phl[455]" 0;
	setAttr ".phl[456]" 0;
	setAttr ".phl[457]" 0;
	setAttr ".phl[458]" 0;
	setAttr ".phl[459]" 0;
	setAttr ".phl[460]" 0;
	setAttr ".phl[461]" 0;
	setAttr ".phl[462]" 0;
	setAttr ".phl[463]" 0;
	setAttr ".phl[464]" 0;
	setAttr ".phl[465]" 0;
	setAttr ".phl[466]" 0;
	setAttr ".phl[467]" 0;
	setAttr ".phl[468]" 0;
	setAttr ".phl[469]" 0;
	setAttr ".phl[470]" 0;
	setAttr ".phl[471]" 0;
	setAttr ".phl[472]" 0;
	setAttr ".phl[473]" 0;
	setAttr ".phl[474]" 0;
	setAttr ".phl[475]" 0;
	setAttr ".phl[476]" 0;
	setAttr ".phl[477]" 0;
	setAttr ".phl[478]" 0;
	setAttr ".phl[479]" 0;
	setAttr ".phl[480]" 0;
	setAttr ".phl[481]" 0;
	setAttr ".phl[482]" 0;
	setAttr ".phl[483]" 0;
	setAttr ".phl[484]" 0;
	setAttr ".phl[485]" 0;
	setAttr ".phl[486]" 0;
	setAttr ".phl[487]" 0;
	setAttr ".phl[488]" 0;
	setAttr ".phl[489]" 0;
	setAttr ".phl[490]" 0;
	setAttr ".phl[491]" 0;
	setAttr ".phl[492]" 0;
	setAttr ".phl[493]" 0;
	setAttr ".phl[494]" 0;
	setAttr ".phl[495]" 0;
	setAttr ".phl[496]" 0;
	setAttr ".phl[497]" 0;
	setAttr ".phl[498]" 0;
	setAttr ".phl[499]" 0;
	setAttr ".phl[500]" 0;
	setAttr ".phl[501]" 0;
	setAttr ".phl[502]" 0;
	setAttr ".phl[503]" 0;
	setAttr ".phl[504]" 0;
	setAttr ".phl[505]" 0;
	setAttr ".phl[506]" 0;
	setAttr ".phl[507]" 0;
	setAttr ".phl[508]" 0;
	setAttr ".phl[509]" 0;
	setAttr ".phl[510]" 0;
	setAttr ".phl[511]" 0;
	setAttr ".phl[512]" 0;
	setAttr ".phl[513]" 0;
	setAttr ".phl[514]" 0;
	setAttr ".phl[515]" 0;
	setAttr ".phl[516]" 0;
	setAttr ".phl[517]" 0;
	setAttr ".phl[518]" 0;
	setAttr ".phl[519]" 0;
	setAttr ".phl[520]" 0;
	setAttr ".phl[521]" 0;
	setAttr ".phl[522]" 0;
	setAttr ".phl[523]" 0;
	setAttr ".phl[524]" 0;
	setAttr ".phl[525]" 0;
	setAttr ".phl[526]" 0;
	setAttr ".phl[527]" 0;
	setAttr ".phl[528]" 0;
	setAttr ".phl[529]" 0;
	setAttr ".phl[530]" 0;
	setAttr ".phl[531]" 0;
	setAttr ".phl[532]" 0;
	setAttr ".phl[533]" 0;
	setAttr ".phl[534]" 0;
	setAttr ".phl[535]" 0;
	setAttr ".phl[536]" 0;
	setAttr ".phl[537]" 0;
	setAttr ".phl[538]" 0;
	setAttr ".phl[539]" 0;
	setAttr ".phl[540]" 0;
	setAttr ".phl[541]" 0;
	setAttr ".phl[542]" 0;
	setAttr ".phl[543]" 0;
	setAttr ".phl[544]" 0;
	setAttr ".phl[545]" 0;
	setAttr ".phl[546]" 0;
	setAttr ".phl[547]" 0;
	setAttr ".phl[548]" 0;
	setAttr ".phl[549]" 0;
	setAttr ".phl[550]" 0;
	setAttr ".phl[551]" 0;
	setAttr ".phl[552]" 0;
	setAttr ".phl[553]" 0;
	setAttr ".phl[554]" 0;
	setAttr ".phl[555]" 0;
	setAttr ".phl[556]" 0;
	setAttr ".phl[557]" 0;
	setAttr ".phl[558]" 0;
	setAttr ".phl[559]" 0;
	setAttr ".phl[560]" 0;
	setAttr ".phl[561]" 0;
	setAttr ".phl[562]" 0;
	setAttr ".phl[563]" 0;
	setAttr ".phl[564]" 0;
	setAttr ".phl[565]" 0;
	setAttr ".phl[566]" 0;
	setAttr ".phl[567]" 0;
	setAttr ".phl[568]" 0;
	setAttr ".phl[569]" 0;
	setAttr ".phl[570]" 0;
	setAttr ".phl[571]" 0;
	setAttr ".phl[572]" 0;
	setAttr ".phl[573]" 0;
	setAttr ".phl[574]" 0;
	setAttr ".phl[575]" 0;
	setAttr ".phl[576]" 0;
	setAttr ".phl[577]" 0;
	setAttr ".phl[578]" 0;
	setAttr ".phl[579]" 0;
	setAttr ".phl[580]" 0;
	setAttr ".phl[581]" 0;
	setAttr ".phl[582]" 0;
	setAttr ".phl[583]" 0;
	setAttr ".phl[584]" 0;
	setAttr ".phl[585]" 0;
	setAttr ".phl[586]" 0;
	setAttr ".phl[587]" 0;
	setAttr ".phl[588]" 0;
	setAttr ".phl[589]" 0;
	setAttr ".phl[590]" 0;
	setAttr ".phl[591]" 0;
	setAttr ".phl[592]" 0;
	setAttr ".phl[593]" 0;
	setAttr ".phl[594]" 0;
	setAttr ".phl[595]" 0;
	setAttr ".phl[596]" 0;
	setAttr ".phl[597]" 0;
	setAttr ".phl[598]" 0;
	setAttr ".phl[599]" 0;
	setAttr ".phl[600]" 0;
	setAttr ".phl[601]" 0;
	setAttr ".phl[602]" 0;
	setAttr ".phl[603]" 0;
	setAttr ".phl[604]" 0;
	setAttr ".phl[605]" 0;
	setAttr ".phl[606]" 0;
	setAttr ".phl[607]" 0;
	setAttr ".phl[608]" 0;
	setAttr ".phl[609]" 0;
	setAttr ".phl[610]" 0;
	setAttr ".phl[611]" 0;
	setAttr ".phl[612]" 0;
	setAttr ".phl[613]" 0;
	setAttr ".phl[614]" 0;
	setAttr ".phl[615]" 0;
	setAttr ".phl[616]" 0;
	setAttr ".phl[617]" 0;
	setAttr ".phl[618]" 0;
	setAttr ".phl[619]" 0;
	setAttr ".phl[620]" 0;
	setAttr ".phl[621]" 0;
	setAttr ".phl[622]" 0;
	setAttr ".phl[623]" 0;
	setAttr ".phl[624]" 0;
	setAttr ".phl[625]" 0;
	setAttr ".phl[626]" 0;
	setAttr ".phl[627]" 0;
	setAttr ".phl[628]" 0;
	setAttr ".phl[629]" 0;
	setAttr ".phl[630]" 0;
	setAttr ".phl[631]" 0;
	setAttr ".phl[632]" 0;
	setAttr ".phl[633]" 0;
	setAttr ".phl[634]" 0;
	setAttr ".phl[635]" 0;
	setAttr ".phl[636]" 0;
	setAttr ".phl[637]" 0;
	setAttr ".phl[638]" 0;
	setAttr ".phl[639]" 0;
	setAttr ".phl[640]" 0;
	setAttr ".phl[641]" 0;
	setAttr ".phl[642]" 0;
	setAttr ".phl[643]" 0;
	setAttr ".phl[644]" 0;
	setAttr ".phl[645]" 0;
	setAttr ".phl[646]" 0;
	setAttr ".phl[647]" 0;
	setAttr ".phl[648]" 0;
	setAttr ".phl[649]" 0;
	setAttr ".phl[650]" 0;
	setAttr ".phl[651]" 0;
	setAttr ".phl[652]" 0;
	setAttr ".phl[653]" 0;
	setAttr ".phl[654]" 0;
	setAttr ".phl[655]" 0;
	setAttr ".phl[656]" 0;
	setAttr ".phl[657]" 0;
	setAttr ".phl[658]" 0;
	setAttr ".phl[659]" 0;
	setAttr ".phl[660]" 0;
	setAttr ".phl[661]" 0;
	setAttr ".phl[662]" 0;
	setAttr ".phl[663]" 0;
	setAttr ".phl[664]" 0;
	setAttr ".phl[665]" 0;
	setAttr ".phl[666]" 0;
	setAttr ".phl[667]" 0;
	setAttr ".phl[668]" 0;
	setAttr ".phl[669]" 0;
	setAttr ".phl[670]" 0;
	setAttr ".phl[671]" 0;
	setAttr ".phl[672]" 0;
	setAttr ".phl[673]" 0;
	setAttr ".phl[674]" 0;
	setAttr ".phl[675]" 0;
	setAttr ".phl[676]" 0;
	setAttr ".phl[677]" 0;
	setAttr ".phl[678]" 0;
	setAttr ".phl[679]" 0;
	setAttr ".phl[680]" 0;
	setAttr ".phl[681]" 0;
	setAttr ".phl[682]" 0;
	setAttr ".phl[683]" 0;
	setAttr ".phl[684]" 0;
	setAttr ".phl[685]" 0;
	setAttr ".phl[686]" 0;
	setAttr ".phl[687]" 0;
	setAttr ".phl[688]" 0;
	setAttr ".phl[689]" 0;
	setAttr ".phl[690]" 0;
	setAttr ".phl[691]" 0;
	setAttr ".phl[692]" 0;
	setAttr ".phl[693]" 0;
	setAttr ".phl[694]" 0;
	setAttr ".phl[695]" 0;
	setAttr ".phl[696]" 0;
	setAttr ".phl[697]" 0;
	setAttr ".phl[698]" 0;
	setAttr ".phl[699]" 0;
	setAttr ".phl[700]" 0;
	setAttr ".phl[701]" 0;
	setAttr ".phl[702]" 0;
	setAttr ".phl[703]" 0;
	setAttr ".phl[704]" 0;
	setAttr ".phl[705]" 0;
	setAttr ".phl[706]" 0;
	setAttr ".phl[707]" 0;
	setAttr ".phl[708]" 0;
	setAttr ".phl[709]" 0;
	setAttr ".phl[710]" 0;
	setAttr ".phl[711]" 0;
	setAttr ".phl[712]" 0;
	setAttr ".phl[713]" 0;
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
		"C_Robot_RigRN" 945
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:L_foot_joint_group" "translate" 
		" -type \"double3\" 0.030047664384880601 13.99776796527496714 -6.06338731702663569"
		
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:L_foot_joint_group" "translateX" 
		" -av"
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:L_foot_joint_group" "translateY" 
		" -av"
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:L_foot_joint_group" "translateZ" 
		" -av"
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:L_foot_joint_group" "rotate" " -type \"double3\" 0 4.86127028697025132 0"
		
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:L_foot_joint_group" "rotateX" " -av"
		
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:L_foot_joint_group" "rotateY" " -av"
		
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:L_foot_joint_group" "rotateZ" " -av"
		
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:L_foot_joint_group|C_Robot_Rig:L_heel_joint|C_Robot_Rig:L_ball_joint|C_Robot_Rig:L_ball_2_joint|C_Robot_Rig:L_ankle_Move_joint|C_Robot_Rig:L_ankle_ik_group|C_Robot_Rig:L_ikHandle_ankle" 
		"translate" " -type \"double3\" 1.47197994099096352 0.8329563554974998 -0.051795010952524478"
		
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:L_foot_joint_group|C_Robot_Rig:L_heel_joint|C_Robot_Rig:L_ball_joint|C_Robot_Rig:L_ball_2_joint|C_Robot_Rig:L_ankle_Move_joint|C_Robot_Rig:L_ankle_ik_group|C_Robot_Rig:L_ikHandle_ankle" 
		"ikBlend" " 0"
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:L_foot_joint_group|C_Robot_Rig:L_heel_joint|C_Robot_Rig:L_ball_joint|C_Robot_Rig:L_toe_joint" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:L_foot_joint_group|C_Robot_Rig:L_heel_joint|C_Robot_Rig:L_ball_joint|C_Robot_Rig:L_toe_joint" 
		"rotateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:R_foot_joint_group" "translate" 
		" -type \"double3\" 0.99660920183901713 10.22045020355813705 0.69725896686830957"
		
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
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:R_foot_joint_group|C_Robot_Rig:R_heel_joint|C_Robot_Rig:R_ball_joint|C_Robot_Rig:R_ball_2_joint|C_Robot_Rig:R_ankle_Move_joint|C_Robot_Rig:R_ankle_ik_group|C_Robot_Rig:R_ikHandle_ankle" 
		"ikBlend" " 0"
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint" 
		"translate" " -type \"double3\" 1.125797790102812 7.02869486747773475 -0.73015978475118781"
		
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint" 
		"translateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint" 
		"translateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint" 
		"translateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint" 
		"rotate" " -type \"double3\" -23.23811282387147159 0.60894406013590241 1.41785067175905244"
		
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint" 
		"rotateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint" 
		"rotateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint" 
		"rotate" " -type \"double3\" 186.86766405833787985 9.23151660464418278 106.17286754151373884"
		
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint" 
		"rotateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint" 
		"rotateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint" 
		"rotateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint" 
		"segmentScaleCompensate" " 1"
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint" 
		"rotate" " -type \"double3\" 84.3818106863411117 -40.3630881708936613 86.52798498935487714"
		
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint" 
		"rotateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint" 
		"rotateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint" 
		"rotateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint" 
		"segmentScaleCompensate" " 1"
		2 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:head_joint" 
		"translate" " -type \"double3\" 4.13256464827626502 0.078584881523632077 -0.94039912071889287"
		
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
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim" "rotateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim" "rotateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim" "rotateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim" 
		"translate" " -type \"double3\" -1.14023883676561177 -1.1086415690455329 0.53675700004134819"
		
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim" 
		"translateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim" 
		"translateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim" 
		"translateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim" 
		"rotate" " -type \"double3\" 23.23811282387146804 0.60894406013591595 -1.41785067175905022"
		
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
		"rotate" " -type \"double3\" 6.6198533167222573 2.26879117058820867 5.00076408858187094"
		
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
		"rotate" " -type \"double3\" 8.22543779781749507 9.04955465043246221 -2.40733451947874366"
		
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim" 
		"rotateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim" 
		"rotateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim" 
		"rotateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim" 
		"rotate" " -type \"double3\" -6.96623455376455869 -9.16475506685934072 16.72996717791559007"
		
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim" 
		"rotateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim" 
		"rotateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim" 
		"rotateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim" 
		"rotate" " -type \"double3\" 7.89999726056212737 54.7733200602431296 -71.96487211363134406"
		
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim" 
		"rotateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim" 
		"rotateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim" 
		"rotateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim" 
		"rotate" " -type \"double3\" 26.59743430512937934 -40.08892803921379766 2.78063561843377194"
		
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim" 
		"rotateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim" 
		"rotateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim" 
		"rotateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim|C_Robot_Rig:L_hand_anim" 
		"rotate" " -type \"double3\" -7.30252854166019993 -33.85195634556453115 3.07508305282342098"
		
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
		"rotate" " -type \"double3\" 0 -5.49024246331807486 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim" 
		"rotateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim" 
		"rotateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim" 
		"rotateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim" 
		"rotate" " -type \"double3\" 4.84305453871661218 41.38293503180130983 86.46726731214768336"
		
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim" 
		"rotateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim" 
		"rotateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim" 
		"rotateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim" 
		"rotate" " -type \"double3\" -0.77926684363336762 27.55123364875797165 1.3871466769630636"
		
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim" 
		"rotateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim" 
		"rotateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim" 
		"rotateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim|C_Robot_Rig:R_hand_anim" 
		"rotate" " -type \"double3\" 1.6898982830349556 -27.73650743932823559 2.0077772638700937"
		
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
		"translate" " -type \"double3\" -0.05285418120716244 0.41947041291327125 -1.04987400664345998"
		
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:head_anim" 
		"translateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:head_anim" 
		"translateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:head_anim" 
		"translateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:head_anim" 
		"rotate" " -type \"double3\" -29.39457179134840814 -4.43834074171040083 -5.08229891175630044"
		
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
		"rotate" " -type \"double3\" -3.37795115106104582 4.43465026175662569 3.62355435771138712"
		
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:waist_anim" 
		"rotateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:waist_anim" 
		"rotateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:waist_anim" 
		"rotateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_foot_anim" 
		"translate" " -type \"double3\" 0.0033832932467926452 3.48493037330049127 5.96091310666998631"
		
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_foot_anim" 
		"translateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_foot_anim" 
		"translateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_foot_anim" 
		"translateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_foot_anim" 
		"rotate" " -type \"double3\" 0 4.86127028697027797 0"
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
		"FootRoll" " -av -k 1 -3.00000000000000044"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim" 
		"translate" " -type \"double3\" -0.46531181580830105 -0.041949226516159635 -6.24699278942429626"
		
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim" 
		"translateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim" 
		"translateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim" 
		"translateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim" 
		"rotate" " -type \"double3\" 0 2.08806933682073215 5.15145664003191417"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim" 
		"rotateX" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim" 
		"rotateY" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim" 
		"rotateZ" " -av"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim" 
		"toe" " -av -k 1 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim" 
		"ToeRoll" " -av -k 1 1.6"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim" 
		"PivotToe" " -av -k 1 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim" 
		"BallPivot" " -av -k 1 -1.3"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim" 
		"Bank" " -av -k 1 0"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim" 
		"FootRoll" " -av -k 1 7.9"
		2 "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_knee_anim" 
		"translate" " -type \"double3\" 0 1.98835219221690407 1.69206175201907683"
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
		"translate" " -type \"double3\" -0.43198489708341875 -1.28013252144672851 -3.14979360863514213"
		
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
		2 "C_Robot_Rig:Contrl_Layer" "displayType" " 2"
		2 "C_Robot_Rig:Contrl_Layer" "visibility" " 1"
		2 "C_Robot_Rig:Joint_Layer" "displayType" " 0"
		2 "C_Robot_Rig:Joint_Layer" "visibility" " 1"
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_1_joint|C_Robot_Rig:R_claw_1_joint_parentConstraint1.R_claw_1_animW0" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_1_joint|C_Robot_Rig:R_claw_1_joint_parentConstraint1.target[0].targetWeight" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint.translateX" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:effector7.translateX" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint.translateY" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:effector7.translateY" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint.translateZ" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:effector7.translateZ" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:chest_joint_parentConstraint1.constraintTranslateX" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint.translateX" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:chest_joint_parentConstraint1.constraintTranslateY" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint.translateY" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:chest_joint_parentConstraint1.constraintTranslateZ" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint.translateZ" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:chest_joint_parentConstraint1.constraintRotateX" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint.rotateX" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:chest_joint_parentConstraint1.constraintRotateY" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint.rotateY" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:chest_joint_parentConstraint1.constraintRotateZ" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint.rotateZ" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_2_joint|C_Robot_Rig:R_claw_2_joint_parentConstraint1.R_claw_2_animW0" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_2_joint|C_Robot_Rig:R_claw_2_joint_parentConstraint1.target[0].targetWeight" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:root_joint_parentConstraint1.root_animW0" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:root_joint_parentConstraint1.target[0].targetWeight" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_shoulder_joint_parentConstraint1.R_shoulder_animW0" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_shoulder_joint_parentConstraint1.target[0].targetWeight" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_2_joint|C_Robot_Rig:R_claw_2_joint_parentConstraint1.constraintTranslateX" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_2_joint.translateX" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_2_joint|C_Robot_Rig:R_claw_2_joint_parentConstraint1.constraintTranslateY" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_2_joint.translateY" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_2_joint|C_Robot_Rig:R_claw_2_joint_parentConstraint1.constraintTranslateZ" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_2_joint.translateZ" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_2_joint|C_Robot_Rig:R_claw_2_joint_parentConstraint1.constraintRotateX" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_2_joint.rotateX" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_2_joint|C_Robot_Rig:R_claw_2_joint_parentConstraint1.constraintRotateY" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_2_joint.rotateY" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_2_joint|C_Robot_Rig:R_claw_2_joint_parentConstraint1.constraintRotateZ" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_2_joint.rotateZ" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_1_joint|C_Robot_Rig:L_claw_1_joint_parentConstraint1.constraintTranslateX" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_1_joint.translateX" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_1_joint|C_Robot_Rig:L_claw_1_joint_parentConstraint1.constraintTranslateY" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_1_joint.translateY" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_1_joint|C_Robot_Rig:L_claw_1_joint_parentConstraint1.constraintTranslateZ" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_1_joint.translateZ" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_1_joint|C_Robot_Rig:L_claw_1_joint_parentConstraint1.constraintRotateX" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_1_joint.rotateX" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_1_joint|C_Robot_Rig:L_claw_1_joint_parentConstraint1.constraintRotateY" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_1_joint.rotateY" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_1_joint|C_Robot_Rig:L_claw_1_joint_parentConstraint1.constraintRotateZ" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_1_joint.rotateZ" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:root_joint_parentConstraint1.constraintTranslateX" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint.translateX" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:root_joint_parentConstraint1.constraintTranslateY" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint.translateY" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:root_joint_parentConstraint1.constraintTranslateZ" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint.translateZ" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:root_joint_parentConstraint1.constraintRotateX" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint.rotateX" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:root_joint_parentConstraint1.constraintRotateY" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint.rotateY" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:root_joint_parentConstraint1.constraintRotateZ" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint.rotateZ" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_shoulder_joint_parentConstraint1.L_shoulder_animW0" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_shoulder_joint_parentConstraint1.target[0].targetWeight" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_toe_shadow|C_Robot_Rig:R_toe_parentConstraint1.R_toe_jointW0" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_toe_shadow|C_Robot_Rig:R_toe_parentConstraint1.target[0].targetWeight" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_clavicle_joint_parentConstraint1.constraintTranslateX" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint.translateX" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_clavicle_joint_parentConstraint1.constraintTranslateY" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint.translateY" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_clavicle_joint_parentConstraint1.constraintTranslateZ" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint.translateZ" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_clavicle_joint_parentConstraint1.constraintRotateX" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint.rotateX" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_clavicle_joint_parentConstraint1.constraintRotateY" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint.rotateY" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_clavicle_joint_parentConstraint1.constraintRotateZ" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint.rotateZ" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_1_joint|C_Robot_Rig:R_claw_1_joint_parentConstraint1.constraintTranslateX" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_1_joint.translateX" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_1_joint|C_Robot_Rig:R_claw_1_joint_parentConstraint1.constraintTranslateY" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_1_joint.translateY" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_1_joint|C_Robot_Rig:R_claw_1_joint_parentConstraint1.constraintTranslateZ" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_1_joint.translateZ" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_1_joint|C_Robot_Rig:R_claw_1_joint_parentConstraint1.constraintRotateX" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_1_joint.rotateX" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_1_joint|C_Robot_Rig:R_claw_1_joint_parentConstraint1.constraintRotateY" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_1_joint.rotateY" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_1_joint|C_Robot_Rig:R_claw_1_joint_parentConstraint1.constraintRotateZ" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_1_joint.rotateZ" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:torso_joint_parentConstraint1.torso_animW0" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:torso_joint_parentConstraint1.target[0].targetWeight" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:waist_joint_parentConstraint1.constraintTranslateX" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint.translateX" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:waist_joint_parentConstraint1.constraintTranslateY" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint.translateY" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:waist_joint_parentConstraint1.constraintTranslateZ" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint.translateZ" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:waist_joint_parentConstraint1.constraintRotateX" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint.rotateX" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:waist_joint_parentConstraint1.constraintRotateY" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint.rotateY" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:waist_joint_parentConstraint1.constraintRotateZ" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint.rotateZ" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:waist_joint_parentConstraint1.waist_animW0" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:waist_joint_parentConstraint1.target[0].targetWeight" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_ankle_joint.translateX" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:effector8.translateX" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_ankle_joint.translateY" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:effector8.translateY" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_ankle_joint.translateZ" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:effector8.translateZ" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_shoulder_joint_parentConstraint1.constraintTranslateX" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint.translateX" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_shoulder_joint_parentConstraint1.constraintTranslateY" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint.translateY" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_shoulder_joint_parentConstraint1.constraintTranslateZ" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint.translateZ" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_shoulder_joint_parentConstraint1.constraintRotateX" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint.rotateX" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_shoulder_joint_parentConstraint1.constraintRotateY" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint.rotateY" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_shoulder_joint_parentConstraint1.constraintRotateZ" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint.rotateZ" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_elbow_joint_parentConstraint1.R_elbow_animW0" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_elbow_joint_parentConstraint1.target[0].targetWeight" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:torso_joint_parentConstraint1.constraintTranslateX" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint.translateX" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:torso_joint_parentConstraint1.constraintTranslateY" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint.translateY" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:torso_joint_parentConstraint1.constraintTranslateZ" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint.translateZ" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:torso_joint_parentConstraint1.constraintRotateX" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint.rotateX" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:torso_joint_parentConstraint1.constraintRotateY" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint.rotateY" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:torso_joint_parentConstraint1.constraintRotateZ" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint.rotateZ" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_2_joint|C_Robot_Rig:L_claw_2_joint_parentConstraint1.L_claw_2_animW0" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_2_joint|C_Robot_Rig:L_claw_2_joint_parentConstraint1.target[0].targetWeight" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_toe_shadow|C_Robot_Rig:R_toe_parentConstraint1.constraintTranslateX" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_toe_shadow.translateX" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_toe_shadow|C_Robot_Rig:R_toe_parentConstraint1.constraintTranslateY" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_toe_shadow.translateY" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_toe_shadow|C_Robot_Rig:R_toe_parentConstraint1.constraintTranslateZ" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_toe_shadow.translateZ" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_toe_shadow|C_Robot_Rig:R_toe_parentConstraint1.constraintRotateX" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_toe_shadow.rotateX" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_toe_shadow|C_Robot_Rig:R_toe_parentConstraint1.constraintRotateY" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_toe_shadow.rotateY" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_toe_shadow|C_Robot_Rig:R_toe_parentConstraint1.constraintRotateZ" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_toe_shadow.rotateZ" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:waist_joint_group_parentConstraint1.waist_animW0" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:waist_joint_group_parentConstraint1.target[0].targetWeight" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:chest_joint_parentConstraint1.chest_animW0" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:chest_joint_parentConstraint1.target[0].targetWeight" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:head_joint|C_Robot_Rig:head_joint_parentConstraint1.head_animW0" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:head_joint|C_Robot_Rig:head_joint_parentConstraint1.target[0].targetWeight" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_clavicle_joint_parentConstraint1.R_clavicle_animW0" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_clavicle_joint_parentConstraint1.target[0].targetWeight" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint|C_Robot_Rig:L_foot_shadow|C_Robot_Rig:L_foot_parentConstraint1.constraintTranslateX" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint|C_Robot_Rig:L_foot_shadow.translateX" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint|C_Robot_Rig:L_foot_shadow|C_Robot_Rig:L_foot_parentConstraint1.constraintTranslateY" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint|C_Robot_Rig:L_foot_shadow.translateY" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint|C_Robot_Rig:L_foot_shadow|C_Robot_Rig:L_foot_parentConstraint1.constraintTranslateZ" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint|C_Robot_Rig:L_foot_shadow.translateZ" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint|C_Robot_Rig:L_foot_shadow|C_Robot_Rig:L_foot_parentConstraint1.constraintRotateX" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint|C_Robot_Rig:L_foot_shadow.rotateX" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint|C_Robot_Rig:L_foot_shadow|C_Robot_Rig:L_foot_parentConstraint1.constraintRotateY" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint|C_Robot_Rig:L_foot_shadow.rotateY" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint|C_Robot_Rig:L_foot_shadow|C_Robot_Rig:L_foot_parentConstraint1.constraintRotateZ" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint|C_Robot_Rig:L_foot_shadow.rotateZ" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_elbow_joint_parentConstraint1.constraintTranslateX" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint.translateX" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_elbow_joint_parentConstraint1.constraintTranslateY" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint.translateY" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_elbow_joint_parentConstraint1.constraintTranslateZ" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint.translateZ" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_elbow_joint_parentConstraint1.constraintRotateX" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint.rotateX" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_elbow_joint_parentConstraint1.constraintRotateY" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint.rotateY" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_elbow_joint_parentConstraint1.constraintRotateZ" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint.rotateZ" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_foot_parentConstraint1.constraintTranslateX" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow.translateX" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_foot_parentConstraint1.constraintTranslateY" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow.translateY" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_foot_parentConstraint1.constraintTranslateZ" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow.translateZ" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_foot_parentConstraint1.constraintRotateX" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow.rotateX" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_foot_parentConstraint1.constraintRotateY" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow.rotateY" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_foot_parentConstraint1.constraintRotateZ" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow.rotateZ" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_foot_parentConstraint1.R_ball_2_jointW0" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_foot_parentConstraint1.target[0].targetWeight" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:head_joint|C_Robot_Rig:head_joint_parentConstraint1.constraintTranslateX" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:head_joint.translateX" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:head_joint|C_Robot_Rig:head_joint_parentConstraint1.constraintTranslateY" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:head_joint.translateY" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:head_joint|C_Robot_Rig:head_joint_parentConstraint1.constraintTranslateZ" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:head_joint.translateZ" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:head_joint|C_Robot_Rig:head_joint_parentConstraint1.constraintRotateX" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:head_joint.rotateX" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:head_joint|C_Robot_Rig:head_joint_parentConstraint1.constraintRotateY" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:head_joint.rotateY" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:head_joint|C_Robot_Rig:head_joint_parentConstraint1.constraintRotateZ" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:head_joint.rotateZ" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_2_joint|C_Robot_Rig:L_claw_2_joint_parentConstraint1.constraintTranslateX" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_2_joint.translateX" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_2_joint|C_Robot_Rig:L_claw_2_joint_parentConstraint1.constraintTranslateY" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_2_joint.translateY" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_2_joint|C_Robot_Rig:L_claw_2_joint_parentConstraint1.constraintTranslateZ" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_2_joint.translateZ" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_2_joint|C_Robot_Rig:L_claw_2_joint_parentConstraint1.constraintRotateX" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_2_joint.rotateX" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_2_joint|C_Robot_Rig:L_claw_2_joint_parentConstraint1.constraintRotateY" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_2_joint.rotateY" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_2_joint|C_Robot_Rig:L_claw_2_joint_parentConstraint1.constraintRotateZ" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_2_joint.rotateZ" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_elbow_joint_parentConstraint1.constraintTranslateX" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint.translateX" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_elbow_joint_parentConstraint1.constraintTranslateY" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint.translateY" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_elbow_joint_parentConstraint1.constraintTranslateZ" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint.translateZ" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_elbow_joint_parentConstraint1.constraintRotateX" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint.rotateX" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_elbow_joint_parentConstraint1.constraintRotateY" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint.rotateY" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_elbow_joint_parentConstraint1.constraintRotateZ" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint.rotateZ" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_hand_joint_parentConstraint1.R_hand_animW0" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_hand_joint_parentConstraint1.target[0].targetWeight" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_clavicle_joint_parentConstraint1.L_clavicle_animW0" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_clavicle_joint_parentConstraint1.target[0].targetWeight" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_hand_joint_parentConstraint1.L_hand_animW0" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_hand_joint_parentConstraint1.target[0].targetWeight" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_shoulder_joint_parentConstraint1.constraintTranslateX" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint.translateX" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_shoulder_joint_parentConstraint1.constraintTranslateY" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint.translateY" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_shoulder_joint_parentConstraint1.constraintTranslateZ" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint.translateZ" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_shoulder_joint_parentConstraint1.constraintRotateX" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint.rotateX" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_shoulder_joint_parentConstraint1.constraintRotateY" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint.rotateY" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_shoulder_joint_parentConstraint1.constraintRotateZ" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint.rotateZ" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_hand_joint_parentConstraint1.constraintTranslateX" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint.translateX" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_hand_joint_parentConstraint1.constraintTranslateY" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint.translateY" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_hand_joint_parentConstraint1.constraintTranslateZ" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint.translateZ" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_hand_joint_parentConstraint1.constraintRotateX" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint.rotateX" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_hand_joint_parentConstraint1.constraintRotateY" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint.rotateY" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_hand_joint_parentConstraint1.constraintRotateZ" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint.rotateZ" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint|C_Robot_Rig:L_foot_shadow|C_Robot_Rig:L_foot_parentConstraint1.L_ball_2_jointW0" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint|C_Robot_Rig:L_foot_shadow|C_Robot_Rig:L_foot_parentConstraint1.target[0].targetWeight" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_elbow_joint_parentConstraint1.L_elbow_animW0" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_elbow_joint_parentConstraint1.target[0].targetWeight" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_1_joint|C_Robot_Rig:L_claw_1_joint_parentConstraint1.L_claw_1_animW0" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_1_joint|C_Robot_Rig:L_claw_1_joint_parentConstraint1.target[0].targetWeight" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_hand_joint_parentConstraint1.constraintTranslateX" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint.translateX" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_hand_joint_parentConstraint1.constraintTranslateY" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint.translateY" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_hand_joint_parentConstraint1.constraintTranslateZ" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint.translateZ" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_hand_joint_parentConstraint1.constraintRotateX" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint.rotateX" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_hand_joint_parentConstraint1.constraintRotateY" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint.rotateY" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_hand_joint_parentConstraint1.constraintRotateZ" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint.rotateZ" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_clavicle_joint_parentConstraint1.constraintTranslateX" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint.translateX" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_clavicle_joint_parentConstraint1.constraintTranslateY" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint.translateY" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_clavicle_joint_parentConstraint1.constraintTranslateZ" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint.translateZ" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_clavicle_joint_parentConstraint1.constraintRotateX" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint.rotateX" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_clavicle_joint_parentConstraint1.constraintRotateY" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint.rotateY" 
		""
		3 "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_clavicle_joint_parentConstraint1.constraintRotateZ" 
		"|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint.rotateZ" 
		""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint.translateX" 
		"C_Robot_RigRN.placeHolderList[103]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint.translateY" 
		"C_Robot_RigRN.placeHolderList[104]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint.translateZ" 
		"C_Robot_RigRN.placeHolderList[105]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint.rotateX" 
		"C_Robot_RigRN.placeHolderList[106]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint.rotateY" 
		"C_Robot_RigRN.placeHolderList[107]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint.rotateZ" 
		"C_Robot_RigRN.placeHolderList[108]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint.scaleX" 
		"C_Robot_RigRN.placeHolderList[109]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint.scaleY" 
		"C_Robot_RigRN.placeHolderList[110]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint.scaleZ" 
		"C_Robot_RigRN.placeHolderList[111]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint.visibility" 
		"C_Robot_RigRN.placeHolderList[112]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint.translateX" 
		"C_Robot_RigRN.placeHolderList[113]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint.translateY" 
		"C_Robot_RigRN.placeHolderList[114]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint.translateZ" 
		"C_Robot_RigRN.placeHolderList[115]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint.rotateX" 
		"C_Robot_RigRN.placeHolderList[116]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint.rotateY" 
		"C_Robot_RigRN.placeHolderList[117]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint.rotateZ" 
		"C_Robot_RigRN.placeHolderList[118]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint.scaleX" 
		"C_Robot_RigRN.placeHolderList[119]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint.scaleY" 
		"C_Robot_RigRN.placeHolderList[120]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint.scaleZ" 
		"C_Robot_RigRN.placeHolderList[121]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint.visibility" 
		"C_Robot_RigRN.placeHolderList[122]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint.translateX" 
		"C_Robot_RigRN.placeHolderList[123]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint.translateY" 
		"C_Robot_RigRN.placeHolderList[124]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint.translateZ" 
		"C_Robot_RigRN.placeHolderList[125]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint.scaleX" 
		"C_Robot_RigRN.placeHolderList[126]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint.scaleY" 
		"C_Robot_RigRN.placeHolderList[127]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint.scaleZ" 
		"C_Robot_RigRN.placeHolderList[128]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint.rotateX" 
		"C_Robot_RigRN.placeHolderList[129]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint.rotateY" 
		"C_Robot_RigRN.placeHolderList[130]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint.rotateZ" 
		"C_Robot_RigRN.placeHolderList[131]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint.visibility" 
		"C_Robot_RigRN.placeHolderList[132]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint.scaleX" 
		"C_Robot_RigRN.placeHolderList[133]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint.scaleY" 
		"C_Robot_RigRN.placeHolderList[134]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint.scaleZ" 
		"C_Robot_RigRN.placeHolderList[135]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint.rotateX" 
		"C_Robot_RigRN.placeHolderList[136]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint.rotateY" 
		"C_Robot_RigRN.placeHolderList[137]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint.rotateZ" 
		"C_Robot_RigRN.placeHolderList[138]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint.visibility" 
		"C_Robot_RigRN.placeHolderList[139]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint.translateX" 
		"C_Robot_RigRN.placeHolderList[140]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint.translateY" 
		"C_Robot_RigRN.placeHolderList[141]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint.translateZ" 
		"C_Robot_RigRN.placeHolderList[142]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint.scaleX" 
		"C_Robot_RigRN.placeHolderList[143]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint.scaleY" 
		"C_Robot_RigRN.placeHolderList[144]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint.scaleZ" 
		"C_Robot_RigRN.placeHolderList[145]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint.translateX" 
		"C_Robot_RigRN.placeHolderList[146]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint.translateY" 
		"C_Robot_RigRN.placeHolderList[147]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint.translateZ" 
		"C_Robot_RigRN.placeHolderList[148]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint.visibility" 
		"C_Robot_RigRN.placeHolderList[149]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint.rotateX" 
		"C_Robot_RigRN.placeHolderList[150]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint.rotateY" 
		"C_Robot_RigRN.placeHolderList[151]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint.rotateZ" 
		"C_Robot_RigRN.placeHolderList[152]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint|C_Robot_Rig:L_foot_shadow.translateX" 
		"C_Robot_RigRN.placeHolderList[153]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint|C_Robot_Rig:L_foot_shadow.translateY" 
		"C_Robot_RigRN.placeHolderList[154]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint|C_Robot_Rig:L_foot_shadow.translateZ" 
		"C_Robot_RigRN.placeHolderList[155]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint|C_Robot_Rig:L_foot_shadow.rotateX" 
		"C_Robot_RigRN.placeHolderList[156]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint|C_Robot_Rig:L_foot_shadow.rotateY" 
		"C_Robot_RigRN.placeHolderList[157]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint|C_Robot_Rig:L_foot_shadow.rotateZ" 
		"C_Robot_RigRN.placeHolderList[158]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint|C_Robot_Rig:L_foot_shadow.scaleX" 
		"C_Robot_RigRN.placeHolderList[159]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint|C_Robot_Rig:L_foot_shadow.scaleY" 
		"C_Robot_RigRN.placeHolderList[160]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint|C_Robot_Rig:L_foot_shadow.scaleZ" 
		"C_Robot_RigRN.placeHolderList[161]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint|C_Robot_Rig:L_foot_shadow.visibility" 
		"C_Robot_RigRN.placeHolderList[162]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint|C_Robot_Rig:L_foot_shadow|C_Robot_Rig:L_toe_shadow.visibility" 
		"C_Robot_RigRN.placeHolderList[163]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint|C_Robot_Rig:L_foot_shadow|C_Robot_Rig:L_toe_shadow.translateX" 
		"C_Robot_RigRN.placeHolderList[164]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint|C_Robot_Rig:L_foot_shadow|C_Robot_Rig:L_toe_shadow.translateY" 
		"C_Robot_RigRN.placeHolderList[165]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint|C_Robot_Rig:L_foot_shadow|C_Robot_Rig:L_toe_shadow.translateZ" 
		"C_Robot_RigRN.placeHolderList[166]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint|C_Robot_Rig:L_foot_shadow|C_Robot_Rig:L_toe_shadow.rotateX" 
		"C_Robot_RigRN.placeHolderList[167]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint|C_Robot_Rig:L_foot_shadow|C_Robot_Rig:L_toe_shadow.rotateY" 
		"C_Robot_RigRN.placeHolderList[168]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint|C_Robot_Rig:L_foot_shadow|C_Robot_Rig:L_toe_shadow.rotateZ" 
		"C_Robot_RigRN.placeHolderList[169]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint|C_Robot_Rig:L_foot_shadow|C_Robot_Rig:L_toe_shadow.scaleX" 
		"C_Robot_RigRN.placeHolderList[170]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint|C_Robot_Rig:L_foot_shadow|C_Robot_Rig:L_toe_shadow.scaleY" 
		"C_Robot_RigRN.placeHolderList[171]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint|C_Robot_Rig:L_foot_shadow|C_Robot_Rig:L_toe_shadow.scaleZ" 
		"C_Robot_RigRN.placeHolderList[172]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint|C_Robot_Rig:L_foot_shadow|C_Robot_Rig:L_foot_parentConstraint1.nodeState" 
		"C_Robot_RigRN.placeHolderList[173]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint|C_Robot_Rig:L_foot_shadow|C_Robot_Rig:L_foot_parentConstraint1.target[0].targetWeight" 
		"C_Robot_RigRN.placeHolderList[174]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint|C_Robot_Rig:L_foot_shadow|C_Robot_Rig:L_foot_parentConstraint1.target[0].targetOffsetTranslateX" 
		"C_Robot_RigRN.placeHolderList[175]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint|C_Robot_Rig:L_foot_shadow|C_Robot_Rig:L_foot_parentConstraint1.target[0].targetOffsetTranslateY" 
		"C_Robot_RigRN.placeHolderList[176]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint|C_Robot_Rig:L_foot_shadow|C_Robot_Rig:L_foot_parentConstraint1.target[0].targetOffsetTranslateZ" 
		"C_Robot_RigRN.placeHolderList[177]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint|C_Robot_Rig:L_foot_shadow|C_Robot_Rig:L_foot_parentConstraint1.target[0].targetOffsetRotateX" 
		"C_Robot_RigRN.placeHolderList[178]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint|C_Robot_Rig:L_foot_shadow|C_Robot_Rig:L_foot_parentConstraint1.target[0].targetOffsetRotateY" 
		"C_Robot_RigRN.placeHolderList[179]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint|C_Robot_Rig:L_foot_shadow|C_Robot_Rig:L_foot_parentConstraint1.target[0].targetOffsetRotateZ" 
		"C_Robot_RigRN.placeHolderList[180]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint|C_Robot_Rig:L_foot_shadow|C_Robot_Rig:L_foot_parentConstraint1.L_ball_2_jointW0" 
		"C_Robot_RigRN.placeHolderList[181]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:L_ankle_joint|C_Robot_Rig:L_foot_shadow|C_Robot_Rig:L_foot_parentConstraint1.interpType" 
		"C_Robot_RigRN.placeHolderList[182]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:effector7.translateX" 
		"C_Robot_RigRN.placeHolderList[183]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:effector7.translateY" 
		"C_Robot_RigRN.placeHolderList[184]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:effector7.translateZ" 
		"C_Robot_RigRN.placeHolderList[185]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:effector7.visibility" 
		"C_Robot_RigRN.placeHolderList[186]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:effector7.rotateX" 
		"C_Robot_RigRN.placeHolderList[187]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:effector7.rotateY" 
		"C_Robot_RigRN.placeHolderList[188]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:effector7.rotateZ" 
		"C_Robot_RigRN.placeHolderList[189]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:effector7.scaleX" 
		"C_Robot_RigRN.placeHolderList[190]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:effector7.scaleY" 
		"C_Robot_RigRN.placeHolderList[191]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:effector7.scaleZ" 
		"C_Robot_RigRN.placeHolderList[192]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:L_hip_joint|C_Robot_Rig:L_knee_joint|C_Robot_Rig:effector7.hideDisplay" 
		"C_Robot_RigRN.placeHolderList[193]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint.translateX" 
		"C_Robot_RigRN.placeHolderList[194]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint.translateY" 
		"C_Robot_RigRN.placeHolderList[195]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint.translateZ" 
		"C_Robot_RigRN.placeHolderList[196]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint.scaleX" 
		"C_Robot_RigRN.placeHolderList[197]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint.scaleY" 
		"C_Robot_RigRN.placeHolderList[198]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint.scaleZ" 
		"C_Robot_RigRN.placeHolderList[199]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint.rotateX" 
		"C_Robot_RigRN.placeHolderList[200]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint.rotateY" 
		"C_Robot_RigRN.placeHolderList[201]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint.rotateZ" 
		"C_Robot_RigRN.placeHolderList[202]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint.visibility" 
		"C_Robot_RigRN.placeHolderList[203]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint.scaleX" 
		"C_Robot_RigRN.placeHolderList[204]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint.scaleY" 
		"C_Robot_RigRN.placeHolderList[205]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint.scaleZ" 
		"C_Robot_RigRN.placeHolderList[206]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint.rotateX" 
		"C_Robot_RigRN.placeHolderList[207]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint.rotateY" 
		"C_Robot_RigRN.placeHolderList[208]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint.rotateZ" 
		"C_Robot_RigRN.placeHolderList[209]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint.visibility" 
		"C_Robot_RigRN.placeHolderList[210]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint.translateX" 
		"C_Robot_RigRN.placeHolderList[211]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint.translateY" 
		"C_Robot_RigRN.placeHolderList[212]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint.translateZ" 
		"C_Robot_RigRN.placeHolderList[213]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_ankle_joint.translateX" 
		"C_Robot_RigRN.placeHolderList[214]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_ankle_joint.translateY" 
		"C_Robot_RigRN.placeHolderList[215]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_ankle_joint.translateZ" 
		"C_Robot_RigRN.placeHolderList[216]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_ankle_joint.visibility" 
		"C_Robot_RigRN.placeHolderList[217]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_ankle_joint.rotateX" 
		"C_Robot_RigRN.placeHolderList[218]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_ankle_joint.rotateY" 
		"C_Robot_RigRN.placeHolderList[219]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_ankle_joint.rotateZ" 
		"C_Robot_RigRN.placeHolderList[220]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_ankle_joint.scaleX" 
		"C_Robot_RigRN.placeHolderList[221]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_ankle_joint.scaleY" 
		"C_Robot_RigRN.placeHolderList[222]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_ankle_joint.scaleZ" 
		"C_Robot_RigRN.placeHolderList[223]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:effector8.translateX" 
		"C_Robot_RigRN.placeHolderList[224]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:effector8.translateY" 
		"C_Robot_RigRN.placeHolderList[225]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:effector8.translateZ" 
		"C_Robot_RigRN.placeHolderList[226]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:effector8.visibility" 
		"C_Robot_RigRN.placeHolderList[227]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:effector8.rotateX" 
		"C_Robot_RigRN.placeHolderList[228]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:effector8.rotateY" 
		"C_Robot_RigRN.placeHolderList[229]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:effector8.rotateZ" 
		"C_Robot_RigRN.placeHolderList[230]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:effector8.scaleX" 
		"C_Robot_RigRN.placeHolderList[231]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:effector8.scaleY" 
		"C_Robot_RigRN.placeHolderList[232]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:effector8.scaleZ" 
		"C_Robot_RigRN.placeHolderList[233]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:effector8.hideDisplay" 
		"C_Robot_RigRN.placeHolderList[234]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow.translateX" 
		"C_Robot_RigRN.placeHolderList[235]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow.translateY" 
		"C_Robot_RigRN.placeHolderList[236]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow.translateZ" 
		"C_Robot_RigRN.placeHolderList[237]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow.rotateX" 
		"C_Robot_RigRN.placeHolderList[238]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow.rotateY" 
		"C_Robot_RigRN.placeHolderList[239]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow.rotateZ" 
		"C_Robot_RigRN.placeHolderList[240]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow.scaleX" 
		"C_Robot_RigRN.placeHolderList[241]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow.scaleY" 
		"C_Robot_RigRN.placeHolderList[242]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow.scaleZ" 
		"C_Robot_RigRN.placeHolderList[243]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow.visibility" 
		"C_Robot_RigRN.placeHolderList[244]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_toe_shadow.translateX" 
		"C_Robot_RigRN.placeHolderList[245]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_toe_shadow.translateY" 
		"C_Robot_RigRN.placeHolderList[246]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_toe_shadow.translateZ" 
		"C_Robot_RigRN.placeHolderList[247]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_toe_shadow.rotateX" 
		"C_Robot_RigRN.placeHolderList[248]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_toe_shadow.rotateY" 
		"C_Robot_RigRN.placeHolderList[249]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_toe_shadow.rotateZ" 
		"C_Robot_RigRN.placeHolderList[250]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_toe_shadow.visibility" 
		"C_Robot_RigRN.placeHolderList[251]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_toe_shadow.scaleX" 
		"C_Robot_RigRN.placeHolderList[252]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_toe_shadow.scaleY" 
		"C_Robot_RigRN.placeHolderList[253]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_toe_shadow.scaleZ" 
		"C_Robot_RigRN.placeHolderList[254]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_toe_shadow|C_Robot_Rig:R_toe_parentConstraint1.nodeState" 
		"C_Robot_RigRN.placeHolderList[255]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_toe_shadow|C_Robot_Rig:R_toe_parentConstraint1.target[0].targetWeight" 
		"C_Robot_RigRN.placeHolderList[256]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_toe_shadow|C_Robot_Rig:R_toe_parentConstraint1.target[0].targetOffsetTranslateX" 
		"C_Robot_RigRN.placeHolderList[257]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_toe_shadow|C_Robot_Rig:R_toe_parentConstraint1.target[0].targetOffsetTranslateY" 
		"C_Robot_RigRN.placeHolderList[258]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_toe_shadow|C_Robot_Rig:R_toe_parentConstraint1.target[0].targetOffsetTranslateZ" 
		"C_Robot_RigRN.placeHolderList[259]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_toe_shadow|C_Robot_Rig:R_toe_parentConstraint1.target[0].targetOffsetRotateX" 
		"C_Robot_RigRN.placeHolderList[260]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_toe_shadow|C_Robot_Rig:R_toe_parentConstraint1.target[0].targetOffsetRotateY" 
		"C_Robot_RigRN.placeHolderList[261]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_toe_shadow|C_Robot_Rig:R_toe_parentConstraint1.target[0].targetOffsetRotateZ" 
		"C_Robot_RigRN.placeHolderList[262]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_toe_shadow|C_Robot_Rig:R_toe_parentConstraint1.R_toe_jointW0" 
		"C_Robot_RigRN.placeHolderList[263]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_toe_shadow|C_Robot_Rig:R_toe_parentConstraint1.interpType" 
		"C_Robot_RigRN.placeHolderList[264]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_foot_parentConstraint1.nodeState" 
		"C_Robot_RigRN.placeHolderList[265]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_foot_parentConstraint1.target[0].targetWeight" 
		"C_Robot_RigRN.placeHolderList[266]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_foot_parentConstraint1.target[0].targetOffsetTranslateX" 
		"C_Robot_RigRN.placeHolderList[267]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_foot_parentConstraint1.target[0].targetOffsetTranslateY" 
		"C_Robot_RigRN.placeHolderList[268]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_foot_parentConstraint1.target[0].targetOffsetTranslateZ" 
		"C_Robot_RigRN.placeHolderList[269]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_foot_parentConstraint1.target[0].targetOffsetRotateX" 
		"C_Robot_RigRN.placeHolderList[270]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_foot_parentConstraint1.target[0].targetOffsetRotateY" 
		"C_Robot_RigRN.placeHolderList[271]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_foot_parentConstraint1.target[0].targetOffsetRotateZ" 
		"C_Robot_RigRN.placeHolderList[272]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_foot_parentConstraint1.R_ball_2_jointW0" 
		"C_Robot_RigRN.placeHolderList[273]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:R_hip_joint|C_Robot_Rig:R_knee_joint|C_Robot_Rig:R_foot_shadow|C_Robot_Rig:R_foot_parentConstraint1.interpType" 
		"C_Robot_RigRN.placeHolderList[274]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:waist_joint_group_parentConstraint1.nodeState" 
		"C_Robot_RigRN.placeHolderList[275]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:waist_joint_group_parentConstraint1.target[0].targetWeight" 
		"C_Robot_RigRN.placeHolderList[276]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:waist_joint_group_parentConstraint1.target[0].targetOffsetTranslateX" 
		"C_Robot_RigRN.placeHolderList[277]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:waist_joint_group_parentConstraint1.target[0].targetOffsetTranslateY" 
		"C_Robot_RigRN.placeHolderList[278]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:waist_joint_group_parentConstraint1.target[0].targetOffsetTranslateZ" 
		"C_Robot_RigRN.placeHolderList[279]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:waist_joint_group_parentConstraint1.target[0].targetOffsetRotateX" 
		"C_Robot_RigRN.placeHolderList[280]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:waist_joint_group_parentConstraint1.target[0].targetOffsetRotateY" 
		"C_Robot_RigRN.placeHolderList[281]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:waist_joint_group_parentConstraint1.target[0].targetOffsetRotateZ" 
		"C_Robot_RigRN.placeHolderList[282]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:waist_joint_group_parentConstraint1.waist_animW0" 
		"C_Robot_RigRN.placeHolderList[283]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:waist_joint_group_parentConstraint1.interpType" 
		"C_Robot_RigRN.placeHolderList[284]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:waist_joint_parentConstraint1.nodeState" 
		"C_Robot_RigRN.placeHolderList[285]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:waist_joint_parentConstraint1.target[0].targetWeight" 
		"C_Robot_RigRN.placeHolderList[286]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:waist_joint_parentConstraint1.target[0].targetOffsetTranslateX" 
		"C_Robot_RigRN.placeHolderList[287]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:waist_joint_parentConstraint1.target[0].targetOffsetTranslateY" 
		"C_Robot_RigRN.placeHolderList[288]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:waist_joint_parentConstraint1.target[0].targetOffsetTranslateZ" 
		"C_Robot_RigRN.placeHolderList[289]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:waist_joint_parentConstraint1.target[0].targetOffsetRotateX" 
		"C_Robot_RigRN.placeHolderList[290]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:waist_joint_parentConstraint1.target[0].targetOffsetRotateY" 
		"C_Robot_RigRN.placeHolderList[291]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:waist_joint_parentConstraint1.target[0].targetOffsetRotateZ" 
		"C_Robot_RigRN.placeHolderList[292]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:waist_joint_parentConstraint1.waist_animW0" 
		"C_Robot_RigRN.placeHolderList[293]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:waist_joint|C_Robot_Rig:waist_joint_parentConstraint1.interpType" 
		"C_Robot_RigRN.placeHolderList[294]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint.translateX" 
		"C_Robot_RigRN.placeHolderList[295]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint.translateY" 
		"C_Robot_RigRN.placeHolderList[296]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint.translateZ" 
		"C_Robot_RigRN.placeHolderList[297]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint.rotateX" 
		"C_Robot_RigRN.placeHolderList[298]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint.rotateY" 
		"C_Robot_RigRN.placeHolderList[299]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint.rotateZ" 
		"C_Robot_RigRN.placeHolderList[300]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint.scaleX" 
		"C_Robot_RigRN.placeHolderList[301]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint.scaleY" 
		"C_Robot_RigRN.placeHolderList[302]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint.scaleZ" 
		"C_Robot_RigRN.placeHolderList[303]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint.visibility" 
		"C_Robot_RigRN.placeHolderList[304]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint.scaleX" 
		"C_Robot_RigRN.placeHolderList[305]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint.scaleY" 
		"C_Robot_RigRN.placeHolderList[306]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint.scaleZ" 
		"C_Robot_RigRN.placeHolderList[307]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint.translateX" 
		"C_Robot_RigRN.placeHolderList[308]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint.translateY" 
		"C_Robot_RigRN.placeHolderList[309]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint.translateZ" 
		"C_Robot_RigRN.placeHolderList[310]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint.rotateX" 
		"C_Robot_RigRN.placeHolderList[311]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint.rotateY" 
		"C_Robot_RigRN.placeHolderList[312]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint.rotateZ" 
		"C_Robot_RigRN.placeHolderList[313]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint.visibility" 
		"C_Robot_RigRN.placeHolderList[314]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint.translateX" 
		"C_Robot_RigRN.placeHolderList[315]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint.translateY" 
		"C_Robot_RigRN.placeHolderList[316]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint.translateZ" 
		"C_Robot_RigRN.placeHolderList[317]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint.rotateX" 
		"C_Robot_RigRN.placeHolderList[318]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint.rotateY" 
		"C_Robot_RigRN.placeHolderList[319]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint.rotateZ" 
		"C_Robot_RigRN.placeHolderList[320]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint.scaleX" 
		"C_Robot_RigRN.placeHolderList[321]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint.scaleY" 
		"C_Robot_RigRN.placeHolderList[322]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint.scaleZ" 
		"C_Robot_RigRN.placeHolderList[323]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint.visibility" 
		"C_Robot_RigRN.placeHolderList[324]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint.translateX" 
		"C_Robot_RigRN.placeHolderList[325]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint.translateY" 
		"C_Robot_RigRN.placeHolderList[326]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint.translateZ" 
		"C_Robot_RigRN.placeHolderList[327]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint.rotateX" 
		"C_Robot_RigRN.placeHolderList[328]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint.rotateY" 
		"C_Robot_RigRN.placeHolderList[329]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint.rotateZ" 
		"C_Robot_RigRN.placeHolderList[330]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint.scaleX" 
		"C_Robot_RigRN.placeHolderList[331]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint.scaleY" 
		"C_Robot_RigRN.placeHolderList[332]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint.scaleZ" 
		"C_Robot_RigRN.placeHolderList[333]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint.visibility" 
		"C_Robot_RigRN.placeHolderList[334]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint.translateX" 
		"C_Robot_RigRN.placeHolderList[335]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint.translateY" 
		"C_Robot_RigRN.placeHolderList[336]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint.translateZ" 
		"C_Robot_RigRN.placeHolderList[337]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint.rotateX" 
		"C_Robot_RigRN.placeHolderList[338]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint.rotateY" 
		"C_Robot_RigRN.placeHolderList[339]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint.rotateZ" 
		"C_Robot_RigRN.placeHolderList[340]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint.scaleX" 
		"C_Robot_RigRN.placeHolderList[341]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint.scaleY" 
		"C_Robot_RigRN.placeHolderList[342]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint.scaleZ" 
		"C_Robot_RigRN.placeHolderList[343]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint.visibility" 
		"C_Robot_RigRN.placeHolderList[344]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint.translateX" 
		"C_Robot_RigRN.placeHolderList[345]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint.translateY" 
		"C_Robot_RigRN.placeHolderList[346]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint.translateZ" 
		"C_Robot_RigRN.placeHolderList[347]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint.rotateX" 
		"C_Robot_RigRN.placeHolderList[348]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint.rotateY" 
		"C_Robot_RigRN.placeHolderList[349]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint.rotateZ" 
		"C_Robot_RigRN.placeHolderList[350]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint.scaleX" 
		"C_Robot_RigRN.placeHolderList[351]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint.scaleY" 
		"C_Robot_RigRN.placeHolderList[352]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint.scaleZ" 
		"C_Robot_RigRN.placeHolderList[353]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint.visibility" 
		"C_Robot_RigRN.placeHolderList[354]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_2_joint.translateX" 
		"C_Robot_RigRN.placeHolderList[355]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_2_joint.translateY" 
		"C_Robot_RigRN.placeHolderList[356]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_2_joint.translateZ" 
		"C_Robot_RigRN.placeHolderList[357]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_2_joint.rotateX" 
		"C_Robot_RigRN.placeHolderList[358]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_2_joint.rotateY" 
		"C_Robot_RigRN.placeHolderList[359]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_2_joint.rotateZ" 
		"C_Robot_RigRN.placeHolderList[360]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_2_joint.visibility" 
		"C_Robot_RigRN.placeHolderList[361]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_2_joint.scaleX" 
		"C_Robot_RigRN.placeHolderList[362]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_2_joint.scaleY" 
		"C_Robot_RigRN.placeHolderList[363]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_2_joint.scaleZ" 
		"C_Robot_RigRN.placeHolderList[364]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_2_joint|C_Robot_Rig:L_claw_2_joint_parentConstraint1.nodeState" 
		"C_Robot_RigRN.placeHolderList[365]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_2_joint|C_Robot_Rig:L_claw_2_joint_parentConstraint1.target[0].targetWeight" 
		"C_Robot_RigRN.placeHolderList[366]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_2_joint|C_Robot_Rig:L_claw_2_joint_parentConstraint1.target[0].targetOffsetTranslateX" 
		"C_Robot_RigRN.placeHolderList[367]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_2_joint|C_Robot_Rig:L_claw_2_joint_parentConstraint1.target[0].targetOffsetTranslateY" 
		"C_Robot_RigRN.placeHolderList[368]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_2_joint|C_Robot_Rig:L_claw_2_joint_parentConstraint1.target[0].targetOffsetTranslateZ" 
		"C_Robot_RigRN.placeHolderList[369]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_2_joint|C_Robot_Rig:L_claw_2_joint_parentConstraint1.target[0].targetOffsetRotateX" 
		"C_Robot_RigRN.placeHolderList[370]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_2_joint|C_Robot_Rig:L_claw_2_joint_parentConstraint1.target[0].targetOffsetRotateY" 
		"C_Robot_RigRN.placeHolderList[371]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_2_joint|C_Robot_Rig:L_claw_2_joint_parentConstraint1.target[0].targetOffsetRotateZ" 
		"C_Robot_RigRN.placeHolderList[372]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_2_joint|C_Robot_Rig:L_claw_2_joint_parentConstraint1.L_claw_2_animW0" 
		"C_Robot_RigRN.placeHolderList[373]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_2_joint|C_Robot_Rig:L_claw_2_joint_parentConstraint1.interpType" 
		"C_Robot_RigRN.placeHolderList[374]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_1_joint.translateX" 
		"C_Robot_RigRN.placeHolderList[375]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_1_joint.translateY" 
		"C_Robot_RigRN.placeHolderList[376]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_1_joint.translateZ" 
		"C_Robot_RigRN.placeHolderList[377]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_1_joint.rotateX" 
		"C_Robot_RigRN.placeHolderList[378]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_1_joint.rotateY" 
		"C_Robot_RigRN.placeHolderList[379]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_1_joint.rotateZ" 
		"C_Robot_RigRN.placeHolderList[380]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_1_joint.visibility" 
		"C_Robot_RigRN.placeHolderList[381]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_1_joint.scaleX" 
		"C_Robot_RigRN.placeHolderList[382]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_1_joint.scaleY" 
		"C_Robot_RigRN.placeHolderList[383]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_1_joint.scaleZ" 
		"C_Robot_RigRN.placeHolderList[384]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_1_joint|C_Robot_Rig:L_claw_1_joint_parentConstraint1.nodeState" 
		"C_Robot_RigRN.placeHolderList[385]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_1_joint|C_Robot_Rig:L_claw_1_joint_parentConstraint1.target[0].targetWeight" 
		"C_Robot_RigRN.placeHolderList[386]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_1_joint|C_Robot_Rig:L_claw_1_joint_parentConstraint1.target[0].targetOffsetTranslateX" 
		"C_Robot_RigRN.placeHolderList[387]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_1_joint|C_Robot_Rig:L_claw_1_joint_parentConstraint1.target[0].targetOffsetTranslateY" 
		"C_Robot_RigRN.placeHolderList[388]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_1_joint|C_Robot_Rig:L_claw_1_joint_parentConstraint1.target[0].targetOffsetTranslateZ" 
		"C_Robot_RigRN.placeHolderList[389]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_1_joint|C_Robot_Rig:L_claw_1_joint_parentConstraint1.target[0].targetOffsetRotateX" 
		"C_Robot_RigRN.placeHolderList[390]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_1_joint|C_Robot_Rig:L_claw_1_joint_parentConstraint1.target[0].targetOffsetRotateY" 
		"C_Robot_RigRN.placeHolderList[391]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_1_joint|C_Robot_Rig:L_claw_1_joint_parentConstraint1.target[0].targetOffsetRotateZ" 
		"C_Robot_RigRN.placeHolderList[392]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_1_joint|C_Robot_Rig:L_claw_1_joint_parentConstraint1.L_claw_1_animW0" 
		"C_Robot_RigRN.placeHolderList[393]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_claw_1_joint|C_Robot_Rig:L_claw_1_joint_parentConstraint1.interpType" 
		"C_Robot_RigRN.placeHolderList[394]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_hand_joint_parentConstraint1.nodeState" 
		"C_Robot_RigRN.placeHolderList[395]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_hand_joint_parentConstraint1.target[0].targetWeight" 
		"C_Robot_RigRN.placeHolderList[396]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_hand_joint_parentConstraint1.target[0].targetOffsetTranslateX" 
		"C_Robot_RigRN.placeHolderList[397]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_hand_joint_parentConstraint1.target[0].targetOffsetTranslateY" 
		"C_Robot_RigRN.placeHolderList[398]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_hand_joint_parentConstraint1.target[0].targetOffsetTranslateZ" 
		"C_Robot_RigRN.placeHolderList[399]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_hand_joint_parentConstraint1.target[0].targetOffsetRotateX" 
		"C_Robot_RigRN.placeHolderList[400]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_hand_joint_parentConstraint1.target[0].targetOffsetRotateY" 
		"C_Robot_RigRN.placeHolderList[401]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_hand_joint_parentConstraint1.target[0].targetOffsetRotateZ" 
		"C_Robot_RigRN.placeHolderList[402]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_hand_joint_parentConstraint1.L_hand_animW0" 
		"C_Robot_RigRN.placeHolderList[403]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_hand_joint|C_Robot_Rig:L_hand_joint_parentConstraint1.interpType" 
		"C_Robot_RigRN.placeHolderList[404]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_elbow_joint_parentConstraint1.nodeState" 
		"C_Robot_RigRN.placeHolderList[405]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_elbow_joint_parentConstraint1.target[0].targetWeight" 
		"C_Robot_RigRN.placeHolderList[406]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_elbow_joint_parentConstraint1.target[0].targetOffsetTranslateX" 
		"C_Robot_RigRN.placeHolderList[407]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_elbow_joint_parentConstraint1.target[0].targetOffsetTranslateY" 
		"C_Robot_RigRN.placeHolderList[408]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_elbow_joint_parentConstraint1.target[0].targetOffsetTranslateZ" 
		"C_Robot_RigRN.placeHolderList[409]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_elbow_joint_parentConstraint1.target[0].targetOffsetRotateX" 
		"C_Robot_RigRN.placeHolderList[410]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_elbow_joint_parentConstraint1.target[0].targetOffsetRotateY" 
		"C_Robot_RigRN.placeHolderList[411]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_elbow_joint_parentConstraint1.target[0].targetOffsetRotateZ" 
		"C_Robot_RigRN.placeHolderList[412]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_elbow_joint_parentConstraint1.L_elbow_animW0" 
		"C_Robot_RigRN.placeHolderList[413]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_elbow_joint|C_Robot_Rig:L_elbow_joint_parentConstraint1.interpType" 
		"C_Robot_RigRN.placeHolderList[414]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_shoulder_joint_parentConstraint1.nodeState" 
		"C_Robot_RigRN.placeHolderList[415]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_shoulder_joint_parentConstraint1.target[0].targetWeight" 
		"C_Robot_RigRN.placeHolderList[416]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_shoulder_joint_parentConstraint1.target[0].targetOffsetTranslateX" 
		"C_Robot_RigRN.placeHolderList[417]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_shoulder_joint_parentConstraint1.target[0].targetOffsetTranslateY" 
		"C_Robot_RigRN.placeHolderList[418]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_shoulder_joint_parentConstraint1.target[0].targetOffsetTranslateZ" 
		"C_Robot_RigRN.placeHolderList[419]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_shoulder_joint_parentConstraint1.target[0].targetOffsetRotateX" 
		"C_Robot_RigRN.placeHolderList[420]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_shoulder_joint_parentConstraint1.target[0].targetOffsetRotateY" 
		"C_Robot_RigRN.placeHolderList[421]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_shoulder_joint_parentConstraint1.target[0].targetOffsetRotateZ" 
		"C_Robot_RigRN.placeHolderList[422]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_shoulder_joint_parentConstraint1.L_shoulder_animW0" 
		"C_Robot_RigRN.placeHolderList[423]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_shoulder_joint|C_Robot_Rig:L_shoulder_joint_parentConstraint1.interpType" 
		"C_Robot_RigRN.placeHolderList[424]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_clavicle_joint_parentConstraint1.nodeState" 
		"C_Robot_RigRN.placeHolderList[425]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_clavicle_joint_parentConstraint1.target[0].targetWeight" 
		"C_Robot_RigRN.placeHolderList[426]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_clavicle_joint_parentConstraint1.target[0].targetOffsetTranslateX" 
		"C_Robot_RigRN.placeHolderList[427]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_clavicle_joint_parentConstraint1.target[0].targetOffsetTranslateY" 
		"C_Robot_RigRN.placeHolderList[428]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_clavicle_joint_parentConstraint1.target[0].targetOffsetTranslateZ" 
		"C_Robot_RigRN.placeHolderList[429]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_clavicle_joint_parentConstraint1.target[0].targetOffsetRotateX" 
		"C_Robot_RigRN.placeHolderList[430]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_clavicle_joint_parentConstraint1.target[0].targetOffsetRotateY" 
		"C_Robot_RigRN.placeHolderList[431]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_clavicle_joint_parentConstraint1.target[0].targetOffsetRotateZ" 
		"C_Robot_RigRN.placeHolderList[432]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_clavicle_joint_parentConstraint1.L_clavicle_animW0" 
		"C_Robot_RigRN.placeHolderList[433]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:L_clavicle_joint|C_Robot_Rig:L_clavicle_joint_parentConstraint1.interpType" 
		"C_Robot_RigRN.placeHolderList[434]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint.translateX" 
		"C_Robot_RigRN.placeHolderList[435]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint.translateY" 
		"C_Robot_RigRN.placeHolderList[436]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint.translateZ" 
		"C_Robot_RigRN.placeHolderList[437]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint.rotateX" 
		"C_Robot_RigRN.placeHolderList[438]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint.rotateY" 
		"C_Robot_RigRN.placeHolderList[439]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint.rotateZ" 
		"C_Robot_RigRN.placeHolderList[440]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint.scaleX" 
		"C_Robot_RigRN.placeHolderList[441]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint.scaleY" 
		"C_Robot_RigRN.placeHolderList[442]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint.scaleZ" 
		"C_Robot_RigRN.placeHolderList[443]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint.visibility" 
		"C_Robot_RigRN.placeHolderList[444]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint.translateX" 
		"C_Robot_RigRN.placeHolderList[445]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint.translateY" 
		"C_Robot_RigRN.placeHolderList[446]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint.translateZ" 
		"C_Robot_RigRN.placeHolderList[447]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint.rotateX" 
		"C_Robot_RigRN.placeHolderList[448]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint.rotateY" 
		"C_Robot_RigRN.placeHolderList[449]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint.rotateZ" 
		"C_Robot_RigRN.placeHolderList[450]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint.scaleX" 
		"C_Robot_RigRN.placeHolderList[451]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint.scaleY" 
		"C_Robot_RigRN.placeHolderList[452]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint.scaleZ" 
		"C_Robot_RigRN.placeHolderList[453]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint.visibility" 
		"C_Robot_RigRN.placeHolderList[454]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint.translateX" 
		"C_Robot_RigRN.placeHolderList[455]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint.translateY" 
		"C_Robot_RigRN.placeHolderList[456]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint.translateZ" 
		"C_Robot_RigRN.placeHolderList[457]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint.rotateX" 
		"C_Robot_RigRN.placeHolderList[458]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint.rotateY" 
		"C_Robot_RigRN.placeHolderList[459]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint.rotateZ" 
		"C_Robot_RigRN.placeHolderList[460]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint.scaleX" 
		"C_Robot_RigRN.placeHolderList[461]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint.scaleY" 
		"C_Robot_RigRN.placeHolderList[462]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint.scaleZ" 
		"C_Robot_RigRN.placeHolderList[463]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint.visibility" 
		"C_Robot_RigRN.placeHolderList[464]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint.translateX" 
		"C_Robot_RigRN.placeHolderList[465]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint.translateY" 
		"C_Robot_RigRN.placeHolderList[466]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint.translateZ" 
		"C_Robot_RigRN.placeHolderList[467]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint.rotateX" 
		"C_Robot_RigRN.placeHolderList[468]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint.rotateY" 
		"C_Robot_RigRN.placeHolderList[469]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint.rotateZ" 
		"C_Robot_RigRN.placeHolderList[470]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint.scaleX" 
		"C_Robot_RigRN.placeHolderList[471]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint.scaleY" 
		"C_Robot_RigRN.placeHolderList[472]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint.scaleZ" 
		"C_Robot_RigRN.placeHolderList[473]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint.visibility" 
		"C_Robot_RigRN.placeHolderList[474]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_2_joint.translateX" 
		"C_Robot_RigRN.placeHolderList[475]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_2_joint.translateY" 
		"C_Robot_RigRN.placeHolderList[476]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_2_joint.translateZ" 
		"C_Robot_RigRN.placeHolderList[477]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_2_joint.rotateX" 
		"C_Robot_RigRN.placeHolderList[478]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_2_joint.rotateY" 
		"C_Robot_RigRN.placeHolderList[479]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_2_joint.rotateZ" 
		"C_Robot_RigRN.placeHolderList[480]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_2_joint.visibility" 
		"C_Robot_RigRN.placeHolderList[481]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_2_joint.scaleX" 
		"C_Robot_RigRN.placeHolderList[482]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_2_joint.scaleY" 
		"C_Robot_RigRN.placeHolderList[483]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_2_joint.scaleZ" 
		"C_Robot_RigRN.placeHolderList[484]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_2_joint|C_Robot_Rig:R_claw_2_joint_parentConstraint1.nodeState" 
		"C_Robot_RigRN.placeHolderList[485]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_2_joint|C_Robot_Rig:R_claw_2_joint_parentConstraint1.target[0].targetWeight" 
		"C_Robot_RigRN.placeHolderList[486]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_2_joint|C_Robot_Rig:R_claw_2_joint_parentConstraint1.target[0].targetOffsetTranslateX" 
		"C_Robot_RigRN.placeHolderList[487]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_2_joint|C_Robot_Rig:R_claw_2_joint_parentConstraint1.target[0].targetOffsetTranslateY" 
		"C_Robot_RigRN.placeHolderList[488]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_2_joint|C_Robot_Rig:R_claw_2_joint_parentConstraint1.target[0].targetOffsetTranslateZ" 
		"C_Robot_RigRN.placeHolderList[489]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_2_joint|C_Robot_Rig:R_claw_2_joint_parentConstraint1.target[0].targetOffsetRotateX" 
		"C_Robot_RigRN.placeHolderList[490]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_2_joint|C_Robot_Rig:R_claw_2_joint_parentConstraint1.target[0].targetOffsetRotateY" 
		"C_Robot_RigRN.placeHolderList[491]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_2_joint|C_Robot_Rig:R_claw_2_joint_parentConstraint1.target[0].targetOffsetRotateZ" 
		"C_Robot_RigRN.placeHolderList[492]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_2_joint|C_Robot_Rig:R_claw_2_joint_parentConstraint1.R_claw_2_animW0" 
		"C_Robot_RigRN.placeHolderList[493]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_2_joint|C_Robot_Rig:R_claw_2_joint_parentConstraint1.interpType" 
		"C_Robot_RigRN.placeHolderList[494]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_1_joint.translateX" 
		"C_Robot_RigRN.placeHolderList[495]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_1_joint.translateY" 
		"C_Robot_RigRN.placeHolderList[496]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_1_joint.translateZ" 
		"C_Robot_RigRN.placeHolderList[497]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_1_joint.rotateX" 
		"C_Robot_RigRN.placeHolderList[498]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_1_joint.rotateY" 
		"C_Robot_RigRN.placeHolderList[499]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_1_joint.rotateZ" 
		"C_Robot_RigRN.placeHolderList[500]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_1_joint.visibility" 
		"C_Robot_RigRN.placeHolderList[501]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_1_joint.scaleX" 
		"C_Robot_RigRN.placeHolderList[502]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_1_joint.scaleY" 
		"C_Robot_RigRN.placeHolderList[503]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_1_joint.scaleZ" 
		"C_Robot_RigRN.placeHolderList[504]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_1_joint|C_Robot_Rig:R_claw_1_joint_parentConstraint1.nodeState" 
		"C_Robot_RigRN.placeHolderList[505]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_1_joint|C_Robot_Rig:R_claw_1_joint_parentConstraint1.target[0].targetWeight" 
		"C_Robot_RigRN.placeHolderList[506]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_1_joint|C_Robot_Rig:R_claw_1_joint_parentConstraint1.target[0].targetOffsetTranslateX" 
		"C_Robot_RigRN.placeHolderList[507]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_1_joint|C_Robot_Rig:R_claw_1_joint_parentConstraint1.target[0].targetOffsetTranslateY" 
		"C_Robot_RigRN.placeHolderList[508]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_1_joint|C_Robot_Rig:R_claw_1_joint_parentConstraint1.target[0].targetOffsetTranslateZ" 
		"C_Robot_RigRN.placeHolderList[509]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_1_joint|C_Robot_Rig:R_claw_1_joint_parentConstraint1.target[0].targetOffsetRotateX" 
		"C_Robot_RigRN.placeHolderList[510]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_1_joint|C_Robot_Rig:R_claw_1_joint_parentConstraint1.target[0].targetOffsetRotateY" 
		"C_Robot_RigRN.placeHolderList[511]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_1_joint|C_Robot_Rig:R_claw_1_joint_parentConstraint1.target[0].targetOffsetRotateZ" 
		"C_Robot_RigRN.placeHolderList[512]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_1_joint|C_Robot_Rig:R_claw_1_joint_parentConstraint1.R_claw_1_animW0" 
		"C_Robot_RigRN.placeHolderList[513]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_claw_1_joint|C_Robot_Rig:R_claw_1_joint_parentConstraint1.interpType" 
		"C_Robot_RigRN.placeHolderList[514]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_hand_joint_parentConstraint1.nodeState" 
		"C_Robot_RigRN.placeHolderList[515]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_hand_joint_parentConstraint1.target[0].targetWeight" 
		"C_Robot_RigRN.placeHolderList[516]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_hand_joint_parentConstraint1.target[0].targetOffsetTranslateX" 
		"C_Robot_RigRN.placeHolderList[517]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_hand_joint_parentConstraint1.target[0].targetOffsetTranslateY" 
		"C_Robot_RigRN.placeHolderList[518]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_hand_joint_parentConstraint1.target[0].targetOffsetTranslateZ" 
		"C_Robot_RigRN.placeHolderList[519]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_hand_joint_parentConstraint1.target[0].targetOffsetRotateX" 
		"C_Robot_RigRN.placeHolderList[520]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_hand_joint_parentConstraint1.target[0].targetOffsetRotateY" 
		"C_Robot_RigRN.placeHolderList[521]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_hand_joint_parentConstraint1.target[0].targetOffsetRotateZ" 
		"C_Robot_RigRN.placeHolderList[522]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_hand_joint_parentConstraint1.R_hand_animW0" 
		"C_Robot_RigRN.placeHolderList[523]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_hand_joint|C_Robot_Rig:R_hand_joint_parentConstraint1.interpType" 
		"C_Robot_RigRN.placeHolderList[524]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_elbow_joint_parentConstraint1.nodeState" 
		"C_Robot_RigRN.placeHolderList[525]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_elbow_joint_parentConstraint1.target[0].targetWeight" 
		"C_Robot_RigRN.placeHolderList[526]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_elbow_joint_parentConstraint1.target[0].targetOffsetTranslateX" 
		"C_Robot_RigRN.placeHolderList[527]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_elbow_joint_parentConstraint1.target[0].targetOffsetTranslateY" 
		"C_Robot_RigRN.placeHolderList[528]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_elbow_joint_parentConstraint1.target[0].targetOffsetTranslateZ" 
		"C_Robot_RigRN.placeHolderList[529]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_elbow_joint_parentConstraint1.target[0].targetOffsetRotateX" 
		"C_Robot_RigRN.placeHolderList[530]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_elbow_joint_parentConstraint1.target[0].targetOffsetRotateY" 
		"C_Robot_RigRN.placeHolderList[531]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_elbow_joint_parentConstraint1.target[0].targetOffsetRotateZ" 
		"C_Robot_RigRN.placeHolderList[532]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_elbow_joint_parentConstraint1.R_elbow_animW0" 
		"C_Robot_RigRN.placeHolderList[533]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_elbow_joint|C_Robot_Rig:R_elbow_joint_parentConstraint1.interpType" 
		"C_Robot_RigRN.placeHolderList[534]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_shoulder_joint_parentConstraint1.nodeState" 
		"C_Robot_RigRN.placeHolderList[535]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_shoulder_joint_parentConstraint1.target[0].targetWeight" 
		"C_Robot_RigRN.placeHolderList[536]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_shoulder_joint_parentConstraint1.target[0].targetOffsetTranslateX" 
		"C_Robot_RigRN.placeHolderList[537]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_shoulder_joint_parentConstraint1.target[0].targetOffsetTranslateY" 
		"C_Robot_RigRN.placeHolderList[538]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_shoulder_joint_parentConstraint1.target[0].targetOffsetTranslateZ" 
		"C_Robot_RigRN.placeHolderList[539]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_shoulder_joint_parentConstraint1.target[0].targetOffsetRotateX" 
		"C_Robot_RigRN.placeHolderList[540]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_shoulder_joint_parentConstraint1.target[0].targetOffsetRotateY" 
		"C_Robot_RigRN.placeHolderList[541]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_shoulder_joint_parentConstraint1.target[0].targetOffsetRotateZ" 
		"C_Robot_RigRN.placeHolderList[542]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_shoulder_joint_parentConstraint1.R_shoulder_animW0" 
		"C_Robot_RigRN.placeHolderList[543]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_shoulder_joint|C_Robot_Rig:R_shoulder_joint_parentConstraint1.interpType" 
		"C_Robot_RigRN.placeHolderList[544]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_clavicle_joint_parentConstraint1.nodeState" 
		"C_Robot_RigRN.placeHolderList[545]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_clavicle_joint_parentConstraint1.target[0].targetWeight" 
		"C_Robot_RigRN.placeHolderList[546]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_clavicle_joint_parentConstraint1.target[0].targetOffsetTranslateX" 
		"C_Robot_RigRN.placeHolderList[547]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_clavicle_joint_parentConstraint1.target[0].targetOffsetTranslateY" 
		"C_Robot_RigRN.placeHolderList[548]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_clavicle_joint_parentConstraint1.target[0].targetOffsetTranslateZ" 
		"C_Robot_RigRN.placeHolderList[549]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_clavicle_joint_parentConstraint1.target[0].targetOffsetRotateX" 
		"C_Robot_RigRN.placeHolderList[550]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_clavicle_joint_parentConstraint1.target[0].targetOffsetRotateY" 
		"C_Robot_RigRN.placeHolderList[551]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_clavicle_joint_parentConstraint1.target[0].targetOffsetRotateZ" 
		"C_Robot_RigRN.placeHolderList[552]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_clavicle_joint_parentConstraint1.R_clavicle_animW0" 
		"C_Robot_RigRN.placeHolderList[553]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:R_clavicle_joint|C_Robot_Rig:R_clavicle_joint_parentConstraint1.interpType" 
		"C_Robot_RigRN.placeHolderList[554]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:head_joint.translateX" 
		"C_Robot_RigRN.placeHolderList[555]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:head_joint.translateY" 
		"C_Robot_RigRN.placeHolderList[556]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:head_joint.translateZ" 
		"C_Robot_RigRN.placeHolderList[557]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:head_joint.rotateX" 
		"C_Robot_RigRN.placeHolderList[558]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:head_joint.rotateY" 
		"C_Robot_RigRN.placeHolderList[559]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:head_joint.rotateZ" 
		"C_Robot_RigRN.placeHolderList[560]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:head_joint.visibility" 
		"C_Robot_RigRN.placeHolderList[561]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:head_joint.scaleX" 
		"C_Robot_RigRN.placeHolderList[562]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:head_joint.scaleY" 
		"C_Robot_RigRN.placeHolderList[563]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:head_joint.scaleZ" 
		"C_Robot_RigRN.placeHolderList[564]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:head_joint|C_Robot_Rig:head_joint_parentConstraint1.nodeState" 
		"C_Robot_RigRN.placeHolderList[565]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:head_joint|C_Robot_Rig:head_joint_parentConstraint1.target[0].targetWeight" 
		"C_Robot_RigRN.placeHolderList[566]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:head_joint|C_Robot_Rig:head_joint_parentConstraint1.target[0].targetOffsetTranslateX" 
		"C_Robot_RigRN.placeHolderList[567]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:head_joint|C_Robot_Rig:head_joint_parentConstraint1.target[0].targetOffsetTranslateY" 
		"C_Robot_RigRN.placeHolderList[568]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:head_joint|C_Robot_Rig:head_joint_parentConstraint1.target[0].targetOffsetTranslateZ" 
		"C_Robot_RigRN.placeHolderList[569]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:head_joint|C_Robot_Rig:head_joint_parentConstraint1.target[0].targetOffsetRotateX" 
		"C_Robot_RigRN.placeHolderList[570]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:head_joint|C_Robot_Rig:head_joint_parentConstraint1.target[0].targetOffsetRotateY" 
		"C_Robot_RigRN.placeHolderList[571]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:head_joint|C_Robot_Rig:head_joint_parentConstraint1.target[0].targetOffsetRotateZ" 
		"C_Robot_RigRN.placeHolderList[572]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:head_joint|C_Robot_Rig:head_joint_parentConstraint1.head_animW0" 
		"C_Robot_RigRN.placeHolderList[573]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:head_joint|C_Robot_Rig:head_joint_parentConstraint1.interpType" 
		"C_Robot_RigRN.placeHolderList[574]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:chest_joint_parentConstraint1.nodeState" 
		"C_Robot_RigRN.placeHolderList[575]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:chest_joint_parentConstraint1.target[0].targetWeight" 
		"C_Robot_RigRN.placeHolderList[576]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:chest_joint_parentConstraint1.target[0].targetOffsetTranslateX" 
		"C_Robot_RigRN.placeHolderList[577]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:chest_joint_parentConstraint1.target[0].targetOffsetTranslateY" 
		"C_Robot_RigRN.placeHolderList[578]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:chest_joint_parentConstraint1.target[0].targetOffsetTranslateZ" 
		"C_Robot_RigRN.placeHolderList[579]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:chest_joint_parentConstraint1.target[0].targetOffsetRotateX" 
		"C_Robot_RigRN.placeHolderList[580]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:chest_joint_parentConstraint1.target[0].targetOffsetRotateY" 
		"C_Robot_RigRN.placeHolderList[581]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:chest_joint_parentConstraint1.target[0].targetOffsetRotateZ" 
		"C_Robot_RigRN.placeHolderList[582]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:chest_joint_parentConstraint1.chest_animW0" 
		"C_Robot_RigRN.placeHolderList[583]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:chest_joint|C_Robot_Rig:chest_joint_parentConstraint1.interpType" 
		"C_Robot_RigRN.placeHolderList[584]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:torso_joint_parentConstraint1.nodeState" 
		"C_Robot_RigRN.placeHolderList[585]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:torso_joint_parentConstraint1.target[0].targetWeight" 
		"C_Robot_RigRN.placeHolderList[586]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:torso_joint_parentConstraint1.target[0].targetOffsetTranslateX" 
		"C_Robot_RigRN.placeHolderList[587]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:torso_joint_parentConstraint1.target[0].targetOffsetTranslateY" 
		"C_Robot_RigRN.placeHolderList[588]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:torso_joint_parentConstraint1.target[0].targetOffsetTranslateZ" 
		"C_Robot_RigRN.placeHolderList[589]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:torso_joint_parentConstraint1.target[0].targetOffsetRotateX" 
		"C_Robot_RigRN.placeHolderList[590]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:torso_joint_parentConstraint1.target[0].targetOffsetRotateY" 
		"C_Robot_RigRN.placeHolderList[591]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:torso_joint_parentConstraint1.target[0].targetOffsetRotateZ" 
		"C_Robot_RigRN.placeHolderList[592]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:torso_joint_parentConstraint1.torso_animW0" 
		"C_Robot_RigRN.placeHolderList[593]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:torso_joint|C_Robot_Rig:torso_joint_parentConstraint1.interpType" 
		"C_Robot_RigRN.placeHolderList[594]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:root_joint_parentConstraint1.nodeState" 
		"C_Robot_RigRN.placeHolderList[595]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:root_joint_parentConstraint1.target[0].targetWeight" 
		"C_Robot_RigRN.placeHolderList[596]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:root_joint_parentConstraint1.target[0].targetOffsetTranslateX" 
		"C_Robot_RigRN.placeHolderList[597]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:root_joint_parentConstraint1.target[0].targetOffsetTranslateY" 
		"C_Robot_RigRN.placeHolderList[598]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:root_joint_parentConstraint1.target[0].targetOffsetTranslateZ" 
		"C_Robot_RigRN.placeHolderList[599]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:root_joint_parentConstraint1.target[0].targetOffsetRotateX" 
		"C_Robot_RigRN.placeHolderList[600]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:root_joint_parentConstraint1.target[0].targetOffsetRotateY" 
		"C_Robot_RigRN.placeHolderList[601]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:root_joint_parentConstraint1.target[0].targetOffsetRotateZ" 
		"C_Robot_RigRN.placeHolderList[602]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:root_joint_parentConstraint1.root_animW0" 
		"C_Robot_RigRN.placeHolderList[603]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Joint|C_Robot_Rig:root_joint_group|C_Robot_Rig:root_joint|C_Robot_Rig:root_joint_parentConstraint1.interpType" 
		"C_Robot_RigRN.placeHolderList[604]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim.visibility" 
		"C_Robot_RigRN.placeHolderList[605]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim.translateX" 
		"C_Robot_RigRN.placeHolderList[606]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim.translateY" 
		"C_Robot_RigRN.placeHolderList[607]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim.translateZ" 
		"C_Robot_RigRN.placeHolderList[608]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim.rotateX" 
		"C_Robot_RigRN.placeHolderList[609]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim.rotateY" 
		"C_Robot_RigRN.placeHolderList[610]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim.rotateZ" 
		"C_Robot_RigRN.placeHolderList[611]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim.translateX" 
		"C_Robot_RigRN.placeHolderList[612]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim.translateY" 
		"C_Robot_RigRN.placeHolderList[613]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim.translateZ" 
		"C_Robot_RigRN.placeHolderList[614]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim.rotateX" 
		"C_Robot_RigRN.placeHolderList[615]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim.rotateY" 
		"C_Robot_RigRN.placeHolderList[616]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim.rotateZ" 
		"C_Robot_RigRN.placeHolderList[617]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim.translateX" 
		"C_Robot_RigRN.placeHolderList[618]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim.translateY" 
		"C_Robot_RigRN.placeHolderList[619]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim.translateZ" 
		"C_Robot_RigRN.placeHolderList[620]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim.rotateX" 
		"C_Robot_RigRN.placeHolderList[621]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim.rotateY" 
		"C_Robot_RigRN.placeHolderList[622]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim.rotateZ" 
		"C_Robot_RigRN.placeHolderList[623]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim.translateX" 
		"C_Robot_RigRN.placeHolderList[624]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim.translateY" 
		"C_Robot_RigRN.placeHolderList[625]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim.translateZ" 
		"C_Robot_RigRN.placeHolderList[626]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim.rotateX" 
		"C_Robot_RigRN.placeHolderList[627]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim.rotateY" 
		"C_Robot_RigRN.placeHolderList[628]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim.rotateZ" 
		"C_Robot_RigRN.placeHolderList[629]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim.rotateX" 
		"C_Robot_RigRN.placeHolderList[630]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim.rotateY" 
		"C_Robot_RigRN.placeHolderList[631]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim.rotateZ" 
		"C_Robot_RigRN.placeHolderList[632]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim.rotateX" 
		"C_Robot_RigRN.placeHolderList[633]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim.rotateY" 
		"C_Robot_RigRN.placeHolderList[634]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim.rotateZ" 
		"C_Robot_RigRN.placeHolderList[635]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim.rotateX" 
		"C_Robot_RigRN.placeHolderList[636]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim.rotateY" 
		"C_Robot_RigRN.placeHolderList[637]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim.rotateZ" 
		"C_Robot_RigRN.placeHolderList[638]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim|C_Robot_Rig:L_hand_anim.rotateX" 
		"C_Robot_RigRN.placeHolderList[639]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim|C_Robot_Rig:L_hand_anim.rotateY" 
		"C_Robot_RigRN.placeHolderList[640]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim|C_Robot_Rig:L_hand_anim.rotateZ" 
		"C_Robot_RigRN.placeHolderList[641]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim|C_Robot_Rig:L_hand_anim|C_Robot_Rig:L_claw_1_anim.rotateX" 
		"C_Robot_RigRN.placeHolderList[642]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim|C_Robot_Rig:L_hand_anim|C_Robot_Rig:L_claw_1_anim.rotateY" 
		"C_Robot_RigRN.placeHolderList[643]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim|C_Robot_Rig:L_hand_anim|C_Robot_Rig:L_claw_1_anim.rotateZ" 
		"C_Robot_RigRN.placeHolderList[644]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim|C_Robot_Rig:L_hand_anim|C_Robot_Rig:L_claw_2_anim.rotateX" 
		"C_Robot_RigRN.placeHolderList[645]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim|C_Robot_Rig:L_hand_anim|C_Robot_Rig:L_claw_2_anim.rotateY" 
		"C_Robot_RigRN.placeHolderList[646]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:L_clavicle_anim|C_Robot_Rig:L_shoulder_anim|C_Robot_Rig:L_elbow_anim|C_Robot_Rig:L_hand_anim|C_Robot_Rig:L_claw_2_anim.rotateZ" 
		"C_Robot_RigRN.placeHolderList[647]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim.rotateX" 
		"C_Robot_RigRN.placeHolderList[648]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim.rotateY" 
		"C_Robot_RigRN.placeHolderList[649]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim.rotateZ" 
		"C_Robot_RigRN.placeHolderList[650]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim.rotateX" 
		"C_Robot_RigRN.placeHolderList[651]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim.rotateY" 
		"C_Robot_RigRN.placeHolderList[652]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim.rotateZ" 
		"C_Robot_RigRN.placeHolderList[653]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim.rotateX" 
		"C_Robot_RigRN.placeHolderList[654]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim.rotateY" 
		"C_Robot_RigRN.placeHolderList[655]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim.rotateZ" 
		"C_Robot_RigRN.placeHolderList[656]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim|C_Robot_Rig:R_hand_anim.rotateX" 
		"C_Robot_RigRN.placeHolderList[657]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim|C_Robot_Rig:R_hand_anim.rotateY" 
		"C_Robot_RigRN.placeHolderList[658]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim|C_Robot_Rig:R_hand_anim.rotateZ" 
		"C_Robot_RigRN.placeHolderList[659]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim|C_Robot_Rig:R_hand_anim|C_Robot_Rig:R_claw_1_anim.rotateX" 
		"C_Robot_RigRN.placeHolderList[660]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim|C_Robot_Rig:R_hand_anim|C_Robot_Rig:R_claw_1_anim.rotateY" 
		"C_Robot_RigRN.placeHolderList[661]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim|C_Robot_Rig:R_hand_anim|C_Robot_Rig:R_claw_1_anim.rotateZ" 
		"C_Robot_RigRN.placeHolderList[662]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim|C_Robot_Rig:R_hand_anim|C_Robot_Rig:R_claw_2_anim.rotateX" 
		"C_Robot_RigRN.placeHolderList[663]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim|C_Robot_Rig:R_hand_anim|C_Robot_Rig:R_claw_2_anim.rotateY" 
		"C_Robot_RigRN.placeHolderList[664]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:R_clavicle_anim|C_Robot_Rig:R_shoulder_anim|C_Robot_Rig:R_elbow_anim|C_Robot_Rig:R_hand_anim|C_Robot_Rig:R_claw_2_anim.rotateZ" 
		"C_Robot_RigRN.placeHolderList[665]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:head_anim.translateX" 
		"C_Robot_RigRN.placeHolderList[666]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:head_anim.translateY" 
		"C_Robot_RigRN.placeHolderList[667]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:head_anim.translateZ" 
		"C_Robot_RigRN.placeHolderList[668]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:head_anim.rotateX" 
		"C_Robot_RigRN.placeHolderList[669]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:head_anim.rotateY" 
		"C_Robot_RigRN.placeHolderList[670]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:torso_anim|C_Robot_Rig:chest_anim|C_Robot_Rig:head_anim.rotateZ" 
		"C_Robot_RigRN.placeHolderList[671]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:waist_anim.translateX" 
		"C_Robot_RigRN.placeHolderList[672]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:waist_anim.translateY" 
		"C_Robot_RigRN.placeHolderList[673]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:waist_anim.translateZ" 
		"C_Robot_RigRN.placeHolderList[674]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:waist_anim.rotateX" 
		"C_Robot_RigRN.placeHolderList[675]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:waist_anim.rotateY" 
		"C_Robot_RigRN.placeHolderList[676]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:root_anim|C_Robot_Rig:waist_anim.rotateZ" 
		"C_Robot_RigRN.placeHolderList[677]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_foot_anim.toe" 
		"C_Robot_RigRN.placeHolderList[678]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_foot_anim.ToeRoll" 
		"C_Robot_RigRN.placeHolderList[679]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_foot_anim.PivotToe" 
		"C_Robot_RigRN.placeHolderList[680]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_foot_anim.BallPivot" 
		"C_Robot_RigRN.placeHolderList[681]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_foot_anim.Bank" 
		"C_Robot_RigRN.placeHolderList[682]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_foot_anim.FootRoll" 
		"C_Robot_RigRN.placeHolderList[683]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_foot_anim.translateX" 
		"C_Robot_RigRN.placeHolderList[684]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_foot_anim.translateY" 
		"C_Robot_RigRN.placeHolderList[685]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_foot_anim.translateZ" 
		"C_Robot_RigRN.placeHolderList[686]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_foot_anim.rotateX" 
		"C_Robot_RigRN.placeHolderList[687]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_foot_anim.rotateY" 
		"C_Robot_RigRN.placeHolderList[688]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_foot_anim.rotateZ" 
		"C_Robot_RigRN.placeHolderList[689]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim.toe" 
		"C_Robot_RigRN.placeHolderList[690]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim.ToeRoll" 
		"C_Robot_RigRN.placeHolderList[691]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim.PivotToe" 
		"C_Robot_RigRN.placeHolderList[692]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim.BallPivot" 
		"C_Robot_RigRN.placeHolderList[693]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim.Bank" 
		"C_Robot_RigRN.placeHolderList[694]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim.FootRoll" 
		"C_Robot_RigRN.placeHolderList[695]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim.translateX" 
		"C_Robot_RigRN.placeHolderList[696]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim.translateY" 
		"C_Robot_RigRN.placeHolderList[697]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim.translateZ" 
		"C_Robot_RigRN.placeHolderList[698]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim.rotateX" 
		"C_Robot_RigRN.placeHolderList[699]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim.rotateY" 
		"C_Robot_RigRN.placeHolderList[700]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_foot_anim.rotateZ" 
		"C_Robot_RigRN.placeHolderList[701]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_knee_anim.translateX" 
		"C_Robot_RigRN.placeHolderList[702]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_knee_anim.translateY" 
		"C_Robot_RigRN.placeHolderList[703]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_knee_anim.translateZ" 
		"C_Robot_RigRN.placeHolderList[704]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_knee_anim.rotateX" 
		"C_Robot_RigRN.placeHolderList[705]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_knee_anim.rotateY" 
		"C_Robot_RigRN.placeHolderList[706]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:L_knee_anim.rotateZ" 
		"C_Robot_RigRN.placeHolderList[707]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_knee_anim.translateX" 
		"C_Robot_RigRN.placeHolderList[708]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_knee_anim.translateY" 
		"C_Robot_RigRN.placeHolderList[709]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_knee_anim.translateZ" 
		"C_Robot_RigRN.placeHolderList[710]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_knee_anim.rotateX" 
		"C_Robot_RigRN.placeHolderList[711]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_knee_anim.rotateY" 
		"C_Robot_RigRN.placeHolderList[712]" ""
		5 4 "C_Robot_RigRN" "|C_Robot_Rig:C_Robot_Anim|C_Robot_Rig:world_anim|C_Robot_Rig:R_knee_anim.rotateZ" 
		"C_Robot_RigRN.placeHolderList[713]" "";
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
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n"
		+ "\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n"
		+ "                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n"
		+ "                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n"
		+ "                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t\tif (`objExists nodeEditorPanel1Info`) nodeEditor -e -restoreInfo nodeEditorPanel1Info $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n"
		+ "                $editorName;\n\t\t\tif (`objExists nodeEditorPanel1Info`) nodeEditor -e -restoreInfo nodeEditorPanel1Info $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 0\\n    -controlVertices 0\\n    -hulls 0\\n    -grid 1\\n    -imagePlane 0\\n    -joints 1\\n    -ikHandles 0\\n    -deformers 0\\n    -dynamics 0\\n    -particleInstancers 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 0\\n    -manipulators 1\\n    -pluginShapes 0\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 0\\n    -strokes 0\\n    -motionTrails 0\\n    -clipGhosts 0\\n    -greasePencils 0\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 0\\n    -controlVertices 0\\n    -hulls 0\\n    -grid 1\\n    -imagePlane 0\\n    -joints 1\\n    -ikHandles 0\\n    -deformers 0\\n    -dynamics 0\\n    -particleInstancers 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 0\\n    -manipulators 1\\n    -pluginShapes 0\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 0\\n    -strokes 0\\n    -motionTrails 0\\n    -clipGhosts 0\\n    -greasePencils 0\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 12 -ast 0 -aet 48 ";
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 0 2 0 3 0 4 -0.2557526056206072 5 0.0033832932467926452
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 7.5344924638264592 2 5.6711951582159221
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 -8.6825070306002878 2 -8.7419116232057466
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 -0.18722416858727717 2 -0.023408555312175033
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 -0.016878808554913166 2 -0.0021103499972393094
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 3.8418297394918404 2 1.2443713334575965
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 -2.1767205394989189 2 -2.2802829860441407
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 -0.81916381892361612 2 -2.3369001692569484
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 0.64831425841748647 2 0.93016954872639723
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 0 2 -0.033690851480692924 3 0 4 0
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 0 2 -0.4139984342011892 3 0 4 0 5 0
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 0 2 -0.027382058987437598 3 0 4 0
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 0 2 -0.068688438934749158 3 0 4 0
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 0 2 -0.68143165156640484 3 0 4 0 5 0
		 6 0 7 0 8 -0.51160038625562665 9 0 10 0 11 0 12 0 13 0;
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 0 2 -0.1352170592592116 3 0 4 0 5 0
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 5.0115975567090365e-15 2 -0.51448765758387627
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 0.37942867801443092 2 0.88547805976635463
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 -0.047620348212030518 2 -0.27115501832052047
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 -13.006112211528485 2 -1.115940608059875
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 -9.4221283705020316 2 -11.440167766838181
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 6.9334283171656992 2 -15.154516508960445
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 5.8132904224545392 2 0 3 0 4 0 5 0
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 0 2 0 3 101.23295160070911 4 22.361907595928841
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 -56.148071176726411 2 -85.850247088871711
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 0 2 0 3 -81.314375638033681 4 -1.0351414393933367
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 0 2 0 3 0 4 0 5 4.861270286970278
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 1.1 2 -2.6 3 -4.4 4 0 5 0 6 0 7 3.2
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 8.6 2 7.9 3 6.1000000000000005 4 0
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 -2.5 2 0.10000000000000009 3 0.10000000000000009
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0.4 8 0 9 0
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 0 2 0 3 0 4 -1.1 5 -3.0000000000000004
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 -6.443109219011685 2 -5.917555516729573
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 -19.832414807014448 2 -20.019529366301132
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 1.1861155653309716 2 -1.6476426587633104
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 -95.745228676403542 2 -44.132686082948695
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 -66.316792964089458 2 -54.973115775696407
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 19.368629086653026 2 -38.435224302339186
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 0 2 0.3354834326724222 3 0 4 -0.55909973279839298
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 -13.042158208294277 2 -16.240517470374762
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 0 2 -6.4508553063048497 3 0 4 5.8537493222326891
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 0 2 0 3 -0.42967344585831246 4 -0.4414033585384986
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 37.15801980949383 2 -4.4877735186353576
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 0 2 0 3 -1.237122675959806 4 -1.334428432365957
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 -2.9760744143682838 2 2.0880693368207321
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 5.1514566400319142 2 5.1514566400319142
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 2.2 2 0 3 0 4 0 5 0 6 0 7 -0.30000000000000027
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 0 2 0 3 0 4 0 5 1.6 6 5.8000000000000007
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 -0.70000000000000007 2 -0.70000000000000007
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 -4.8000000000000007 2 0 3 0 4 4.2
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 0 2 1.5785671069219376 3 2.0877210105108879
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 -31.761039201492562 2 -18.647658885080212
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 0 2 2.2895872796761214 3 1.3377327790554698
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 124.69572947651257 2 54.959485008243838
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 -54.112081148150061 2 -53.93769511052335
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 -44.909613446246773 2 36.547178040959579
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 10.399221617982169 2 11.168621780019526
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 -11.649348899542224 2 0.43459753188346423
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 1.8188385825254907 2 -5.670178593179064
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 -55.007940295963522 2 -47.702628439663293
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 1.6785113434271488 2 -9.8439747949418734
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 -1.0981858771946718 2 11.165685458479505
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 24.084641149710912 2 24.009147866428805
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 -2.1830824880393855 2 -2.9365521024018908
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 4.8709038652901144 2 6.5610554089592128
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 7.7705444542698654 2 3.7867439437508215
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 -10.233554633524783 2 -5.1175533843400922
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 2.8595704704526859 2 -4.9906952462344583
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 5.1401801402590381 2 5.0946671103006631
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 7.994726333730096 2 -2.425799461359424
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
	setAttr -s 14 ".ktv[0:13]"  0 0 1 1.0771171780721907 2 0.14412050651619612
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
	setAttr -s 13 ".ktv[0:12]"  0 0 1 -0.67571438751590551 2 -0.45047625834393723
		 3 0.26538830085149145 4 0 5 0 6 0.13741121736673811 7 0.76971769849468485 8 1.4737229412175774
		 9 0.7368614706087887 10 0 11 0 12 -0.96346199292762336;
createNode animCurveTL -n "L_knee_anim_translateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 -0.12380982542873697 2 -2.5299567436329005
		 3 -1.7131710874032406 4 2.386022630660285 5 1.9883521922169041 6 1.5906817537735234
		 7 1.1930113153301425 8 0.79534087688676203 9 0.39767043844338101 10 0 11 -1.490343185869766
		 12 -1.490343185869766;
createNode animCurveTL -n "L_knee_anim_translateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 -6.354457721820399 2 -7.5175191577416758
		 3 -1.8048460143364906 4 2.0304741024228923 5 1.6920617520190768 6 1.3536494016152616
		 7 1.015237051211447 8 0.67682470080763246 9 0.33841235040381623 10 0 11 -3.8873928268390783
		 12 -3.8873928268390783;
createNode animCurveTA -n "L_knee_anim_rotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTA -n "L_knee_anim_rotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTA -n "L_knee_anim_rotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTL -n "R_knee_anim_translateX";
	setAttr ".tan" 2;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 -0.95080782159693911 2 -3.0124033561662644
		 3 -2.1142234646618743 4 -0.90406190201427106 6 0.040092107847433334 7 0.24229237733536937
		 8 -0.0097356500863035045 10 0.84889318579917727;
createNode animCurveTL -n "R_knee_anim_translateY";
	setAttr ".tan" 2;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 -0.41860759550810211 2 -1.9886489678894246
		 3 -1.3485866953344119 4 -0.7085244227793992 6 -1.8517406201140576 7 -0.60584316194787369
		 8 -2.3679850156120366 10 3.1318492125506774;
createNode animCurveTL -n "R_knee_anim_translateZ";
	setAttr ".tan" 2;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 4.3958231433067283 2 4.3958231433067283
		 3 4.3958231433067265 4 -1.2941845545390471 6 -5.0054026627312362 7 -5.6817243133098678
		 8 -5.0725090028523665 10 4.3958231433067283;
createNode animCurveTA -n "R_knee_anim_rotateX";
	setAttr ".tan" 2;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 10 0;
createNode animCurveTA -n "R_knee_anim_rotateY";
	setAttr ".tan" 2;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 10 0;
createNode animCurveTA -n "R_knee_anim_rotateZ";
	setAttr ".tan" 2;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 2 0 3 0 4 0 6 0 7 0 8 0 10 0;
createNode animCurveTU -n "world_anim_visibility";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "world_anim_translateX";
	setAttr ".tan" 2;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "world_anim_translateY";
	setAttr ".tan" 2;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "world_anim_translateZ";
	setAttr ".tan" 2;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "world_anim_rotateX";
	setAttr ".tan" 2;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "world_anim_rotateY";
	setAttr ".tan" 2;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "world_anim_rotateZ";
	setAttr ".tan" 2;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "root_joint_visibility";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "root_joint_translateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -2.274286506692317e-16 1 2.2265986957919539
		 2 2.3473629609613842 3 1.9578022904469456 4 1.4853964753755435 5 1.125797790102812
		 6 -0.6807552229581757 7 -1.8218381989790835 8 -1.3908171783505505 9 -0.91411048609227297
		 10 -0.45312145447927799 11 0.085916332191113484 12 1.4352551556937319;
createNode animCurveTL -n "root_joint_translateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 8.1810495983390261 1 7.312723272451966
		 2 5.7932651822251211 3 6.6272989182552919 4 7.9391912195280367 5 7.0286948674777348
		 6 6.9278504809572485 7 7.8350969396107759 8 5.3553846634899758 9 6.8512560978954955
		 10 8.1280407295685837 11 7.2222679109547894 12 7.0922347252375255;
createNode animCurveTL -n "root_joint_translateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0.018175814976949076 1 -0.84882736110383505
		 2 -1.1299096832294018 3 0.0082212800015456222 4 -0.87715194421921117 5 -0.73015978475118781
		 6 -0.80209719440623894 7 -0.80319542221440998 8 -0.34238798943836446 9 0.048363819364082405
		 10 -0.40898864192088796 11 -0.56079525468621094 12 -0.45222666024487895;
createNode animCurveTA -n "root_joint_rotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 -24.084641149710908 2 -24.009147866428805
		 3 -12.735660753963163 4 -20.68460455898542 5 -23.238112823871472 6 -24.030547538046179
		 7 -23.956552326381221 8 -23.693191375109247 9 -18.514614094784012 10 -17.644079206905879
		 11 -17.578522688320582 12 -22.222148235536757;
createNode animCurveTA -n "root_joint_rotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -1.4033418597069752e-14 1 -2.1830824880393989
		 2 -2.9365521024019041 3 -0.54230350739132316 4 -1.8924765330508084 5 0.60894406013590241
		 6 1.2651994331268561 7 1.6030469947372332 8 3.9854045568054626 9 3.4875189310968842
		 10 -2.9456089856097396 11 -3.3254881421946312 12 -7.0825418759935088;
createNode animCurveTA -n "root_joint_rotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 -4.8709038652901127 2 -6.5610554089592101
		 3 -2.3979892277346768 4 -6.7035841995126573 5 1.4178506717590524 6 2.835065250800417
		 7 -0.71600270187031667 8 4.6812192447525343 9 3.546253192359162 10 2.2445245151150575
		 11 1.0460643360324728 12 1.7904356279507707;
createNode animCurveTU -n "root_joint_scaleX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "root_joint_scaleY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "root_joint_scaleZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "waist_joint_visibility";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "waist_joint_translateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -3.5370132900645056e-16 1 -1.1102230246251565e-15
		 2 0 3 -6.6613381477509392e-16 4 0 5 2.2204460492503131e-16 6 -1.1102230246251565e-16
		 7 2.2204460492503131e-16 8 -7.7715611723760958e-16 9 -9.9920072216264089e-16 10 -9.4368957093138306e-16
		 11 -9.4368957093138306e-16 12 -0.010408780176843324;
createNode animCurveTL -n "waist_joint_translateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -0.78965122505745189 1 -0.78965122505745189
		 2 -0.78965122505745011 3 -0.78965122505745189 4 -0.78965122505745278 5 -0.78965122505745278
		 6 -0.78965122505745189 7 -0.789651225057451 8 -0.78965122505745189 9 -0.789651225057451
		 10 -0.78965122505745011 11 -0.78965122505745189 12 -0.79310359587796508;
createNode animCurveTL -n "waist_joint_translateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0.026876284023326182 1 0.026876284023325425
		 2 0.026876284023326313 3 0.026876284023325647 4 0.026876284023325869 5 0.026876284023326757
		 6 0.026876284023325869 7 0.026876284023326757 8 0.026876284023326313 9 0.026876284023326313
		 10 0.026876284023327646 11 0.02687628402332698 12 -0.14052494407406213;
createNode animCurveTA -n "waist_joint_rotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 -5.140180140259039 2 -5.0946671103006622
		 3 -2.2512748542192784 4 -2.3663915133942348 5 3.3779511510610467 6 3.3779511510610467
		 7 3.3779511510610467 8 4.0860139108590277 9 4.0860139108590277 10 4.0843217685977704
		 11 4.0843217685977704 12 1.604594585935665;
createNode animCurveTA -n "waist_joint_rotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -1.4033418597069752e-14 1 7.9947263337300827
		 2 -2.4257994613594378 3 3.899004345300316 4 3.8990043453002619 5 4.4346502617566115
		 6 4.4346502617566115 7 4.4346502617566115 8 3.7924616121360444 9 3.7924616121360444
		 10 3.7942843441941458 11 3.7942843441941458 12 0.65982659767850227;
createNode animCurveTA -n "waist_joint_rotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 -1.0771171780721907 2 -0.14412050651619551
		 3 -0.39248090127772811 4 -0.3924809012777275 5 -3.6235543577113862 6 -3.6235543577113862
		 7 -3.6235543577113862 8 6.2228611615724541 9 6.2228611615724549 10 6.1972840631507911
		 11 6.1972840631507911 12 -1.9092951545149561;
createNode animCurveTU -n "waist_joint_scaleX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "waist_joint_scaleY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "waist_joint_scaleZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_hip_joint_visibility";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "L_hip_joint_translateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -1.4719799999999992 1 -1.4719799999999992
		 2 -1.4719799999999992 3 -1.4719799999999992 4 -1.4719799999999992 5 -1.4719799999999992
		 6 -1.4719799999999992 7 -1.4719799999999992 8 -1.4719799999999992 9 -1.4719799999999992
		 10 -1.4719799999999992 11 -1.4719799999999992 12 -1.4719799999999992;
createNode animCurveTL -n "L_hip_joint_translateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -0.5232583732815721 1 -0.5232583732815721
		 2 -0.5232583732815721 3 -0.5232583732815721 4 -0.5232583732815721 5 -0.5232583732815721
		 6 -0.5232583732815721 7 -0.5232583732815721 8 -0.5232583732815721 9 -0.5232583732815721
		 10 -0.5232583732815721 11 -0.5232583732815721 12 -0.5232583732815721;
createNode animCurveTL -n "L_hip_joint_translateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -0.0015155990002750572 1 -0.0015155990002750572
		 2 -0.0015155990002750572 3 -0.0015155990002750572 4 -0.0015155990002750572 5 -0.0015155990002750572
		 6 -0.0015155990002750572 7 -0.0015155990002750572 8 -0.0015155990002750572 9 -0.0015155990002750572
		 10 -0.0015155990002750572 11 -0.0015155990002750572 12 -0.0015155990002750572;
createNode animCurveTA -n "L_hip_joint_rotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -0.067382767422798848 1 7.9455778965813799
		 2 10.338351925225984 3 26.054249329016343 4 -4.0269336239449407 5 -3.8370195897918808
		 6 -4.4459079568355016 7 -1.0879185994597242 8 -13.917593311745392 9 0.69631774883526054
		 10 1.8865273791419324 11 -14.470180774362845 12 -9.1488080218915719;
createNode animCurveTA -n "L_hip_joint_rotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0.0032138615924964323 1 22.29200915252467
		 2 17.644872070858508 3 29.037058571669419 4 10.810326721936883 5 9.2014306090737801
		 6 -12.10961132549429 7 -26.055953843147471 8 -13.653267726656432 9 -9.5978600654451114
		 10 -4.3715935533560915 11 1.2508266406720336 12 -0.80978604865712145;
createNode animCurveTA -n "L_hip_joint_rotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -1.8898330302597029e-06 1 -34.848152397000469
		 2 -54.270959792961719 3 38.771034110426733 4 104.09836469099081 5 116.69922208870561
		 6 82.816589225554253 7 43.381193692950568 8 95.263542932774399 9 41.263229672931594
		 10 -18.492141884926543 11 -19.799289043311166 12 -40.853749849093539;
createNode animCurveTU -n "L_hip_joint_scaleX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_hip_joint_scaleY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_hip_joint_scaleZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_knee_joint_visibility";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "L_knee_joint_translateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 2.9277262989788788 1 2.9277262989788788
		 2 2.9277262989788788 3 2.9277262989788788 4 2.9277262989788788 5 2.9277262989788788
		 6 2.9277262989788788 7 2.9277262989788788 8 2.9277262989788788 9 2.9277262989788788
		 10 2.9277262989788788 11 2.9277262989788788 12 2.9277262989788788;
createNode animCurveTL -n "L_knee_joint_translateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -2.7512401057361302e-07 1 -2.7512401057361302e-07
		 2 -2.7512401057361302e-07 3 -2.7512401057361302e-07 4 -2.7512401057361302e-07 5 -2.7512401057361302e-07
		 6 -2.7512401057361302e-07 7 -2.7512401057361302e-07 8 -2.7512401057361302e-07 9 -2.7512401057361302e-07
		 10 -2.7512401057361302e-07 11 -2.7512401057361302e-07 12 -2.7512401057361302e-07;
createNode animCurveTL -n "L_knee_joint_translateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1.5543122344752192e-15 1 1.5543122344752192e-15
		 2 1.5543122344752192e-15 3 1.5543122344752192e-15 4 1.5543122344752192e-15 5 1.5543122344752192e-15
		 6 1.5543122344752192e-15 7 1.5543122344752192e-15 8 1.5543122344752192e-15 9 1.5543122344752192e-15
		 10 1.5543122344752192e-15 11 1.5543122344752192e-15 12 1.5543122344752192e-15;
createNode animCurveTA -n "L_knee_joint_rotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 2.7661146319182801e-29 1 2.5966713046227625e-14
		 2 1.4271280884287726e-14 3 3.8528755598875726e-14 4 2.5851429032959129e-14 5 1.4619512618625196e-14
		 6 2.2613683616453739e-15 7 -1.8889204794178844e-15 8 3.4530233161924405e-14 9 2.4591324680355477e-14
		 10 -1.8889204794178816e-15 11 1.0896628165682477e-14 12 6.7105622539494293e-15;
createNode animCurveTA -n "L_knee_joint_rotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1.4778022091513876e-28 1 1.387276776649834e-13
		 2 7.6244600187066414e-14 3 2.0584063828326029e-13 4 1.381117705455815e-13 5 7.8105035110342366e-14
		 6 1.2081405166592948e-14 7 -9.5881135016531894e-15 8 1.8447845313560358e-13 9 1.3137963813663815e-13
		 10 -9.5881135016531847e-15 11 5.8215451340060476e-14 12 3.5851311471705327e-14;
createNode animCurveTA -n "L_knee_joint_rotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -7.7582965762549427e-14 1 -72.830481643283534
		 2 -40.027563697372138 3 -108.064036537352 4 -72.507137283249691 5 -41.004271257166991
		 6 -6.3426028029928938 7 5.2979747248093325 8 -96.849127880018187 9 -68.972842944280416
		 10 5.2979747248093343 11 -30.56246187885213 12 -18.821538181682843;
createNode animCurveTU -n "L_knee_joint_scaleX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_knee_joint_scaleY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_knee_joint_scaleZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_ankle_joint_visibility";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "L_ankle_joint_translateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 3.1139132043535276 1 3.1139132043535276
		 2 3.1139132043535276 3 3.1139132043535276 4 3.1139132043535276 5 3.1139132043535276
		 6 3.1139132043535276 7 3.1139132043535276 8 3.1139132043535276 9 3.1139132043535276
		 10 3.1139132043535276 11 3.1139132043535276 12 3.1139132043535276;
createNode animCurveTL -n "L_ankle_joint_translateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -9.3805318512885094e-08 1 -9.3805318512885094e-08
		 2 -9.3805318512885094e-08 3 -9.3805318512885094e-08 4 -9.3805318512885094e-08 5 -9.3805318512885094e-08
		 6 -9.3805318512885094e-08 7 -9.3805318512885094e-08 8 -9.3805318512885094e-08 9 -9.3805318512885094e-08
		 10 -9.3805318512885094e-08 11 -9.3805318512885094e-08 12 -9.3805318512885094e-08;
createNode animCurveTL -n "L_ankle_joint_translateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1.1102230246251565e-15 1 1.1102230246251565e-15
		 2 1.1102230246251565e-15 3 1.1102230246251565e-15 4 1.1102230246251565e-15 5 1.1102230246251565e-15
		 6 1.1102230246251565e-15 7 1.1102230246251565e-15 8 1.1102230246251565e-15 9 1.1102230246251565e-15
		 10 1.1102230246251565e-15 11 1.1102230246251565e-15 12 1.1102230246251565e-15;
createNode animCurveTA -n "L_ankle_joint_rotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 87.354303887735 1 87.354303887735 2 87.354303887735
		 3 87.354303887735 4 87.354303887735 5 87.354303887735 6 87.354303887735 7 87.354303887735
		 8 87.354303887735 9 87.354303887735 10 87.354303887735 11 87.354303887735 12 87.354303887735;
createNode animCurveTA -n "L_ankle_joint_rotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTA -n "L_ankle_joint_rotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTU -n "L_ankle_joint_scaleX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_ankle_joint_scaleY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_ankle_joint_scaleZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_foot_shadow_visibility";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "L_foot_shadow_translateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -8.8817841970012523e-16 1 -4.1078251911130792e-15
		 2 -2.9976021664879227e-15 3 -8.8817841970012523e-15 4 -3.3306690738754696e-15 5 -1.27675647831893e-15
		 6 4.2188474935755949e-15 7 8.8817841970012523e-15 8 -5.2180482157382357e-15 9 -1.8873791418627661e-15
		 10 6.2172489379008766e-15 11 0 12 2.2204460492503131e-15;
createNode animCurveTL -n "L_foot_shadow_translateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -4.163336342344337e-17 1 -3.3963690970750804e-08
		 2 -2.7534997038003439e-07 3 2.8010560537694573e-09 4 -4.3760496559741568e-08 5 -2.0824917346118355e-07
		 6 -2.9794825362472466e-07 7 -2.0959386226593324e-08 8 2.7616911369987562e-06 9 -4.1534313943714096e-07
		 10 -1.0695604402144454e-09 11 -2.3691676114268034e-06 12 -4.7902393163212764e-10;
createNode animCurveTL -n "L_foot_shadow_translateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 6.6613381477509392e-16 1 4.4052770320490708e-08
		 2 6.8407288367211549e-07 3 -2.0353172480724879e-09 4 5.7075190795785602e-08 5 5.0534620998909929e-07
		 6 3.0168567981547767e-06 7 0.53710800584455098 8 -2.4101595745840143e-06 9 5.7591820795677151e-07
		 10 0.027408820125452954 11 7.5790685833965199e-06 12 2.3166810692032413e-09;
createNode animCurveTA -n "L_foot_shadow_rotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 2.2581938238390979e-13 1 11.993472653399765
		 2 -8.5940740515464942 3 23.052242009914789 4 -2.3873136892264122 5 1.3382662062511999
		 6 8.5926333576805884 7 25.062861799821089 8 20.517967318499451 9 13.461495457183014
		 10 -0.93762863112651185 11 6.9307394381260847 12 1.3218858038749903;
createNode animCurveTA -n "L_foot_shadow_rotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1.9083328088781107e-13 1 3.199546353273897
		 2 -23.552029647357216 3 -34.896377214590565 4 -12.819406742970228 5 -6.8313266246234656
		 6 0.75075000573291395 7 5.5700847527655561 8 17.133956972511015 9 9.9912008454899137
		 10 12.505403434597621 11 -0.2069495956167548 12 -11.826641693197917;
createNode animCurveTA -n "L_foot_shadow_rotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 3.1805546814638938e-15 1 -11.959217623772872
		 2 -13.732580794960423 3 -24.944745069765165 4 0.20363695259644224 5 -29.642677122652902
		 6 1.2848140879052441 7 16.898171155097227 8 25.871265820263265 9 43.648710137797615
		 10 -21.851620118831118 11 -22.679903980528096 12 -43.3979723488182;
createNode animCurveTU -n "L_foot_shadow_scaleX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_foot_shadow_scaleY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_foot_shadow_scaleZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_toe_shadow_visibility";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "L_toe_shadow_translateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1.316361819617758 1 1.316361819617758
		 2 1.316361819617758 3 1.316361819617758 4 1.316361819617758 5 1.316361819617758 6 1.316361819617758
		 7 1.316361819617758 8 1.316361819617758 9 1.316361819617758 10 1.316361819617758
		 11 1.316361819617758 12 1.316361819617758;
createNode animCurveTL -n "L_toe_shadow_translateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 3.677613769070831e-16 1 3.677613769070831e-16
		 2 3.677613769070831e-16 3 3.677613769070831e-16 4 3.677613769070831e-16 5 3.677613769070831e-16
		 6 3.677613769070831e-16 7 3.677613769070831e-16 8 3.677613769070831e-16 9 3.677613769070831e-16
		 10 3.677613769070831e-16 11 3.677613769070831e-16 12 3.677613769070831e-16;
createNode animCurveTL -n "L_toe_shadow_translateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -4.0931021892716642e-15 1 -4.0931021892716642e-15
		 2 -4.0931021892716642e-15 3 -4.0931021892716642e-15 4 -4.0931021892716642e-15 5 -4.0931021892716642e-15
		 6 -4.0931021892716642e-15 7 -4.0931021892716642e-15 8 -4.0931021892716642e-15 9 -4.0931021892716642e-15
		 10 -4.0931021892716642e-15 11 -4.0931021892716642e-15 12 -4.0931021892716642e-15;
createNode animCurveTA -n "L_toe_shadow_rotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTA -n "L_toe_shadow_rotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTA -n "L_toe_shadow_rotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTU -n "L_toe_shadow_scaleX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_toe_shadow_scaleY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_toe_shadow_scaleZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_foot_parentConstraint1_nodeState";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTU -n "L_foot_parentConstraint1_target_0__targetWeight";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "L_foot_parentConstraint1_target_0__targetOffsetTranslateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -1.2600613694867755 1 -1.2600613694867755
		 2 -1.2600613694867755 3 -1.2600613694867755 4 -1.2600613694867755 5 -1.2600613694867755
		 6 -1.2600613694867755 7 -1.2600613694867755 8 -1.2600613694867755 9 -1.2600613694867755
		 10 -1.2600613694867755 11 -1.2600613694867755 12 -1.2600613694867755;
createNode animCurveTL -n "L_foot_parentConstraint1_target_0__targetOffsetTranslateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0.38058796194418076 1 0.38058796194418076
		 2 0.38058796194418076 3 0.38058796194418076 4 0.38058796194418076 5 0.38058796194418076
		 6 0.38058796194418076 7 0.38058796194418076 8 0.38058796194418076 9 0.38058796194418076
		 10 0.38058796194418076 11 0.38058796194418076 12 0.38058796194418076;
createNode animCurveTL -n "L_foot_parentConstraint1_target_0__targetOffsetTranslateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 6.6613381477509392e-16 1 6.6613381477509392e-16
		 2 6.6613381477509392e-16 3 6.6613381477509392e-16 4 6.6613381477509392e-16 5 6.6613381477509392e-16
		 6 6.6613381477509392e-16 7 6.6613381477509392e-16 8 6.6613381477509392e-16 9 6.6613381477509392e-16
		 10 6.6613381477509392e-16 11 6.6613381477509392e-16 12 6.6613381477509392e-16;
createNode animCurveTA -n "L_foot_parentConstraint1_target_0__targetOffsetRotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -2.174581508302521e-13 1 -2.174581508302521e-13
		 2 -2.174581508302521e-13 3 -2.174581508302521e-13 4 -2.174581508302521e-13 5 -2.174581508302521e-13
		 6 -2.174581508302521e-13 7 -2.174581508302521e-13 8 -2.174581508302521e-13 9 -2.174581508302521e-13
		 10 -2.174581508302521e-13 11 -2.174581508302521e-13 12 -2.174581508302521e-13;
createNode animCurveTA -n "L_foot_parentConstraint1_target_0__targetOffsetRotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -1.9098676803809381e-13 1 -1.9098676803809381e-13
		 2 -1.9098676803809381e-13 3 -1.9098676803809381e-13 4 -1.9098676803809381e-13 5 -1.9098676803809381e-13
		 6 -1.9098676803809381e-13 7 -1.9098676803809381e-13 8 -1.9098676803809381e-13 9 -1.9098676803809381e-13
		 10 -1.9098676803809381e-13 11 -1.9098676803809381e-13 12 -1.9098676803809381e-13;
createNode animCurveTA -n "L_foot_parentConstraint1_target_0__targetOffsetRotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -16.550674114116788 1 -16.550674114116788
		 2 -16.550674114116788 3 -16.550674114116788 4 -16.550674114116788 5 -16.550674114116788
		 6 -16.550674114116788 7 -16.550674114116788 8 -16.550674114116788 9 -16.550674114116788
		 10 -16.550674114116788 11 -16.550674114116788 12 -16.550674114116788;
createNode animCurveTU -n "L_foot_parentConstraint1_interpType";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_foot_parentConstraint1_L_ball_2_jointW0";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "effector7_visibility";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTL -n "effector7_translateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 3.1139132043535276 1 3.1139132043535276
		 2 3.1139132043535276 3 3.1139132043535276 4 3.1139132043535276 5 3.1139132043535276
		 6 3.1139132043535276 7 3.1139132043535276 8 3.1139132043535276 9 3.1139132043535276
		 10 3.1139132043535276 11 3.1139132043535276 12 3.1139132043535276;
createNode animCurveTL -n "effector7_translateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -9.3805318512885094e-08 1 -9.3805318512885094e-08
		 2 -9.3805318512885094e-08 3 -9.3805318512885094e-08 4 -9.3805318512885094e-08 5 -9.3805318512885094e-08
		 6 -9.3805318512885094e-08 7 -9.3805318512885094e-08 8 -9.3805318512885094e-08 9 -9.3805318512885094e-08
		 10 -9.3805318512885094e-08 11 -9.3805318512885094e-08 12 -9.3805318512885094e-08;
createNode animCurveTL -n "effector7_translateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1.1102230246251565e-15 1 1.1102230246251565e-15
		 2 1.1102230246251565e-15 3 1.1102230246251565e-15 4 1.1102230246251565e-15 5 1.1102230246251565e-15
		 6 1.1102230246251565e-15 7 1.1102230246251565e-15 8 1.1102230246251565e-15 9 1.1102230246251565e-15
		 10 1.1102230246251565e-15 11 1.1102230246251565e-15 12 1.1102230246251565e-15;
createNode animCurveTA -n "effector7_rotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTA -n "effector7_rotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTA -n "effector7_rotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTU -n "effector7_scaleX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "effector7_scaleY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1.0000000000000002 1 1.0000000000000002
		 2 1.0000000000000002 3 1.0000000000000002 4 1.0000000000000002 5 1.0000000000000002
		 6 1.0000000000000002 7 1.0000000000000002 8 1.0000000000000002 9 1.0000000000000002
		 10 1.0000000000000002 11 1.0000000000000002 12 1.0000000000000002;
createNode animCurveTU -n "effector7_scaleZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1.0000000000000002 1 1.0000000000000002
		 2 1.0000000000000002 3 1.0000000000000002 4 1.0000000000000002 5 1.0000000000000002
		 6 1.0000000000000002 7 1.0000000000000002 8 1.0000000000000002 9 1.0000000000000002
		 10 1.0000000000000002 11 1.0000000000000002 12 1.0000000000000002;
createNode animCurveTU -n "effector7_hideDisplay";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_hip_joint_visibility";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "R_hip_joint_translateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1.4719800000000003 1 1.4719800000000003
		 2 1.4719800000000003 3 1.4719800000000003 4 1.4719800000000003 5 1.4719800000000003
		 6 1.4719800000000003 7 1.4719800000000003 8 1.4719800000000003 9 1.4719800000000003
		 10 1.4719800000000003 11 1.4719800000000003 12 1.4719800000000003;
createNode animCurveTL -n "R_hip_joint_translateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -0.52325837328157032 1 -0.52325837328157032
		 2 -0.52325837328157032 3 -0.52325837328157032 4 -0.52325837328157032 5 -0.52325837328157032
		 6 -0.52325837328157032 7 -0.52325837328157032 8 -0.52325837328157032 9 -0.52325837328157032
		 10 -0.52325837328157032 11 -0.52325837328157032 12 -0.52325837328157032;
createNode animCurveTL -n "R_hip_joint_translateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -0.0015155990002761258 1 -0.0015155990002761258
		 2 -0.0015155990002761258 3 -0.0015155990002761258 4 -0.0015155990002761258 5 -0.0015155990002761258
		 6 -0.0015155990002761258 7 -0.0015155990002761258 8 -0.0015155990002761258 9 -0.0015155990002761258
		 10 -0.0015155990002761258 11 -0.0015155990002761258 12 -0.0015155990002761258;
createNode animCurveTA -n "R_hip_joint_rotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -1.7532166836232349e-10 1 -12.52617004869548
		 2 -28.081272672017867 3 -15.820784938888512 4 -3.6377426852642833 5 5.4591196252914909
		 6 -0.8954043903122787 7 -3.7227635193659068 8 3.7047590125226515 9 2.8892239833810809
		 10 13.951451635816822 11 18.842832786726316 12 12.356282658628125;
createNode animCurveTA -n "R_hip_joint_rotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -3.6758683787326334e-09 1 -7.4504325957574542
		 2 -7.9820463765326899 3 -9.1832197526608308 4 -3.5306198154107102 5 -6.3723408756434674
		 6 10.777754598102076 7 31.37219769904992 8 15.744278201731511 9 16.767704179504982
		 10 0.43931491645948656 11 -1.8652846018267335 12 -18.767581931063582;
createNode animCurveTA -n "R_hip_joint_rotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0.00040213010638364603 1 70.823293083011819
		 2 80.451467907266149 3 38.731120468686591 4 -14.028019145957108 5 -17.853424643482622
		 6 -36.512043217880233 7 -65.445679809170869 8 -46.301229127235224 9 36.455626374498777
		 10 97.296337817446627 11 102.17944992849131 12 94.430701846584583;
createNode animCurveTU -n "R_hip_joint_scaleX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_hip_joint_scaleY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_hip_joint_scaleZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_knee_joint_visibility";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "R_knee_joint_translateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -2.9277262989788779 1 -2.9277262989788779
		 2 -2.9277262989788779 3 -2.9277262989788779 4 -2.9277262989788779 5 -2.9277262989788779
		 6 -2.9277262989788779 7 -2.9277262989788779 8 -2.9277262989788779 9 -2.9277262989788779
		 10 -2.9277262989788779 11 -2.9277262989788779 12 -2.9277262989788779;
createNode animCurveTL -n "R_knee_joint_translateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 2.7512401068463532e-07 1 2.7512401068463532e-07
		 2 2.7512401068463532e-07 3 2.7512401068463532e-07 4 2.7512401068463532e-07 5 2.7512401068463532e-07
		 6 2.7512401068463532e-07 7 2.7512401068463532e-07 8 2.7512401068463532e-07 9 2.7512401068463532e-07
		 10 2.7512401068463532e-07 11 2.7512401068463532e-07 12 2.7512401068463532e-07;
createNode animCurveTL -n "R_knee_joint_translateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -2.6645352591003757e-15 1 -2.6645352591003757e-15
		 2 -2.6645352591003757e-15 3 -2.6645352591003757e-15 4 -2.6645352591003757e-15 5 -2.6645352591003757e-15
		 6 -2.6645352591003757e-15 7 -2.6645352591003757e-15 8 -2.6645352591003757e-15 9 -2.6645352591003757e-15
		 10 -2.6645352591003757e-15 11 -2.6645352591003757e-15 12 -2.6645352591003757e-15;
createNode animCurveTA -n "R_knee_joint_rotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -1.3546405873824779e-13 1 -1.1505350877581166e-13
		 2 -6.9015212501179662e-14 3 -8.1354538035979989e-14 4 -1.397014456319918e-13 5 -1.1987485014509265e-13
		 6 -1.0497532867338627e-13 7 -8.8779297830903564e-14 8 -8.959688011987077e-14 9 -5.4287610911663282e-14
		 10 -1.0235789462880556e-13 11 -1.0900212891622031e-13 12 -1.1796584635237109e-13;
createNode animCurveTA -n "R_knee_joint_rotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1.5818539199316767e-09 1 1.3435138851891256e-09
		 2 8.0591106930331765e-10 3 9.5000102680453787e-10 4 1.6313351412280788e-09 5 1.3998141157843318e-09
		 6 1.2258279923457436e-09 7 1.0367021451347156e-09 8 1.0462492955797536e-09 9 6.3393250522836791e-10
		 10 1.19526344007891e-09 11 1.2728501309723224e-09 12 1.3775221133092253e-09;
createNode animCurveTA -n "R_knee_joint_rotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 169.40210468488613 1 143.87806418574766
		 2 86.305713573555394 3 101.73643176889721 4 174.70109147776969 5 149.90730458329605
		 6 131.27498011572811 7 111.02132953259201 8 112.0437421326142 9 67.888380374899882
		 10 128.00179577328487 11 136.31062161824497 12 147.52003475430521;
createNode animCurveTU -n "R_knee_joint_scaleX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_knee_joint_scaleY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_knee_joint_scaleZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_ankle_joint_visibility";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "R_ankle_joint_translateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -3.1139132042863658 1 -3.1139132042863658
		 2 -3.1139132042863658 3 -3.1139132042863658 4 -3.1139132042863658 5 -3.1139132042863658
		 6 -3.1139132042863658 7 -3.1139132042863658 8 -3.1139132042863658 9 -3.1139132042863658
		 10 -3.1139132042863658 11 -3.1139132042863658 12 -3.1139132042863658;
createNode animCurveTL -n "R_ankle_joint_translateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -2.0453320433488688e-05 1 -2.0453320433488688e-05
		 2 -2.0453320433488688e-05 3 -2.0453320433488688e-05 4 -2.0453320433488688e-05 5 -2.0453320433488688e-05
		 6 -2.0453320433488688e-05 7 -2.0453320433488688e-05 8 -2.0453320433488688e-05 9 -2.0453320433488688e-05
		 10 -2.0453320433488688e-05 11 -2.0453320433488688e-05 12 -2.0453320433488688e-05;
createNode animCurveTL -n "R_ankle_joint_translateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -2.2991299618616715e-15 1 -2.2991299618616715e-15
		 2 -2.2991299618616715e-15 3 -2.2991299618616715e-15 4 -2.2991299618616715e-15 5 -2.2991299618616715e-15
		 6 -2.2991299618616715e-15 7 -2.2991299618616715e-15 8 -2.2991299618616715e-15 9 -2.2991299618616715e-15
		 10 -2.2991299618616715e-15 11 -2.2991299618616715e-15 12 -2.2991299618616715e-15;
createNode animCurveTA -n "R_ankle_joint_rotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 3.0116347161097921e-14 1 3.0116347161097921e-14
		 2 3.0116347161097921e-14 3 3.0116347161097921e-14 4 3.0116347161097921e-14 5 3.0116347161097921e-14
		 6 3.0116347161097921e-14 7 3.0116347161097921e-14 8 3.0116347161097921e-14 9 3.0116347161097921e-14
		 10 3.0116347161097921e-14 11 3.0116347161097921e-14 12 3.0116347161097921e-14;
createNode animCurveTA -n "R_ankle_joint_rotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 8.5208975092017026e-14 1 8.5208975092017026e-14
		 2 8.5208975092017026e-14 3 8.5208975092017026e-14 4 8.5208975092017026e-14 5 8.5208975092017026e-14
		 6 8.5208975092017026e-14 7 8.5208975092017026e-14 8 8.5208975092017026e-14 9 8.5208975092017026e-14
		 10 8.5208975092017026e-14 11 8.5208975092017026e-14 12 8.5208975092017026e-14;
createNode animCurveTA -n "R_ankle_joint_rotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -38.395104168963762 1 -38.395104168963762
		 2 -38.395104168963762 3 -38.395104168963762 4 -38.395104168963762 5 -38.395104168963762
		 6 -38.395104168963762 7 -38.395104168963762 8 -38.395104168963762 9 -38.395104168963762
		 10 -38.395104168963762 11 -38.395104168963762 12 -38.395104168963762;
createNode animCurveTU -n "R_ankle_joint_scaleX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_ankle_joint_scaleY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_ankle_joint_scaleZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "effector8_visibility";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTL -n "effector8_translateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -3.1139132042863658 1 -3.1139132042863658
		 2 -3.1139132042863658 3 -3.1139132042863658 4 -3.1139132042863658 5 -3.1139132042863658
		 6 -3.1139132042863658 7 -3.1139132042863658 8 -3.1139132042863658 9 -3.1139132042863658
		 10 -3.1139132042863658 11 -3.1139132042863658 12 -3.1139132042863658;
createNode animCurveTL -n "effector8_translateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -2.0453320433488688e-05 1 -2.0453320433488688e-05
		 2 -2.0453320433488688e-05 3 -2.0453320433488688e-05 4 -2.0453320433488688e-05 5 -2.0453320433488688e-05
		 6 -2.0453320433488688e-05 7 -2.0453320433488688e-05 8 -2.0453320433488688e-05 9 -2.0453320433488688e-05
		 10 -2.0453320433488688e-05 11 -2.0453320433488688e-05 12 -2.0453320433488688e-05;
createNode animCurveTL -n "effector8_translateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -2.2991299618616715e-15 1 -2.2991299618616715e-15
		 2 -2.2991299618616715e-15 3 -2.2991299618616715e-15 4 -2.2991299618616715e-15 5 -2.2991299618616715e-15
		 6 -2.2991299618616715e-15 7 -2.2991299618616715e-15 8 -2.2991299618616715e-15 9 -2.2991299618616715e-15
		 10 -2.2991299618616715e-15 11 -2.2991299618616715e-15 12 -2.2991299618616715e-15;
createNode animCurveTA -n "effector8_rotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTA -n "effector8_rotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTA -n "effector8_rotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTU -n "effector8_scaleX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "effector8_scaleY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0.99999999999999978 1 0.99999999999999978
		 2 0.99999999999999978 3 0.99999999999999978 4 0.99999999999999978 5 0.99999999999999978
		 6 0.99999999999999978 7 0.99999999999999978 8 0.99999999999999978 9 0.99999999999999978
		 10 0.99999999999999978 11 0.99999999999999978 12 0.99999999999999978;
createNode animCurveTU -n "effector8_scaleZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0.99999999999999978 1 0.99999999999999978
		 2 0.99999999999999978 3 0.99999999999999978 4 0.99999999999999978 5 0.99999999999999978
		 6 0.99999999999999978 7 0.99999999999999978 8 0.99999999999999978 9 0.99999999999999978
		 10 0.99999999999999978 11 0.99999999999999978 12 0.99999999999999978;
createNode animCurveTU -n "effector8_hideDisplay";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_foot_shadow_visibility";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "R_foot_shadow_translateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -3.1139132042949207 1 -3.1139120046788493
		 2 -3.1139119005773863 3 -3.1139287936247282 4 -3.3780071950218149 5 -3.1139165202606227
		 6 -3.1139340455652502 7 -3.1139113702802543 8 -3.1139113625449939 9 -3.1139106773152285
		 10 -3.1139203657110475 11 -3.1139114796013594 12 -3.1139129763185203;
createNode animCurveTL -n "R_foot_shadow_translateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -2.0453129628478228e-05 1 -1.9544063911691723e-05
		 2 -1.9385760831047705e-05 3 -3.0902508483698909e-05 4 -2.1719430012723251e-05 5 -2.2610568389591634e-05
		 6 -2.9407465557351742e-05 7 -2.0470875871314576e-05 8 -2.0806758360247812e-05 9 -2.0267347542901604e-05
		 10 -2.5053545677167222e-05 11 -2.0781285672732963e-05 12 -2.0499031594845007e-05;
createNode animCurveTL -n "R_foot_shadow_translateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -2.2204460492503131e-15 1 -6.4188556381239437e-07
		 2 -8.7567508083585821e-07 3 -4.4318709879753726e-07 4 2.6750768999939112e-07 5 4.6232595662942799e-07
		 6 2.3946955374221091e-07 7 4.5673868021012254e-07 8 1.9378234483724555e-07 9 -4.3640486380169818e-07
		 10 8.3497472935789574e-07 11 7.1320615990799752e-07 12 -1.3536601528585379e-07;
createNode animCurveTA -n "R_foot_shadow_rotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -2.7430446634671655e-13 1 -20.238093100393911
		 2 -29.980932913041578 3 -13.553083474352038 4 14.866903996068826 5 17.130452798540595
		 6 6.454774623934421 7 5.558250870425784 8 -3.5367697860965865 9 -20.230582305301311
		 10 24.457291531095436 11 28.778468981763467 12 3.1820106528600824;
createNode animCurveTA -n "R_foot_shadow_rotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -9.8234048091975582e-14 1 -3.2315793394858376
		 2 -0.75182122058877743 3 -2.7872460133592249 4 -12.38277461923632 5 -3.482043673771718
		 6 3.2957514100711611 7 22.801639249031044 8 22.06560395400804 9 11.18988029380928
		 10 9.3940545341680757 11 -8.2917698218705898 12 -16.99320017946556;
createNode animCurveTA -n "R_foot_shadow_rotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -1.8138003626356518e-09 1 30.55987482886237
		 2 33.869584514180424 3 46.371741748088496 4 -6.6283214714207244 5 -42.802398112668129
		 6 -9.4120462949816943 7 0.53379646091118138 8 -12.629174703582441 9 -44.041249984900716
		 10 -39.523633856125322 11 -19.438531244140421 12 7.8108541533942404;
createNode animCurveTU -n "R_foot_shadow_scaleX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_foot_shadow_scaleY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_foot_shadow_scaleZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_toe_shadow_visibility";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "R_toe_shadow_translateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1.3163618196177578 1 1.3143666999668575
		 2 1.3163618196177587 3 1.3163618196177589 4 1.3127428773587644 5 1.3107447843994913
		 6 1.3163618196177556 7 1.3166384536515785 8 1.3190192861994112 9 1.319019286318529
		 10 1.31636181961776 11 1.3163618196177582 12 1.3163618196177573;
createNode animCurveTL -n "R_toe_shadow_translateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -4.1671777140095401e-11 1 -0.00031765253312213138
		 2 -2.2204460492503131e-16 3 7.7715611723760958e-16 4 -0.0011791068903701518 5 -0.0038888981883467011
		 6 8.8817841970012523e-16 7 -1.0644598672726602e-05 8 -0.000680027706136066 9 -0.00068002776908349105
		 10 8.8817841970012523e-16 11 0 12 4.4408920985006262e-16;
createNode animCurveTL -n "R_toe_shadow_translateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -3.9968028886505635e-15 1 -3.6637359812630166e-15
		 2 -3.5527136788005009e-15 3 -3.7747582837255322e-15 4 -3.9968028886505635e-15 5 -4.8849813083506888e-15
		 6 -4.4408920985006262e-15 7 -4.6629367034256575e-15 8 -3.5527136788005009e-15 9 -4.2188474935755949e-15
		 10 -4.2188474935755949e-15 11 -3.5527136788005009e-15 12 -4.8849813083506888e-15;
createNode animCurveTA -n "R_toe_shadow_rotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -1.8138210362410809e-09 1 19.799999892711629
		 2 -1.9083328088781101e-14 3 -1.7493050748049864e-14 4 37.79999838100079 5 71.100000617320958
		 6 -5.0888874903416268e-14 7 -2.7000027894973639 8 -26.999999759014095 9 -27.00000107288361
		 10 -5.0888874903416268e-14 11 -1.9083328088781564e-14 12 -1.9083328088781564e-14;
createNode animCurveTA -n "R_toe_shadow_rotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -3.7371517506612339e-13 1 -4.625007994439601e-13
		 2 -4.8781757426946699e-13 3 -4.6555369149922235e-13 4 -4.3275104143510037e-13 5 -2.6540154979322044e-13
		 6 -4.6555369149922215e-13 7 -4.5132108119086381e-13 8 -4.275621095661852e-13 9 -4.1772569289389317e-13
		 10 -4.6356584482330747e-13 11 -4.8185403424172286e-13 12 -4.8185403424172286e-13;
createNode animCurveTA -n "R_toe_shadow_rotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 3.6894434305568338e-13 1 -3.5314494039928854e-18
		 2 8.4284699058783291e-14 3 1.2722218725854077e-13 4 -1.5488740161400954e-13 5 -3.0693462304927378e-13
		 6 1.2404163257707733e-13 7 1.538006806962249e-13 8 2.3655230761001691e-13 9 2.5708731371993881e-13
		 10 1.3199301928073615e-13 11 1.0972913651049144e-13 12 1.0972913651049144e-13;
createNode animCurveTU -n "R_toe_shadow_scaleX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_toe_shadow_scaleY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_toe_shadow_scaleZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_toe_parentConstraint1_nodeState";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTU -n "R_toe_parentConstraint1_target_0__targetWeight";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "R_toe_parentConstraint1_target_0__targetOffsetTranslateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -0.0017573536930954869 1 -0.0017573536930954869
		 2 -0.0017573536930954869 3 -0.0017573536930954869 4 -0.0017573536930954869 5 -0.0017573536930954869
		 6 -0.0017573536930954869 7 -0.0017573536930954869 8 -0.0017573536930954869 9 -0.0017573536930954869
		 10 -0.0017573536930954869 11 -0.0017573536930954869 12 -0.0017573536930954869;
createNode animCurveTL -n "R_toe_parentConstraint1_target_0__targetOffsetTranslateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -0.0056062584615426125 1 -0.0056062584615426125
		 2 -0.0056062584615426125 3 -0.0056062584615426125 4 -0.0056062584615426125 5 -0.0056062584615426125
		 6 -0.0056062584615426125 7 -0.0056062584615426125 8 -0.0056062584615426125 9 -0.0056062584615426125
		 10 -0.0056062584615426125 11 -0.0056062584615426125 12 -0.0056062584615426125;
createNode animCurveTL -n "R_toe_parentConstraint1_target_0__targetOffsetTranslateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -1.9984014443252818e-15 1 -1.9984014443252818e-15
		 2 -1.9984014443252818e-15 3 -1.9984014443252818e-15 4 -1.9984014443252818e-15 5 -1.9984014443252818e-15
		 6 -1.9984014443252818e-15 7 -1.9984014443252818e-15 8 -1.9984014443252818e-15 9 -1.9984014443252818e-15
		 10 -1.9984014443252818e-15 11 -1.9984014443252818e-15 12 -1.9984014443252818e-15;
createNode animCurveTA -n "R_toe_parentConstraint1_target_0__targetOffsetRotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -172.258947760392 1 -172.258947760392
		 2 -172.258947760392 3 -172.258947760392 4 -172.258947760392 5 -172.258947760392 6 -172.258947760392
		 7 -172.258947760392 8 -172.258947760392 9 -172.258947760392 10 -172.258947760392
		 11 -172.258947760392 12 -172.258947760392;
createNode animCurveTA -n "R_toe_parentConstraint1_target_0__targetOffsetRotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -89.999999999999702 1 -89.999999999999702
		 2 -89.999999999999702 3 -89.999999999999702 4 -89.999999999999702 5 -89.999999999999702
		 6 -89.999999999999702 7 -89.999999999999702 8 -89.999999999999702 9 -89.999999999999702
		 10 -89.999999999999702 11 -89.999999999999702 12 -89.999999999999702;
createNode animCurveTA -n "R_toe_parentConstraint1_target_0__targetOffsetRotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTU -n "R_toe_parentConstraint1_interpType";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_toe_parentConstraint1_R_toe_jointW0";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_foot_parentConstraint1_nodeState";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTU -n "R_foot_parentConstraint1_target_0__targetWeight";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "R_foot_parentConstraint1_target_0__targetOffsetTranslateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1.2600651843847028 1 1.2600651843847028
		 2 1.2600651843847028 3 1.2600651843847028 4 1.2600651843847028 5 1.2600651843847028
		 6 1.2600651843847028 7 1.2600651843847028 8 1.2600651843847028 9 1.2600651843847028
		 10 1.2600651843847028 11 1.2600651843847028 12 1.2600651843847028;
createNode animCurveTL -n "R_foot_parentConstraint1_target_0__targetOffsetTranslateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -0.38058935480893319 1 -0.38058935480893319
		 2 -0.38058935480893319 3 -0.38058935480893319 4 -0.38058935480893319 5 -0.38058935480893319
		 6 -0.38058935480893319 7 -0.38058935480893319 8 -0.38058935480893319 9 -0.38058935480893319
		 10 -0.38058935480893319 11 -0.38058935480893319 12 -0.38058935480893319;
createNode animCurveTL -n "R_foot_parentConstraint1_target_0__targetOffsetTranslateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1.9984014443252818e-15 1 1.9984014443252818e-15
		 2 1.9984014443252818e-15 3 1.9984014443252818e-15 4 1.9984014443252818e-15 5 1.9984014443252818e-15
		 6 1.9984014443252818e-15 7 1.9984014443252818e-15 8 1.9984014443252818e-15 9 1.9984014443252818e-15
		 10 1.9984014443252818e-15 11 1.9984014443252818e-15 12 1.9984014443252818e-15;
createNode animCurveTA -n "R_foot_parentConstraint1_target_0__targetOffsetRotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 2.7044859604896799e-13 1 2.7044859604896799e-13
		 2 2.7044859604896799e-13 3 2.7044859604896799e-13 4 2.7044859604896799e-13 5 2.7044859604896799e-13
		 6 2.7044859604896799e-13 7 2.7044859604896799e-13 8 2.7044859604896799e-13 9 2.7044859604896799e-13
		 10 2.7044859604896799e-13 11 2.7044859604896799e-13 12 2.7044859604896799e-13;
createNode animCurveTA -n "R_foot_parentConstraint1_target_0__targetOffsetRotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -2.2846472526572076e-15 1 -2.2846472526572076e-15
		 2 -2.2846472526572076e-15 3 -2.2846472526572076e-15 4 -2.2846472526572076e-15 5 -2.2846472526572076e-15
		 6 -2.2846472526572076e-15 7 -2.2846472526572076e-15 8 -2.2846472526572076e-15 9 -2.2846472526572076e-15
		 10 -2.2846472526572076e-15 11 -2.2846472526572076e-15 12 -2.2846472526572076e-15;
createNode animCurveTA -n "R_foot_parentConstraint1_target_0__targetOffsetRotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 163.44932588588318 1 163.44932588588318
		 2 163.44932588588318 3 163.44932588588318 4 163.44932588588318 5 163.44932588588318
		 6 163.44932588588318 7 163.44932588588318 8 163.44932588588318 9 163.44932588588318
		 10 163.44932588588318 11 163.44932588588318 12 163.44932588588318;
createNode animCurveTU -n "R_foot_parentConstraint1_interpType";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_foot_parentConstraint1_R_ball_2_jointW0";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "waist_joint_group_parentConstraint1_nodeState";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTU -n "waist_joint_group_parentConstraint1_target_0__targetWeight";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "waist_joint_group_parentConstraint1_target_0__targetOffsetTranslateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -1.9944219151221553e-16 1 -1.9944219151221553e-16
		 2 -1.9944219151221553e-16 3 -1.9944219151221553e-16 4 -1.9944219151221553e-16 5 -1.9944219151221553e-16
		 6 -1.9944219151221553e-16 7 -1.9944219151221553e-16 8 -1.9944219151221553e-16 9 -1.9944219151221553e-16
		 10 -1.9944219151221553e-16 11 -1.9944219151221553e-16 12 -1.9944219151221553e-16;
createNode animCurveTL -n "waist_joint_group_parentConstraint1_target_0__targetOffsetTranslateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0.78965122505745367 1 0.78965122505745367
		 2 0.78965122505745367 3 0.78965122505745367 4 0.78965122505745367 5 0.78965122505745367
		 6 0.78965122505745367 7 0.78965122505745367 8 0.78965122505745367 9 0.78965122505745367
		 10 0.78965122505745367 11 0.78965122505745367 12 0.78965122505745367;
createNode animCurveTL -n "waist_joint_group_parentConstraint1_target_0__targetOffsetTranslateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0.026876284023327007 1 0.026876284023327007
		 2 0.026876284023327007 3 0.026876284023327007 4 0.026876284023327007 5 0.026876284023327007
		 6 0.026876284023327007 7 0.026876284023327007 8 0.026876284023327007 9 0.026876284023327007
		 10 0.026876284023327007 11 0.026876284023327007 12 0.026876284023327007;
createNode animCurveTA -n "waist_joint_group_parentConstraint1_target_0__targetOffsetRotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTA -n "waist_joint_group_parentConstraint1_target_0__targetOffsetRotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 180 1 180 2 180 3 180 4 180 5 180 6 180
		 7 180 8 180 9 180 10 180 11 180 12 180;
createNode animCurveTA -n "waist_joint_group_parentConstraint1_target_0__targetOffsetRotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTU -n "waist_joint_group_parentConstraint1_interpType";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "waist_joint_group_parentConstraint1_waist_animW0";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "waist_joint_parentConstraint1_nodeState";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTU -n "waist_joint_parentConstraint1_target_0__targetWeight";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "waist_joint_parentConstraint1_target_0__targetOffsetTranslateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1.5096774197402095e-16 1 1.5096774197402095e-16
		 2 1.5096774197402095e-16 3 1.5096774197402095e-16 4 1.5096774197402095e-16 5 1.5096774197402095e-16
		 6 1.5096774197402095e-16 7 1.5096774197402095e-16 8 1.5096774197402095e-16 9 1.5096774197402095e-16
		 10 1.5096774197402095e-16 11 1.5096774197402095e-16 12 1.5096774197402095e-16;
createNode animCurveTL -n "waist_joint_parentConstraint1_target_0__targetOffsetTranslateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 5.3290705182007514e-15 1 5.3290705182007514e-15
		 2 5.3290705182007514e-15 3 5.3290705182007514e-15 4 5.3290705182007514e-15 5 5.3290705182007514e-15
		 6 5.3290705182007514e-15 7 5.3290705182007514e-15 8 5.3290705182007514e-15 9 5.3290705182007514e-15
		 10 5.3290705182007514e-15 11 5.3290705182007514e-15 12 5.3290705182007514e-15;
createNode animCurveTL -n "waist_joint_parentConstraint1_target_0__targetOffsetTranslateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 8.2572837456496018e-16 1 8.2572837456496018e-16
		 2 8.2572837456496018e-16 3 8.2572837456496018e-16 4 8.2572837456496018e-16 5 8.2572837456496018e-16
		 6 8.2572837456496018e-16 7 8.2572837456496018e-16 8 8.2572837456496018e-16 9 8.2572837456496018e-16
		 10 8.2572837456496018e-16 11 8.2572837456496018e-16 12 8.2572837456496018e-16;
createNode animCurveTA -n "waist_joint_parentConstraint1_target_0__targetOffsetRotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTA -n "waist_joint_parentConstraint1_target_0__targetOffsetRotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 180 1 180 2 180 3 180 4 180 5 180 6 180
		 7 180 8 180 9 180 10 180 11 180 12 180;
createNode animCurveTA -n "waist_joint_parentConstraint1_target_0__targetOffsetRotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTU -n "waist_joint_parentConstraint1_interpType";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "waist_joint_parentConstraint1_waist_animW0";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "torso_joint_visibility";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "torso_joint_translateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -0.0011407931217588337 1 -0.0011407931217592981
		 2 0.032550058358933986 3 -0.0011407931217595202 4 -0.00114079312175841 5 -0.001140793121758632
		 6 -0.001140793121758743 7 -0.00114079312175841 8 -0.0338890567319311 9 -0.0011407931217589096
		 10 -0.0011407931217588818 11 -0.0011407931217588818 12 -0.0011407931217581879;
createNode animCurveTL -n "torso_joint_translateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0.95638550619584883 1 0.95638550619585239
		 2 0.54238707199466241 3 0.95638550619585061 4 0.95638550619584706 5 0.95638550619584883
		 6 0.9563855061958515 7 0.9563855061958515 8 0.52264219510199794 9 0.95638550619584972
		 10 0.95638550619584972 11 0.95638550619584706 12 0.9563855061958515;
createNode animCurveTL -n "torso_joint_translateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0.0030850101697004473 1 0.0030850101697006416
		 2 0.030467069157138482 3 0.0030850101697001975 4 0.0030850101697001975 5 0.0030850101697001975
		 6 0.0030850101696997534 7 0.0030850101697006416 8 0.083840471736336353 9 0.0030850101697001975
		 10 0.0030850101697010857 11 0.0030850101696995313 12 0.0030850101697006416;
createNode animCurveTA -n "torso_joint_rotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 180 1 172.24818090297813 2 176.22298582381933
		 3 170.3377210008239 4 176.96707679394115 5 173.37430055896212 6 169.65554454817405
		 7 169.79914145782047 8 169.48079481512994 9 175.13474244489987 10 175.28330664097649
		 11 175.4823774147936 12 175.70984295856277;
createNode animCurveTA -n "torso_joint_rotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -5.2710744918690479e-17 1 10.233326627518226
		 2 5.1451498961643747 3 2.3672167769831503 4 2.5041422348448199 5 -2.2798598192754564
		 6 -6.0242576430121577 7 -6.2594458123062502 8 0.24744345657671679 9 3.5976990896121497
		 10 3.7816627329850649 11 0.080770955803297365 12 1.8764578941911285;
createNode animCurveTA -n "torso_joint_rotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 90.000000000000014 1 92.902272698237937
		 2 85.030603391241002 3 87.860131545425489 4 91.275721756720543 5 94.988401697865982
		 6 94.151752489071299 7 92.813673579340502 8 94.267662411547121 9 86.53686765822512
		 10 88.856596243465304 11 90.599675230041385 12 91.724177629519744;
createNode animCurveTU -n "torso_joint_scaleX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "torso_joint_scaleY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "torso_joint_scaleZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "chest_joint_visibility";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "chest_joint_translateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -0.00095793837152943068 1 -0.00095793837152857719
		 2 0.068862738134089607 3 -0.0009579383715281331 4 -0.00095793837153024253 5 -0.00095793837152957639
		 6 -0.00095793837152968742 7 -0.00095793837152902128 8 0.032134188393268426 9 -0.00095793837152981232
		 10 -0.00095793837152999273 11 -0.00095793837152892414 12 -0.00095793837152879924;
createNode animCurveTL -n "chest_joint_translateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1.3121302800685388 1 1.312130280068537
		 2 0.63023069218371486 3 1.3121302800685379 4 1.3121302800685406 5 1.3121302800685415
		 6 1.3121302800685353 7 1.3121302800685379 8 0.80043192410361641 9 1.3121302800685362
		 10 1.3121302800685353 11 1.312130280068537 12 1.3121302800685335;
createNode animCurveTL -n "chest_joint_translateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0.0025930229242777728 1 0.0025930229242767666
		 2 0.13483853585128469 3 0.0025930229242772107 4 0.0025930229242780989 5 0.0025930229242776548
		 6 0.0025930229242789871 7 0.0025930229242767666 8 0.036198286836654159 9 0.0025930229242776548
		 10 0.0025930229242763225 11 0.0025930229242772107 12 0.0025930229242780989;
createNode animCurveTA -n "chest_joint_rotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0.017780772112904006 1 168.19685931723484
		 2 0.43567771528112892 3 -176.82895701881492 4 -353.56029818318052 5 -350.85624757674015
		 6 -344.69399089035085 7 -345.09744389812977 8 -351.39354244955854 9 -176.53407648905332
		 10 -176.61570790414905 11 -184.56285876724618 12 -186.45572711390307;
createNode animCurveTA -n "chest_joint_rotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -179.75204652068518 1 -350.06344065995052
		 2 -190.91980969854137 3 -357.98146563638045 4 -535.91376589460015 5 -547.87377282481043
		 6 -543.31510389242874 7 -542.98032796131997 8 -543.74963505879725 9 -722.0079518988083
		 10 -722.1427752205642 11 -711.34544949083011 12 -711.67054870973232;
createNode animCurveTA -n "chest_joint_rotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -89.908398134871689 1 86.156747762140355
		 2 -84.153776790923217 3 86.623617251424477 4 -86.094481211025496 5 -86.198280812459359
		 6 -85.140053560137133 7 -83.829072502125385 8 -86.299768243367922 9 87.082152398001526
		 10 89.335999796880742 11 86.72074136570582 12 85.481252907769289;
createNode animCurveTU -n "chest_joint_scaleX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "chest_joint_scaleY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "chest_joint_scaleZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_clavicle_joint_visibility";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "L_clavicle_joint_translateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 2.5291562186664862 1 2.5283055961505632
		 2 2.528861890779682 3 2.5288618907796767 4 2.5288618907796749 5 2.5288618907796749
		 6 2.5289299593014967 7 2.5288618907796785 8 2.528861890779682 9 2.528861890779682
		 10 2.5288618907796803 11 2.529180708719144 12 2.5291807087191422;
createNode animCurveTL -n "L_clavicle_joint_translateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -1.4528466920724878 1 -1.4536196264737278
		 2 -1.4536230044910821 3 -1.4536230044910814 4 -1.4536230044910825 5 -1.4536230044910836
		 6 -1.4532447722555586 7 -1.4536230044910825 8 -1.4536230044910829 9 -1.4536230044910825
		 10 -1.4536230044910825 11 -1.4528021749049098 12 -1.4528021749049107;
createNode animCurveTL -n "L_clavicle_joint_translateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 3.2612801348363973e-16 1 0.00016165807443346836
		 2 8.3554471944413677e-05 3 8.3554471947966391e-05 4 8.3554471948188436e-05 5 8.3554471947522302e-05
		 6 2.5236342007239898e-05 7 8.3554471946190034e-05 8 8.3554471945301856e-05 9 8.3554471947078213e-05
		 10 8.3554471947966391e-05 11 3.0980355836263129e-07 12 3.0980356058307734e-07;
createNode animCurveTA -n "L_clavicle_joint_rotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 179.99048206231731 1 192.90640449956408
		 2 360.99428450827776 3 361.40072755869846 4 363.09283990533851 5 186.86766405833788
		 6 183.44663612793408 7 4.1544621226752216 8 4.1544621226752216 9 4.1544621226752216
		 10 4.1544621226752216 11 179.69349629242274 12 179.69349629242274;
createNode animCurveTA -n "L_clavicle_joint_rotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -7.765026077791789e-19 1 9.5463790000977582
		 2 168.54958519149756 3 168.59194461135155 4 168.92743560804692 5 9.2315166046441828
		 6 5.2816737461896057 7 169.27757511657506 8 169.27757511657506 9 169.27757511657506
		 10 169.27757511657506 11 -0.63244950575152692 12 -0.63244950575152425;
createNode animCurveTA -n "L_clavicle_joint_rotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 89.446026375690749 1 96.386086735611514
		 2 254.28036700317588 3 256.33126760174514 4 264.99617179922564 5 106.17286754151374
		 6 93.655637166522794 7 270.60730609004412 8 270.60730609004412 9 270.60730609004412
		 10 270.60730609004412 11 446.33812853662073 12 446.33812853662073;
createNode animCurveTU -n "L_clavicle_joint_scaleX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_clavicle_joint_scaleY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_clavicle_joint_scaleZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_shoulder_joint_visibility";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "L_shoulder_joint_translateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -2.9011855306081342 1 -2.9011855306081422
		 2 -2.9011855306081449 3 -2.9011855306081404 4 -2.9011855306081435 5 -2.9011855306081462
		 6 -2.9011855306081449 7 -2.9011855306081413 8 -2.901185530608144 9 -2.901185530608144
		 10 -2.9011855306081435 11 -2.9011855306081422 12 -2.9011855306081427;
createNode animCurveTL -n "L_shoulder_joint_translateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -8.2813296202743913e-06 1 -8.281329623827105e-06
		 2 -8.2813296247152834e-06 3 -8.281329623827105e-06 4 -8.2813296291561755e-06 5 -8.2813296256034619e-06
		 6 -8.281329623827105e-06 7 -8.2813296291561755e-06 8 -8.2813296273798187e-06 9 -8.2813296344852461e-06
		 10 -8.2813296291561755e-06 11 -8.2813296273798187e-06 12 -8.2813296273798187e-06;
createNode animCurveTL -n "L_shoulder_joint_translateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0.049851685074561052 1 0.049851685074562058
		 2 0.0498516850745645 3 0.049851685074564056 4 0.049851685074561392 5 0.049851685074561836
		 6 0.049851685074567165 7 0.049851685074565832 8 0.049851685074560947 9 0.049851685074561836
		 10 0.049851685074560503 11 0.049851685074560503 12 0.049851685074558727;
createNode animCurveTA -n "L_shoulder_joint_rotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 89.640932384046295 1 183.22808458836809
		 2 312.24246196818848 3 294.41164802011747 4 263.0164259926085 5 262.33679137430761
		 6 135.00167102190846 7 97.371623837312825 8 259.93846963878138 9 84.392789187628253
		 10 84.161895968448931 11 89.324644805863826 12 268.20406695596353;
createNode animCurveTA -n "L_shoulder_joint_rotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0.98442862658361197 1 -66.946141861363301
		 2 -125.3561232308961 3 -174.98354294613958 4 -231.44972119451865 5 -235.81331707075441
		 6 -265.00946800709625 7 -238.21344981544223 8 -245.23118768682048 9 -323.79232690799205
		 10 -339.32182388442249 11 -388.50983092321752 12 -471.22147628210729;
createNode animCurveTA -n "L_shoulder_joint_rotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0.00016354873906421333 1 -17.583434138050869
		 2 -140.25746138165348 3 -105.62492779457106 4 -106.95282995206558 5 -107.84901063712562
		 6 -237.96084859495869 7 -275.8151225567043 8 -110.70013197562881 9 -284.76973248893194
		 10 -291.53210049515656 11 -288.90758771130578 12 -468.01403377025321;
createNode animCurveTU -n "L_shoulder_joint_scaleX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_shoulder_joint_scaleY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_shoulder_joint_scaleZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_elbow_joint_visibility";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "L_elbow_joint_translateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -2.5644891957859421 1 -2.5644891957859404
		 2 -2.5644891957859413 3 -2.5644891957859404 4 -2.5644891957859346 5 -2.5644891957859359
		 6 -2.5644891957859342 7 -2.5644891957859315 8 -2.5644891957859359 9 -2.5644891957859342
		 10 -2.5644891957859368 11 -2.5644891957859377 12 -2.564489195785935;
createNode animCurveTL -n "L_elbow_joint_translateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -0.056054538267271567 1 -0.056054538267272136
		 2 -0.056054538267269471 3 -0.056054538267275605 4 -0.056054538267272136 5 -0.056054538267275689
		 6 -0.056054538267275689 7 -0.056054538267279241 8 -0.056054538267279241 9 -0.056054538267281018
		 10 -0.056054538267275689 11 -0.056054538267267473 12 -0.056054538267269471;
createNode animCurveTL -n "L_elbow_joint_translateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -0.024746736889113663 1 -0.024746736889111887
		 2 -0.02474673688910678 3 -0.024746736889109666 4 -0.024746736889108334 5 -0.024746736889106558
		 6 -0.024746736889103005 7 -0.02474673688911011 8 -0.024746736889112775 9 -0.024746736889107446
		 10 -0.024746736889108334 11 -0.02474673688911011 12 -0.02474673688911011;
createNode animCurveTA -n "L_elbow_joint_rotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 6.3489368043754828 1 5.7200876146956317
		 2 5.4489485852846338 3 165.00834231255314 4 344.1669436452836 5 337.50361873514873
		 6 339.15929052726358 7 339.03238434928528 8 343.56106939499682 9 340.73520018280374
		 10 351.06044417306941 11 375.39790536689696 12 366.50389180013781;
createNode animCurveTA -n "L_elbow_joint_rotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -0.55274204938427585 1 -0.60764584667702348
		 2 -0.39629657472294383 3 160.0997424256131 4 -0.14042762384188331 5 -2.6554108790978921
		 6 -10.282691825731066 7 -9.9218997802554529 8 -18.213141051212485 9 -10.720972523353188
		 10 -12.588549639560426 11 -16.227828345221234 12 -13.609299608979329;
createNode animCurveTA -n "L_elbow_joint_rotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1.2521702697043968 1 57.403349790370306
		 2 87.105956424736078 3 -92.168628012530192 4 77.97980549451006 5 41.342520293425707
		 6 26.781232499080971 7 27.503980974193109 8 9.085006873064442 9 10.369787763406721
		 10 12.751488710371003 11 15.726647991945741 12 44.514776855292958;
createNode animCurveTU -n "L_elbow_joint_scaleX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_elbow_joint_scaleY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_elbow_joint_scaleZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_hand_joint_visibility";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "L_hand_joint_translateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -1.1612867224960652 1 -1.1612867224960635
		 2 -1.1612867224960643 3 -1.1612867224960604 4 -1.1612867224960617 5 -1.1612867224960652
		 6 -1.161286722496063 7 -1.1612867224960635 8 -1.1612867224960648 9 -1.1612867224960648
		 10 -1.1612867224960643 11 -1.161286722496071 12 -1.1612867224960697;
createNode animCurveTL -n "L_hand_joint_translateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -0.010419323044271289 1 -0.010419323044271511
		 2 -0.010419323044269735 3 -0.010419323044272844 4 -0.010419323044273676 5 -0.010419323044269291
		 6 -0.010419323044269291 7 -0.010419323044269291 8 -0.010419323044269291 9 -0.010419323044263962
		 10 -0.010419323044269291 11 -0.010419323044268403 12 -0.010419323044271067;
createNode animCurveTL -n "L_hand_joint_translateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -0.00012695152391550835 1 -0.00012695152391817288
		 2 -0.00012695152391817288 3 -0.00012695152391639652 4 -0.00012695152391550835 5 -0.00012695152392083742
		 6 -0.00012695152392216968 7 -0.00012695152391639652 8 -0.00012695152391639652 9 -0.00012695152391994924
		 10 -0.00012695152391373199 11 -0.00012695152391817288 12 -0.00012695152391994924;
createNode animCurveTA -n "L_hand_joint_rotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -4.765508877298994 1 1.6297888546978425
		 2 2.1037875313580936 3 -11.594217378951191 4 1.907317299404111 5 1.8309676700597111
		 6 1.9126631038526407 7 1.2589865805486247 8 1.249373164728323 9 -3.7471854110995002
		 10 -2.4174027764433239 11 -0.78790902213003688 12 3.8977578716906867;
createNode animCurveTA -n "L_hand_joint_rotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -0.0062633056914738932 1 0.82522287537368411
		 2 3.4886795916048143 3 -3.2855721591314069 4 0.62844934957323995 5 0.69816073658094657
		 6 0.62297402681404779 7 0.91657100694386273 8 0.91693672426863104 9 10.976722282342651
		 10 11.478173425737589 11 11.865106184380846 12 11.733443436081844;
createNode animCurveTA -n "L_hand_joint_rotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0.51405669747557425 1 20.358683266147064
		 2 20.287579325311427 3 26.460590670882894 4 40.601527454288394 5 34.478961518121899
		 6 41.054472632834973 7 -2.3958198982722183 8 -2.9652860456799872 9 -37.11464977608717
		 10 -30.322907351934461 11 -22.315017207318466 12 0.22082637412952044;
createNode animCurveTU -n "L_hand_joint_scaleX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_hand_joint_scaleY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_hand_joint_scaleZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_claw_2_joint_visibility";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "L_claw_2_joint_translateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -3.4145760234172702 1 -3.4145760234172631
		 2 -3.4145760234172666 3 -3.4145760234172675 4 -3.4145760234172657 5 -3.4145760234172666
		 6 -3.4145760234172693 7 -3.4145760234172613 8 -3.4145760234172675 9 -3.4145760234172706
		 10 -3.4145760234172706 11 -3.4145760234172697 12 -3.4145760234172666;
createNode animCurveTL -n "L_claw_2_joint_translateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -0.017585687905880235 1 -0.017585687905877112
		 2 -0.017585687905879277 3 -0.017585687905881109 4 -0.017585687905882885 5 -0.017585687905879333
		 6 -0.017585687905876668 7 -0.017585687905883773 8 -0.017585687905881997 9 -0.017585687905880221
		 10 -0.01758568790587578 11 -0.017585687905877556 12 -0.017585687905874892;
createNode animCurveTL -n "L_claw_2_joint_translateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1.0403867852359507 1 1.0403867852359543
		 2 1.0403867852359538 3 1.0403867852359525 4 1.040386785235953 5 1.0403867852359561
		 6 1.0403867852359561 7 1.0403867852359512 8 1.0403867852359556 9 1.0403867852359543
		 10 1.0403867852359534 11 1.0403867852359543 12 1.0403867852359521;
createNode animCurveTA -n "L_claw_2_joint_rotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -93.626723991686902 1 -93.509183554528519
		 2 -93.626723991686902 3 -93.626723991686902 4 -93.626723991686902 5 -93.626723991686902
		 6 -93.626723991686902 7 -93.626723991686902 8 -93.626723991686902 9 -93.626723991686902
		 10 -93.626723991686902 11 -93.626723991686902 12 -93.626723991686902;
createNode animCurveTA -n "L_claw_2_joint_rotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -163.05476328920153 1 -168.86562161798884
		 2 -163.05476328920153 3 -163.0547632892015 4 -163.05476328920153 5 -163.05476328920153
		 6 -163.05476328920153 7 -163.05476328920153 8 -163.05476328920153 9 -163.05476328920153
		 10 -163.05476328920153 11 -163.05476328920153 12 -163.05476328920153;
createNode animCurveTA -n "L_claw_2_joint_rotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0.29508108226206642 1 0.390201347105186
		 2 0.29508108226206642 3 0.29508108226206642 4 0.29508108226211732 5 0.29508108226206642
		 6 0.29508108226206642 7 0.29508108226206642 8 0.29508108226206642 9 0.29508108226206642
		 10 0.29508108226204099 11 0.29508108226206642 12 0.29508108226206642;
createNode animCurveTU -n "L_claw_2_joint_scaleX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_claw_2_joint_scaleY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_claw_2_joint_scaleZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_claw_2_joint_parentConstraint1_nodeState";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTU -n "L_claw_2_joint_parentConstraint1_target_0__targetWeight";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "L_claw_2_joint_parentConstraint1_target_0__targetOffsetTranslateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 8.8817841970012523e-15 1 8.8817841970012523e-15
		 2 8.8817841970012523e-15 3 8.8817841970012523e-15 4 8.8817841970012523e-15 5 8.8817841970012523e-15
		 6 8.8817841970012523e-15 7 8.8817841970012523e-15 8 8.8817841970012523e-15 9 8.8817841970012523e-15
		 10 8.8817841970012523e-15 11 8.8817841970012523e-15 12 8.8817841970012523e-15;
createNode animCurveTL -n "L_claw_2_joint_parentConstraint1_target_0__targetOffsetTranslateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1.7763568394002505e-14 1 1.7763568394002505e-14
		 2 1.7763568394002505e-14 3 1.7763568394002505e-14 4 1.7763568394002505e-14 5 1.7763568394002505e-14
		 6 1.7763568394002505e-14 7 1.7763568394002505e-14 8 1.7763568394002505e-14 9 1.7763568394002505e-14
		 10 1.7763568394002505e-14 11 1.7763568394002505e-14 12 1.7763568394002505e-14;
createNode animCurveTL -n "L_claw_2_joint_parentConstraint1_target_0__targetOffsetTranslateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 4.7808978997920804e-15 1 4.7808978997920804e-15
		 2 4.7808978997920804e-15 3 4.7808978997920804e-15 4 4.7808978997920804e-15 5 4.7808978997920804e-15
		 6 4.7808978997920804e-15 7 4.7808978997920804e-15 8 4.7808978997920804e-15 9 4.7808978997920804e-15
		 10 4.7808978997920804e-15 11 4.7808978997920804e-15 12 4.7808978997920804e-15;
createNode animCurveTA -n "L_claw_2_joint_parentConstraint1_target_0__targetOffsetRotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 175.52185241409768 1 175.52185241409768
		 2 175.52185241409768 3 175.52185241409768 4 175.52185241409768 5 175.52185241409768
		 6 175.52185241409768 7 175.52185241409768 8 175.52185241409768 9 175.52185241409768
		 10 175.52185241409768 11 175.52185241409768 12 175.52185241409768;
createNode animCurveTA -n "L_claw_2_joint_parentConstraint1_target_0__targetOffsetRotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -1.3851523218565167 1 -1.3851523218565167
		 2 -1.3851523218565167 3 -1.3851523218565167 4 -1.3851523218565167 5 -1.3851523218565167
		 6 -1.3851523218565167 7 -1.3851523218565167 8 -1.3851523218565167 9 -1.3851523218565167
		 10 -1.3851523218565167 11 -1.3851523218565167 12 -1.3851523218565167;
createNode animCurveTA -n "L_claw_2_joint_parentConstraint1_target_0__targetOffsetRotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -16.889594531521677 1 -16.889594531521677
		 2 -16.889594531521677 3 -16.889594531521677 4 -16.889594531521677 5 -16.889594531521677
		 6 -16.889594531521677 7 -16.889594531521677 8 -16.889594531521677 9 -16.889594531521677
		 10 -16.889594531521677 11 -16.889594531521677 12 -16.889594531521677;
createNode animCurveTU -n "L_claw_2_joint_parentConstraint1_interpType";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_claw_2_joint_parentConstraint1_L_claw_2_animW0";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_claw_1_joint_visibility";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "L_claw_1_joint_translateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -3.3915715821890302 1 -3.3915715821890284
		 2 -3.3915715821890267 3 -3.3915715821890311 4 -3.3915715821890275 5 -3.3915715821890284
		 6 -3.391571582189032 7 -3.3915715821890249 8 -3.3915715821890311 9 -3.3915715821890333
		 10 -3.3915715821890329 11 -3.3915715821890307 12 -3.3915715821890275;
createNode animCurveTL -n "L_claw_1_joint_translateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0.11107405765888544 1 0.11107405765889
		 2 0.11107405765888517 3 0.11107405765888601 4 0.11107405765888423 5 0.11107405765888601
		 6 0.11107405765888956 7 0.11107405765888423 8 0.11107405765888601 9 0.11107405765888778
		 10 0.11107405765888956 11 0.11107405765888823 12 0.11107405765888956;
createNode animCurveTL -n "L_claw_1_joint_translateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -1.0913535019615459 1 -1.0913535019615432
		 2 -1.0913535019615417 3 -1.0913535019615459 4 -1.0913535019615459 5 -1.0913535019615415
		 6 -1.0913535019615423 7 -1.091353501961545 8 -1.0913535019615446 9 -1.0913535019615432
		 10 -1.0913535019615423 11 -1.0913535019615388 12 -1.0913535019615459;
createNode animCurveTA -n "L_claw_1_joint_rotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -93.62903558966741 1 -93.62903558966741
		 2 -93.62903558966741 3 -93.62903558966741 4 -93.62903558966741 5 -93.62903558966741
		 6 -93.62903558966741 7 -93.629035589667467 8 -93.62903558966741 9 -93.62903558966741
		 10 -93.62903558966741 11 -93.62903558966741 12 -93.62903558966741;
createNode animCurveTA -n "L_claw_1_joint_rotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 162.17160780612585 1 162.17160780612585
		 2 162.17160780612585 3 162.17160780612585 4 162.17160780612585 5 162.17160780612585
		 6 162.17160780612585 7 162.17160780612585 8 162.17160780612585 9 162.17160780612585
		 10 162.17160780612585 11 162.17160780612585 12 162.17160780612585;
createNode animCurveTA -n "L_claw_1_joint_rotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -1.8757678360256067 1 -1.8757678360256067
		 2 -1.8757678360256067 3 -1.8757678360256067 4 -1.8757678360255559 5 -1.8757678360256067
		 6 -1.8757678360256067 7 -1.8757678360256067 8 -1.8757678360256067 9 -1.8757678360256067
		 10 -1.8757678360256067 11 -1.8757678360256067 12 -1.8757678360256067;
createNode animCurveTU -n "L_claw_1_joint_scaleX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_claw_1_joint_scaleY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_claw_1_joint_scaleZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_claw_1_joint_parentConstraint1_nodeState";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTU -n "L_claw_1_joint_parentConstraint1_target_0__targetWeight";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "L_claw_1_joint_parentConstraint1_target_0__targetOffsetTranslateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 3.5527136788005009e-15 1 3.5527136788005009e-15
		 2 3.5527136788005009e-15 3 3.5527136788005009e-15 4 3.5527136788005009e-15 5 3.5527136788005009e-15
		 6 3.5527136788005009e-15 7 3.5527136788005009e-15 8 3.5527136788005009e-15 9 3.5527136788005009e-15
		 10 3.5527136788005009e-15 11 3.5527136788005009e-15 12 3.5527136788005009e-15;
createNode animCurveTL -n "L_claw_1_joint_parentConstraint1_target_0__targetOffsetTranslateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 2.4868995751603507e-14 1 2.4868995751603507e-14
		 2 2.4868995751603507e-14 3 2.4868995751603507e-14 4 2.4868995751603507e-14 5 2.4868995751603507e-14
		 6 2.4868995751603507e-14 7 2.4868995751603507e-14 8 2.4868995751603507e-14 9 2.4868995751603507e-14
		 10 2.4868995751603507e-14 11 2.4868995751603507e-14 12 2.4868995751603507e-14;
createNode animCurveTL -n "L_claw_1_joint_parentConstraint1_target_0__targetOffsetTranslateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 3.6637359812630166e-15 1 3.6637359812630166e-15
		 2 3.6637359812630166e-15 3 3.6637359812630166e-15 4 3.6637359812630166e-15 5 3.6637359812630166e-15
		 6 3.6637359812630166e-15 7 3.6637359812630166e-15 8 3.6637359812630166e-15 9 3.6637359812630166e-15
		 10 3.6637359812630166e-15 11 3.6637359812630166e-15 12 3.6637359812630166e-15;
createNode animCurveTA -n "L_claw_1_joint_parentConstraint1_target_0__targetOffsetRotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 175.54607336072735 1 175.54607336072735
		 2 175.54607336072735 3 175.54607336072735 4 175.54607336072735 5 175.54607336072735
		 6 175.54607336072735 7 175.54607336072735 8 175.54607336072735 9 175.54607336072735
		 10 175.54607336072735 11 175.54607336072735 12 175.54607336072735;
createNode animCurveTA -n "L_claw_1_joint_parentConstraint1_target_0__targetOffsetRotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1.4139207137446577 1 1.4139207137446577
		 2 1.4139207137446577 3 1.4139207137446577 4 1.4139207137446577 5 1.4139207137446577
		 6 1.4139207137446577 7 1.4139207137446577 8 1.4139207137446577 9 1.4139207137446577
		 10 1.4139207137446577 11 1.4139207137446577 12 1.4139207137446577;
createNode animCurveTA -n "L_claw_1_joint_parentConstraint1_target_0__targetOffsetRotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 17.840488264769458 1 17.840488264769458
		 2 17.840488264769458 3 17.840488264769458 4 17.840488264769458 5 17.840488264769458
		 6 17.840488264769458 7 17.840488264769458 8 17.840488264769458 9 17.840488264769458
		 10 17.840488264769458 11 17.840488264769458 12 17.840488264769458;
createNode animCurveTU -n "L_claw_1_joint_parentConstraint1_interpType";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_claw_1_joint_parentConstraint1_L_claw_1_animW0";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_hand_joint_parentConstraint1_nodeState";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTU -n "L_hand_joint_parentConstraint1_target_0__targetWeight";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "L_hand_joint_parentConstraint1_target_0__targetOffsetTranslateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1.7763568394002505e-15 1 1.7763568394002505e-15
		 2 1.7763568394002505e-15 3 1.7763568394002505e-15 4 1.7763568394002505e-15 5 1.7763568394002505e-15
		 6 1.7763568394002505e-15 7 1.7763568394002505e-15 8 1.7763568394002505e-15 9 1.7763568394002505e-15
		 10 1.7763568394002505e-15 11 1.7763568394002505e-15 12 1.7763568394002505e-15;
createNode animCurveTL -n "L_hand_joint_parentConstraint1_target_0__targetOffsetTranslateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 2.1316282072803006e-14 1 2.1316282072803006e-14
		 2 2.1316282072803006e-14 3 2.1316282072803006e-14 4 2.1316282072803006e-14 5 2.1316282072803006e-14
		 6 2.1316282072803006e-14 7 2.1316282072803006e-14 8 2.1316282072803006e-14 9 2.1316282072803006e-14
		 10 2.1316282072803006e-14 11 2.1316282072803006e-14 12 2.1316282072803006e-14;
createNode animCurveTL -n "L_hand_joint_parentConstraint1_target_0__targetOffsetTranslateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 2.2135071553464059e-15 1 2.2135071553464059e-15
		 2 2.2135071553464059e-15 3 2.2135071553464059e-15 4 2.2135071553464059e-15 5 2.2135071553464059e-15
		 6 2.2135071553464059e-15 7 2.2135071553464059e-15 8 2.2135071553464059e-15 9 2.2135071553464059e-15
		 10 2.2135071553464059e-15 11 2.2135071553464059e-15 12 2.2135071553464059e-15;
createNode animCurveTA -n "L_hand_joint_parentConstraint1_target_0__targetOffsetRotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -88.781931061373115 1 -88.781931061373115
		 2 -88.781931061373115 3 -88.781931061373115 4 -88.781931061373115 5 -88.781931061373115
		 6 -88.781931061373115 7 -88.781931061373115 8 -88.781931061373115 9 -88.781931061373115
		 10 -88.781931061373115 11 -88.781931061373115 12 -88.781931061373115;
createNode animCurveTA -n "L_hand_joint_parentConstraint1_target_0__targetOffsetRotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0.78186198751877456 1 0.78186198751877456
		 2 0.78186198751877456 3 0.78186198751877456 4 0.78186198751877456 5 0.78186198751877456
		 6 0.78186198751877456 7 0.78186198751877456 8 0.78186198751877456 9 0.78186198751877456
		 10 0.78186198751877456 11 0.78186198751877456 12 0.78186198751877456;
createNode animCurveTA -n "L_hand_joint_parentConstraint1_target_0__targetOffsetRotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -179.94947557180799 1 -179.94947557180799
		 2 -179.94947557180799 3 -179.94947557180799 4 -179.94947557180799 5 -179.94947557180799
		 6 -179.94947557180799 7 -179.94947557180799 8 -179.94947557180799 9 -179.94947557180799
		 10 -179.94947557180799 11 -179.94947557180799 12 -179.94947557180799;
createNode animCurveTU -n "L_hand_joint_parentConstraint1_interpType";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_hand_joint_parentConstraint1_L_hand_animW0";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_elbow_joint_parentConstraint1_nodeState";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTU -n "L_elbow_joint_parentConstraint1_target_0__targetWeight";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "L_elbow_joint_parentConstraint1_target_0__targetOffsetTranslateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 8.8817841970012523e-16 1 8.8817841970012523e-16
		 2 8.8817841970012523e-16 3 8.8817841970012523e-16 4 8.8817841970012523e-16 5 8.8817841970012523e-16
		 6 8.8817841970012523e-16 7 8.8817841970012523e-16 8 8.8817841970012523e-16 9 8.8817841970012523e-16
		 10 8.8817841970012523e-16 11 8.8817841970012523e-16 12 8.8817841970012523e-16;
createNode animCurveTL -n "L_elbow_joint_parentConstraint1_target_0__targetOffsetTranslateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1.9539925233402755e-14 1 1.9539925233402755e-14
		 2 1.9539925233402755e-14 3 1.9539925233402755e-14 4 1.9539925233402755e-14 5 1.9539925233402755e-14
		 6 1.9539925233402755e-14 7 1.9539925233402755e-14 8 1.9539925233402755e-14 9 1.9539925233402755e-14
		 10 1.9539925233402755e-14 11 1.9539925233402755e-14 12 1.9539925233402755e-14;
createNode animCurveTL -n "L_elbow_joint_parentConstraint1_target_0__targetOffsetTranslateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 2.2135071553464059e-15 1 2.2135071553464059e-15
		 2 2.2135071553464059e-15 3 2.2135071553464059e-15 4 2.2135071553464059e-15 5 2.2135071553464059e-15
		 6 2.2135071553464059e-15 7 2.2135071553464059e-15 8 2.2135071553464059e-15 9 2.2135071553464059e-15
		 10 2.2135071553464059e-15 11 2.2135071553464059e-15 12 2.2135071553464059e-15;
createNode animCurveTA -n "L_elbow_joint_parentConstraint1_target_0__targetOffsetRotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -84.016999999999953 1 -84.016999999999953
		 2 -84.016999999999953 3 -84.016999999999953 4 -84.016999999999953 5 -84.016999999999953
		 6 -84.016999999999953 7 -84.016999999999953 8 -84.016999999999953 9 -84.016999999999953
		 10 -84.016999999999953 11 -84.016999999999953 12 -84.016999999999953;
createNode animCurveTA -n "L_elbow_joint_parentConstraint1_target_0__targetOffsetRotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0.27125852271447953 1 0.27125852271447953
		 2 0.27125852271447953 3 0.27125852271447953 4 0.27125852271447953 5 0.27125852271447953
		 6 0.27125852271447953 7 0.27125852271447953 8 0.27125852271447953 9 0.27125852271447953
		 10 0.27125852271447953 11 0.27125852271447953 12 0.27125852271447953;
createNode animCurveTA -n "L_elbow_joint_parentConstraint1_target_0__targetOffsetRotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 179.99070851255834 1 179.99070851255834
		 2 179.99070851255834 3 179.99070851255834 4 179.99070851255834 5 179.99070851255834
		 6 179.99070851255834 7 179.99070851255834 8 179.99070851255834 9 179.99070851255834
		 10 179.99070851255834 11 179.99070851255834 12 179.99070851255834;
createNode animCurveTU -n "L_elbow_joint_parentConstraint1_interpType";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_elbow_joint_parentConstraint1_L_elbow_animW0";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_shoulder_joint_parentConstraint1_nodeState";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTU -n "L_shoulder_joint_parentConstraint1_target_0__targetWeight";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "L_shoulder_joint_parentConstraint1_target_0__targetOffsetTranslateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1.7763568394002505e-15 1 1.7763568394002505e-15
		 2 1.7763568394002505e-15 3 1.7763568394002505e-15 4 1.7763568394002505e-15 5 1.7763568394002505e-15
		 6 1.7763568394002505e-15 7 1.7763568394002505e-15 8 1.7763568394002505e-15 9 1.7763568394002505e-15
		 10 1.7763568394002505e-15 11 1.7763568394002505e-15 12 1.7763568394002505e-15;
createNode animCurveTL -n "L_shoulder_joint_parentConstraint1_target_0__targetOffsetTranslateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1.0658141036401503e-14 1 1.0658141036401503e-14
		 2 1.0658141036401503e-14 3 1.0658141036401503e-14 4 1.0658141036401503e-14 5 1.0658141036401503e-14
		 6 1.0658141036401503e-14 7 1.0658141036401503e-14 8 1.0658141036401503e-14 9 1.0658141036401503e-14
		 10 1.0658141036401503e-14 11 1.0658141036401503e-14 12 1.0658141036401503e-14;
createNode animCurveTL -n "L_shoulder_joint_parentConstraint1_target_0__targetOffsetTranslateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1.4016565685892601e-15 1 1.4016565685892601e-15
		 2 1.4016565685892601e-15 3 1.4016565685892601e-15 4 1.4016565685892601e-15 5 1.4016565685892601e-15
		 6 1.4016565685892601e-15 7 1.4016565685892601e-15 8 1.4016565685892601e-15 9 1.4016565685892601e-15
		 10 1.4016565685892601e-15 11 1.4016565685892601e-15 12 1.4016565685892601e-15;
createNode animCurveTA -n "L_shoulder_joint_parentConstraint1_target_0__targetOffsetRotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -90.368586958678975 1 -90.368586958678975
		 2 -90.368586958678975 3 -90.368586958678975 4 -90.368586958678975 5 -90.368586958678975
		 6 -90.368586958678975 7 -90.368586958678975 8 -90.368586958678975 9 -90.368586958678975
		 10 -90.368586958678975 11 -90.368586958678975 12 -90.368586958678975;
createNode animCurveTA -n "L_shoulder_joint_parentConstraint1_target_0__targetOffsetRotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -0.98442864016791198 1 -0.98442864016791198
		 2 -0.98442864016791198 3 -0.98442864016791198 4 -0.98442864016791198 5 -0.98442864016791198
		 6 -0.98442864016791198 7 -0.98442864016791198 8 -0.98442864016791198 9 -0.98442864016791198
		 10 -0.98442864016791198 11 -0.98442864016791198 12 -0.98442864016791198;
createNode animCurveTA -n "L_shoulder_joint_parentConstraint1_target_0__targetOffsetRotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 179.44602637569105 1 179.44602637569105
		 2 179.44602637569105 3 179.44602637569105 4 179.44602637569105 5 179.44602637569105
		 6 179.44602637569105 7 179.44602637569105 8 179.44602637569105 9 179.44602637569105
		 10 179.44602637569105 11 179.44602637569105 12 179.44602637569105;
createNode animCurveTU -n "L_shoulder_joint_parentConstraint1_interpType";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_shoulder_joint_parentConstraint1_L_shoulder_animW0";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_clavicle_joint_parentConstraint1_nodeState";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTU -n "L_clavicle_joint_parentConstraint1_target_0__targetWeight";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "L_clavicle_joint_parentConstraint1_target_0__targetOffsetTranslateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -8.8817841970012523e-16 1 -8.8817841970012523e-16
		 2 -8.8817841970012523e-16 3 -8.8817841970012523e-16 4 -8.8817841970012523e-16 5 -8.8817841970012523e-16
		 6 -8.8817841970012523e-16 7 -8.8817841970012523e-16 8 -8.8817841970012523e-16 9 -8.8817841970012523e-16
		 10 -8.8817841970012523e-16 11 -8.8817841970012523e-16 12 -8.8817841970012523e-16;
createNode animCurveTL -n "L_clavicle_joint_parentConstraint1_target_0__targetOffsetTranslateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1.7763568394002505e-15 1 1.7763568394002505e-15
		 2 1.7763568394002505e-15 3 1.7763568394002505e-15 4 1.7763568394002505e-15 5 1.7763568394002505e-15
		 6 1.7763568394002505e-15 7 1.7763568394002505e-15 8 1.7763568394002505e-15 9 1.7763568394002505e-15
		 10 1.7763568394002505e-15 11 1.7763568394002505e-15 12 1.7763568394002505e-15;
createNode animCurveTL -n "L_clavicle_joint_parentConstraint1_target_0__targetOffsetTranslateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -0.004166570679941136 1 -0.004166570679941136
		 2 -0.004166570679941136 3 -0.004166570679941136 4 -0.004166570679941136 5 -0.004166570679941136
		 6 -0.004166570679941136 7 -0.004166570679941136 8 -0.004166570679941136 9 -0.004166570679941136
		 10 -0.004166570679941136 11 -0.004166570679941136 12 -0.004166570679941136;
createNode animCurveTA -n "L_clavicle_joint_parentConstraint1_target_0__targetOffsetRotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 179.99048206231731 1 179.99048206231731
		 2 179.99048206231731 3 179.99048206231731 4 179.99048206231731 5 179.99048206231731
		 6 179.99048206231731 7 179.99048206231731 8 179.99048206231731 9 179.99048206231731
		 10 179.99048206231731 11 179.99048206231731 12 179.99048206231731;
createNode animCurveTA -n "L_clavicle_joint_parentConstraint1_target_0__targetOffsetRotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 2.3470340980794224e-14 1 2.3470340980794224e-14
		 2 2.3470340980794224e-14 3 2.3470340980794224e-14 4 2.3470340980794224e-14 5 2.3470340980794224e-14
		 6 2.3470340980794224e-14 7 2.3470340980794224e-14 8 2.3470340980794224e-14 9 2.3470340980794224e-14
		 10 2.3470340980794224e-14 11 2.3470340980794224e-14 12 2.3470340980794224e-14;
createNode animCurveTA -n "L_clavicle_joint_parentConstraint1_target_0__targetOffsetRotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 179.44602637569074 1 179.44602637569074
		 2 179.44602637569074 3 179.44602637569074 4 179.44602637569074 5 179.44602637569074
		 6 179.44602637569074 7 179.44602637569074 8 179.44602637569074 9 179.44602637569074
		 10 179.44602637569074 11 179.44602637569074 12 179.44602637569074;
createNode animCurveTU -n "L_clavicle_joint_parentConstraint1_interpType";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "L_clavicle_joint_parentConstraint1_L_clavicle_animW0";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_clavicle_joint_visibility";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "R_clavicle_joint_translateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 2.5291358261316788 1 2.5291358261316752
		 2 2.5293527775143438 3 2.5291358261316752 4 2.52913559566095 5 2.5291358261316752
		 6 2.529135826131677 7 2.5291358261316788 8 2.5280330233704813 9 2.5291358261316823
		 10 2.5291358261316805 11 2.5291358261316823 12 2.5291358261316788;
createNode animCurveTL -n "R_clavicle_joint_translateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1.4528500000000013 1 1.4547579360637493
		 2 1.4552072659047242 3 1.4539375426278405 4 1.4536568490639707 5 1.4536589269631899
		 6 1.4536589269631923 7 1.4536589269631905 8 1.4526727788614835 9 1.4536589269631912
		 10 1.4536589269631903 11 1.4536589269631923 12 1.4536589269631908;
createNode animCurveTL -n "R_clavicle_joint_translateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1.4976950363926322e-08 1 -0.00021883419725998721
		 2 -0.00033855079214006878 3 -7.0649605897532552e-05 4 -3.8889028064703623e-05 5 -3.908874986002786e-05
		 6 -3.9088749859139682e-05 7 -3.9088749862692396e-05 8 -7.6701329728035006e-05 9 -3.908874986047195e-05
		 10 -3.908874986002786e-05 11 -3.9088749861804217e-05 12 -3.9088749859583771e-05;
createNode animCurveTA -n "R_clavicle_joint_rotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -0.0095179376608237973 1 0.11880414942402234
		 2 -0.18361961648080574 3 0.062335723201218253 4 0.6025205470420546 5 0.043727594937678582
		 6 0.043727594937678541 7 0.043727594937679345 8 -7.5948367882808379 9 0.043727594937679672
		 10 0.043727594937678541 11 0.043727594937678936 12 0.043727594937679345;
createNode animCurveTA -n "R_clavicle_joint_rotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 13.041537851648719 2 16.242980987427533
		 3 7.3901125564025154 4 5.4561253823642915 5 5.4899850547197993 6 5.4899850547197993
		 7 5.4899850547197993 8 -0.20797959566593724 9 5.4899850547197993 10 5.4899850547197993
		 11 5.4899850547197993 12 5.4899850547197993;
createNode animCurveTA -n "R_clavicle_joint_rotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 90.553973624309407 1 90.568641206162781
		 2 84.126140859325176 3 90.55861396699872 4 96.41021784101612 5 90.556526526616167
		 6 90.556526526616182 7 90.556526526616196 8 97.445099342741102 9 90.556526526616196
		 10 90.556526526616182 11 90.556526526616196 12 90.556526526616196;
createNode animCurveTU -n "R_clavicle_joint_scaleX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_clavicle_joint_scaleY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_clavicle_joint_scaleZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_shoulder_joint_visibility";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "R_shoulder_joint_translateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 2.9011851199096412 1 2.901209392582655
		 2 2.9012096126244966 3 2.9012119386704791 4 2.9012118633364716 5 2.9012116641080046
		 6 2.901211478062689 7 2.9012113722757298 8 2.90121131496532 9 2.9012119488219485
		 10 2.9012116007733812 11 2.9012115774261504 12 2.9012111370002116;
createNode animCurveTL -n "R_shoulder_joint_translateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -4.1867265750283877e-05 1 -1.5741696433480001e-05
		 2 -1.3158422060399744e-05 3 -1.2283732315765405e-05 4 -1.1976202024754912e-05 5 -1.3318057483502344e-05
		 6 -1.4369469765185272e-05 7 -1.7959204708262178e-05 8 -1.8141090304624186e-05 9 -1.2153208718501674e-05
		 10 -1.6165726002270731e-05 11 -1.6582762187411504e-05 12 -1.9095347614239699e-05;
createNode animCurveTL -n "R_shoulder_joint_translateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -0.04985170764280869 1 -0.049840102133183795
		 2 -0.049840095160518239 3 -0.04985024432975127 4 -0.049849122340754226 5 -0.049847582182713346
		 6 -0.049846777405738063 7 -0.04985063100811038 8 -0.049850174333927022 9 -0.049852951696112147
		 10 -0.049849344464976575 11 -0.049849869850969508 12 -0.049851203608946904;
createNode animCurveTA -n "R_shoulder_joint_rotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 89.640932384024438 1 -36.607081894738961
		 2 33.989364511913585 3 83.756380583968692 4 84.122639866922199 5 84.381810686341112
		 6 80.503974155973538 7 -93.997427717182859 8 -48.538035461589715 9 92.549912971996378
		 10 80.461358471527717 11 79.016588981066263 12 -6.049382422860182;
createNode animCurveTA -n "R_shoulder_joint_rotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0.98442862658363528 1 53.998937830217869
		 2 54.94802094368746 3 25.632180964408285 4 5.8796179215629101 5 -40.363088170893661
		 6 -63.000291607360687 7 -49.160359363596037 8 -94.498637845876871 9 -3.9146517888182264
		 10 32.803153951364123 11 44.024975378741203 12 83.079521944941035;
createNode animCurveTA -n "R_shoulder_joint_rotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0.00016354873871439999 1 -47.36802712716392
		 2 35.154550217403141 3 81.66762466373163 4 83.699478176731617 5 86.527984989354877
		 6 91.094389953763212 7 265.36497739886755 8 216.31858496052928 9 83.743681824283911
		 10 72.09874665375149 11 69.607946585877784 12 -19.306442562659814;
createNode animCurveTU -n "R_shoulder_joint_scaleX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_shoulder_joint_scaleY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_shoulder_joint_scaleZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_elbow_joint_visibility";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "R_elbow_joint_translateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 2.5644867134162519 1 2.5644865004045254
		 2 2.5644867100683548 3 2.5644857345342418 4 2.5644857068213902 5 2.5644879990541121
		 6 2.5644855821423898 7 2.5644856549166271 8 2.564484987725796 9 2.5644911366474545
		 10 2.5644885543610352 11 2.5644887933481932 12 2.5644891419920448;
createNode animCurveTL -n "R_elbow_joint_translateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0.056054372553751522 1 0.05605500930548768
		 2 0.056054290112665939 3 0.056054022074577325 4 0.056054254130108561 5 0.056054332758419534
		 6 0.056054559890240441 7 0.056054415847114569 8 0.056055022243287844 9 0.056052819073876492
		 10 0.056056357789566746 11 0.056056258472873211 12 0.056055937674397427;
createNode animCurveTL -n "R_elbow_joint_translateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0.024762702563725369 1 0.024762704706487781
		 2 0.024762701987315339 3 0.024762701506212181 4 0.024762704003324032 5 0.024762667026792862
		 6 0.02476270455411278 7 0.024762704730834972 8 0.024762692775273099 9 0.024762391923656146
		 10 0.024762610934119245 11 0.02476260102258987 12 0.024762589129253776;
createNode animCurveTA -n "R_elbow_joint_rotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1.6689368621859006 1 1.2551606407264546
		 2 1.7117924069517583 3 2.0767634099341654 4 1.6598650560035435 5 2.7941762222550732
		 6 1.0446248023963749 7 1.3449545296640912 8 -0.18867322799095249 9 7.7357214581069558
		 10 3.7385776036194538 11 3.305678181331793 12 2.2161023102488668;
createNode animCurveTA -n "R_elbow_joint_rotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -0.55274204938449212 1 -0.65963486559232765
		 2 -0.52238932343941635 3 -1.7950167041642486 4 -1.9211750686683562 5 0.56481841313478476
		 6 -1.9367865377329099 7 -1.9534155874443251 8 -1.2670761882811439 9 -3.219301594618829
		 10 1.4831965839298051 11 2.0326632571435126 12 2.705554195877045;
createNode animCurveTA -n "R_elbow_joint_rotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1.2521702697044772 1 38.41219710348998
		 2 -3.235698224263921 3 1.7581292263014354 4 14.499085714983298 5 28.813245352452398
		 6 32.538854216731963 7 23.749811135135971 8 74.430491678387611 9 86.080200872804099
		 10 75.896716608029251 11 61.782015886242391 12 35.775421499510841;
createNode animCurveTU -n "R_elbow_joint_scaleX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_elbow_joint_scaleY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_elbow_joint_scaleZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_hand_joint_visibility";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "R_hand_joint_translateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1.1612822855531491 1 1.161316743151108
		 2 1.1612600783494118 3 1.1612852454930991 4 1.1612710791310317 5 1.16126968388535
		 6 1.1612427040328281 7 1.1612531998886144 8 1.1612448017810193 9 1.1612334356330984
		 10 1.1612314625583906 11 1.1612378102349314 12 1.1612465973934329;
createNode animCurveTL -n "R_hand_joint_translateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0.010417678721604789 1 0.010409888442342918
		 2 0.010392662622020765 3 0.010379083767197983 4 0.010388485038607342 5 0.010389145550880663
		 6 0.01039503168343181 7 0.01036908345377352 8 0.010364909984494464 9 0.010356370336895182
		 10 0.010354432758320709 11 0.010360130986827976 12 0.010365933069074629;
createNode animCurveTL -n "R_hand_joint_translateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 5.1430226097437526e-05 1 5.161301563383347e-05
		 2 5.0887305440561192e-05 3 5.0319906980789142e-05 4 5.0553709494138843e-05 5 5.058965864268572e-05
		 6 5.1620060689039349e-05 7 5.0908959621676075e-05 8 5.1288516998315714e-05 9 5.201245380881403e-05
		 10 5.2171221274655011e-05 11 5.1699364060020514e-05 12 5.1197855706064388e-05;
createNode animCurveTA -n "R_hand_joint_rotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -4.765508877299002 1 -4.5716898599391964
		 2 -6.9794165371978591 3 -7.4051759415221357 4 -7.2447764970121851 5 -7.2170165855150081
		 6 -6.3691749778143114 7 -7.2044945142093528 8 -6.8915642607833059 9 -6.2802348922933584
		 10 -6.1445174904382718 11 -6.5463291024635542 12 -6.9669589278696167;
createNode animCurveTA -n "R_hand_joint_rotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -0.0062633056914031702 1 -0.69248932641024807
		 2 1.7769729970916623 3 0.083539563686793966 4 1.1090889846174521 5 1.1991718480454854
		 6 2.6579113573438171 7 1.8799546200704256 8 2.4023173652924141 9 3.0949797068945002
		 10 3.212958876122658 11 2.8307388378532301 12 2.2912764481718773;
createNode animCurveTA -n "R_hand_joint_rotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0.51405669747574811 1 -31.240364736881443
		 2 -18.19015591948915 3 -43.737477749476163 4 -28.635270374035258 5 -27.267411908887428
		 6 -2.5774525111818747 7 19.64197054595758 8 27.969237161890771 9 40.625436513461125
		 10 43.085024048701875 11 35.495855701188816 12 26.134937890100055;
createNode animCurveTU -n "R_hand_joint_scaleX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_hand_joint_scaleY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_hand_joint_scaleZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_claw_2_joint_visibility";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "R_claw_2_joint_translateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 3.4145330586468834 1 3.4145330586468852
		 2 3.4145330586468887 3 3.4145330586468843 4 3.4145330586468878 5 3.4145330586468901
		 6 3.4145330586468861 7 3.4145330586468834 8 3.4145330586468887 9 3.4145330586468878
		 10 3.4145330586468896 11 3.4145330586468887 12 3.4145330586468852;
createNode animCurveTL -n "R_claw_2_joint_translateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0.017584223717194369 1 0.017584223717197034
		 2 0.017584223717197034 3 0.01758422371719881 4 0.017584223717196146 5 0.017584223717197478
		 6 0.017584223717197034 7 0.017584223717194813 8 0.017584223717197811 9 0.017584223717197922
		 10 0.017584223717194369 11 0.017584223717194369 12 0.017584223717186376;
createNode animCurveTL -n "R_claw_2_joint_translateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -1.0403531935299046 1 -1.0403531935299082
		 2 -1.0403531935299029 3 -1.0403531935299064 4 -1.040353193529906 5 -1.0403531935299037
		 6 -1.0403531935299046 7 -1.0403531935299024 8 -1.0403531935299024 9 -1.0403531935299037
		 10 -1.0403531935299011 11 -1.040353193529902 12 -1.0403531935299037;
createNode animCurveTA -n "R_claw_2_joint_rotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -93.626723991686745 1 -93.626723991686745
		 2 -93.626723991686745 3 -93.626723991686745 4 -93.626723991686745 5 -93.626723991686745
		 6 -93.626723991686745 7 -93.626723991686745 8 -93.626723991686745 9 -93.626723991686745
		 10 -93.626723991686745 11 -93.626723991686745 12 -93.626723991686745;
createNode animCurveTA -n "R_claw_2_joint_rotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -163.05476328920156 1 -163.05476328920156
		 2 -163.05476328920159 3 -163.05476328920159 4 -163.05476328920159 5 -163.05476328920159
		 6 -163.05476328920159 7 -163.05476328920159 8 -163.05476328920156 9 -163.05476328920156
		 10 -163.05476328920156 11 -163.05476328920159 12 -163.05476328920156;
createNode animCurveTA -n "R_claw_2_joint_rotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0.29508108226176111 1 0.29508108226178653
		 2 0.29508108226176111 3 0.29508108226178653 4 0.29508108226178653 5 0.29508108226181201
		 6 0.29508108226176111 7 0.29508108226178653 8 0.29508108226176111 9 0.29508108226176111
		 10 0.29508108226178653 11 0.29508108226176111 12 0.29508108226173563;
createNode animCurveTU -n "R_claw_2_joint_scaleX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_claw_2_joint_scaleY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_claw_2_joint_scaleZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_claw_2_joint_parentConstraint1_nodeState";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTU -n "R_claw_2_joint_parentConstraint1_target_0__targetWeight";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "R_claw_2_joint_parentConstraint1_target_0__targetOffsetTranslateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -0.00035419305385531175 1 -0.00035419305385531175
		 2 -0.00035419305385531175 3 -0.00035419305385531175 4 -0.00035419305385531175 5 -0.00035419305385531175
		 6 -0.00035419305385531175 7 -0.00035419305385531175 8 -0.00035419305385531175 9 -0.00035419305385531175
		 10 -0.00035419305385531175 11 -0.00035419305385531175 12 -0.00035419305385531175;
createNode animCurveTL -n "R_claw_2_joint_parentConstraint1_target_0__targetOffsetTranslateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -0.0031110638235762877 1 -0.0031110638235762877
		 2 -0.0031110638235762877 3 -0.0031110638235762877 4 -0.0031110638235762877 5 -0.0031110638235762877
		 6 -0.0031110638235762877 7 -0.0031110638235762877 8 -0.0031110638235762877 9 -0.0031110638235762877
		 10 -0.0031110638235762877 11 -0.0031110638235762877 12 -0.0031110638235762877;
createNode animCurveTL -n "R_claw_2_joint_parentConstraint1_target_0__targetOffsetTranslateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -0.084713705247059276 1 -0.084713705247059276
		 2 -0.084713705247059276 3 -0.084713705247059276 4 -0.084713705247059276 5 -0.084713705247059276
		 6 -0.084713705247059276 7 -0.084713705247059276 8 -0.084713705247059276 9 -0.084713705247059276
		 10 -0.084713705247059276 11 -0.084713705247059276 12 -0.084713705247059276;
createNode animCurveTA -n "R_claw_2_joint_parentConstraint1_target_0__targetOffsetRotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -2.9763136407876335e-14 1 -2.9763136407876335e-14
		 2 -2.9763136407876335e-14 3 -2.9763136407876335e-14 4 -2.9763136407876335e-14 5 -2.9763136407876335e-14
		 6 -2.9763136407876335e-14 7 -2.9763136407876335e-14 8 -2.9763136407876335e-14 9 -2.9763136407876335e-14
		 10 -2.9763136407876335e-14 11 -2.9763136407876335e-14 12 -2.9763136407876335e-14;
createNode animCurveTA -n "R_claw_2_joint_parentConstraint1_target_0__targetOffsetRotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0.024240622770808462 1 0.024240622770808462
		 2 0.024240622770808462 3 0.024240622770808462 4 0.024240622770808462 5 0.024240622770808462
		 6 0.024240622770808462 7 0.024240622770808462 8 0.024240622770808462 9 0.024240622770808462
		 10 0.024240622770808462 11 0.024240622770808462 12 0.024240622770808462;
createNode animCurveTA -n "R_claw_2_joint_parentConstraint1_target_0__targetOffsetRotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 16.92253402007707 1 16.92253402007707
		 2 16.92253402007707 3 16.92253402007707 4 16.92253402007707 5 16.92253402007707 6 16.92253402007707
		 7 16.92253402007707 8 16.92253402007707 9 16.92253402007707 10 16.92253402007707
		 11 16.92253402007707 12 16.92253402007707;
createNode animCurveTU -n "R_claw_2_joint_parentConstraint1_interpType";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_claw_2_joint_parentConstraint1_R_claw_2_animW0";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_claw_1_joint_visibility";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "R_claw_1_joint_translateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 3.3915580472033167 1 3.3915580472033184
		 2 3.391558047203322 3 3.3915580472033131 4 3.3915580472033211 5 3.391558047203322
		 6 3.3915580472033189 7 3.3915580472033167 8 3.391558047203322 9 3.3915580472033175
		 10 3.3915580472033215 11 3.3915580472033211 12 3.3915580472033184;
createNode animCurveTL -n "R_claw_1_joint_translateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -0.11107496879342893 1 -0.11107496879342982
		 2 -0.11107496879342627 3 -0.11107496879342804 4 -0.11107496879342715 5 -0.11107496879342715
		 6 -0.11107496879342804 7 -0.1110749687934276 8 -0.11107496879342549 9 -0.11107496879342804
		 10 -0.11107496879343159 11 -0.11107496879342982 12 -0.11107496879343692;
createNode animCurveTL -n "R_claw_1_joint_translateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1.091371275305514 1 1.0913712753055087
		 2 1.091371275305514 3 1.0913712753055123 4 1.0913712753055096 5 1.0913712753055131
		 6 1.0913712753055149 7 1.0913712753055163 8 1.0913712753055163 9 1.0913712753055123
		 10 1.0913712753055123 11 1.091371275305514 12 1.0913712753055149;
createNode animCurveTA -n "R_claw_1_joint_rotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -93.629035589667311 1 -93.629035589667367
		 2 -93.629035589667311 3 -93.629035589667311 4 -93.629035589667367 5 -93.629035589667311
		 6 -93.629035589667311 7 -93.629035589667311 8 -93.629035589667311 9 -93.629035589667311
		 10 -93.629035589667311 11 -93.629035589667367 12 -93.629035589667311;
createNode animCurveTA -n "R_claw_1_joint_rotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 162.17160780612582 1 162.17160780612582
		 2 162.17160780612582 3 162.17160780612582 4 162.17160780612579 5 162.17160780612579
		 6 162.17160780612582 7 162.17160780612582 8 162.17160780612582 9 162.17160780612582
		 10 162.17160780612582 11 162.17160780612582 12 162.17160780612582;
createNode animCurveTA -n "R_claw_1_joint_rotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -1.8757678360257086 1 -1.8757678360257595
		 2 -1.8757678360257595 3 -1.8757678360257086 4 -1.8757678360257595 5 -1.8757678360257086
		 6 -1.8757678360257595 7 -1.8757678360257595 8 -1.8757678360257595 9 -1.8757678360257595
		 10 -1.8757678360257595 11 -1.8757678360258103 12 -1.8757678360258103;
createNode animCurveTU -n "R_claw_1_joint_scaleX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_claw_1_joint_scaleY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_claw_1_joint_scaleZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_claw_1_joint_parentConstraint1_nodeState";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTU -n "R_claw_1_joint_parentConstraint1_target_0__targetWeight";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "R_claw_1_joint_parentConstraint1_target_0__targetOffsetTranslateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0.00044015926668627969 1 0.00044015926668627969
		 2 0.00044015926668627969 3 0.00044015926668627969 4 0.00044015926668627969 5 0.00044015926668627969
		 6 0.00044015926668627969 7 0.00044015926668627969 8 0.00044015926668627969 9 0.00044015926668627969
		 10 0.00044015926668627969 11 0.00044015926668627969 12 0.00044015926668627969;
createNode animCurveTL -n "R_claw_1_joint_parentConstraint1_target_0__targetOffsetTranslateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0.0039843899563649643 1 0.0039843899563649643
		 2 0.0039843899563649643 3 0.0039843899563649643 4 0.0039843899563649643 5 0.0039843899563649643
		 6 0.0039843899563649643 7 0.0039843899563649643 8 0.0039843899563649643 9 0.0039843899563649643
		 10 0.0039843899563649643 11 0.0039843899563649643 12 0.0039843899563649643;
createNode animCurveTL -n "R_claw_1_joint_parentConstraint1_target_0__targetOffsetTranslateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0.089530603265327427 1 0.089530603265327427
		 2 0.089530603265327427 3 0.089530603265327427 4 0.089530603265327427 5 0.089530603265327427
		 6 0.089530603265327427 7 0.089530603265327427 8 0.089530603265327427 9 0.089530603265327427
		 10 0.089530603265327427 11 0.089530603265327427 12 0.089530603265327427;
createNode animCurveTA -n "R_claw_1_joint_parentConstraint1_target_0__targetOffsetRotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 4.4754607462807549e-14 1 4.4754607462807549e-14
		 2 4.4754607462807549e-14 3 4.4754607462807549e-14 4 4.4754607462807549e-14 5 4.4754607462807549e-14
		 6 4.4754607462807549e-14 7 4.4754607462807549e-14 8 4.4754607462807549e-14 9 4.4754607462807549e-14
		 10 4.4754607462807549e-14 11 4.4754607462807549e-14 12 4.4754607462807549e-14;
createNode animCurveTA -n "R_claw_1_joint_parentConstraint1_target_0__targetOffsetRotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0.024274839231101384 1 0.024274839231101384
		 2 0.024274839231101384 3 0.024274839231101384 4 0.024274839231101384 5 0.024274839231101384
		 6 0.024274839231101384 7 0.024274839231101384 8 0.024274839231101384 9 0.024274839231101384
		 10 0.024274839231101384 11 0.024274839231101384 12 0.024274839231101384;
createNode animCurveTA -n "R_claw_1_joint_parentConstraint1_target_0__targetOffsetRotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -17.916699966775283 1 -17.916699966775283
		 2 -17.916699966775283 3 -17.916699966775283 4 -17.916699966775283 5 -17.916699966775283
		 6 -17.916699966775283 7 -17.916699966775283 8 -17.916699966775283 9 -17.916699966775283
		 10 -17.916699966775283 11 -17.916699966775283 12 -17.916699966775283;
createNode animCurveTU -n "R_claw_1_joint_parentConstraint1_interpType";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_claw_1_joint_parentConstraint1_R_claw_1_animW0";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_hand_joint_parentConstraint1_nodeState";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTU -n "R_hand_joint_parentConstraint1_target_0__targetWeight";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "R_hand_joint_parentConstraint1_target_0__targetOffsetTranslateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 3.8384933596091741e-06 1 3.8384933596091741e-06
		 2 3.8384933596091741e-06 3 3.8384933596091741e-06 4 3.8384933596091741e-06 5 3.8384933596091741e-06
		 6 3.8384933596091741e-06 7 3.8384933596091741e-06 8 3.8384933596091741e-06 9 3.8384933596091741e-06
		 10 3.8384933596091741e-06 11 3.8384933596091741e-06 12 3.8384933596091741e-06;
createNode animCurveTL -n "R_hand_joint_parentConstraint1_target_0__targetOffsetTranslateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -0.00087824147916748529 1 -0.00087824147916748529
		 2 -0.00087824147916748529 3 -0.00087824147916748529 4 -0.00087824147916748529 5 -0.00087824147916748529
		 6 -0.00087824147916748529 7 -0.00087824147916748529 8 -0.00087824147916748529 9 -0.00087824147916748529
		 10 -0.00087824147916748529 11 -0.00087824147916748529 12 -0.00087824147916748529;
createNode animCurveTL -n "R_hand_joint_parentConstraint1_target_0__targetOffsetTranslateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 6.4439070357268091e-05 1 6.4439070357268091e-05
		 2 6.4439070357268091e-05 3 6.4439070357268091e-05 4 6.4439070357268091e-05 5 6.4439070357268091e-05
		 6 6.4439070357268091e-05 7 6.4439070357268091e-05 8 6.4439070357268091e-05 9 6.4439070357268091e-05
		 10 6.4439070357268091e-05 11 6.4439070357268091e-05 12 6.4439070357268091e-05;
createNode animCurveTA -n "R_hand_joint_parentConstraint1_target_0__targetOffsetRotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 86.537684764103844 1 86.537684764103844
		 2 86.537684764103844 3 86.537684764103844 4 86.537684764103844 5 86.537684764103844
		 6 86.537684764103844 7 86.537684764103844 8 86.537684764103844 9 86.537684764103844
		 10 86.537684764103844 11 86.537684764103844 12 86.537684764103844;
createNode animCurveTA -n "R_hand_joint_parentConstraint1_target_0__targetOffsetRotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -0.78503984416941031 1 -0.78503984416941031
		 2 -0.78503984416941031 3 -0.78503984416941031 4 -0.78503984416941031 5 -0.78503984416941031
		 6 -0.78503984416941031 7 -0.78503984416941031 8 -0.78503984416941031 9 -0.78503984416941031
		 10 -0.78503984416941031 11 -0.78503984416941031 12 -0.78503984416941031;
createNode animCurveTA -n "R_hand_joint_parentConstraint1_target_0__targetOffsetRotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 179.99133878751817 1 179.99133878751817
		 2 179.99133878751817 3 179.99133878751817 4 179.99133878751817 5 179.99133878751817
		 6 179.99133878751817 7 179.99133878751817 8 179.99133878751817 9 179.99133878751817
		 10 179.99133878751817 11 179.99133878751817 12 179.99133878751817;
createNode animCurveTU -n "R_hand_joint_parentConstraint1_interpType";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_hand_joint_parentConstraint1_R_hand_animW0";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_elbow_joint_parentConstraint1_nodeState";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTU -n "R_elbow_joint_parentConstraint1_target_0__targetWeight";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "R_elbow_joint_parentConstraint1_target_0__targetOffsetTranslateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -1.0535123777799527e-06 1 -1.0535123777799527e-06
		 2 -1.0535123777799527e-06 3 -1.0535123777799527e-06 4 -1.0535123777799527e-06 5 -1.0535123777799527e-06
		 6 -1.0535123777799527e-06 7 -1.0535123777799527e-06 8 -1.0535123777799527e-06 9 -1.0535123777799527e-06
		 10 -1.0535123777799527e-06 11 -1.0535123777799527e-06 12 -1.0535123777799527e-06;
createNode animCurveTL -n "R_elbow_joint_parentConstraint1_target_0__targetOffsetTranslateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 4.5747362198866881e-05 1 4.5747362198866881e-05
		 2 4.5747362198866881e-05 3 4.5747362198866881e-05 4 4.5747362198866881e-05 5 4.5747362198866881e-05
		 6 4.5747362198866881e-05 7 4.5747362198866881e-05 8 4.5747362198866881e-05 9 4.5747362198866881e-05
		 10 4.5747362198866881e-05 11 4.5747362198866881e-05 12 4.5747362198866881e-05;
createNode animCurveTL -n "R_elbow_joint_parentConstraint1_target_0__targetOffsetTranslateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -1.9605278150924832e-08 1 -1.9605278150924832e-08
		 2 -1.9605278150924832e-08 3 -1.9605278150924832e-08 4 -1.9605278150924832e-08 5 -1.9605278150924832e-08
		 6 -1.9605278150924832e-08 7 -1.9605278150924832e-08 8 -1.9605278150924832e-08 9 -1.9605278150924832e-08
		 10 -1.9605278150924832e-08 11 -1.9605278150924832e-08 12 -1.9605278150924832e-08;
createNode animCurveTA -n "R_elbow_joint_parentConstraint1_target_0__targetOffsetRotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 91.303000057810465 1 91.303000057810465
		 2 91.303000057810465 3 91.303000057810465 4 91.303000057810465 5 91.303000057810465
		 6 91.303000057810465 7 91.303000057810465 8 91.303000057810465 9 91.303000057810465
		 10 91.303000057810465 11 91.303000057810465 12 91.303000057810465;
createNode animCurveTA -n "R_elbow_joint_parentConstraint1_target_0__targetOffsetRotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -0.27125852271453449 1 -0.27125852271453449
		 2 -0.27125852271453449 3 -0.27125852271453449 4 -0.27125852271453449 5 -0.27125852271453449
		 6 -0.27125852271453449 7 -0.27125852271453449 8 -0.27125852271453449 9 -0.27125852271453449
		 10 -0.27125852271453449 11 -0.27125852271453449 12 -0.27125852271453449;
createNode animCurveTA -n "R_elbow_joint_parentConstraint1_target_0__targetOffsetRotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -179.99070851255843 1 -179.99070851255843
		 2 -179.99070851255843 3 -179.99070851255843 4 -179.99070851255843 5 -179.99070851255843
		 6 -179.99070851255843 7 -179.99070851255843 8 -179.99070851255843 9 -179.99070851255843
		 10 -179.99070851255843 11 -179.99070851255843 12 -179.99070851255843;
createNode animCurveTU -n "R_elbow_joint_parentConstraint1_interpType";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_elbow_joint_parentConstraint1_R_elbow_animW0";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_shoulder_joint_parentConstraint1_nodeState";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTU -n "R_shoulder_joint_parentConstraint1_target_0__targetWeight";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "R_shoulder_joint_parentConstraint1_target_0__targetOffsetTranslateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -3.3821105951403752e-06 1 -3.3821105951403752e-06
		 2 -3.3821105951403752e-06 3 -3.3821105951403752e-06 4 -3.3821105951403752e-06 5 -3.3821105951403752e-06
		 6 -3.3821105951403752e-06 7 -3.3821105951403752e-06 8 -3.3821105951403752e-06 9 -3.3821105951403752e-06
		 10 -3.3821105951403752e-06 11 -3.3821105951403752e-06 12 -3.3821105951403752e-06;
createNode animCurveTL -n "R_shoulder_joint_parentConstraint1_target_0__targetOffsetTranslateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 2.9757690441556406e-05 1 2.9757690441556406e-05
		 2 2.9757690441556406e-05 3 2.9757690441556406e-05 4 2.9757690441556406e-05 5 2.9757690441556406e-05
		 6 2.9757690441556406e-05 7 2.9757690441556406e-05 8 2.9757690441556406e-05 9 2.9757690441556406e-05
		 10 2.9757690441556406e-05 11 2.9757690441556406e-05 12 2.9757690441556406e-05;
createNode animCurveTL -n "R_shoulder_joint_parentConstraint1_target_0__targetOffsetTranslateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 7.3935527145074786e-10 1 7.3935527145074786e-10
		 2 7.3935527145074786e-10 3 7.3935527145074786e-10 4 7.3935527145074786e-10 5 7.3935527145074786e-10
		 6 7.3935527145074786e-10 7 7.3935527145074786e-10 8 7.3935527145074786e-10 9 7.3935527145074786e-10
		 10 7.3935527145074786e-10 11 7.3935527145074786e-10 12 7.3935527145074786e-10;
createNode animCurveTA -n "R_shoulder_joint_parentConstraint1_target_0__targetOffsetRotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 89.631413041321039 1 89.631413041321039
		 2 89.631413041321039 3 89.631413041321039 4 89.631413041321039 5 89.631413041321039
		 6 89.631413041321039 7 89.631413041321039 8 89.631413041321039 9 89.631413041321039
		 10 89.631413041321039 11 89.631413041321039 12 89.631413041321039;
createNode animCurveTA -n "R_shoulder_joint_parentConstraint1_target_0__targetOffsetRotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0.98442864016794573 1 0.98442864016794573
		 2 0.98442864016794573 3 0.98442864016794573 4 0.98442864016794573 5 0.98442864016794573
		 6 0.98442864016794573 7 0.98442864016794573 8 0.98442864016794573 9 0.98442864016794573
		 10 0.98442864016794573 11 0.98442864016794573 12 0.98442864016794573;
createNode animCurveTA -n "R_shoulder_joint_parentConstraint1_target_0__targetOffsetRotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -179.44602637569093 1 -179.44602637569093
		 2 -179.44602637569093 3 -179.44602637569093 4 -179.44602637569093 5 -179.44602637569093
		 6 -179.44602637569093 7 -179.44602637569093 8 -179.44602637569093 9 -179.44602637569093
		 10 -179.44602637569093 11 -179.44602637569093 12 -179.44602637569093;
createNode animCurveTU -n "R_shoulder_joint_parentConstraint1_interpType";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_shoulder_joint_parentConstraint1_R_shoulder_animW0";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_clavicle_joint_parentConstraint1_nodeState";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTU -n "R_clavicle_joint_parentConstraint1_target_0__targetWeight";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "R_clavicle_joint_parentConstraint1_target_0__targetOffsetTranslateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -3.3079275094660687e-06 1 -3.3079275094660687e-06
		 2 -3.3079275094660687e-06 3 -3.3079275094660687e-06 4 -3.3079275094660687e-06 5 -3.3079275094660687e-06
		 6 -3.3079275094660687e-06 7 -3.3079275094660687e-06 8 -3.3079275094660687e-06 9 -3.3079275094660687e-06
		 10 -3.3079275094660687e-06 11 -3.3079275094660687e-06 12 -3.3079275094660687e-06;
createNode animCurveTL -n "R_clavicle_joint_parentConstraint1_target_0__targetOffsetTranslateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -2.0392534805679929e-05 1 -2.0392534805679929e-05
		 2 -2.0392534805679929e-05 3 -2.0392534805679929e-05 4 -2.0392534805679929e-05 5 -2.0392534805679929e-05
		 6 -2.0392534805679929e-05 7 -2.0392534805679929e-05 8 -2.0392534805679929e-05 9 -2.0392534805679929e-05
		 10 -2.0392534805679929e-05 11 -2.0392534805679929e-05 12 -2.0392534805679929e-05;
createNode animCurveTL -n "R_clavicle_joint_parentConstraint1_target_0__targetOffsetTranslateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0.0084549956063402661 1 0.0084549956063402661
		 2 0.0084549956063402661 3 0.0084549956063402661 4 0.0084549956063402661 5 0.0084549956063402661
		 6 0.0084549956063402661 7 0.0084549956063402661 8 0.0084549956063402661 9 0.0084549956063402661
		 10 0.0084549956063402661 11 0.0084549956063402661 12 0.0084549956063402661;
createNode animCurveTA -n "R_clavicle_joint_parentConstraint1_target_0__targetOffsetRotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -0.0095179376608237991 1 -0.0095179376608237991
		 2 -0.0095179376608237991 3 -0.0095179376608237991 4 -0.0095179376608237991 5 -0.0095179376608237991
		 6 -0.0095179376608237991 7 -0.0095179376608237991 8 -0.0095179376608237991 9 -0.0095179376608237991
		 10 -0.0095179376608237991 11 -0.0095179376608237991 12 -0.0095179376608237991;
createNode animCurveTA -n "R_clavicle_joint_parentConstraint1_target_0__targetOffsetRotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 2.3676230105613064e-14 1 2.3676230105613064e-14
		 2 2.3676230105613064e-14 3 2.3676230105613064e-14 4 2.3676230105613064e-14 5 2.3676230105613064e-14
		 6 2.3676230105613064e-14 7 2.3676230105613064e-14 8 2.3676230105613064e-14 9 2.3676230105613064e-14
		 10 2.3676230105613064e-14 11 2.3676230105613064e-14 12 2.3676230105613064e-14;
createNode animCurveTA -n "R_clavicle_joint_parentConstraint1_target_0__targetOffsetRotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -179.44602637569062 1 -179.44602637569062
		 2 -179.44602637569062 3 -179.44602637569062 4 -179.44602637569062 5 -179.44602637569062
		 6 -179.44602637569062 7 -179.44602637569062 8 -179.44602637569062 9 -179.44602637569062
		 10 -179.44602637569062 11 -179.44602637569062 12 -179.44602637569062;
createNode animCurveTU -n "R_clavicle_joint_parentConstraint1_interpType";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "R_clavicle_joint_parentConstraint1_R_clavicle_animW0";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "head_joint_visibility";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "head_joint_translateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 3.6827741525858251 1 4.1575463388322653
		 2 4.6387833639442029 3 4.0621364499841803 4 3.8150993792437156 5 4.132564648276265
		 6 4.1541546894455141 7 4.038627876886455 8 4.5270552265624193 9 3.5719148085030294
		 10 3.7783377839065242 11 4.137550041765147 12 3.9719386812210704;
createNode animCurveTL -n "head_joint_translateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 9.7637787617246887e-16 1 -0.002908550442981106
		 2 0.51308788058717214 3 0.12820056767063148 4 0.085384072127777988 5 0.078584881523632077
		 6 0.09978254508612161 7 0.11951014269356941 8 0.1100883198555862 9 -0.16025788891704762
		 10 0.05314449000585178 11 0.11160198238596009 12 0.12665692192782307;
createNode animCurveTL -n "head_joint_translateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 9.9920072216264089e-16 1 0.13557555937762888
		 2 -0.10811766305899662 3 0.93845792327082522 4 -0.016726528785681927 5 -0.94039912071889287
		 6 -0.64373310307970488 7 -0.45731910667770137 8 -0.34867952444266104 9 1.2732028505788207
		 10 0.063098102023768199 11 -0.24888271432412079 12 0.13865967676358348;
createNode animCurveTA -n "head_joint_rotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 -124.99205970403651 2 -132.2973715603367
		 3 -164.37138204734867 4 -176.74958296656177 5 -150.6054282086516 6 -137.83356438846229
		 7 -124.06520428160975 8 -136.34629592572216 9 -165.36114415523468 10 -1.2043993247629186
		 11 -157.2017458642058 12 -140.74950957663364;
createNode animCurveTA -n "head_joint_rotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 179.99999999999994 1 358.32148865657285
		 2 369.84397479494191 3 371.1321064696815 4 364.28466084927493 5 364.43834074171048
		 6 364.43834074171042 7 365.38905590975065 8 357.87013124150775 9 353.89088456824481
		 10 177.23928386682132 11 355.55894017019597 12 368.2518774706391;
createNode animCurveTA -n "head_joint_rotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -90 1 88.901814122805433 2 101.16568545847962
		 3 83.594285541254322 4 86.403903458945251 5 84.91770108824376 6 84.917701088243774
		 7 85.32665816171226 8 89.550166914037476 9 88.522760790317363 10 -87.16749864667878
		 11 88.540999541470725 12 88.944357261983811;
createNode animCurveTU -n "head_joint_scaleX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "head_joint_scaleY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "head_joint_scaleZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "head_joint_parentConstraint1_nodeState";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTU -n "head_joint_parentConstraint1_target_0__targetWeight";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "head_joint_parentConstraint1_target_0__targetOffsetTranslateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 6.2952245087851975e-16 1 6.2952245087851975e-16
		 2 6.2952245087851975e-16 3 6.2952245087851975e-16 4 6.2952245087851975e-16 5 6.2952245087851975e-16
		 6 6.2952245087851975e-16 7 6.2952245087851975e-16 8 6.2952245087851975e-16 9 6.2952245087851975e-16
		 10 6.2952245087851975e-16 11 6.2952245087851975e-16 12 6.2952245087851975e-16;
createNode animCurveTL -n "head_joint_parentConstraint1_target_0__targetOffsetTranslateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -0.2237152039835717 1 -0.2237152039835717
		 2 -0.2237152039835717 3 -0.2237152039835717 4 -0.2237152039835717 5 -0.2237152039835717
		 6 -0.2237152039835717 7 -0.2237152039835717 8 -0.2237152039835717 9 -0.2237152039835717
		 10 -0.2237152039835717 11 -0.2237152039835717 12 -0.2237152039835717;
createNode animCurveTL -n "head_joint_parentConstraint1_target_0__targetOffsetTranslateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 9.4368957093138306e-16 1 9.4368957093138306e-16
		 2 9.4368957093138306e-16 3 9.4368957093138306e-16 4 9.4368957093138306e-16 5 9.4368957093138306e-16
		 6 9.4368957093138306e-16 7 9.4368957093138306e-16 8 9.4368957093138306e-16 9 9.4368957093138306e-16
		 10 9.4368957093138306e-16 11 9.4368957093138306e-16 12 9.4368957093138306e-16;
createNode animCurveTA -n "head_joint_parentConstraint1_target_0__targetOffsetRotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTA -n "head_joint_parentConstraint1_target_0__targetOffsetRotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 179.99999999999994 1 179.99999999999994
		 2 179.99999999999994 3 179.99999999999994 4 179.99999999999994 5 179.99999999999994
		 6 179.99999999999994 7 179.99999999999994 8 179.99999999999994 9 179.99999999999994
		 10 179.99999999999994 11 179.99999999999994 12 179.99999999999994;
createNode animCurveTA -n "head_joint_parentConstraint1_target_0__targetOffsetRotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTU -n "head_joint_parentConstraint1_interpType";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "head_joint_parentConstraint1_head_animW0";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "chest_joint_parentConstraint1_nodeState";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTU -n "chest_joint_parentConstraint1_target_0__targetWeight";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "chest_joint_parentConstraint1_target_0__targetOffsetTranslateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1.6192231355096379e-16 1 1.6192231355096379e-16
		 2 1.6192231355096379e-16 3 1.6192231355096379e-16 4 1.6192231355096379e-16 5 1.6192231355096379e-16
		 6 1.6192231355096379e-16 7 1.6192231355096379e-16 8 1.6192231355096379e-16 9 1.6192231355096379e-16
		 10 1.6192231355096379e-16 11 1.6192231355096379e-16 12 1.6192231355096379e-16;
createNode animCurveTL -n "chest_joint_parentConstraint1_target_0__targetOffsetTranslateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1.7763568394002505e-15 1 1.7763568394002505e-15
		 2 1.7763568394002505e-15 3 1.7763568394002505e-15 4 1.7763568394002505e-15 5 1.7763568394002505e-15
		 6 1.7763568394002505e-15 7 1.7763568394002505e-15 8 1.7763568394002505e-15 9 1.7763568394002505e-15
		 10 1.7763568394002505e-15 11 1.7763568394002505e-15 12 1.7763568394002505e-15;
createNode animCurveTL -n "chest_joint_parentConstraint1_target_0__targetOffsetTranslateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 2.1163626406917047e-16 1 2.1163626406917047e-16
		 2 2.1163626406917047e-16 3 2.1163626406917047e-16 4 2.1163626406917047e-16 5 2.1163626406917047e-16
		 6 2.1163626406917047e-16 7 2.1163626406917047e-16 8 2.1163626406917047e-16 9 2.1163626406917047e-16
		 10 2.1163626406917047e-16 11 2.1163626406917047e-16 12 2.1163626406917047e-16;
createNode animCurveTA -n "chest_joint_parentConstraint1_target_0__targetOffsetRotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -2.3571281427102532e-14 1 -2.3571281427102532e-14
		 2 -2.3571281427102532e-14 3 -2.3571281427102532e-14 4 -2.3571281427102532e-14 5 -2.3571281427102532e-14
		 6 -2.3571281427102532e-14 7 -2.3571281427102532e-14 8 -2.3571281427102532e-14 9 -2.3571281427102532e-14
		 10 -2.3571281427102532e-14 11 -2.3571281427102532e-14 12 -2.3571281427102532e-14;
createNode animCurveTA -n "chest_joint_parentConstraint1_target_0__targetOffsetRotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -1.0535587382347892e-14 1 -1.0535587382347892e-14
		 2 -1.0535587382347892e-14 3 -1.0535587382347892e-14 4 -1.0535587382347892e-14 5 -1.0535587382347892e-14
		 6 -1.0535587382347892e-14 7 -1.0535587382347892e-14 8 -1.0535587382347892e-14 9 -1.0535587382347892e-14
		 10 -1.0535587382347892e-14 11 -1.0535587382347892e-14 12 -1.0535587382347892e-14;
createNode animCurveTA -n "chest_joint_parentConstraint1_target_0__targetOffsetRotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 89.999999999999972 1 89.999999999999972
		 2 89.999999999999972 3 89.999999999999972 4 89.999999999999972 5 89.999999999999972
		 6 89.999999999999972 7 89.999999999999972 8 89.999999999999972 9 89.999999999999972
		 10 89.999999999999972 11 89.999999999999972 12 89.999999999999972;
createNode animCurveTU -n "chest_joint_parentConstraint1_interpType";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "chest_joint_parentConstraint1_chest_animW0";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "torso_joint_parentConstraint1_nodeState";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTU -n "torso_joint_parentConstraint1_target_0__targetWeight";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "torso_joint_parentConstraint1_target_0__targetOffsetTranslateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -7.7130142550618785e-16 1 -7.7130142550618785e-16
		 2 -7.7130142550618785e-16 3 -7.7130142550618785e-16 4 -7.7130142550618785e-16 5 -7.7130142550618785e-16
		 6 -7.7130142550618785e-16 7 -7.7130142550618785e-16 8 -7.7130142550618785e-16 9 -7.7130142550618785e-16
		 10 -7.7130142550618785e-16 11 -7.7130142550618785e-16 12 -7.7130142550618785e-16;
createNode animCurveTL -n "torso_joint_parentConstraint1_target_0__targetOffsetTranslateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1.7763568394002505e-15 1 1.7763568394002505e-15
		 2 1.7763568394002505e-15 3 1.7763568394002505e-15 4 1.7763568394002505e-15 5 1.7763568394002505e-15
		 6 1.7763568394002505e-15 7 1.7763568394002505e-15 8 1.7763568394002505e-15 9 1.7763568394002505e-15
		 10 1.7763568394002505e-15 11 1.7763568394002505e-15 12 1.7763568394002505e-15;
createNode animCurveTL -n "torso_joint_parentConstraint1_target_0__targetOffsetTranslateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -4.0939474033052647e-16 1 -4.0939474033052647e-16
		 2 -4.0939474033052647e-16 3 -4.0939474033052647e-16 4 -4.0939474033052647e-16 5 -4.0939474033052647e-16
		 6 -4.0939474033052647e-16 7 -4.0939474033052647e-16 8 -4.0939474033052647e-16 9 -4.0939474033052647e-16
		 10 -4.0939474033052647e-16 11 -4.0939474033052647e-16 12 -4.0939474033052647e-16;
createNode animCurveTA -n "torso_joint_parentConstraint1_target_0__targetOffsetRotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 179.75207526437339 1 179.75207526437339
		 2 179.75207526437339 3 179.75207526437339 4 179.75207526437339 5 179.75207526437339
		 6 179.75207526437339 7 179.75207526437339 8 179.75207526437339 9 179.75207526437339
		 10 179.75207526437339 11 179.75207526437339 12 179.75207526437339;
createNode animCurveTA -n "torso_joint_parentConstraint1_target_0__targetOffsetRotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0.018177164636582321 1 0.018177164636582321
		 2 0.018177164636582321 3 0.018177164636582321 4 0.018177164636582321 5 0.018177164636582321
		 6 0.018177164636582321 7 0.018177164636582321 8 0.018177164636582321 9 0.018177164636582321
		 10 0.018177164636582321 11 0.018177164636582321 12 0.018177164636582321;
createNode animCurveTA -n "torso_joint_parentConstraint1_target_0__targetOffsetRotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 -179.90839898802864 1 -179.90839898802864
		 2 -179.90839898802864 3 -179.90839898802864 4 -179.90839898802864 5 -179.90839898802864
		 6 -179.90839898802864 7 -179.90839898802864 8 -179.90839898802864 9 -179.90839898802864
		 10 -179.90839898802864 11 -179.90839898802864 12 -179.90839898802864;
createNode animCurveTU -n "torso_joint_parentConstraint1_interpType";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "torso_joint_parentConstraint1_torso_animW0";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "root_joint_parentConstraint1_nodeState";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTU -n "root_joint_parentConstraint1_target_0__targetWeight";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTL -n "root_joint_parentConstraint1_target_0__targetOffsetTranslateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 9.8607613152626476e-32 1 9.8607613152626476e-32
		 2 9.8607613152626476e-32 3 9.8607613152626476e-32 4 9.8607613152626476e-32 5 9.8607613152626476e-32
		 6 9.8607613152626476e-32 7 9.8607613152626476e-32 8 9.8607613152626476e-32 9 9.8607613152626476e-32
		 10 9.8607613152626476e-32 11 9.8607613152626476e-32 12 9.8607613152626476e-32;
createNode animCurveTL -n "root_joint_parentConstraint1_target_0__targetOffsetTranslateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0.53627884877878262 1 0.53627884877878262
		 2 0.53627884877878262 3 0.53627884877878262 4 0.53627884877878262 5 0.53627884877878262
		 6 0.53627884877878262 7 0.53627884877878262 8 0.53627884877878262 9 0.53627884877878262
		 10 0.53627884877878262 11 0.53627884877878262 12 0.53627884877878262;
createNode animCurveTL -n "root_joint_parentConstraint1_target_0__targetOffsetTranslateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1.3877787807814457e-17 1 1.3877787807814457e-17
		 2 1.3877787807814457e-17 3 1.3877787807814457e-17 4 1.3877787807814457e-17 5 1.3877787807814457e-17
		 6 1.3877787807814457e-17 7 1.3877787807814457e-17 8 1.3877787807814457e-17 9 1.3877787807814457e-17
		 10 1.3877787807814457e-17 11 1.3877787807814457e-17 12 1.3877787807814457e-17;
createNode animCurveTA -n "root_joint_parentConstraint1_target_0__targetOffsetRotateX";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTA -n "root_joint_parentConstraint1_target_0__targetOffsetRotateY";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 180 1 180 2 180 3 180 4 180 5 180 6 180
		 7 180 8 180 9 180 10 180 11 180 12 180;
createNode animCurveTA -n "root_joint_parentConstraint1_target_0__targetOffsetRotateZ";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0;
createNode animCurveTU -n "root_joint_parentConstraint1_interpType";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
createNode animCurveTU -n "root_joint_parentConstraint1_root_animW0";
	setAttr ".tan" 2;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1;
select -ne :time1;
	setAttr ".o" 5;
	setAttr ".unw" 5;
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
connectAttr "root_joint_translateX.o" "C_Robot_RigRN.phl[103]";
connectAttr "root_joint_translateY.o" "C_Robot_RigRN.phl[104]";
connectAttr "root_joint_translateZ.o" "C_Robot_RigRN.phl[105]";
connectAttr "root_joint_rotateX.o" "C_Robot_RigRN.phl[106]";
connectAttr "root_joint_rotateY.o" "C_Robot_RigRN.phl[107]";
connectAttr "root_joint_rotateZ.o" "C_Robot_RigRN.phl[108]";
connectAttr "root_joint_scaleX.o" "C_Robot_RigRN.phl[109]";
connectAttr "root_joint_scaleY.o" "C_Robot_RigRN.phl[110]";
connectAttr "root_joint_scaleZ.o" "C_Robot_RigRN.phl[111]";
connectAttr "root_joint_visibility.o" "C_Robot_RigRN.phl[112]";
connectAttr "waist_joint_translateX.o" "C_Robot_RigRN.phl[113]";
connectAttr "waist_joint_translateY.o" "C_Robot_RigRN.phl[114]";
connectAttr "waist_joint_translateZ.o" "C_Robot_RigRN.phl[115]";
connectAttr "waist_joint_rotateX.o" "C_Robot_RigRN.phl[116]";
connectAttr "waist_joint_rotateY.o" "C_Robot_RigRN.phl[117]";
connectAttr "waist_joint_rotateZ.o" "C_Robot_RigRN.phl[118]";
connectAttr "waist_joint_scaleX.o" "C_Robot_RigRN.phl[119]";
connectAttr "waist_joint_scaleY.o" "C_Robot_RigRN.phl[120]";
connectAttr "waist_joint_scaleZ.o" "C_Robot_RigRN.phl[121]";
connectAttr "waist_joint_visibility.o" "C_Robot_RigRN.phl[122]";
connectAttr "L_hip_joint_translateX.o" "C_Robot_RigRN.phl[123]";
connectAttr "L_hip_joint_translateY.o" "C_Robot_RigRN.phl[124]";
connectAttr "L_hip_joint_translateZ.o" "C_Robot_RigRN.phl[125]";
connectAttr "L_hip_joint_scaleX.o" "C_Robot_RigRN.phl[126]";
connectAttr "L_hip_joint_scaleY.o" "C_Robot_RigRN.phl[127]";
connectAttr "L_hip_joint_scaleZ.o" "C_Robot_RigRN.phl[128]";
connectAttr "L_hip_joint_rotateX.o" "C_Robot_RigRN.phl[129]";
connectAttr "L_hip_joint_rotateY.o" "C_Robot_RigRN.phl[130]";
connectAttr "L_hip_joint_rotateZ.o" "C_Robot_RigRN.phl[131]";
connectAttr "L_hip_joint_visibility.o" "C_Robot_RigRN.phl[132]";
connectAttr "L_knee_joint_scaleX.o" "C_Robot_RigRN.phl[133]";
connectAttr "L_knee_joint_scaleY.o" "C_Robot_RigRN.phl[134]";
connectAttr "L_knee_joint_scaleZ.o" "C_Robot_RigRN.phl[135]";
connectAttr "L_knee_joint_rotateX.o" "C_Robot_RigRN.phl[136]";
connectAttr "L_knee_joint_rotateY.o" "C_Robot_RigRN.phl[137]";
connectAttr "L_knee_joint_rotateZ.o" "C_Robot_RigRN.phl[138]";
connectAttr "L_knee_joint_visibility.o" "C_Robot_RigRN.phl[139]";
connectAttr "L_knee_joint_translateX.o" "C_Robot_RigRN.phl[140]";
connectAttr "L_knee_joint_translateY.o" "C_Robot_RigRN.phl[141]";
connectAttr "L_knee_joint_translateZ.o" "C_Robot_RigRN.phl[142]";
connectAttr "L_ankle_joint_scaleX.o" "C_Robot_RigRN.phl[143]";
connectAttr "L_ankle_joint_scaleY.o" "C_Robot_RigRN.phl[144]";
connectAttr "L_ankle_joint_scaleZ.o" "C_Robot_RigRN.phl[145]";
connectAttr "L_ankle_joint_translateX.o" "C_Robot_RigRN.phl[146]";
connectAttr "L_ankle_joint_translateY.o" "C_Robot_RigRN.phl[147]";
connectAttr "L_ankle_joint_translateZ.o" "C_Robot_RigRN.phl[148]";
connectAttr "L_ankle_joint_visibility.o" "C_Robot_RigRN.phl[149]";
connectAttr "L_ankle_joint_rotateX.o" "C_Robot_RigRN.phl[150]";
connectAttr "L_ankle_joint_rotateY.o" "C_Robot_RigRN.phl[151]";
connectAttr "L_ankle_joint_rotateZ.o" "C_Robot_RigRN.phl[152]";
connectAttr "L_foot_shadow_translateX.o" "C_Robot_RigRN.phl[153]";
connectAttr "L_foot_shadow_translateY.o" "C_Robot_RigRN.phl[154]";
connectAttr "L_foot_shadow_translateZ.o" "C_Robot_RigRN.phl[155]";
connectAttr "L_foot_shadow_rotateX.o" "C_Robot_RigRN.phl[156]";
connectAttr "L_foot_shadow_rotateY.o" "C_Robot_RigRN.phl[157]";
connectAttr "L_foot_shadow_rotateZ.o" "C_Robot_RigRN.phl[158]";
connectAttr "L_foot_shadow_scaleX.o" "C_Robot_RigRN.phl[159]";
connectAttr "L_foot_shadow_scaleY.o" "C_Robot_RigRN.phl[160]";
connectAttr "L_foot_shadow_scaleZ.o" "C_Robot_RigRN.phl[161]";
connectAttr "L_foot_shadow_visibility.o" "C_Robot_RigRN.phl[162]";
connectAttr "L_toe_shadow_visibility.o" "C_Robot_RigRN.phl[163]";
connectAttr "L_toe_shadow_translateX.o" "C_Robot_RigRN.phl[164]";
connectAttr "L_toe_shadow_translateY.o" "C_Robot_RigRN.phl[165]";
connectAttr "L_toe_shadow_translateZ.o" "C_Robot_RigRN.phl[166]";
connectAttr "L_toe_shadow_rotateX.o" "C_Robot_RigRN.phl[167]";
connectAttr "L_toe_shadow_rotateY.o" "C_Robot_RigRN.phl[168]";
connectAttr "L_toe_shadow_rotateZ.o" "C_Robot_RigRN.phl[169]";
connectAttr "L_toe_shadow_scaleX.o" "C_Robot_RigRN.phl[170]";
connectAttr "L_toe_shadow_scaleY.o" "C_Robot_RigRN.phl[171]";
connectAttr "L_toe_shadow_scaleZ.o" "C_Robot_RigRN.phl[172]";
connectAttr "L_foot_parentConstraint1_nodeState.o" "C_Robot_RigRN.phl[173]";
connectAttr "L_foot_parentConstraint1_target_0__targetWeight.o" "C_Robot_RigRN.phl[174]"
		;
connectAttr "L_foot_parentConstraint1_target_0__targetOffsetTranslateX.o" "C_Robot_RigRN.phl[175]"
		;
connectAttr "L_foot_parentConstraint1_target_0__targetOffsetTranslateY.o" "C_Robot_RigRN.phl[176]"
		;
connectAttr "L_foot_parentConstraint1_target_0__targetOffsetTranslateZ.o" "C_Robot_RigRN.phl[177]"
		;
connectAttr "L_foot_parentConstraint1_target_0__targetOffsetRotateX.o" "C_Robot_RigRN.phl[178]"
		;
connectAttr "L_foot_parentConstraint1_target_0__targetOffsetRotateY.o" "C_Robot_RigRN.phl[179]"
		;
connectAttr "L_foot_parentConstraint1_target_0__targetOffsetRotateZ.o" "C_Robot_RigRN.phl[180]"
		;
connectAttr "L_foot_parentConstraint1_L_ball_2_jointW0.o" "C_Robot_RigRN.phl[181]"
		;
connectAttr "L_foot_parentConstraint1_interpType.o" "C_Robot_RigRN.phl[182]";
connectAttr "effector7_translateX.o" "C_Robot_RigRN.phl[183]";
connectAttr "effector7_translateY.o" "C_Robot_RigRN.phl[184]";
connectAttr "effector7_translateZ.o" "C_Robot_RigRN.phl[185]";
connectAttr "effector7_visibility.o" "C_Robot_RigRN.phl[186]";
connectAttr "effector7_rotateX.o" "C_Robot_RigRN.phl[187]";
connectAttr "effector7_rotateY.o" "C_Robot_RigRN.phl[188]";
connectAttr "effector7_rotateZ.o" "C_Robot_RigRN.phl[189]";
connectAttr "effector7_scaleX.o" "C_Robot_RigRN.phl[190]";
connectAttr "effector7_scaleY.o" "C_Robot_RigRN.phl[191]";
connectAttr "effector7_scaleZ.o" "C_Robot_RigRN.phl[192]";
connectAttr "effector7_hideDisplay.o" "C_Robot_RigRN.phl[193]";
connectAttr "R_hip_joint_translateX.o" "C_Robot_RigRN.phl[194]";
connectAttr "R_hip_joint_translateY.o" "C_Robot_RigRN.phl[195]";
connectAttr "R_hip_joint_translateZ.o" "C_Robot_RigRN.phl[196]";
connectAttr "R_hip_joint_scaleX.o" "C_Robot_RigRN.phl[197]";
connectAttr "R_hip_joint_scaleY.o" "C_Robot_RigRN.phl[198]";
connectAttr "R_hip_joint_scaleZ.o" "C_Robot_RigRN.phl[199]";
connectAttr "R_hip_joint_rotateX.o" "C_Robot_RigRN.phl[200]";
connectAttr "R_hip_joint_rotateY.o" "C_Robot_RigRN.phl[201]";
connectAttr "R_hip_joint_rotateZ.o" "C_Robot_RigRN.phl[202]";
connectAttr "R_hip_joint_visibility.o" "C_Robot_RigRN.phl[203]";
connectAttr "R_knee_joint_scaleX.o" "C_Robot_RigRN.phl[204]";
connectAttr "R_knee_joint_scaleY.o" "C_Robot_RigRN.phl[205]";
connectAttr "R_knee_joint_scaleZ.o" "C_Robot_RigRN.phl[206]";
connectAttr "R_knee_joint_rotateX.o" "C_Robot_RigRN.phl[207]";
connectAttr "R_knee_joint_rotateY.o" "C_Robot_RigRN.phl[208]";
connectAttr "R_knee_joint_rotateZ.o" "C_Robot_RigRN.phl[209]";
connectAttr "R_knee_joint_visibility.o" "C_Robot_RigRN.phl[210]";
connectAttr "R_knee_joint_translateX.o" "C_Robot_RigRN.phl[211]";
connectAttr "R_knee_joint_translateY.o" "C_Robot_RigRN.phl[212]";
connectAttr "R_knee_joint_translateZ.o" "C_Robot_RigRN.phl[213]";
connectAttr "R_ankle_joint_translateX.o" "C_Robot_RigRN.phl[214]";
connectAttr "R_ankle_joint_translateY.o" "C_Robot_RigRN.phl[215]";
connectAttr "R_ankle_joint_translateZ.o" "C_Robot_RigRN.phl[216]";
connectAttr "R_ankle_joint_visibility.o" "C_Robot_RigRN.phl[217]";
connectAttr "R_ankle_joint_rotateX.o" "C_Robot_RigRN.phl[218]";
connectAttr "R_ankle_joint_rotateY.o" "C_Robot_RigRN.phl[219]";
connectAttr "R_ankle_joint_rotateZ.o" "C_Robot_RigRN.phl[220]";
connectAttr "R_ankle_joint_scaleX.o" "C_Robot_RigRN.phl[221]";
connectAttr "R_ankle_joint_scaleY.o" "C_Robot_RigRN.phl[222]";
connectAttr "R_ankle_joint_scaleZ.o" "C_Robot_RigRN.phl[223]";
connectAttr "effector8_translateX.o" "C_Robot_RigRN.phl[224]";
connectAttr "effector8_translateY.o" "C_Robot_RigRN.phl[225]";
connectAttr "effector8_translateZ.o" "C_Robot_RigRN.phl[226]";
connectAttr "effector8_visibility.o" "C_Robot_RigRN.phl[227]";
connectAttr "effector8_rotateX.o" "C_Robot_RigRN.phl[228]";
connectAttr "effector8_rotateY.o" "C_Robot_RigRN.phl[229]";
connectAttr "effector8_rotateZ.o" "C_Robot_RigRN.phl[230]";
connectAttr "effector8_scaleX.o" "C_Robot_RigRN.phl[231]";
connectAttr "effector8_scaleY.o" "C_Robot_RigRN.phl[232]";
connectAttr "effector8_scaleZ.o" "C_Robot_RigRN.phl[233]";
connectAttr "effector8_hideDisplay.o" "C_Robot_RigRN.phl[234]";
connectAttr "R_foot_shadow_translateX.o" "C_Robot_RigRN.phl[235]";
connectAttr "R_foot_shadow_translateY.o" "C_Robot_RigRN.phl[236]";
connectAttr "R_foot_shadow_translateZ.o" "C_Robot_RigRN.phl[237]";
connectAttr "R_foot_shadow_rotateX.o" "C_Robot_RigRN.phl[238]";
connectAttr "R_foot_shadow_rotateY.o" "C_Robot_RigRN.phl[239]";
connectAttr "R_foot_shadow_rotateZ.o" "C_Robot_RigRN.phl[240]";
connectAttr "R_foot_shadow_scaleX.o" "C_Robot_RigRN.phl[241]";
connectAttr "R_foot_shadow_scaleY.o" "C_Robot_RigRN.phl[242]";
connectAttr "R_foot_shadow_scaleZ.o" "C_Robot_RigRN.phl[243]";
connectAttr "R_foot_shadow_visibility.o" "C_Robot_RigRN.phl[244]";
connectAttr "R_toe_shadow_translateX.o" "C_Robot_RigRN.phl[245]";
connectAttr "R_toe_shadow_translateY.o" "C_Robot_RigRN.phl[246]";
connectAttr "R_toe_shadow_translateZ.o" "C_Robot_RigRN.phl[247]";
connectAttr "R_toe_shadow_rotateX.o" "C_Robot_RigRN.phl[248]";
connectAttr "R_toe_shadow_rotateY.o" "C_Robot_RigRN.phl[249]";
connectAttr "R_toe_shadow_rotateZ.o" "C_Robot_RigRN.phl[250]";
connectAttr "R_toe_shadow_visibility.o" "C_Robot_RigRN.phl[251]";
connectAttr "R_toe_shadow_scaleX.o" "C_Robot_RigRN.phl[252]";
connectAttr "R_toe_shadow_scaleY.o" "C_Robot_RigRN.phl[253]";
connectAttr "R_toe_shadow_scaleZ.o" "C_Robot_RigRN.phl[254]";
connectAttr "R_toe_parentConstraint1_nodeState.o" "C_Robot_RigRN.phl[255]";
connectAttr "R_toe_parentConstraint1_target_0__targetWeight.o" "C_Robot_RigRN.phl[256]"
		;
connectAttr "R_toe_parentConstraint1_target_0__targetOffsetTranslateX.o" "C_Robot_RigRN.phl[257]"
		;
connectAttr "R_toe_parentConstraint1_target_0__targetOffsetTranslateY.o" "C_Robot_RigRN.phl[258]"
		;
connectAttr "R_toe_parentConstraint1_target_0__targetOffsetTranslateZ.o" "C_Robot_RigRN.phl[259]"
		;
connectAttr "R_toe_parentConstraint1_target_0__targetOffsetRotateX.o" "C_Robot_RigRN.phl[260]"
		;
connectAttr "R_toe_parentConstraint1_target_0__targetOffsetRotateY.o" "C_Robot_RigRN.phl[261]"
		;
connectAttr "R_toe_parentConstraint1_target_0__targetOffsetRotateZ.o" "C_Robot_RigRN.phl[262]"
		;
connectAttr "R_toe_parentConstraint1_R_toe_jointW0.o" "C_Robot_RigRN.phl[263]";
connectAttr "R_toe_parentConstraint1_interpType.o" "C_Robot_RigRN.phl[264]";
connectAttr "R_foot_parentConstraint1_nodeState.o" "C_Robot_RigRN.phl[265]";
connectAttr "R_foot_parentConstraint1_target_0__targetWeight.o" "C_Robot_RigRN.phl[266]"
		;
connectAttr "R_foot_parentConstraint1_target_0__targetOffsetTranslateX.o" "C_Robot_RigRN.phl[267]"
		;
connectAttr "R_foot_parentConstraint1_target_0__targetOffsetTranslateY.o" "C_Robot_RigRN.phl[268]"
		;
connectAttr "R_foot_parentConstraint1_target_0__targetOffsetTranslateZ.o" "C_Robot_RigRN.phl[269]"
		;
connectAttr "R_foot_parentConstraint1_target_0__targetOffsetRotateX.o" "C_Robot_RigRN.phl[270]"
		;
connectAttr "R_foot_parentConstraint1_target_0__targetOffsetRotateY.o" "C_Robot_RigRN.phl[271]"
		;
connectAttr "R_foot_parentConstraint1_target_0__targetOffsetRotateZ.o" "C_Robot_RigRN.phl[272]"
		;
connectAttr "R_foot_parentConstraint1_R_ball_2_jointW0.o" "C_Robot_RigRN.phl[273]"
		;
connectAttr "R_foot_parentConstraint1_interpType.o" "C_Robot_RigRN.phl[274]";
connectAttr "waist_joint_group_parentConstraint1_nodeState.o" "C_Robot_RigRN.phl[275]"
		;
connectAttr "waist_joint_group_parentConstraint1_target_0__targetWeight.o" "C_Robot_RigRN.phl[276]"
		;
connectAttr "waist_joint_group_parentConstraint1_target_0__targetOffsetTranslateX.o" "C_Robot_RigRN.phl[277]"
		;
connectAttr "waist_joint_group_parentConstraint1_target_0__targetOffsetTranslateY.o" "C_Robot_RigRN.phl[278]"
		;
connectAttr "waist_joint_group_parentConstraint1_target_0__targetOffsetTranslateZ.o" "C_Robot_RigRN.phl[279]"
		;
connectAttr "waist_joint_group_parentConstraint1_target_0__targetOffsetRotateX.o" "C_Robot_RigRN.phl[280]"
		;
connectAttr "waist_joint_group_parentConstraint1_target_0__targetOffsetRotateY.o" "C_Robot_RigRN.phl[281]"
		;
connectAttr "waist_joint_group_parentConstraint1_target_0__targetOffsetRotateZ.o" "C_Robot_RigRN.phl[282]"
		;
connectAttr "waist_joint_group_parentConstraint1_waist_animW0.o" "C_Robot_RigRN.phl[283]"
		;
connectAttr "waist_joint_group_parentConstraint1_interpType.o" "C_Robot_RigRN.phl[284]"
		;
connectAttr "waist_joint_parentConstraint1_nodeState.o" "C_Robot_RigRN.phl[285]"
		;
connectAttr "waist_joint_parentConstraint1_target_0__targetWeight.o" "C_Robot_RigRN.phl[286]"
		;
connectAttr "waist_joint_parentConstraint1_target_0__targetOffsetTranslateX.o" "C_Robot_RigRN.phl[287]"
		;
connectAttr "waist_joint_parentConstraint1_target_0__targetOffsetTranslateY.o" "C_Robot_RigRN.phl[288]"
		;
connectAttr "waist_joint_parentConstraint1_target_0__targetOffsetTranslateZ.o" "C_Robot_RigRN.phl[289]"
		;
connectAttr "waist_joint_parentConstraint1_target_0__targetOffsetRotateX.o" "C_Robot_RigRN.phl[290]"
		;
connectAttr "waist_joint_parentConstraint1_target_0__targetOffsetRotateY.o" "C_Robot_RigRN.phl[291]"
		;
connectAttr "waist_joint_parentConstraint1_target_0__targetOffsetRotateZ.o" "C_Robot_RigRN.phl[292]"
		;
connectAttr "waist_joint_parentConstraint1_waist_animW0.o" "C_Robot_RigRN.phl[293]"
		;
connectAttr "waist_joint_parentConstraint1_interpType.o" "C_Robot_RigRN.phl[294]"
		;
connectAttr "torso_joint_translateX.o" "C_Robot_RigRN.phl[295]";
connectAttr "torso_joint_translateY.o" "C_Robot_RigRN.phl[296]";
connectAttr "torso_joint_translateZ.o" "C_Robot_RigRN.phl[297]";
connectAttr "torso_joint_rotateX.o" "C_Robot_RigRN.phl[298]";
connectAttr "torso_joint_rotateY.o" "C_Robot_RigRN.phl[299]";
connectAttr "torso_joint_rotateZ.o" "C_Robot_RigRN.phl[300]";
connectAttr "torso_joint_scaleX.o" "C_Robot_RigRN.phl[301]";
connectAttr "torso_joint_scaleY.o" "C_Robot_RigRN.phl[302]";
connectAttr "torso_joint_scaleZ.o" "C_Robot_RigRN.phl[303]";
connectAttr "torso_joint_visibility.o" "C_Robot_RigRN.phl[304]";
connectAttr "chest_joint_scaleX.o" "C_Robot_RigRN.phl[305]";
connectAttr "chest_joint_scaleY.o" "C_Robot_RigRN.phl[306]";
connectAttr "chest_joint_scaleZ.o" "C_Robot_RigRN.phl[307]";
connectAttr "chest_joint_translateX.o" "C_Robot_RigRN.phl[308]";
connectAttr "chest_joint_translateY.o" "C_Robot_RigRN.phl[309]";
connectAttr "chest_joint_translateZ.o" "C_Robot_RigRN.phl[310]";
connectAttr "chest_joint_rotateX.o" "C_Robot_RigRN.phl[311]";
connectAttr "chest_joint_rotateY.o" "C_Robot_RigRN.phl[312]";
connectAttr "chest_joint_rotateZ.o" "C_Robot_RigRN.phl[313]";
connectAttr "chest_joint_visibility.o" "C_Robot_RigRN.phl[314]";
connectAttr "L_clavicle_joint_translateX.o" "C_Robot_RigRN.phl[315]";
connectAttr "L_clavicle_joint_translateY.o" "C_Robot_RigRN.phl[316]";
connectAttr "L_clavicle_joint_translateZ.o" "C_Robot_RigRN.phl[317]";
connectAttr "L_clavicle_joint_rotateX.o" "C_Robot_RigRN.phl[318]";
connectAttr "L_clavicle_joint_rotateY.o" "C_Robot_RigRN.phl[319]";
connectAttr "L_clavicle_joint_rotateZ.o" "C_Robot_RigRN.phl[320]";
connectAttr "L_clavicle_joint_scaleX.o" "C_Robot_RigRN.phl[321]";
connectAttr "L_clavicle_joint_scaleY.o" "C_Robot_RigRN.phl[322]";
connectAttr "L_clavicle_joint_scaleZ.o" "C_Robot_RigRN.phl[323]";
connectAttr "L_clavicle_joint_visibility.o" "C_Robot_RigRN.phl[324]";
connectAttr "L_shoulder_joint_translateX.o" "C_Robot_RigRN.phl[325]";
connectAttr "L_shoulder_joint_translateY.o" "C_Robot_RigRN.phl[326]";
connectAttr "L_shoulder_joint_translateZ.o" "C_Robot_RigRN.phl[327]";
connectAttr "L_shoulder_joint_rotateX.o" "C_Robot_RigRN.phl[328]";
connectAttr "L_shoulder_joint_rotateY.o" "C_Robot_RigRN.phl[329]";
connectAttr "L_shoulder_joint_rotateZ.o" "C_Robot_RigRN.phl[330]";
connectAttr "L_shoulder_joint_scaleX.o" "C_Robot_RigRN.phl[331]";
connectAttr "L_shoulder_joint_scaleY.o" "C_Robot_RigRN.phl[332]";
connectAttr "L_shoulder_joint_scaleZ.o" "C_Robot_RigRN.phl[333]";
connectAttr "L_shoulder_joint_visibility.o" "C_Robot_RigRN.phl[334]";
connectAttr "L_elbow_joint_translateX.o" "C_Robot_RigRN.phl[335]";
connectAttr "L_elbow_joint_translateY.o" "C_Robot_RigRN.phl[336]";
connectAttr "L_elbow_joint_translateZ.o" "C_Robot_RigRN.phl[337]";
connectAttr "L_elbow_joint_rotateX.o" "C_Robot_RigRN.phl[338]";
connectAttr "L_elbow_joint_rotateY.o" "C_Robot_RigRN.phl[339]";
connectAttr "L_elbow_joint_rotateZ.o" "C_Robot_RigRN.phl[340]";
connectAttr "L_elbow_joint_scaleX.o" "C_Robot_RigRN.phl[341]";
connectAttr "L_elbow_joint_scaleY.o" "C_Robot_RigRN.phl[342]";
connectAttr "L_elbow_joint_scaleZ.o" "C_Robot_RigRN.phl[343]";
connectAttr "L_elbow_joint_visibility.o" "C_Robot_RigRN.phl[344]";
connectAttr "L_hand_joint_translateX.o" "C_Robot_RigRN.phl[345]";
connectAttr "L_hand_joint_translateY.o" "C_Robot_RigRN.phl[346]";
connectAttr "L_hand_joint_translateZ.o" "C_Robot_RigRN.phl[347]";
connectAttr "L_hand_joint_rotateX.o" "C_Robot_RigRN.phl[348]";
connectAttr "L_hand_joint_rotateY.o" "C_Robot_RigRN.phl[349]";
connectAttr "L_hand_joint_rotateZ.o" "C_Robot_RigRN.phl[350]";
connectAttr "L_hand_joint_scaleX.o" "C_Robot_RigRN.phl[351]";
connectAttr "L_hand_joint_scaleY.o" "C_Robot_RigRN.phl[352]";
connectAttr "L_hand_joint_scaleZ.o" "C_Robot_RigRN.phl[353]";
connectAttr "L_hand_joint_visibility.o" "C_Robot_RigRN.phl[354]";
connectAttr "L_claw_2_joint_translateX.o" "C_Robot_RigRN.phl[355]";
connectAttr "L_claw_2_joint_translateY.o" "C_Robot_RigRN.phl[356]";
connectAttr "L_claw_2_joint_translateZ.o" "C_Robot_RigRN.phl[357]";
connectAttr "L_claw_2_joint_rotateX.o" "C_Robot_RigRN.phl[358]";
connectAttr "L_claw_2_joint_rotateY.o" "C_Robot_RigRN.phl[359]";
connectAttr "L_claw_2_joint_rotateZ.o" "C_Robot_RigRN.phl[360]";
connectAttr "L_claw_2_joint_visibility.o" "C_Robot_RigRN.phl[361]";
connectAttr "L_claw_2_joint_scaleX.o" "C_Robot_RigRN.phl[362]";
connectAttr "L_claw_2_joint_scaleY.o" "C_Robot_RigRN.phl[363]";
connectAttr "L_claw_2_joint_scaleZ.o" "C_Robot_RigRN.phl[364]";
connectAttr "L_claw_2_joint_parentConstraint1_nodeState.o" "C_Robot_RigRN.phl[365]"
		;
connectAttr "L_claw_2_joint_parentConstraint1_target_0__targetWeight.o" "C_Robot_RigRN.phl[366]"
		;
connectAttr "L_claw_2_joint_parentConstraint1_target_0__targetOffsetTranslateX.o" "C_Robot_RigRN.phl[367]"
		;
connectAttr "L_claw_2_joint_parentConstraint1_target_0__targetOffsetTranslateY.o" "C_Robot_RigRN.phl[368]"
		;
connectAttr "L_claw_2_joint_parentConstraint1_target_0__targetOffsetTranslateZ.o" "C_Robot_RigRN.phl[369]"
		;
connectAttr "L_claw_2_joint_parentConstraint1_target_0__targetOffsetRotateX.o" "C_Robot_RigRN.phl[370]"
		;
connectAttr "L_claw_2_joint_parentConstraint1_target_0__targetOffsetRotateY.o" "C_Robot_RigRN.phl[371]"
		;
connectAttr "L_claw_2_joint_parentConstraint1_target_0__targetOffsetRotateZ.o" "C_Robot_RigRN.phl[372]"
		;
connectAttr "L_claw_2_joint_parentConstraint1_L_claw_2_animW0.o" "C_Robot_RigRN.phl[373]"
		;
connectAttr "L_claw_2_joint_parentConstraint1_interpType.o" "C_Robot_RigRN.phl[374]"
		;
connectAttr "L_claw_1_joint_translateX.o" "C_Robot_RigRN.phl[375]";
connectAttr "L_claw_1_joint_translateY.o" "C_Robot_RigRN.phl[376]";
connectAttr "L_claw_1_joint_translateZ.o" "C_Robot_RigRN.phl[377]";
connectAttr "L_claw_1_joint_rotateX.o" "C_Robot_RigRN.phl[378]";
connectAttr "L_claw_1_joint_rotateY.o" "C_Robot_RigRN.phl[379]";
connectAttr "L_claw_1_joint_rotateZ.o" "C_Robot_RigRN.phl[380]";
connectAttr "L_claw_1_joint_visibility.o" "C_Robot_RigRN.phl[381]";
connectAttr "L_claw_1_joint_scaleX.o" "C_Robot_RigRN.phl[382]";
connectAttr "L_claw_1_joint_scaleY.o" "C_Robot_RigRN.phl[383]";
connectAttr "L_claw_1_joint_scaleZ.o" "C_Robot_RigRN.phl[384]";
connectAttr "L_claw_1_joint_parentConstraint1_nodeState.o" "C_Robot_RigRN.phl[385]"
		;
connectAttr "L_claw_1_joint_parentConstraint1_target_0__targetWeight.o" "C_Robot_RigRN.phl[386]"
		;
connectAttr "L_claw_1_joint_parentConstraint1_target_0__targetOffsetTranslateX.o" "C_Robot_RigRN.phl[387]"
		;
connectAttr "L_claw_1_joint_parentConstraint1_target_0__targetOffsetTranslateY.o" "C_Robot_RigRN.phl[388]"
		;
connectAttr "L_claw_1_joint_parentConstraint1_target_0__targetOffsetTranslateZ.o" "C_Robot_RigRN.phl[389]"
		;
connectAttr "L_claw_1_joint_parentConstraint1_target_0__targetOffsetRotateX.o" "C_Robot_RigRN.phl[390]"
		;
connectAttr "L_claw_1_joint_parentConstraint1_target_0__targetOffsetRotateY.o" "C_Robot_RigRN.phl[391]"
		;
connectAttr "L_claw_1_joint_parentConstraint1_target_0__targetOffsetRotateZ.o" "C_Robot_RigRN.phl[392]"
		;
connectAttr "L_claw_1_joint_parentConstraint1_L_claw_1_animW0.o" "C_Robot_RigRN.phl[393]"
		;
connectAttr "L_claw_1_joint_parentConstraint1_interpType.o" "C_Robot_RigRN.phl[394]"
		;
connectAttr "L_hand_joint_parentConstraint1_nodeState.o" "C_Robot_RigRN.phl[395]"
		;
connectAttr "L_hand_joint_parentConstraint1_target_0__targetWeight.o" "C_Robot_RigRN.phl[396]"
		;
connectAttr "L_hand_joint_parentConstraint1_target_0__targetOffsetTranslateX.o" "C_Robot_RigRN.phl[397]"
		;
connectAttr "L_hand_joint_parentConstraint1_target_0__targetOffsetTranslateY.o" "C_Robot_RigRN.phl[398]"
		;
connectAttr "L_hand_joint_parentConstraint1_target_0__targetOffsetTranslateZ.o" "C_Robot_RigRN.phl[399]"
		;
connectAttr "L_hand_joint_parentConstraint1_target_0__targetOffsetRotateX.o" "C_Robot_RigRN.phl[400]"
		;
connectAttr "L_hand_joint_parentConstraint1_target_0__targetOffsetRotateY.o" "C_Robot_RigRN.phl[401]"
		;
connectAttr "L_hand_joint_parentConstraint1_target_0__targetOffsetRotateZ.o" "C_Robot_RigRN.phl[402]"
		;
connectAttr "L_hand_joint_parentConstraint1_L_hand_animW0.o" "C_Robot_RigRN.phl[403]"
		;
connectAttr "L_hand_joint_parentConstraint1_interpType.o" "C_Robot_RigRN.phl[404]"
		;
connectAttr "L_elbow_joint_parentConstraint1_nodeState.o" "C_Robot_RigRN.phl[405]"
		;
connectAttr "L_elbow_joint_parentConstraint1_target_0__targetWeight.o" "C_Robot_RigRN.phl[406]"
		;
connectAttr "L_elbow_joint_parentConstraint1_target_0__targetOffsetTranslateX.o" "C_Robot_RigRN.phl[407]"
		;
connectAttr "L_elbow_joint_parentConstraint1_target_0__targetOffsetTranslateY.o" "C_Robot_RigRN.phl[408]"
		;
connectAttr "L_elbow_joint_parentConstraint1_target_0__targetOffsetTranslateZ.o" "C_Robot_RigRN.phl[409]"
		;
connectAttr "L_elbow_joint_parentConstraint1_target_0__targetOffsetRotateX.o" "C_Robot_RigRN.phl[410]"
		;
connectAttr "L_elbow_joint_parentConstraint1_target_0__targetOffsetRotateY.o" "C_Robot_RigRN.phl[411]"
		;
connectAttr "L_elbow_joint_parentConstraint1_target_0__targetOffsetRotateZ.o" "C_Robot_RigRN.phl[412]"
		;
connectAttr "L_elbow_joint_parentConstraint1_L_elbow_animW0.o" "C_Robot_RigRN.phl[413]"
		;
connectAttr "L_elbow_joint_parentConstraint1_interpType.o" "C_Robot_RigRN.phl[414]"
		;
connectAttr "L_shoulder_joint_parentConstraint1_nodeState.o" "C_Robot_RigRN.phl[415]"
		;
connectAttr "L_shoulder_joint_parentConstraint1_target_0__targetWeight.o" "C_Robot_RigRN.phl[416]"
		;
connectAttr "L_shoulder_joint_parentConstraint1_target_0__targetOffsetTranslateX.o" "C_Robot_RigRN.phl[417]"
		;
connectAttr "L_shoulder_joint_parentConstraint1_target_0__targetOffsetTranslateY.o" "C_Robot_RigRN.phl[418]"
		;
connectAttr "L_shoulder_joint_parentConstraint1_target_0__targetOffsetTranslateZ.o" "C_Robot_RigRN.phl[419]"
		;
connectAttr "L_shoulder_joint_parentConstraint1_target_0__targetOffsetRotateX.o" "C_Robot_RigRN.phl[420]"
		;
connectAttr "L_shoulder_joint_parentConstraint1_target_0__targetOffsetRotateY.o" "C_Robot_RigRN.phl[421]"
		;
connectAttr "L_shoulder_joint_parentConstraint1_target_0__targetOffsetRotateZ.o" "C_Robot_RigRN.phl[422]"
		;
connectAttr "L_shoulder_joint_parentConstraint1_L_shoulder_animW0.o" "C_Robot_RigRN.phl[423]"
		;
connectAttr "L_shoulder_joint_parentConstraint1_interpType.o" "C_Robot_RigRN.phl[424]"
		;
connectAttr "L_clavicle_joint_parentConstraint1_nodeState.o" "C_Robot_RigRN.phl[425]"
		;
connectAttr "L_clavicle_joint_parentConstraint1_target_0__targetWeight.o" "C_Robot_RigRN.phl[426]"
		;
connectAttr "L_clavicle_joint_parentConstraint1_target_0__targetOffsetTranslateX.o" "C_Robot_RigRN.phl[427]"
		;
connectAttr "L_clavicle_joint_parentConstraint1_target_0__targetOffsetTranslateY.o" "C_Robot_RigRN.phl[428]"
		;
connectAttr "L_clavicle_joint_parentConstraint1_target_0__targetOffsetTranslateZ.o" "C_Robot_RigRN.phl[429]"
		;
connectAttr "L_clavicle_joint_parentConstraint1_target_0__targetOffsetRotateX.o" "C_Robot_RigRN.phl[430]"
		;
connectAttr "L_clavicle_joint_parentConstraint1_target_0__targetOffsetRotateY.o" "C_Robot_RigRN.phl[431]"
		;
connectAttr "L_clavicle_joint_parentConstraint1_target_0__targetOffsetRotateZ.o" "C_Robot_RigRN.phl[432]"
		;
connectAttr "L_clavicle_joint_parentConstraint1_L_clavicle_animW0.o" "C_Robot_RigRN.phl[433]"
		;
connectAttr "L_clavicle_joint_parentConstraint1_interpType.o" "C_Robot_RigRN.phl[434]"
		;
connectAttr "R_clavicle_joint_translateX.o" "C_Robot_RigRN.phl[435]";
connectAttr "R_clavicle_joint_translateY.o" "C_Robot_RigRN.phl[436]";
connectAttr "R_clavicle_joint_translateZ.o" "C_Robot_RigRN.phl[437]";
connectAttr "R_clavicle_joint_rotateX.o" "C_Robot_RigRN.phl[438]";
connectAttr "R_clavicle_joint_rotateY.o" "C_Robot_RigRN.phl[439]";
connectAttr "R_clavicle_joint_rotateZ.o" "C_Robot_RigRN.phl[440]";
connectAttr "R_clavicle_joint_scaleX.o" "C_Robot_RigRN.phl[441]";
connectAttr "R_clavicle_joint_scaleY.o" "C_Robot_RigRN.phl[442]";
connectAttr "R_clavicle_joint_scaleZ.o" "C_Robot_RigRN.phl[443]";
connectAttr "R_clavicle_joint_visibility.o" "C_Robot_RigRN.phl[444]";
connectAttr "R_shoulder_joint_translateX.o" "C_Robot_RigRN.phl[445]";
connectAttr "R_shoulder_joint_translateY.o" "C_Robot_RigRN.phl[446]";
connectAttr "R_shoulder_joint_translateZ.o" "C_Robot_RigRN.phl[447]";
connectAttr "R_shoulder_joint_rotateX.o" "C_Robot_RigRN.phl[448]";
connectAttr "R_shoulder_joint_rotateY.o" "C_Robot_RigRN.phl[449]";
connectAttr "R_shoulder_joint_rotateZ.o" "C_Robot_RigRN.phl[450]";
connectAttr "R_shoulder_joint_scaleX.o" "C_Robot_RigRN.phl[451]";
connectAttr "R_shoulder_joint_scaleY.o" "C_Robot_RigRN.phl[452]";
connectAttr "R_shoulder_joint_scaleZ.o" "C_Robot_RigRN.phl[453]";
connectAttr "R_shoulder_joint_visibility.o" "C_Robot_RigRN.phl[454]";
connectAttr "R_elbow_joint_translateX.o" "C_Robot_RigRN.phl[455]";
connectAttr "R_elbow_joint_translateY.o" "C_Robot_RigRN.phl[456]";
connectAttr "R_elbow_joint_translateZ.o" "C_Robot_RigRN.phl[457]";
connectAttr "R_elbow_joint_rotateX.o" "C_Robot_RigRN.phl[458]";
connectAttr "R_elbow_joint_rotateY.o" "C_Robot_RigRN.phl[459]";
connectAttr "R_elbow_joint_rotateZ.o" "C_Robot_RigRN.phl[460]";
connectAttr "R_elbow_joint_scaleX.o" "C_Robot_RigRN.phl[461]";
connectAttr "R_elbow_joint_scaleY.o" "C_Robot_RigRN.phl[462]";
connectAttr "R_elbow_joint_scaleZ.o" "C_Robot_RigRN.phl[463]";
connectAttr "R_elbow_joint_visibility.o" "C_Robot_RigRN.phl[464]";
connectAttr "R_hand_joint_translateX.o" "C_Robot_RigRN.phl[465]";
connectAttr "R_hand_joint_translateY.o" "C_Robot_RigRN.phl[466]";
connectAttr "R_hand_joint_translateZ.o" "C_Robot_RigRN.phl[467]";
connectAttr "R_hand_joint_rotateX.o" "C_Robot_RigRN.phl[468]";
connectAttr "R_hand_joint_rotateY.o" "C_Robot_RigRN.phl[469]";
connectAttr "R_hand_joint_rotateZ.o" "C_Robot_RigRN.phl[470]";
connectAttr "R_hand_joint_scaleX.o" "C_Robot_RigRN.phl[471]";
connectAttr "R_hand_joint_scaleY.o" "C_Robot_RigRN.phl[472]";
connectAttr "R_hand_joint_scaleZ.o" "C_Robot_RigRN.phl[473]";
connectAttr "R_hand_joint_visibility.o" "C_Robot_RigRN.phl[474]";
connectAttr "R_claw_2_joint_translateX.o" "C_Robot_RigRN.phl[475]";
connectAttr "R_claw_2_joint_translateY.o" "C_Robot_RigRN.phl[476]";
connectAttr "R_claw_2_joint_translateZ.o" "C_Robot_RigRN.phl[477]";
connectAttr "R_claw_2_joint_rotateX.o" "C_Robot_RigRN.phl[478]";
connectAttr "R_claw_2_joint_rotateY.o" "C_Robot_RigRN.phl[479]";
connectAttr "R_claw_2_joint_rotateZ.o" "C_Robot_RigRN.phl[480]";
connectAttr "R_claw_2_joint_visibility.o" "C_Robot_RigRN.phl[481]";
connectAttr "R_claw_2_joint_scaleX.o" "C_Robot_RigRN.phl[482]";
connectAttr "R_claw_2_joint_scaleY.o" "C_Robot_RigRN.phl[483]";
connectAttr "R_claw_2_joint_scaleZ.o" "C_Robot_RigRN.phl[484]";
connectAttr "R_claw_2_joint_parentConstraint1_nodeState.o" "C_Robot_RigRN.phl[485]"
		;
connectAttr "R_claw_2_joint_parentConstraint1_target_0__targetWeight.o" "C_Robot_RigRN.phl[486]"
		;
connectAttr "R_claw_2_joint_parentConstraint1_target_0__targetOffsetTranslateX.o" "C_Robot_RigRN.phl[487]"
		;
connectAttr "R_claw_2_joint_parentConstraint1_target_0__targetOffsetTranslateY.o" "C_Robot_RigRN.phl[488]"
		;
connectAttr "R_claw_2_joint_parentConstraint1_target_0__targetOffsetTranslateZ.o" "C_Robot_RigRN.phl[489]"
		;
connectAttr "R_claw_2_joint_parentConstraint1_target_0__targetOffsetRotateX.o" "C_Robot_RigRN.phl[490]"
		;
connectAttr "R_claw_2_joint_parentConstraint1_target_0__targetOffsetRotateY.o" "C_Robot_RigRN.phl[491]"
		;
connectAttr "R_claw_2_joint_parentConstraint1_target_0__targetOffsetRotateZ.o" "C_Robot_RigRN.phl[492]"
		;
connectAttr "R_claw_2_joint_parentConstraint1_R_claw_2_animW0.o" "C_Robot_RigRN.phl[493]"
		;
connectAttr "R_claw_2_joint_parentConstraint1_interpType.o" "C_Robot_RigRN.phl[494]"
		;
connectAttr "R_claw_1_joint_translateX.o" "C_Robot_RigRN.phl[495]";
connectAttr "R_claw_1_joint_translateY.o" "C_Robot_RigRN.phl[496]";
connectAttr "R_claw_1_joint_translateZ.o" "C_Robot_RigRN.phl[497]";
connectAttr "R_claw_1_joint_rotateX.o" "C_Robot_RigRN.phl[498]";
connectAttr "R_claw_1_joint_rotateY.o" "C_Robot_RigRN.phl[499]";
connectAttr "R_claw_1_joint_rotateZ.o" "C_Robot_RigRN.phl[500]";
connectAttr "R_claw_1_joint_visibility.o" "C_Robot_RigRN.phl[501]";
connectAttr "R_claw_1_joint_scaleX.o" "C_Robot_RigRN.phl[502]";
connectAttr "R_claw_1_joint_scaleY.o" "C_Robot_RigRN.phl[503]";
connectAttr "R_claw_1_joint_scaleZ.o" "C_Robot_RigRN.phl[504]";
connectAttr "R_claw_1_joint_parentConstraint1_nodeState.o" "C_Robot_RigRN.phl[505]"
		;
connectAttr "R_claw_1_joint_parentConstraint1_target_0__targetWeight.o" "C_Robot_RigRN.phl[506]"
		;
connectAttr "R_claw_1_joint_parentConstraint1_target_0__targetOffsetTranslateX.o" "C_Robot_RigRN.phl[507]"
		;
connectAttr "R_claw_1_joint_parentConstraint1_target_0__targetOffsetTranslateY.o" "C_Robot_RigRN.phl[508]"
		;
connectAttr "R_claw_1_joint_parentConstraint1_target_0__targetOffsetTranslateZ.o" "C_Robot_RigRN.phl[509]"
		;
connectAttr "R_claw_1_joint_parentConstraint1_target_0__targetOffsetRotateX.o" "C_Robot_RigRN.phl[510]"
		;
connectAttr "R_claw_1_joint_parentConstraint1_target_0__targetOffsetRotateY.o" "C_Robot_RigRN.phl[511]"
		;
connectAttr "R_claw_1_joint_parentConstraint1_target_0__targetOffsetRotateZ.o" "C_Robot_RigRN.phl[512]"
		;
connectAttr "R_claw_1_joint_parentConstraint1_R_claw_1_animW0.o" "C_Robot_RigRN.phl[513]"
		;
connectAttr "R_claw_1_joint_parentConstraint1_interpType.o" "C_Robot_RigRN.phl[514]"
		;
connectAttr "R_hand_joint_parentConstraint1_nodeState.o" "C_Robot_RigRN.phl[515]"
		;
connectAttr "R_hand_joint_parentConstraint1_target_0__targetWeight.o" "C_Robot_RigRN.phl[516]"
		;
connectAttr "R_hand_joint_parentConstraint1_target_0__targetOffsetTranslateX.o" "C_Robot_RigRN.phl[517]"
		;
connectAttr "R_hand_joint_parentConstraint1_target_0__targetOffsetTranslateY.o" "C_Robot_RigRN.phl[518]"
		;
connectAttr "R_hand_joint_parentConstraint1_target_0__targetOffsetTranslateZ.o" "C_Robot_RigRN.phl[519]"
		;
connectAttr "R_hand_joint_parentConstraint1_target_0__targetOffsetRotateX.o" "C_Robot_RigRN.phl[520]"
		;
connectAttr "R_hand_joint_parentConstraint1_target_0__targetOffsetRotateY.o" "C_Robot_RigRN.phl[521]"
		;
connectAttr "R_hand_joint_parentConstraint1_target_0__targetOffsetRotateZ.o" "C_Robot_RigRN.phl[522]"
		;
connectAttr "R_hand_joint_parentConstraint1_R_hand_animW0.o" "C_Robot_RigRN.phl[523]"
		;
connectAttr "R_hand_joint_parentConstraint1_interpType.o" "C_Robot_RigRN.phl[524]"
		;
connectAttr "R_elbow_joint_parentConstraint1_nodeState.o" "C_Robot_RigRN.phl[525]"
		;
connectAttr "R_elbow_joint_parentConstraint1_target_0__targetWeight.o" "C_Robot_RigRN.phl[526]"
		;
connectAttr "R_elbow_joint_parentConstraint1_target_0__targetOffsetTranslateX.o" "C_Robot_RigRN.phl[527]"
		;
connectAttr "R_elbow_joint_parentConstraint1_target_0__targetOffsetTranslateY.o" "C_Robot_RigRN.phl[528]"
		;
connectAttr "R_elbow_joint_parentConstraint1_target_0__targetOffsetTranslateZ.o" "C_Robot_RigRN.phl[529]"
		;
connectAttr "R_elbow_joint_parentConstraint1_target_0__targetOffsetRotateX.o" "C_Robot_RigRN.phl[530]"
		;
connectAttr "R_elbow_joint_parentConstraint1_target_0__targetOffsetRotateY.o" "C_Robot_RigRN.phl[531]"
		;
connectAttr "R_elbow_joint_parentConstraint1_target_0__targetOffsetRotateZ.o" "C_Robot_RigRN.phl[532]"
		;
connectAttr "R_elbow_joint_parentConstraint1_R_elbow_animW0.o" "C_Robot_RigRN.phl[533]"
		;
connectAttr "R_elbow_joint_parentConstraint1_interpType.o" "C_Robot_RigRN.phl[534]"
		;
connectAttr "R_shoulder_joint_parentConstraint1_nodeState.o" "C_Robot_RigRN.phl[535]"
		;
connectAttr "R_shoulder_joint_parentConstraint1_target_0__targetWeight.o" "C_Robot_RigRN.phl[536]"
		;
connectAttr "R_shoulder_joint_parentConstraint1_target_0__targetOffsetTranslateX.o" "C_Robot_RigRN.phl[537]"
		;
connectAttr "R_shoulder_joint_parentConstraint1_target_0__targetOffsetTranslateY.o" "C_Robot_RigRN.phl[538]"
		;
connectAttr "R_shoulder_joint_parentConstraint1_target_0__targetOffsetTranslateZ.o" "C_Robot_RigRN.phl[539]"
		;
connectAttr "R_shoulder_joint_parentConstraint1_target_0__targetOffsetRotateX.o" "C_Robot_RigRN.phl[540]"
		;
connectAttr "R_shoulder_joint_parentConstraint1_target_0__targetOffsetRotateY.o" "C_Robot_RigRN.phl[541]"
		;
connectAttr "R_shoulder_joint_parentConstraint1_target_0__targetOffsetRotateZ.o" "C_Robot_RigRN.phl[542]"
		;
connectAttr "R_shoulder_joint_parentConstraint1_R_shoulder_animW0.o" "C_Robot_RigRN.phl[543]"
		;
connectAttr "R_shoulder_joint_parentConstraint1_interpType.o" "C_Robot_RigRN.phl[544]"
		;
connectAttr "R_clavicle_joint_parentConstraint1_nodeState.o" "C_Robot_RigRN.phl[545]"
		;
connectAttr "R_clavicle_joint_parentConstraint1_target_0__targetWeight.o" "C_Robot_RigRN.phl[546]"
		;
connectAttr "R_clavicle_joint_parentConstraint1_target_0__targetOffsetTranslateX.o" "C_Robot_RigRN.phl[547]"
		;
connectAttr "R_clavicle_joint_parentConstraint1_target_0__targetOffsetTranslateY.o" "C_Robot_RigRN.phl[548]"
		;
connectAttr "R_clavicle_joint_parentConstraint1_target_0__targetOffsetTranslateZ.o" "C_Robot_RigRN.phl[549]"
		;
connectAttr "R_clavicle_joint_parentConstraint1_target_0__targetOffsetRotateX.o" "C_Robot_RigRN.phl[550]"
		;
connectAttr "R_clavicle_joint_parentConstraint1_target_0__targetOffsetRotateY.o" "C_Robot_RigRN.phl[551]"
		;
connectAttr "R_clavicle_joint_parentConstraint1_target_0__targetOffsetRotateZ.o" "C_Robot_RigRN.phl[552]"
		;
connectAttr "R_clavicle_joint_parentConstraint1_R_clavicle_animW0.o" "C_Robot_RigRN.phl[553]"
		;
connectAttr "R_clavicle_joint_parentConstraint1_interpType.o" "C_Robot_RigRN.phl[554]"
		;
connectAttr "head_joint_translateX.o" "C_Robot_RigRN.phl[555]";
connectAttr "head_joint_translateY.o" "C_Robot_RigRN.phl[556]";
connectAttr "head_joint_translateZ.o" "C_Robot_RigRN.phl[557]";
connectAttr "head_joint_rotateX.o" "C_Robot_RigRN.phl[558]";
connectAttr "head_joint_rotateY.o" "C_Robot_RigRN.phl[559]";
connectAttr "head_joint_rotateZ.o" "C_Robot_RigRN.phl[560]";
connectAttr "head_joint_visibility.o" "C_Robot_RigRN.phl[561]";
connectAttr "head_joint_scaleX.o" "C_Robot_RigRN.phl[562]";
connectAttr "head_joint_scaleY.o" "C_Robot_RigRN.phl[563]";
connectAttr "head_joint_scaleZ.o" "C_Robot_RigRN.phl[564]";
connectAttr "head_joint_parentConstraint1_nodeState.o" "C_Robot_RigRN.phl[565]";
connectAttr "head_joint_parentConstraint1_target_0__targetWeight.o" "C_Robot_RigRN.phl[566]"
		;
connectAttr "head_joint_parentConstraint1_target_0__targetOffsetTranslateX.o" "C_Robot_RigRN.phl[567]"
		;
connectAttr "head_joint_parentConstraint1_target_0__targetOffsetTranslateY.o" "C_Robot_RigRN.phl[568]"
		;
connectAttr "head_joint_parentConstraint1_target_0__targetOffsetTranslateZ.o" "C_Robot_RigRN.phl[569]"
		;
connectAttr "head_joint_parentConstraint1_target_0__targetOffsetRotateX.o" "C_Robot_RigRN.phl[570]"
		;
connectAttr "head_joint_parentConstraint1_target_0__targetOffsetRotateY.o" "C_Robot_RigRN.phl[571]"
		;
connectAttr "head_joint_parentConstraint1_target_0__targetOffsetRotateZ.o" "C_Robot_RigRN.phl[572]"
		;
connectAttr "head_joint_parentConstraint1_head_animW0.o" "C_Robot_RigRN.phl[573]"
		;
connectAttr "head_joint_parentConstraint1_interpType.o" "C_Robot_RigRN.phl[574]"
		;
connectAttr "chest_joint_parentConstraint1_nodeState.o" "C_Robot_RigRN.phl[575]"
		;
connectAttr "chest_joint_parentConstraint1_target_0__targetWeight.o" "C_Robot_RigRN.phl[576]"
		;
connectAttr "chest_joint_parentConstraint1_target_0__targetOffsetTranslateX.o" "C_Robot_RigRN.phl[577]"
		;
connectAttr "chest_joint_parentConstraint1_target_0__targetOffsetTranslateY.o" "C_Robot_RigRN.phl[578]"
		;
connectAttr "chest_joint_parentConstraint1_target_0__targetOffsetTranslateZ.o" "C_Robot_RigRN.phl[579]"
		;
connectAttr "chest_joint_parentConstraint1_target_0__targetOffsetRotateX.o" "C_Robot_RigRN.phl[580]"
		;
connectAttr "chest_joint_parentConstraint1_target_0__targetOffsetRotateY.o" "C_Robot_RigRN.phl[581]"
		;
connectAttr "chest_joint_parentConstraint1_target_0__targetOffsetRotateZ.o" "C_Robot_RigRN.phl[582]"
		;
connectAttr "chest_joint_parentConstraint1_chest_animW0.o" "C_Robot_RigRN.phl[583]"
		;
connectAttr "chest_joint_parentConstraint1_interpType.o" "C_Robot_RigRN.phl[584]"
		;
connectAttr "torso_joint_parentConstraint1_nodeState.o" "C_Robot_RigRN.phl[585]"
		;
connectAttr "torso_joint_parentConstraint1_target_0__targetWeight.o" "C_Robot_RigRN.phl[586]"
		;
connectAttr "torso_joint_parentConstraint1_target_0__targetOffsetTranslateX.o" "C_Robot_RigRN.phl[587]"
		;
connectAttr "torso_joint_parentConstraint1_target_0__targetOffsetTranslateY.o" "C_Robot_RigRN.phl[588]"
		;
connectAttr "torso_joint_parentConstraint1_target_0__targetOffsetTranslateZ.o" "C_Robot_RigRN.phl[589]"
		;
connectAttr "torso_joint_parentConstraint1_target_0__targetOffsetRotateX.o" "C_Robot_RigRN.phl[590]"
		;
connectAttr "torso_joint_parentConstraint1_target_0__targetOffsetRotateY.o" "C_Robot_RigRN.phl[591]"
		;
connectAttr "torso_joint_parentConstraint1_target_0__targetOffsetRotateZ.o" "C_Robot_RigRN.phl[592]"
		;
connectAttr "torso_joint_parentConstraint1_torso_animW0.o" "C_Robot_RigRN.phl[593]"
		;
connectAttr "torso_joint_parentConstraint1_interpType.o" "C_Robot_RigRN.phl[594]"
		;
connectAttr "root_joint_parentConstraint1_nodeState.o" "C_Robot_RigRN.phl[595]";
connectAttr "root_joint_parentConstraint1_target_0__targetWeight.o" "C_Robot_RigRN.phl[596]"
		;
connectAttr "root_joint_parentConstraint1_target_0__targetOffsetTranslateX.o" "C_Robot_RigRN.phl[597]"
		;
connectAttr "root_joint_parentConstraint1_target_0__targetOffsetTranslateY.o" "C_Robot_RigRN.phl[598]"
		;
connectAttr "root_joint_parentConstraint1_target_0__targetOffsetTranslateZ.o" "C_Robot_RigRN.phl[599]"
		;
connectAttr "root_joint_parentConstraint1_target_0__targetOffsetRotateX.o" "C_Robot_RigRN.phl[600]"
		;
connectAttr "root_joint_parentConstraint1_target_0__targetOffsetRotateY.o" "C_Robot_RigRN.phl[601]"
		;
connectAttr "root_joint_parentConstraint1_target_0__targetOffsetRotateZ.o" "C_Robot_RigRN.phl[602]"
		;
connectAttr "root_joint_parentConstraint1_root_animW0.o" "C_Robot_RigRN.phl[603]"
		;
connectAttr "root_joint_parentConstraint1_interpType.o" "C_Robot_RigRN.phl[604]"
		;
connectAttr "world_anim_visibility.o" "C_Robot_RigRN.phl[605]";
connectAttr "world_anim_translateX.o" "C_Robot_RigRN.phl[606]";
connectAttr "world_anim_translateY.o" "C_Robot_RigRN.phl[607]";
connectAttr "world_anim_translateZ.o" "C_Robot_RigRN.phl[608]";
connectAttr "world_anim_rotateX.o" "C_Robot_RigRN.phl[609]";
connectAttr "world_anim_rotateY.o" "C_Robot_RigRN.phl[610]";
connectAttr "world_anim_rotateZ.o" "C_Robot_RigRN.phl[611]";
connectAttr "root_anim_translateX.o" "C_Robot_RigRN.phl[612]";
connectAttr "root_anim_translateY.o" "C_Robot_RigRN.phl[613]";
connectAttr "root_anim_translateZ.o" "C_Robot_RigRN.phl[614]";
connectAttr "root_anim_rotateX.o" "C_Robot_RigRN.phl[615]";
connectAttr "root_anim_rotateY.o" "C_Robot_RigRN.phl[616]";
connectAttr "root_anim_rotateZ.o" "C_Robot_RigRN.phl[617]";
connectAttr "torso_anim_translateX.o" "C_Robot_RigRN.phl[618]";
connectAttr "torso_anim_translateY.o" "C_Robot_RigRN.phl[619]";
connectAttr "torso_anim_translateZ.o" "C_Robot_RigRN.phl[620]";
connectAttr "torso_anim_rotateX.o" "C_Robot_RigRN.phl[621]";
connectAttr "torso_anim_rotateY.o" "C_Robot_RigRN.phl[622]";
connectAttr "torso_anim_rotateZ.o" "C_Robot_RigRN.phl[623]";
connectAttr "chest_anim_translateX.o" "C_Robot_RigRN.phl[624]";
connectAttr "chest_anim_translateY.o" "C_Robot_RigRN.phl[625]";
connectAttr "chest_anim_translateZ.o" "C_Robot_RigRN.phl[626]";
connectAttr "chest_anim_rotateX.o" "C_Robot_RigRN.phl[627]";
connectAttr "chest_anim_rotateY.o" "C_Robot_RigRN.phl[628]";
connectAttr "chest_anim_rotateZ.o" "C_Robot_RigRN.phl[629]";
connectAttr "L_clavicle_anim_rotateX.o" "C_Robot_RigRN.phl[630]";
connectAttr "L_clavicle_anim_rotateY.o" "C_Robot_RigRN.phl[631]";
connectAttr "L_clavicle_anim_rotateZ.o" "C_Robot_RigRN.phl[632]";
connectAttr "L_shoulder_anim_rotateX.o" "C_Robot_RigRN.phl[633]";
connectAttr "L_shoulder_anim_rotateY.o" "C_Robot_RigRN.phl[634]";
connectAttr "L_shoulder_anim_rotateZ.o" "C_Robot_RigRN.phl[635]";
connectAttr "L_elbow_anim_rotateX.o" "C_Robot_RigRN.phl[636]";
connectAttr "L_elbow_anim_rotateY.o" "C_Robot_RigRN.phl[637]";
connectAttr "L_elbow_anim_rotateZ.o" "C_Robot_RigRN.phl[638]";
connectAttr "L_hand_anim_rotateX.o" "C_Robot_RigRN.phl[639]";
connectAttr "L_hand_anim_rotateY.o" "C_Robot_RigRN.phl[640]";
connectAttr "L_hand_anim_rotateZ.o" "C_Robot_RigRN.phl[641]";
connectAttr "L_claw_1_anim_rotateX.o" "C_Robot_RigRN.phl[642]";
connectAttr "L_claw_1_anim_rotateY.o" "C_Robot_RigRN.phl[643]";
connectAttr "L_claw_1_anim_rotateZ.o" "C_Robot_RigRN.phl[644]";
connectAttr "L_claw_2_anim_rotateX.o" "C_Robot_RigRN.phl[645]";
connectAttr "L_claw_2_anim_rotateY.o" "C_Robot_RigRN.phl[646]";
connectAttr "L_claw_2_anim_rotateZ.o" "C_Robot_RigRN.phl[647]";
connectAttr "R_clavicle_anim_rotateX.o" "C_Robot_RigRN.phl[648]";
connectAttr "R_clavicle_anim_rotateY.o" "C_Robot_RigRN.phl[649]";
connectAttr "R_clavicle_anim_rotateZ.o" "C_Robot_RigRN.phl[650]";
connectAttr "R_shoulder_anim_rotateX.o" "C_Robot_RigRN.phl[651]";
connectAttr "R_shoulder_anim_rotateY.o" "C_Robot_RigRN.phl[652]";
connectAttr "R_shoulder_anim_rotateZ.o" "C_Robot_RigRN.phl[653]";
connectAttr "R_elbow_anim_rotateX.o" "C_Robot_RigRN.phl[654]";
connectAttr "R_elbow_anim_rotateY.o" "C_Robot_RigRN.phl[655]";
connectAttr "R_elbow_anim_rotateZ.o" "C_Robot_RigRN.phl[656]";
connectAttr "R_hand_anim_rotateX.o" "C_Robot_RigRN.phl[657]";
connectAttr "R_hand_anim_rotateY.o" "C_Robot_RigRN.phl[658]";
connectAttr "R_hand_anim_rotateZ.o" "C_Robot_RigRN.phl[659]";
connectAttr "R_claw_1_anim_rotateX.o" "C_Robot_RigRN.phl[660]";
connectAttr "R_claw_1_anim_rotateY.o" "C_Robot_RigRN.phl[661]";
connectAttr "R_claw_1_anim_rotateZ.o" "C_Robot_RigRN.phl[662]";
connectAttr "R_claw_2_anim_rotateX.o" "C_Robot_RigRN.phl[663]";
connectAttr "R_claw_2_anim_rotateY.o" "C_Robot_RigRN.phl[664]";
connectAttr "R_claw_2_anim_rotateZ.o" "C_Robot_RigRN.phl[665]";
connectAttr "head_anim_translateX.o" "C_Robot_RigRN.phl[666]";
connectAttr "head_anim_translateY.o" "C_Robot_RigRN.phl[667]";
connectAttr "head_anim_translateZ.o" "C_Robot_RigRN.phl[668]";
connectAttr "head_anim_rotateX.o" "C_Robot_RigRN.phl[669]";
connectAttr "head_anim_rotateY.o" "C_Robot_RigRN.phl[670]";
connectAttr "head_anim_rotateZ.o" "C_Robot_RigRN.phl[671]";
connectAttr "waist_anim_translateX.o" "C_Robot_RigRN.phl[672]";
connectAttr "waist_anim_translateY.o" "C_Robot_RigRN.phl[673]";
connectAttr "waist_anim_translateZ.o" "C_Robot_RigRN.phl[674]";
connectAttr "waist_anim_rotateX.o" "C_Robot_RigRN.phl[675]";
connectAttr "waist_anim_rotateY.o" "C_Robot_RigRN.phl[676]";
connectAttr "waist_anim_rotateZ.o" "C_Robot_RigRN.phl[677]";
connectAttr "L_foot_anim_toe.o" "C_Robot_RigRN.phl[678]";
connectAttr "L_foot_anim_ToeRoll.o" "C_Robot_RigRN.phl[679]";
connectAttr "L_foot_anim_PivotToe.o" "C_Robot_RigRN.phl[680]";
connectAttr "L_foot_anim_BallPivot.o" "C_Robot_RigRN.phl[681]";
connectAttr "L_foot_anim_Bank.o" "C_Robot_RigRN.phl[682]";
connectAttr "L_foot_anim_FootRoll.o" "C_Robot_RigRN.phl[683]";
connectAttr "L_foot_anim_translateX.o" "C_Robot_RigRN.phl[684]";
connectAttr "L_foot_anim_translateY.o" "C_Robot_RigRN.phl[685]";
connectAttr "L_foot_anim_translateZ.o" "C_Robot_RigRN.phl[686]";
connectAttr "L_foot_anim_rotateX.o" "C_Robot_RigRN.phl[687]";
connectAttr "L_foot_anim_rotateY.o" "C_Robot_RigRN.phl[688]";
connectAttr "L_foot_anim_rotateZ.o" "C_Robot_RigRN.phl[689]";
connectAttr "R_foot_anim_toe.o" "C_Robot_RigRN.phl[690]";
connectAttr "R_foot_anim_ToeRoll.o" "C_Robot_RigRN.phl[691]";
connectAttr "R_foot_anim_PivotToe.o" "C_Robot_RigRN.phl[692]";
connectAttr "R_foot_anim_BallPivot.o" "C_Robot_RigRN.phl[693]";
connectAttr "R_foot_anim_Bank.o" "C_Robot_RigRN.phl[694]";
connectAttr "R_foot_anim_FootRoll.o" "C_Robot_RigRN.phl[695]";
connectAttr "R_foot_anim_translateX.o" "C_Robot_RigRN.phl[696]";
connectAttr "R_foot_anim_translateY.o" "C_Robot_RigRN.phl[697]";
connectAttr "R_foot_anim_translateZ.o" "C_Robot_RigRN.phl[698]";
connectAttr "R_foot_anim_rotateX.o" "C_Robot_RigRN.phl[699]";
connectAttr "R_foot_anim_rotateY.o" "C_Robot_RigRN.phl[700]";
connectAttr "R_foot_anim_rotateZ.o" "C_Robot_RigRN.phl[701]";
connectAttr "L_knee_anim_translateX.o" "C_Robot_RigRN.phl[702]";
connectAttr "L_knee_anim_translateY.o" "C_Robot_RigRN.phl[703]";
connectAttr "L_knee_anim_translateZ.o" "C_Robot_RigRN.phl[704]";
connectAttr "L_knee_anim_rotateX.o" "C_Robot_RigRN.phl[705]";
connectAttr "L_knee_anim_rotateY.o" "C_Robot_RigRN.phl[706]";
connectAttr "L_knee_anim_rotateZ.o" "C_Robot_RigRN.phl[707]";
connectAttr "R_knee_anim_translateX.o" "C_Robot_RigRN.phl[708]";
connectAttr "R_knee_anim_translateY.o" "C_Robot_RigRN.phl[709]";
connectAttr "R_knee_anim_translateZ.o" "C_Robot_RigRN.phl[710]";
connectAttr "R_knee_anim_rotateX.o" "C_Robot_RigRN.phl[711]";
connectAttr "R_knee_anim_rotateY.o" "C_Robot_RigRN.phl[712]";
connectAttr "R_knee_anim_rotateZ.o" "C_Robot_RigRN.phl[713]";
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
