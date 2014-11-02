//Maya ASCII 2015 scene
//Name: Roboto_Rig.ma
//Last modified: Fri, Oct 31, 2014 07:39:25 PM
//Codeset: UTF-8
requires maya "2015";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOptions" -nodeType "mentalrayGlobals"
		 -nodeType "mentalrayItemsList" -nodeType "mib_amb_occlusion" -dataType "byteArray"
		 "Mayatomr" "2015.0 - 3.12.1.16 ";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201405190330-916664";
fileInfo "osv" "Mac OS X 10.9.5";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.1380180498116719 11.129573714679328 29.841240967259218 ;
	setAttr ".r" -type "double3" -9.9383527311571314 5.8000000000004368 -1.9980754056985074e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 31.830193392894095;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 6.7407739336750501 13.00379568242654 -0.041641524859576007 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.2038503888313841 100.1 -0.38422180117788768 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 5.1881498353846682;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".t" -type "double3" 9.9766894101406312 12.659401256369286 100.86675652797997 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 7.5457271562898596;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".t" -type "double3" 100.12617740049058 11.530130717928493 -0.14138884630857365 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 7.9999251681177697;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "C_Robot_Joint";
createNode joint -n "root" -p "C_Robot_Joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.3009992939108477e-16 11.801700171964772 -0.018175814976949763 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 89.999999999999986 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 1.0000000000000002 0 0 -1.0000000000000002 2.2204460492503131e-16 0 0
		 0 0 1 0 3.3009992939108477e-16 11.801700171964772 -0.018175814976949763 1;
	setAttr ".radi" 0.55679449394646829;
	setAttr ".liw" yes;
createNode transform -n "head_joint_group" -p "root";
createNode joint -n "head_joint" -p "head_joint_group";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 2.3306381544893711 1.1003394761974752e-16 0 ;
	setAttr ".r" -type "double3" 180 0 90.000000000000014 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -1.0000000000000002 -4.9303806576313238e-32 0 0 -4.9303806576313238e-32 1.0000000000000002 1.2246467991473532e-16 0
		 2.5407181807811967e-33 1.2246467991473535e-16 -1 0 7.3757161000813373e-16 14.132338326454143 -0.018175814976949763 1;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "head_joint_group_parentConstraint1" -p "head_joint_group";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "head_animW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -4.0747168061704901e-16 -2.5543533584729481 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 2.7586914362813491e-33 0 89.999999999999986 ;
	setAttr -k on ".w0";
createNode transform -n "L_clavicle_joint_group" -p "root";
createNode joint -n "L_clavicle_joint" -p "L_clavicle_joint_group";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.1770202205700357 -1.452846692072489 0 ;
	setAttr ".r" -type "double3" 179.99048206231731 0 89.446026375690735 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.99995325883512609 0.0096685130713986007 0 0 0.0096685129379945351 0.9999532450379518 0.00016611934979852676 0
		 1.6061271049393073e-06 0.00016611158518660906 -0.99999998620218111 0 1.4528466920724896 12.978720392534807 -0.018175814976949763 1;
	setAttr ".radi" 0.61547472664236103;
	setAttr ".liw" yes;
createNode transform -n "L_shoulder_joint_group" -p "L_clavicle_joint";
createNode joint -n "L_shoulder_joint" -p "L_shoulder_joint_group";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -2.9011855306081316 -8.2813296273798187e-06 0.049851685074561683 ;
	setAttr ".r" -type "double3" 89.640932384046295 0.98442862658362995 0.00016354873912101844 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.99980566703278795 0.0096670860114212494 0.017180675690146533 0
		 -0.017117319501743607 0.0065988191016375158 -0.99983171231939838 0 -0.0097788313308617165 -0.9999314991710746 -0.0064320621336330713 0
		 4.3538966178894052 12.950670242309569 -0.068027500739356012 1;
	setAttr ".radi" 0.5888260834406347;
	setAttr ".liw" yes;
createNode transform -n "L_elbow_joint_group" -p "L_shoulder_joint";
createNode joint -n "L_elbow_joint" -p "L_elbow_joint_group";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -2.564489195785943 -0.056054538267271838 -0.024746736889103005 ;
	setAttr ".r" -type "double3" 6.348936804375489 -0.55274204938431371 1.2521702697043884 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.9999887798164705 0.0001621652301426104 -0.0047343366594255667 0
		 0.0047294247656043667 -0.022740448206859918 -0.99973021588663546 0 -0.00026978241813761794 -0.99974138941917889 0.022739426106601929 0
		 6.9190889464876193 12.950254252637807 -0.055882880394723972 1;
	setAttr ".radi" 0.59065141099091611;
	setAttr ".liw" yes;
createNode transform -n "L_hand_joint_group" -p "L_elbow_joint";
createNode joint -n "L_hand_joint" -p "L_hand_joint_group";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -1.1612867224960626 -0.010419323044272039 -0.0001269515239172847 ;
	setAttr ".r" -type "double3" -4.7655088772990108 -0.0062633056914832832 0.51405669747557969 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" -0.99990612408113144 -0.00015115248526295646 -0.013701101341683172 0
		 0.013666963790080365 0.060394096631831179 -0.99808104239725293 0 0.00097832806844397628 -0.99817459907821349 -0.060386361284972781 0
		 8.0803133959783686 12.95042979107814 -0.039971332820661253 1;
	setAttr ".radi" 0.5594721681939655;
createNode transform -n "L_claw_2_joint_group" -p "L_hand_joint";
	setAttr ".rp" -type "double3" -3.4101263415841854 0.068671146571312028 1.0404662078817875 ;
	setAttr ".sp" -type "double3" -3.4101263415841854 0.068671146571312028 1.0404662078817875 ;
createNode joint -n "L_claw_2_joint" -p "L_claw_2_joint_group";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -3.4145760234172613 -0.017585687905879888 1.0403867852359472 ;
	setAttr ".r" -type "double3" 86.373276008313113 -16.945236710798458 -179.70491891773793 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.95669909334599701 -0.29107845299057911 0.00042307866746325515 0
		 -0.29107847904145795 -0.95669917896845347 4.2327252813834093e-16 0 0.00040475901380110103 -0.0001231490950402564 -0.99999991050221726 0
		 11.495346369568086 11.911396178756311 -0.038461111257935755 1;
	setAttr ".radi" 0.5594721681939655;
createNode parentConstraint -n "L_claw_2_joint_group_parentConstraint1" -p "L_claw_2_joint_group";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_claw_2_animW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -0.0032708384162116744 -0.0019159126839094487 
		-0.08628834431741432 ;
	setAttr ".tg[0].tor" -type "double3" -88.781931061373143 0.78186198751874347 -179.94947557180802 ;
	setAttr ".lr" -type "double3" -6.3611093629270335e-15 1.0287106547858561e-14 -8.5477407064331987e-15 ;
	setAttr ".rst" -type "double3" 4.4408920985006262e-16 -1.3877787807814457e-17 -6.6613381477509392e-16 ;
	setAttr ".rsrr" -type "double3" -6.3611093629270335e-15 1.0287106547858561e-14 -8.5477407064331987e-15 ;
	setAttr -k on ".w0";
createNode transform -n "L_claw_1_joint_group" -p "L_hand_joint";
	setAttr ".rp" -type "double3" -3.401820707719184 0.023315246114292507 -1.0873406220864232 ;
	setAttr ".sp" -type "double3" -3.401820707719184 0.023315246114292507 -1.0873406220864232 ;
createNode joint -n "L_claw_1_joint" -p "L_claw_1_joint_group";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -3.3915715821890284 0.11107405765888567 -1.0913535019615406 ;
	setAttr ".r" -type "double3" 86.370964410332562 17.828392193874162 178.1242321639744 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.95150469301091589 0.30763393778478182 0.00042367585729892812 0
		 0.30763396539512045 -0.95150477840906034 -3.9551695252271202e-16 0 0.00040312960271634668 0.00013033708402370586 -0.99999991024938084 0
		 11.472016934629188 14.047011997196339 -0.03846111125791999 1;
	setAttr ".radi" 0.5594721681939655;
createNode parentConstraint -n "L_claw_1_joint_group_parentConstraint1" -p "L_claw_1_joint_group";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_claw_1_animW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0.0090516417109003378 -0.0021384404632214249 
		0.087955964194971772 ;
	setAttr ".tg[0].tor" -type "double3" -88.781931061373143 0.78186198751874347 -179.94947557180802 ;
	setAttr ".lr" -type "double3" -6.3611093629270335e-15 1.0287106547858561e-14 -8.5477407064331987e-15 ;
	setAttr ".rst" -type "double3" -3.1086244689504383e-15 -1.2836953722228372e-16 -8.2156503822261584e-15 ;
	setAttr ".rsrr" -type "double3" -6.3611093629270335e-15 1.0287106547858561e-14 -8.5477407064331987e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_hand_joint_group_parentConstraint1" -p "L_hand_joint_group";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_hand_animW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.1612248920057366 -0.0010239888413678955 
		-0.015847141324363385 ;
	setAttr ".tg[0].tor" -type "double3" -84.016999999999967 0.27125852271445633 179.99070851255834 ;
	setAttr ".lr" -type "double3" 6.3611093629270304e-15 -2.4798387282035857e-14 1.4834305819013434e-14 ;
	setAttr ".rst" -type "double3" -8.8817841970012523e-16 -2.2204460492503131e-16 -3.5527136788005009e-15 ;
	setAttr ".rsrr" -type "double3" 6.3611093629270304e-15 -2.4798387282035857e-14 1.4834305819013434e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_elbow_joint_group_parentConstraint1" -p "L_elbow_joint_group";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_elbow_animW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.5651923285982132 0.00041598967176348367 
		-0.012144620344632109 ;
	setAttr ".tg[0].tor" -type "double3" -90.368586958678989 -0.98442864016793497 179.44602637569102 ;
	setAttr ".lr" -type "double3" -1.9083328088781104e-14 -5.9635400277440762e-16 1.1330726052713782e-14 ;
	setAttr ".rst" -type "double3" 0 2.7755575615628914e-17 -1.7763568394002505e-15 ;
	setAttr ".rsrr" -type "double3" -1.9083328088781104e-14 -5.9635400277440762e-16 
		1.1330726052713782e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_shoulder_joint_group_parentConstraint1" -p "L_shoulder_joint_group";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_shoulder_animW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.9010499258169156 0.028050150225237047 0.049851685762406256 ;
	setAttr ".tg[0].tor" -type "double3" 179.99048206231731 -2.0441431149786879e-16 
		179.44602637569074 ;
	setAttr ".lr" -type "double3" 1.0898990602788555e-14 -1.0647792009172004e-16 1.2921003393445538e-15 ;
	setAttr ".rst" -type "double3" 0 -1.7763568394002505e-15 -3.4694469519536142e-18 ;
	setAttr ".rsrr" -type "double3" 1.0898990602788555e-14 -1.0647792009172004e-16 1.2921003393445538e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_clavicle_joint_group_parentConstraint1" -p "L_clavicle_joint_group";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_clavicle_animW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.4528466920724898 -1.1770202205700375 -0.0041665706799416408 ;
	setAttr ".tg[0].tor" -type "double3" 2.7586914362813491e-33 0 89.999999999999986 ;
	setAttr ".rst" -type "double3" 0 1.0805532446605326e-16 6.9388939039072284e-18 ;
	setAttr -k on ".w0";
createNode transform -n "chest_joint_group" -p "root";
createNode joint -n "chest" -p "chest_joint_group";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -1.2888625799902993 -2.7028670797172157e-17 -5.2041704279304213e-17 ;
	setAttr ".r" -type "double3" 180 0 90.000000000000014 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -1.0000000000000002 -4.9303806576313238e-32 0 0 -4.9303806576313238e-32 1.0000000000000002 1.2246467991473532e-16 0
		 2.5407181807811967e-33 1.2246467991473535e-16 -1 0 7.0943617811654355e-17 10.512837591974472 -0.018175814976949815 1;
	setAttr ".radi" 0.53381885866986367;
createNode transform -n "torso_joint_group" -p "chest";
createNode joint -n "torso_joint" -p "torso_joint_group";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -4.0675640425458421e-31 -1.976300571234578 -2.9490299091605721e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.4124500153760511e-30 -3.4595047805718202e-46 2.8249000307521008e-30 ;
	setAttr ".bps" -type "matrix" -1.0000000000000002 -4.9303806576313238e-32 0 0 -4.9303806576313238e-32 1.0000000000000002 1.2246467991473532e-16 0
		 2.5407181807811967e-33 1.2246467991473535e-16 -1 0 7.0943617811654861e-17 8.5365370207398943 -0.018175814976949763 1;
	setAttr ".radi" 0.53381885866986367;
	setAttr ".liw" yes;
createNode transform -n "waist_joint_group" -p "torso_joint";
createNode joint -n "waist_joint" -p "waist_joint_group";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -3.5370132900645061e-16 -1.1451386474583254 0.026876284023326182 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -1.0000000000000002 -4.9303806576313238e-32 0 0 -4.9303806576313238e-32 1.0000000000000002 1.2246467991473532e-16 0
		 2.5407181807811967e-33 1.2246467991473535e-16 -1 0 4.2464494681810561e-16 7.3913983732815689 -0.045052099000276083 1;
	setAttr ".radi" 0.53381885866986367;
createNode transform -n "L_hip_joint_group" -p "waist_joint";
createNode joint -n "L_hip_joint" -p "L_hip_joint_group";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -1.4719753077507862 -0.52326186444079159 -0.0015156138377443035 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -90.000000000000057 2.6522886105935246 -90.000000000000085 ;
	setAttr ".bps" -type "matrix" 1.5543122344752196e-15 -0.99892875515336388 0.046274638061808877 0
		 4.9960036108132074e-16 0.046274638061808752 0.99892875515336366 0 -1.0000000000000002 -1.4432899320127047e-15 8.8817841970012504e-16 0
		 1.4719753077507869 6.8681365088407755 -0.043536485162531835 1;
	setAttr ".radi" 0.59970967938147857;
createNode joint -n "L_knee_joint" -p "L_hip_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 2.9277204680419162 2.7755575615628914e-16 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 8.1550526129111075e-15 -2.3663401324046812e-14 -5.2979829968474137 ;
	setAttr ".bps" -type "matrix" 1.5015412674381593e-15 -0.99893407432844694 -0.046159670119807331 0
		 6.4098429404482457e-16 -0.046159670119807483 0.99893407432844672 0 -1.0000000000000002 -1.4432899320127047e-15 8.8817841970012504e-16 0
		 1.4719753077507911 3.9435523462626407 0.091942719842257492 1;
	setAttr ".radi" 0.60934045587864838;
	setAttr ".liw" yes;
createNode joint -n "L_ankle_joint" -p "L_knee_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 3.1139154803205398 5.6898930012039273e-15 6.6613381477509392e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.9229786106310089e-13 1.9113807488655843e-13 56.837937479099729 ;
	setAttr ".bps" -type "matrix" 1.3579417279783538e-15 -0.58506747434111783 0.81098461789858001 0
		 -9.0635605941986096e-16 0.81098461789858012 0.58506747434111761 0 -1.0000000000000002 -1.4432899320127047e-15 8.8817841970012504e-16 0
		 1.4719753077507951 0.83295606839162017 -0.051794591510294752 1;
	setAttr ".radi" 0.52266187347837256;
	setAttr ".liw" yes;
createNode joint -n "L_foot_joint" -p "L_ankle_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 1.4381295539152033 1.8873791418627661e-15 6.6613381477509392e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.411708421549861 -1.316607375520899e-13 -7.6333312355124402e-14 ;
	setAttr ".bps" -type "matrix" 1.1614802416769286e-15 -0.58506747434111739 0.81098461789858001 0
		 -0.99994728840146319 0.0083267396336425305 0.0060071478785581828 0 -0.010267444597431837 -0.81094186960298198 -0.58503663449929311 0
		 1.471975307750796 -0.0084467574928641653 1.1145063552602839 1;
	setAttr ".radi" 0.52266187347837256;
	setAttr ".liw" yes;
createNode joint -n "R_hip_joint" -p "L_hip_joint_group";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 1.4719800000000003 -0.52325837328157032 -0.0015155990002761396 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999929 -2.6522886105934997 90.000000000000071 ;
	setAttr ".bps" -type "matrix" 1.5543122344752196e-15 -0.99892875515336388 0.046274638061808877 0
		 4.9960036108132074e-16 0.046274638061808752 0.99892875515336366 0 -1.0000000000000002 -1.4432899320127047e-15 8.8817841970012504e-16 0
		 1.4719753077507869 6.8681365088407755 -0.043536485162531835 1;
	setAttr ".radi" 0.59970967938147857;
createNode joint -n "R_knee_joint" -p "R_hip_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -2.9277262989788779 2.7512401001850151e-07 -3.1086244689504383e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 8.5377364492993321e-07 2.8566197943657687e-14 -5.2979829968473888 ;
	setAttr ".bps" -type "matrix" 1.5015412674381593e-15 -0.99893407432844694 -0.046159670119807331 0
		 6.4098429404482457e-16 -0.046159670119807483 0.99893407432844672 0 -1.0000000000000002 -1.4432899320127047e-15 8.8817841970012504e-16 0
		 1.4719753077507911 3.9435523462626407 0.091942719842257492 1;
	setAttr ".radi" 0.60934045587864838;
	setAttr ".liw" yes;
createNode joint -n "R_ankle_joint" -p "R_knee_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" -3.1139132043535329 9.3805317499806584e-08 -3.1086244689504383e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -6.2607968182556109e-15 -1.1569944517683854e-14 56.837937479099708 ;
	setAttr ".bps" -type "matrix" 1.3579417279783538e-15 -0.58506747434111783 0.81098461789858001 0
		 -9.0635605941986096e-16 0.81098461789858012 0.58506747434111761 0 -1.0000000000000002 -1.4432899320127047e-15 8.8817841970012504e-16 0
		 1.4719753077507951 0.83295606839162017 -0.051794591510294752 1;
	setAttr ".radi" 0.52266187347837256;
	setAttr ".liw" yes;
createNode joint -n "R_foot_joint" -p "R_ankle_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" -1.4381324780812013 -2.1908170177997732e-06 -2.4424906541753444e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.411708421549903 -1.9099896653270804e-15 2.1013030184860788e-14 ;
	setAttr ".bps" -type "matrix" 1.1614802416769286e-15 -0.58506747434111739 0.81098461789858001 0
		 -0.99994728840146319 0.0083267396336425305 0.0060071478785581828 0 -0.010267444597431837 -0.81094186960298198 -0.58503663449929311 0
		 1.471975307750796 -0.0084467574928641653 1.1145063552602839 1;
	setAttr ".radi" 0.52266187347837256;
	setAttr ".liw" yes;
createNode transform -n "R_hip_joint_group" -p "waist_joint";
createNode parentConstraint -n "torso_joint_group_parentConstraint1" -p "torso_joint_group";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "torso_animW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -5.17689969051289e-31 1.976300571234578 -5.2041704279304213e-17 ;
	setAttr ".tg[0].tor" -type "double3" 0 180 0 ;
	setAttr ".lr" -type "double3" 0 -1.4033418597069752e-14 0 ;
	setAttr ".rst" -type "double3" 0 1.7763568394002505e-15 0 ;
	setAttr ".rsrr" -type "double3" 0 -1.4033418597069752e-14 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "chest_joint_group_parentConstraint1" -p "chest_joint_group";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "chest_animW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.5915631157943036e-16 1.5958324786260789 5.2041704279304213e-17 ;
	setAttr ".tg[0].tor" -type "double3" 2.7586914362813491e-33 0 89.999999999999986 ;
	setAttr -k on ".w0";
createNode transform -n "R_clavicle_joint_group" -p "root";
createNode joint -n "R_clavicle_joint" -p "R_clavicle_joint_group";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.1769998280352283 1.4528500000000004 1.4976949763712e-08 ;
	setAttr ".r" -type "double3" -0.0095179376608133803 0 90.553973624309407 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.99995325883512609 -0.0096685130714007101 0 0 0.0096685129379963115 -0.9999532450379518 -0.0001661193494167325 0
		 1.6061271012482164e-06 -0.00016611158480483263 0.99999998620218078 0 -1.4528500000000002 12.9787 -0.018175799999999999 1;
	setAttr ".radi" 0.61547472664236103;
	setAttr ".liw" yes;
createNode transform -n "R_shoulder_joint_group" -p "R_clavicle_joint";
createNode joint -n "R_shoulder_joint" -p "R_shoulder_joint_group";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 2.9011851199096412 -4.1867265741402093e-05 -0.049851707642807427 ;
	setAttr ".r" -type "double3" 89.640932384024467 0.98442862658361674 0.00016354873877395804 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.99980566703278795 -0.0096670860114238619 -0.017180675690146294 0
		 -0.017117319501743365 -0.0065988191016369581 0.99983171231939783 0 -0.0097788313308639803 0.99993149917107438 0.0064320621336324216 0
		 -4.3539000000000012 12.950700000000001 -0.06802749999999963 1;
	setAttr ".radi" 0.5888260834406347;
	setAttr ".liw" yes;
createNode transform -n "R_elbow_joint_group" -p "R_shoulder_joint";
createNode joint -n "R_elbow_joint" -p "R_elbow_joint_group";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 2.5644867134162537 0.056054372553752209 0.024762702563736028 ;
	setAttr ".r" -type "double3" 1.668936862185906 -0.55274204938450888 1.2521702697044754 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.99998877981647061 -0.0001621652301418159 0.004734336659427324 0
		 0.0047294247656061569 0.022740448206862669 0.9997302158866348 0 -0.00026978241813653894 0.99974138941917856 -0.022739426106604722 0
		 -6.9190900000000006 12.950299999999999 -0.055882899999999285 1;
	setAttr ".radi" 0.59065141099091611;
	setAttr ".liw" yes;
createNode transform -n "R_hand_joint_group" -p "R_elbow_joint";
createNode joint -n "R_hand_joint" -p "R_hand_joint_group";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 1.1612822855531491 0.010417678721605428 5.1430226095661169e-05 ;
	setAttr ".r" -type "double3" -4.7655088772990446 -0.0062633056914159491 0.51405669747574567 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" -0.99990612408113155 0.00015115248526266655 0.013701101341687845 0
		 0.013666963790085047 -0.060394096631829014 0.99808104239725226 0 0.00097832806844427812 0.99817459907821326 0.060386361284970547 0
		 -8.0803100000000008 12.950400000000002 -0.03997129999999921 1;
	setAttr ".radi" 0.5594721681939655;
createNode transform -n "R_claw_2_joint_group" -p "R_hand_joint";
	setAttr ".rp" -type "double3" 3.4063805124515185 0.016597295764802688 -1.0472002207408684 ;
	setAttr ".sp" -type "double3" 3.4063805124515185 0.016597295764802688 -1.0472002207408684 ;
createNode joint -n "R_claw_2_joint" -p "R_claw_2_joint_group";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 3.4145330586468816 0.01758422371719659 -1.0403531935299082 ;
	setAttr ".r" -type "double3" 86.373276008313226 -16.945236710798468 -179.70491891773824 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.95669909334599679 0.291078452990579 -0.00042307866746330025 0
		 -0.29107847904145767 0.9566991789684528 -2.7755575615628914e-16 0 0.00040475901380112428 0.00012314909504041599 0.99999991050221637 0
		 -11.495300000000002 11.9114 -0.038461099999998777 1;
	setAttr ".radi" 0.5594721681939655;
createNode parentConstraint -n "R_claw_2_joint_group_parentConstraint1" -p "R_claw_2_joint_group";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_claw_1_animW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -0.014728246813215051 -2.1383917663403125 0.088020403265332961 ;
	setAttr ".tg[0].tor" -type "double3" 86.537684764103858 -0.78503984416943084 179.99133878751823 ;
	setAttr ".lr" -type "double3" 1.9083328088781097e-14 8.2495637050459922e-15 7.0071595325993102e-15 ;
	setAttr ".rst" -type "double3" 1.3322676295501878e-15 -2.8796409701214998e-16 6.2172489379008766e-15 ;
	setAttr ".rsrr" -type "double3" 1.9083328088781097e-14 8.2495637050459922e-15 7.0071595325993102e-15 ;
	setAttr -k on ".w0";
createNode transform -n "R_claw_1_joint_group" -p "R_hand_joint";
	setAttr ".rp" -type "double3" 3.3959246184128209 -0.11282837389117172 1.094352305280037 ;
	setAttr ".sp" -type "double3" 3.3959246184128209 -0.11282837389117172 1.094352305280037 ;
createNode joint -n "R_claw_1_joint" -p "R_claw_1_joint_group";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 3.3915580472033184 -0.11107496879342826 1.0913712753055176 ;
	setAttr ".r" -type "double3" 86.370964410332704 17.828392193874159 178.1242321639742 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.95150469301091567 -0.30763393778478154 -0.0004236758572993618 0
		 0.30763396539512072 0.95150477840905978 8.5348395018058909e-16 0 0.00040312960271670777 -0.00013033708402387933 0.99999991024937984 0
		 -11.472000000000001 14.047000000000001 -0.038461099999998721 1;
	setAttr ".radi" 0.5594721681939655;
createNode parentConstraint -n "R_claw_1_joint_group_parentConstraint1" -p "R_claw_1_joint_group";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_claw_2_animW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0.018558598353846101 2.1355710799110561 -0.086223905247053506 ;
	setAttr ".tg[0].tor" -type "double3" 86.537684764103858 -0.78503984416943084 179.99133878751823 ;
	setAttr ".lr" -type "double3" 1.9083328088781097e-14 8.2495637050459922e-15 7.0071595325993102e-15 ;
	setAttr ".rst" -type "double3" 1.3322676295501878e-15 9.7144514654701197e-17 1.3322676295501878e-15 ;
	setAttr ".rsrr" -type "double3" 1.9083328088781097e-14 8.2495637050459922e-15 7.0071595325993102e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_hand_joint_group_parentConstraint1" -p "R_hand_joint_group";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_hand_animW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.1612238384933571 -0.00097824147918323945 
		-0.015847160929638643 ;
	setAttr ".tg[0].tor" -type "double3" 91.303000057810493 -0.27125852271455719 -179.99070851255837 ;
	setAttr ".lr" -type "double3" 1.2790737501149018e-31 -4.7956801056442097e-15 -3.0563142642188488e-15 ;
	setAttr ".rst" -type "double3" 0 0 -3.5527136788005009e-15 ;
	setAttr ".rsrr" -type "double3" 1.2790737501149018e-31 -4.7956801056442097e-15 -3.0563142642188488e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_elbow_joint_group_parentConstraint1" -p "R_elbow_joint_group";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_elbow_animW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.5651889464876181 0.00044574736219438194 -0.012144619605275631 ;
	setAttr ".tg[0].tor" -type "double3" 89.631413041321053 0.98442864016792186 -179.44602637569085 ;
	setAttr ".lr" -type "double3" -6.3611093629270335e-15 2.5842006786891076e-15 -9.9392333795735035e-17 ;
	setAttr ".rst" -type "double3" -8.8817841970012523e-16 1.3877787807814457e-17 0 ;
	setAttr ".rsrr" -type "double3" -6.3611093629270335e-15 2.5842006786891076e-15 -9.9392333795735035e-17 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_shoulder_joint_group_parentConstraint1" -p "R_shoulder_joint_group";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_shoulder_animW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.9010466178894054 0.028029757690429591 0.04985170073935602 ;
	setAttr ".tg[0].tor" -type "double3" -0.0095179376608133682 -4.4066522991468403e-17 
		-179.44602637569059 ;
	setAttr ".lr" -type "double3" 7.765026077791789e-18 -2.0686514785367189e-18 1.2921001764278231e-15 ;
	setAttr ".rst" -type "double3" -2.2204460492503131e-16 1.7763568394002505e-15 6.9388939039072284e-18 ;
	setAttr ".rsrr" -type "double3" 7.765026077791789e-18 -2.0686514785367189e-18 1.2921001764278231e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_clavicle_joint_group_parentConstraint1" -p "R_clavicle_joint_group";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_clavicle_animW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.4528466920724905 -1.1770202205700375 0.0084549806293900999 ;
	setAttr ".tg[0].tor" -type "double3" 2.7586914362813491e-33 0 89.999999999999986 ;
	setAttr ".rst" -type "double3" 0 -1.1398928045897805e-16 1.0408340855860843e-17 ;
	setAttr -k on ".w0";
createNode transform -n "C_Robot_Geo";
createNode transform -n "R_hand_geo" -p "C_Robot_Geo";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "R_hand_geoShape" -p "R_hand_geo";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "R_hand_geoShapeOrig" -p "R_hand_geo";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 114 ".uvst[0].uvsp[0:113]" -type "float2" 0.78663284 0.5964551
		 0.81086689 0.59431601 0.81185138 0.56936705 0.78711134 0.5717721 0.52908373 0.95994365
		 0.53778434 0.95563883 0.52110767 0.95610994 0.50532061 0.82409477 0.4725379 0.79016209
		 0.48014662 0.81419146 0.49868813 0.72420496 0.47230276 0.73428619 0.47320274 0.75091565
		 0.52161777 0.95555353 0.52968252 0.95946729 0.53869903 0.95501006 0.43331826 0.70368868
		 0.4176195 0.73688471 0.41284415 0.77071679 0.44401208 0.7700882 0.50241613 0.91249061
		 0.54573363 0.82889533 0.46456248 0.8781994 0.4366177 0.84530723 0.41881153 0.80769551
		 0.50554705 0.63640141 0.46341127 0.67067266 0.54814535 0.71815008 0.73923993 0.64860845
		 0.77353621 0.61000812 0.77259123 0.5577184 0.73291481 0.51727229 0.82395744 0.55547464
		 0.85810363 0.51723671 0.82505792 0.60891497 0.86453253 0.64868259 0.2713573 0.69740999
		 0.26867378 0.71364427 0.29627317 0.73991203 0.31365323 0.72828054 0.22422618 0.71647179
		 0.23709202 0.73325133 0.31305897 0.77146113 0.32602727 0.77175075 0.29530132 0.79868209
		 0.31308645 0.81306171 0.22340876 0.8077985 0.23662186 0.79412889 0.2107982 0.7610333
		 0.19371986 0.76495022 0.19413751 0.7559582 0.2682445 0.81963456 0.26853615 0.83609951
		 0.54811382 0.81245214 0.51788807 0.79416901 0.5154947 0.75250208 0.54661441 0.73412049
		 0.46773568 0.76074284 0.46938226 0.78217137 0.46150967 0.77096486 0.52937508 0.98963737
		 0.52905357 0.97378582 0.51477885 0.97176814 0.5150888 0.98886192 0.51859629 0.92433733
		 0.51709831 0.940916 0.54209411 0.94116116 0.54024923 0.92443937 0.54521358 0.98789889
		 0.54514015 0.97062302 0.51743233 0.9231863 0.51677716 0.94013679 0.54232287 0.93971133
		 0.539814 0.92244112 0.54571879 0.98881578 0.54601729 0.97084922 0.52940166 0.97378147
		 0.52928936 0.99020511 0.51476991 0.97144985 0.51459169 0.98908007 0.15140408 0.9577328
		 0.21668521 0.93849313 0.21435487 0.91283023 0.14654671 0.91715145 0.33169886 0.93030417
		 0.35154104 0.90968168 0.33101419 0.88951069 0.32596138 0.90981543 0.20966609 0.86094558
		 0.15694867 0.83687437 0.15028848 0.86797261 0.20556742 0.88601804 0.21538201 0.9655742
		 0.16800135 0.99559188 0.33352 0.95496571 0.23229022 0.96170771 0.33163828 0.86469394
		 0.22828127 0.86252743 0.2263184 0.88749659 0.38977581 0.61622167 0.35747278 0.66323268
		 0.42597347 0.57354021 0.42113116 0.97624469 0.38642496 0.93082738 0.35578844 0.88094133
		 0.33309868 0.82581526 0.33820742 0.77245694 0.33280933 0.71797192 0.26863837 0.85328948
		 0.21002293 0.82196069 0.17681879 0.76686102 0.17743683 0.75305623 0.21135741 0.69951123
		 0.27356243 0.68049729;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 76 ".vt[0:75]"  -11.31015491 11.621768 -0.10016787 -11.31015587 12.88439178 -1.36279178
		 -11.31015587 13.049995422 1.32806039 -11.31015587 14.31262016 0.065436661 -8.29700565 12.9431982 1.078194618
		 -8.29700565 13.66510391 0.68054438 -8.29700565 14.062753677 -0.041361332 -8.2970047 12.18703747 0.7627908
		 -8.29700565 13.74735069 -0.79752231 -8.29700565 11.87163353 0.0066304207 -8.29700565 12.26928329 -0.71527624
		 -8.29700565 12.99118996 -1.11292553 -11.33189392 11.99289513 0.95693284 -11.31495094 13.8973999 0.91284037
		 -11.33189392 13.94149303 -0.99166465 -11.31495094 12.036987305 -0.94757223 -11.099031448 13.34429836 0.35973805
		 -11.10491276 12.5900898 0.35973868 -11.099031448 12.59009075 -0.39446998 -11.10491276 13.34429741 -0.39446926
		 -8.082631111 12.93246937 0.67459816 -8.082631111 13.32283497 0.33827472 -8.082630157 12.5671196 0.38270831
		 -8.082631111 13.65915775 -0.052090973 -8.082631111 13.36726856 -0.41744053 -8.082630157 12.61155415 -0.37300658
		 -8.082630157 12.27523041 0.017360061 -8.082631111 13.0019187927 -0.70932865 -11.47310162 13.21955872 0.23499793
		 -11.47703743 12.7148304 0.23499855 -11.47310162 12.7148304 -0.26972985 -11.47703743 13.21955681 -0.26972854
		 -11.47723675 11.75212193 -0.043284178 -11.48031807 12.070575714 -0.34049857 -11.48780823 12.054922104 0.33567774
		 -11.48780632 13.87946701 -0.37040925 -11.48031807 13.8638134 0.30576697 -11.47723675 14.18226624 0.0085526109
		 -11.98978901 11.75600719 -0.041712523 -11.99883175 12.060078621 -0.3882789 -12.012042046 12.042729378 0.39056093
		 -12.012038231 13.89165878 -0.42529273 -11.99882984 13.87431049 0.3535465 -11.9897871 14.17837906 0.0069806278
		 -12.45471382 11.81957817 -0.031433374 -12.46767044 11.99912834 -0.23827428 -12.47620869 11.98079109 0.22669692
		 -12.47620392 13.95359612 -0.26142907 -12.46766853 13.93525887 0.20354134 -12.45471382 14.11480904 -0.0032987893
		 -4.869349 12.74649429 0.2033335 -4.869349 13.18789101 0.2033335 -4.869349 12.74649429 -0.23806286
		 -4.869349 13.18789101 -0.23806286 -6.91835594 13.18789101 0.2033335 -6.91835594 12.74649429 0.2033335
		 -7.070329666 12.74649429 -0.23806286 -7.070329666 13.18789101 -0.23806286 -6.7134552 13.18789101 -0.23806286
		 -6.7134552 12.74649429 -0.23806286 -9.80358124 12.99659729 1.2031275 -9.81444931 12.08996582 0.85986185
		 -9.80358028 11.74670029 -0.046768725 -9.80597878 12.1531353 -0.83142424 -9.80358124 12.93779087 -1.23785865
		 -9.81444931 13.84442139 -0.89459348 -9.80358124 14.18768692 0.012037665 -9.80597878 13.78125191 0.79669237
		 -8.18981838 13.49396896 0.50940955 -8.18981838 13.86095619 -0.046726167 -8.18981838 13.5573101 -0.60748142
		 -8.18981838 12.99655437 -0.91112709 -8.18981743 12.44041824 -0.54414141 -8.18981743 12.073431969 0.011995256
		 -8.18981743 12.37707901 0.57274956 -8.18981838 12.93783379 0.87639636;
	setAttr -s 153 ".ed[0:152]"  4 5 1 5 6 1 9 10 1 10 11 1 2 60 1 3 66 1
		 4 7 1 6 8 1 7 9 1 8 11 1 9 62 1 11 64 1 12 15 1 13 12 1 14 13 1 15 14 1 0 15 1 12 0 1
		 15 1 1 1 14 1 13 2 1 2 12 1 14 3 1 3 13 1 13 67 1 10 63 1 8 65 1 12 61 1 13 16 1
		 12 17 1 16 17 1 15 18 1 17 18 1 14 19 1 18 19 1 19 16 1 4 75 1 5 68 1 20 21 1 7 74 1
		 20 22 1 6 69 1 21 23 1 8 70 1 23 24 1 10 72 1 9 73 1 26 25 1 22 26 1 11 71 1 24 27 1
		 25 27 1 16 28 1 17 29 1 28 29 1 18 30 1 29 30 1 19 31 1 30 31 1 31 28 1 0 32 1 15 33 1
		 32 33 1 12 34 1 34 33 1 34 32 1 14 35 1 13 36 1 35 36 1 3 37 1 35 37 1 37 36 1 32 38 1
		 33 39 1 38 39 1 34 40 1 40 39 1 40 38 1 35 41 1 36 42 1 41 42 1 37 43 1 41 43 1 43 42 1
		 38 44 1 39 45 1 44 45 1 40 46 1 46 45 1 46 44 1 41 47 1 42 48 1 47 48 1 43 49 1 47 49 1
		 49 48 1 22 21 1 21 24 1 24 25 1 25 22 1 50 51 1 52 53 1 22 55 1 21 54 1 50 52 1 51 53 1
		 52 59 1 53 58 1 54 51 1 55 50 1 54 55 1 56 25 1 55 56 1 57 24 1 56 57 1 57 54 1 58 57 1
		 59 56 1 54 58 1 58 59 1 59 55 1 60 4 1 61 7 1 60 61 1 62 0 1 61 62 1 63 15 1 62 63 1
		 64 1 1 63 64 1 65 14 1 64 65 1 66 6 1 65 66 1 67 5 1 66 67 1 67 60 1 68 21 1 69 23 1
		 68 69 1 70 24 1 69 70 1 71 27 1 70 71 1 72 25 1 71 72 1 73 26 1 72 73 1 74 22 1 73 74 1
		 75 20 1 74 75 1 75 68 1;
	setAttr -s 79 -ch 306 ".fc[0:78]" -type "polyFaces" 
		f 4 -60 -59 -57 -55
		mu 0 4 0 1 2 3
		f 3 -90 88 -87
		mu 0 3 4 5 6
		f 3 15 -20 -19
		mu 0 3 7 8 9
		f 3 -22 -21 13
		mu 0 3 10 11 12
		f 3 -96 -95 92
		mu 0 3 13 14 15
		f 4 4 -137 -25 20
		mu 0 4 11 16 17 12
		f 4 24 -136 -6 23
		mu 0 4 12 17 18 19
		f 4 124 16 -127 -128
		mu 0 4 20 21 7 22
		f 4 126 18 -129 -130
		mu 0 4 22 7 9 23
		f 4 19 -131 -132 128
		mu 0 4 9 8 24 23
		f 4 22 5 -134 130
		mu 0 4 8 19 18 24
		f 4 -126 -28 17 -125
		mu 0 4 25 26 10 27
		f 4 -124 -5 21 27
		mu 0 4 26 16 11 10
		f 4 28 30 -30 -14
		mu 0 4 28 29 30 31
		f 4 29 32 -32 -13
		mu 0 4 31 30 32 33
		f 4 31 34 -34 -16
		mu 0 4 33 32 34 35
		f 4 33 35 -29 -15
		mu 0 4 35 34 29 28
		f 4 150 38 -138 -153
		mu 0 4 36 37 38 39
		f 4 148 -41 -151 -152
		mu 0 4 40 41 37 36
		f 4 137 42 -139 -140
		mu 0 4 39 38 42 43
		f 4 138 44 -141 -142
		mu 0 4 43 42 44 45
		f 4 144 -48 -147 -148
		mu 0 4 46 47 48 49
		f 4 146 -49 -149 -150
		mu 0 4 50 48 41 40
		f 4 140 50 -143 -144
		mu 0 4 45 44 51 52
		f 4 142 -52 -145 -146
		mu 0 4 52 51 47 46
		f 4 52 54 -54 -31
		mu 0 4 29 0 3 30
		f 4 53 56 -56 -33
		mu 0 4 30 3 2 32
		f 4 55 58 -58 -35
		mu 0 4 32 2 1 34
		f 4 57 59 -53 -36
		mu 0 4 34 1 0 29
		f 4 60 62 -62 -17
		mu 0 4 21 53 54 7
		f 4 61 -65 -64 12
		mu 0 4 7 54 55 10
		f 4 63 65 -61 -18
		mu 0 4 10 55 56 27
		f 4 67 -69 -67 14
		mu 0 4 12 57 58 8
		f 4 66 70 -70 -23
		mu 0 4 8 58 59 19
		f 4 69 71 -68 -24
		mu 0 4 19 59 57 12
		f 4 72 74 -74 -63
		mu 0 4 60 61 62 63
		f 4 73 -77 -76 64
		mu 0 4 64 65 66 67
		f 4 75 77 -73 -66
		mu 0 4 68 69 61 60
		f 4 79 -81 -79 68
		mu 0 4 70 71 72 73
		f 4 78 82 -82 -71
		mu 0 4 74 75 76 77
		f 4 81 83 -80 -72
		mu 0 4 77 76 78 79
		f 4 84 86 -86 -75
		mu 0 4 61 4 6 62
		f 4 85 -89 -88 76
		mu 0 4 65 6 5 66
		f 4 87 89 -85 -78
		mu 0 4 69 5 4 61
		f 4 91 -93 -91 80
		mu 0 4 71 13 15 72
		f 4 90 94 -94 -83
		mu 0 4 75 15 14 76
		f 4 93 95 -92 -84
		mu 0 4 76 14 13 78
		f 3 -39 40 96
		mu 0 3 38 37 41
		f 3 -45 -43 97
		mu 0 3 44 42 38
		f 3 98 51 -51
		mu 0 3 44 47 51
		f 3 48 47 99
		mu 0 3 41 48 47
		f 4 102 -111 -104 -97
		mu 0 4 80 81 82 83
		f 4 104 101 -106 -101
		mu 0 4 84 85 86 87
		f 4 111 -99 -114 -115
		mu 0 4 88 89 90 91
		f 4 -98 103 -116 113
		mu 0 4 90 83 82 91
		f 4 -113 -103 -100 -112
		mu 0 4 92 81 80 93
		f 4 109 100 -109 110
		mu 0 4 81 84 87 82
		f 4 -105 -110 -121 -107
		mu 0 4 94 84 81 95
		f 4 106 -120 -108 -102
		mu 0 4 96 97 98 86
		f 4 108 105 107 -119
		mu 0 4 82 87 86 98
		f 3 118 116 115
		mu 0 3 82 98 91
		f 4 117 114 -117 119
		mu 0 4 97 88 91 98
		f 3 112 -118 120
		mu 0 3 81 92 95
		f 4 -7 -122 123 122
		mu 0 4 99 100 16 26
		f 4 -9 -123 125 -11
		mu 0 4 101 99 26 25
		f 4 10 127 -26 -3
		mu 0 4 102 20 22 103
		f 4 25 129 -12 -4
		mu 0 4 103 22 23 104
		f 4 -27 9 11 131
		mu 0 4 24 105 104 23
		f 4 132 7 26 133
		mu 0 4 18 106 105 24
		f 4 134 1 -133 135
		mu 0 4 17 107 106 18
		f 4 121 0 -135 136
		mu 0 4 16 100 107 17
		f 4 37 139 -42 -2
		mu 0 4 107 39 43 106
		f 4 41 141 -44 -8
		mu 0 4 106 43 45 105
		f 4 43 143 -50 -10
		mu 0 4 105 45 52 108
		f 4 49 145 -46 3
		mu 0 4 108 52 46 109
		f 4 45 147 -47 2
		mu 0 4 109 46 49 110
		f 4 46 149 -40 8
		mu 0 4 111 50 40 112
		f 4 39 151 -37 6
		mu 0 4 112 40 36 113
		f 4 36 152 -38 -1
		mu 0 4 113 36 39 107;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R_shoulder_geo" -p "C_Robot_Geo";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "R_shoulder_geoShape" -p "R_shoulder_geo";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "R_shoulder_geoShapeOrig" -p "R_shoulder_geo";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.55500507 0.41151977
		 0.52792573 0.41752928 0.53858751 0.44962746 0.56818491 0.43714398 0.55020863 0.48119062
		 0.57527959 0.46724695 0.5008499 0.43184119 0.50872123 0.46175754 0.52202785 0.48829788
		 0.47544456 0.41990042 0.47296757 0.47494662 0.51037621 0.51537693 0.73344922 0.4197067
		 0.70652175 0.43178105 0.69941598 0.46302009 0.73505473 0.47690213 0.68388331 0.49034703
		 0.6958909 0.51833183 0.67978764 0.41707784 0.66753083 0.44995177 0.65577924 0.48322731
		 0.65008032 0.4096629 0.63706023 0.43762022 0.6287185 0.46746808 0.63767719 0.38301134
		 0.60233891 0.42392457 0.60249215 0.4789601 0.56774074 0.38401026 0.63992143 0.51881975
		 0.56420445 0.51697475 0.69263422 0.38029379 0.5142144 0.38180113;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 26 ".vt[0:25]"  -5.3598237 11.94134521 0.92149538 -5.58675718 12.95067024 1.1473937
		 -5.3598237 13.95999527 0.92149538 -4.35154581 11.71261978 1.15022063 -4.35389662 12.95067024 1.66302884
		 -4.35154581 14.1887207 1.15022075 -3.33809924 11.93825626 0.92458373 -3.11066294 12.95067024 1.15306735
		 -3.33809924 13.96308422 0.92458373 -3.11066318 11.70977306 -0.087829515 -2.59499693 12.95067024 -0.087829515
		 -3.11066222 14.19156742 -0.087829545 -3.33809924 11.93825626 -1.10024285 -3.11066294 12.95067024 -1.32872653
		 -3.33809924 13.96308422 -1.10024285 -4.35154581 11.71261978 -1.32587981 -4.35389662 12.95067024 -1.8386879
		 -4.35154581 14.1887207 -1.32587993 -5.3598237 11.94134521 -1.097154379 -5.58675718 12.95067024 -1.32305288
		 -5.3598237 13.95999527 -1.097154379 -5.58675766 11.71544647 -0.087829545 -6.096750736 12.95067024 -0.087829545
		 -5.58675718 14.18589401 -0.087829545 -4.35389662 14.70152855 -0.087829545 -4.35389662 11.19981194 -0.087829515;
	setAttr -s 48 ".ed[0:47]"  0 1 1 1 2 1 3 4 1 4 5 1 6 7 1 7 8 1 9 10 1
		 10 11 1 12 13 1 13 14 1 15 16 1 16 17 1 18 19 1 19 20 1 21 22 1 22 23 1 0 3 1 1 4 1
		 2 5 1 3 6 1 4 7 1 5 8 1 6 9 1 7 10 1 8 11 1 9 12 1 10 13 1 11 14 1 12 15 1 13 16 1
		 14 17 1 15 18 1 16 19 1 17 20 1 18 21 1 19 22 1 20 23 1 21 0 1 22 1 1 23 2 1 17 24 1
		 24 5 1 23 24 1 24 11 1 15 25 1 25 3 1 21 25 1 25 9 1;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 16 2 -18 -1
		mu 0 4 0 1 2 3
		f 4 17 3 -19 -2
		mu 0 4 3 2 4 5
		f 4 19 4 -21 -3
		mu 0 4 1 6 7 2
		f 4 20 5 -22 -4
		mu 0 4 2 7 8 4
		f 4 22 6 -24 -5
		mu 0 4 6 9 10 7
		f 4 23 7 -25 -6
		mu 0 4 7 10 11 8
		f 4 25 8 -27 -7
		mu 0 4 12 13 14 15
		f 4 26 9 -28 -8
		mu 0 4 15 14 16 17
		f 4 28 10 -30 -9
		mu 0 4 13 18 19 14
		f 4 29 11 -31 -10
		mu 0 4 14 19 20 16
		f 4 31 12 -33 -11
		mu 0 4 18 21 22 19
		f 4 32 13 -34 -12
		mu 0 4 19 22 23 20
		f 4 34 14 -36 -13
		mu 0 4 21 24 25 22
		f 4 35 15 -37 -14
		mu 0 4 22 25 26 23
		f 4 37 0 -39 -15
		mu 0 4 27 0 3 25
		f 4 38 1 -40 -16
		mu 0 4 25 3 5 26
		f 4 42 -41 33 36
		mu 0 4 26 28 20 23
		f 4 18 -42 -43 39
		mu 0 4 5 4 29 26
		f 4 43 27 30 40
		mu 0 4 28 17 16 20
		f 4 21 24 -44 41
		mu 0 4 4 8 11 29
		f 4 -32 44 -47 -35
		mu 0 4 21 18 30 24
		f 4 46 45 -17 -38
		mu 0 4 27 31 1 0
		f 4 -29 -26 -48 -45
		mu 0 4 18 13 12 30
		f 4 47 -23 -20 -46
		mu 0 4 31 9 6 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "L_hand_geo" -p "C_Robot_Geo";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "L_hand_geoShape" -p "L_hand_geo";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr -av ".iog[0].og[0].gco";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "L_hand_geoShapeOrig" -p "L_hand_geo";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 114 ".uvst[0].uvsp[0:113]" -type "float2" 0.78663284 0.5964551
		 0.78711134 0.57177204 0.81185138 0.56936699 0.81086689 0.59431601 0.52908373 0.95994365
		 0.52110767 0.95610994 0.53778434 0.95563883 0.50532061 0.82409477 0.48014662 0.81419146
		 0.4725379 0.79016209 0.49868813 0.72420496 0.47320274 0.75091565 0.47230276 0.73428619
		 0.52161777 0.95555353 0.53869903 0.95501006 0.52968252 0.95946729 0.4176195 0.73688471
		 0.43331826 0.70368868 0.44401208 0.7700882 0.41284415 0.77071679 0.50241613 0.91249061
		 0.46456248 0.8781994 0.54573363 0.82889533 0.4366177 0.84530723 0.41881153 0.80769551
		 0.50554705 0.63640141 0.54814535 0.71815008 0.46341127 0.67067266 0.73923993 0.64860845
		 0.73291481 0.51727223 0.77259123 0.5577184 0.77353621 0.61000812 0.85810363 0.51723665
		 0.82395744 0.55547464 0.86453253 0.64868253 0.82505792 0.60891491 0.2713573 0.69740999
		 0.31365323 0.72828054 0.29627317 0.73991203 0.26867378 0.71364427 0.22422618 0.71647179
		 0.23709202 0.73325133 0.32602727 0.77175075 0.31305897 0.77146113 0.31308645 0.81306171
		 0.29530132 0.79868209 0.22340876 0.8077985 0.19371986 0.76495022 0.2107982 0.7610333
		 0.23662186 0.79412889 0.19413751 0.7559582 0.26853615 0.83609951 0.2682445 0.81963456
		 0.51788807 0.79416901 0.54811382 0.81245214 0.5154947 0.75250208 0.54661441 0.73412049
		 0.46938226 0.78217137 0.46773568 0.76074284 0.46150967 0.77096486 0.52937508 0.98963737
		 0.5150888 0.98886192 0.51477885 0.97176814 0.52905357 0.97378582 0.51859629 0.92433733
		 0.54024923 0.92443937 0.54209411 0.94116116 0.51709831 0.940916 0.54521358 0.98789889
		 0.54514015 0.97062302 0.51743233 0.9231863 0.539814 0.92244112 0.54232287 0.93971133
		 0.51677716 0.94013679 0.54571879 0.98881578 0.52928936 0.99020511 0.52940166 0.97378147
		 0.54601729 0.97084922 0.51459169 0.98908007 0.51476991 0.97144985 0.15140408 0.9577328
		 0.14654671 0.91715145 0.21435487 0.91283023 0.21668521 0.93849313 0.33169886 0.93030417
		 0.32596138 0.90981543 0.33101419 0.88951069 0.35154104 0.90968168 0.20966609 0.86094558
		 0.20556742 0.88601804 0.15028848 0.86797261 0.15694867 0.83687437 0.21538201 0.9655742
		 0.16800135 0.99559188 0.33352 0.95496571 0.23229022 0.96170771 0.33163828 0.86469394
		 0.2263184 0.88749659 0.22828127 0.86252743 0.38977581 0.61622167 0.35747278 0.66323268
		 0.42597347 0.57354021 0.42113116 0.97624469 0.38642496 0.93082738 0.35578844 0.88094133
		 0.33309868 0.82581526 0.33820742 0.77245694 0.33280933 0.71797192 0.26863837 0.85328948
		 0.21002293 0.82196069 0.17681879 0.76686102 0.17743683 0.75305623 0.21135741 0.69951123
		 0.27356243 0.68049729;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 76 ".vt[0:75]"  11.31015491 11.621768 -0.10016787 11.31015587 12.88439178 -1.36279178
		 11.31015587 13.049995422 1.32806039 11.31015587 14.31262016 0.065436661 8.29700565 12.9431982 1.078194618
		 8.29700565 13.66510391 0.68054438 8.29700565 14.062753677 -0.041361332 8.2970047 12.18703747 0.7627908
		 8.29700565 13.74735069 -0.79752231 8.29700565 11.87163353 0.0066304207 8.29700565 12.26928329 -0.71527624
		 8.29700565 12.99118996 -1.11292553 11.33189392 11.99289513 0.95693284 11.31495094 13.8973999 0.91284037
		 11.33189392 13.94149303 -0.99166465 11.31495094 12.036987305 -0.94757223 11.099031448 13.34429836 0.35973805
		 11.10491276 12.5900898 0.35973868 11.099031448 12.59009075 -0.39446998 11.10491276 13.34429741 -0.39446926
		 8.082631111 12.93246937 0.67459816 8.082631111 13.32283497 0.33827472 8.082630157 12.5671196 0.38270831
		 8.082631111 13.65915775 -0.052090973 8.082631111 13.36726856 -0.41744053 8.082630157 12.61155415 -0.37300658
		 8.082630157 12.27523041 0.017360061 8.082631111 13.0019187927 -0.70932865 11.47310162 13.21955872 0.23499793
		 11.47703743 12.7148304 0.23499855 11.47310162 12.7148304 -0.26972985 11.47703743 13.21955681 -0.26972854
		 11.47723675 11.75212193 -0.043284178 11.48031807 12.070575714 -0.34049857 11.48780823 12.054922104 0.33567774
		 11.48780632 13.87946701 -0.37040925 11.48031807 13.8638134 0.30576697 11.47723675 14.18226624 0.0085526109
		 11.98978901 11.75600719 -0.041712523 11.99883175 12.060078621 -0.3882789 12.012042046 12.042729378 0.39056093
		 12.012038231 13.89165878 -0.42529273 11.99882984 13.87431049 0.3535465 11.9897871 14.17837906 0.0069806278
		 12.45471382 11.81957817 -0.031433374 12.46767044 11.99912834 -0.23827428 12.47620869 11.98079109 0.22669692
		 12.47620392 13.95359612 -0.26142907 12.46766853 13.93525887 0.20354134 12.45471382 14.11480904 -0.0032987893
		 4.869349 12.74649429 0.2033335 4.869349 13.18789101 0.2033335 4.869349 12.74649429 -0.23806286
		 4.869349 13.18789101 -0.23806286 6.91835594 13.18789101 0.2033335 6.91835594 12.74649429 0.2033335
		 7.070329666 12.74649429 -0.23806286 7.070329666 13.18789101 -0.23806286 6.7134552 13.18789101 -0.23806286
		 6.7134552 12.74649429 -0.23806286 9.80358124 12.99659729 1.2031275 9.81444931 12.08996582 0.85986185
		 9.80358028 11.74670029 -0.046768725 9.80597878 12.1531353 -0.83142424 9.80358124 12.93779087 -1.23785865
		 9.81444931 13.84442139 -0.89459348 9.80358124 14.18768692 0.012037665 9.80597878 13.78125191 0.79669237
		 8.18981838 13.49396896 0.50940955 8.18981838 13.86095619 -0.046726167 8.18981838 13.5573101 -0.60748142
		 8.18981838 12.99655437 -0.91112709 8.18981743 12.44041824 -0.54414141 8.18981743 12.073431969 0.011995256
		 8.18981743 12.37707901 0.57274956 8.18981838 12.93783379 0.87639636;
	setAttr -s 153 ".ed[0:152]"  4 5 1 5 6 1 9 10 1 10 11 1 2 60 1 3 66 1
		 4 7 1 6 8 1 7 9 1 8 11 1 9 62 1 11 64 1 12 15 1 13 12 1 14 13 1 15 14 1 0 15 1 12 0 1
		 15 1 1 1 14 1 13 2 1 2 12 1 14 3 1 3 13 1 13 67 1 10 63 1 8 65 1 12 61 1 13 16 1
		 12 17 1 16 17 1 15 18 1 17 18 1 14 19 1 18 19 1 19 16 1 4 75 1 5 68 1 20 21 1 7 74 1
		 20 22 1 6 69 1 21 23 1 8 70 1 23 24 1 10 72 1 9 73 1 26 25 1 22 26 1 11 71 1 24 27 1
		 25 27 1 16 28 1 17 29 1 28 29 1 18 30 1 29 30 1 19 31 1 30 31 1 31 28 1 0 32 1 15 33 1
		 32 33 1 12 34 1 34 33 1 34 32 1 14 35 1 13 36 1 35 36 1 3 37 1 35 37 1 37 36 1 32 38 1
		 33 39 1 38 39 1 34 40 1 40 39 1 40 38 1 35 41 1 36 42 1 41 42 1 37 43 1 41 43 1 43 42 1
		 38 44 1 39 45 1 44 45 1 40 46 1 46 45 1 46 44 1 41 47 1 42 48 1 47 48 1 43 49 1 47 49 1
		 49 48 1 22 21 1 21 24 1 24 25 1 25 22 1 50 51 1 52 53 1 22 55 1 21 54 1 50 52 1 51 53 1
		 52 59 1 53 58 1 54 51 1 55 50 1 54 55 1 56 25 1 55 56 1 57 24 1 56 57 1 57 54 1 58 57 1
		 59 56 1 54 58 1 58 59 1 59 55 1 60 4 1 61 7 1 60 61 1 62 0 1 61 62 1 63 15 1 62 63 1
		 64 1 1 63 64 1 65 14 1 64 65 1 66 6 1 65 66 1 67 5 1 66 67 1 67 60 1 68 21 1 69 23 1
		 68 69 1 70 24 1 69 70 1 71 27 1 70 71 1 72 25 1 71 72 1 73 26 1 72 73 1 74 22 1 73 74 1
		 75 20 1 74 75 1 75 68 1;
	setAttr -s 79 -ch 306 ".fc[0:78]" -type "polyFaces" 
		f 4 54 56 58 59
		mu 0 4 0 1 2 3
		f 3 86 -89 89
		mu 0 3 4 5 6
		f 3 18 19 -16
		mu 0 3 7 8 9
		f 3 -14 20 21
		mu 0 3 10 11 12
		f 3 -93 94 95
		mu 0 3 13 14 15
		f 4 -21 24 136 -5
		mu 0 4 12 11 16 17
		f 4 -24 5 135 -25
		mu 0 4 11 18 19 16
		f 4 127 126 -17 -125
		mu 0 4 20 21 7 22
		f 4 129 128 -19 -127
		mu 0 4 21 23 8 7
		f 4 -129 131 130 -20
		mu 0 4 8 23 24 9
		f 4 -131 133 -6 -23
		mu 0 4 9 24 19 18
		f 4 124 -18 27 125
		mu 0 4 25 26 10 27
		f 4 -28 -22 4 123
		mu 0 4 27 10 12 17
		f 4 13 29 -31 -29
		mu 0 4 28 29 30 31
		f 4 12 31 -33 -30
		mu 0 4 29 32 33 30
		f 4 15 33 -35 -32
		mu 0 4 32 34 35 33
		f 4 14 28 -36 -34
		mu 0 4 34 28 31 35
		f 4 152 137 -39 -151
		mu 0 4 36 37 38 39
		f 4 151 150 40 -149
		mu 0 4 40 36 39 41
		f 4 139 138 -43 -138
		mu 0 4 37 42 43 38
		f 4 141 140 -45 -139
		mu 0 4 42 44 45 43
		f 4 147 146 47 -145
		mu 0 4 46 47 48 49
		f 4 149 148 48 -147
		mu 0 4 50 40 41 48
		f 4 143 142 -51 -141
		mu 0 4 44 51 52 45
		f 4 145 144 51 -143
		mu 0 4 51 46 49 52
		f 4 30 53 -55 -53
		mu 0 4 31 30 1 0
		f 4 32 55 -57 -54
		mu 0 4 30 33 2 1
		f 4 34 57 -59 -56
		mu 0 4 33 35 3 2
		f 4 35 52 -60 -58
		mu 0 4 35 31 0 3
		f 4 16 61 -63 -61
		mu 0 4 22 7 53 54
		f 4 -13 63 64 -62
		mu 0 4 7 10 55 53
		f 4 17 60 -66 -64
		mu 0 4 10 26 56 55
		f 4 -15 66 68 -68
		mu 0 4 11 9 57 58
		f 4 22 69 -71 -67
		mu 0 4 9 18 59 57
		f 4 23 67 -72 -70
		mu 0 4 18 11 58 59
		f 4 62 73 -75 -73
		mu 0 4 60 61 62 63
		f 4 -65 75 76 -74
		mu 0 4 64 65 66 67
		f 4 65 72 -78 -76
		mu 0 4 68 60 63 69
		f 4 -69 78 80 -80
		mu 0 4 70 71 72 73
		f 4 70 81 -83 -79
		mu 0 4 74 75 76 77
		f 4 71 79 -84 -82
		mu 0 4 75 78 79 76
		f 4 74 85 -87 -85
		mu 0 4 63 62 5 4
		f 4 -77 87 88 -86
		mu 0 4 67 66 6 5
		f 4 77 84 -90 -88
		mu 0 4 69 63 4 6
		f 4 -81 90 92 -92
		mu 0 4 73 72 14 13
		f 4 82 93 -95 -91
		mu 0 4 77 76 15 14
		f 4 83 91 -96 -94
		mu 0 4 76 79 13 15
		f 3 -97 -41 38
		mu 0 3 38 41 39
		f 3 -98 42 44
		mu 0 3 45 38 43
		f 3 50 -52 -99
		mu 0 3 45 52 49
		f 3 -100 -48 -49
		mu 0 3 41 49 48
		f 4 96 103 110 -103
		mu 0 4 80 81 82 83
		f 4 100 105 -102 -105
		mu 0 4 84 85 86 87
		f 4 114 113 98 -112
		mu 0 4 88 89 90 91
		f 4 -114 115 -104 97
		mu 0 4 90 89 82 81
		f 4 111 99 102 112
		mu 0 4 92 93 80 83
		f 4 -111 108 -101 -110
		mu 0 4 83 82 85 84
		f 4 106 120 109 104
		mu 0 4 94 95 83 84
		f 4 101 107 119 -107
		mu 0 4 96 86 97 98
		f 4 118 -108 -106 -109
		mu 0 4 82 97 86 85
		f 3 -116 -117 -119
		mu 0 3 82 89 97
		f 4 -120 116 -115 -118
		mu 0 4 98 97 89 88
		f 3 -121 117 -113
		mu 0 3 83 95 92
		f 4 -123 -124 121 6
		mu 0 4 99 27 17 100
		f 4 10 -126 122 8
		mu 0 4 101 25 27 99
		f 4 2 25 -128 -11
		mu 0 4 102 103 21 20
		f 4 3 11 -130 -26
		mu 0 4 103 104 23 21
		f 4 -132 -12 -10 26
		mu 0 4 24 23 104 105
		f 4 -134 -27 -8 -133
		mu 0 4 19 24 105 106
		f 4 -136 132 -2 -135
		mu 0 4 16 19 106 107
		f 4 -137 134 -1 -122
		mu 0 4 17 16 107 100
		f 4 1 41 -140 -38
		mu 0 4 107 106 42 37
		f 4 7 43 -142 -42
		mu 0 4 106 105 44 42
		f 4 9 49 -144 -44
		mu 0 4 105 108 51 44
		f 4 -4 45 -146 -50
		mu 0 4 108 109 46 51
		f 4 -3 46 -148 -46
		mu 0 4 109 110 47 46
		f 4 -9 39 -150 -47
		mu 0 4 111 112 40 50
		f 4 -7 36 -152 -40
		mu 0 4 112 113 36 40
		f 4 0 37 -153 -37
		mu 0 4 113 107 37 36;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "L_shoulder_geo" -p "C_Robot_Geo";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "L_shoulder_geoShape" -p "L_shoulder_geo";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "L_shoulder_geoShapeOrig" -p "L_shoulder_geo";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.55500507 0.41151977
		 0.56818491 0.43714398 0.53858751 0.44962746 0.52792573 0.41752928 0.57527959 0.46724695
		 0.55020863 0.48119062 0.50872123 0.46175754 0.5008499 0.43184119 0.52202785 0.48829788
		 0.47296757 0.47494662 0.47544456 0.41990042 0.51037621 0.51537693 0.73344922 0.4197067
		 0.73505473 0.47690213 0.69941598 0.46302009 0.70652175 0.43178105 0.6958909 0.51833183
		 0.68388331 0.49034703 0.66753083 0.44995177 0.67978764 0.41707784 0.65577924 0.48322731
		 0.63706023 0.43762022 0.65008032 0.4096629 0.6287185 0.46746808 0.60233891 0.42392457
		 0.63767719 0.38301134 0.60249215 0.4789601 0.56774074 0.38401026 0.63992143 0.51881975
		 0.56420445 0.51697475 0.69263422 0.38029379 0.5142144 0.38180113;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 26 ".vt[0:25]"  5.3598237 11.94134521 0.92149538 5.58675718 12.95067024 1.1473937
		 5.3598237 13.95999527 0.92149538 4.35154581 11.71261978 1.15022063 4.35389662 12.95067024 1.66302884
		 4.35154581 14.1887207 1.15022075 3.33809924 11.93825626 0.92458373 3.11066294 12.95067024 1.15306735
		 3.33809924 13.96308422 0.92458373 3.11066318 11.70977306 -0.087829515 2.59499693 12.95067024 -0.087829515
		 3.11066222 14.19156742 -0.087829545 3.33809924 11.93825626 -1.10024285 3.11066294 12.95067024 -1.32872653
		 3.33809924 13.96308422 -1.10024285 4.35154581 11.71261978 -1.32587981 4.35389662 12.95067024 -1.8386879
		 4.35154581 14.1887207 -1.32587993 5.3598237 11.94134521 -1.097154379 5.58675718 12.95067024 -1.32305288
		 5.3598237 13.95999527 -1.097154379 5.58675766 11.71544647 -0.087829545 6.096750736 12.95067024 -0.087829545
		 5.58675718 14.18589401 -0.087829545 4.35389662 14.70152855 -0.087829545 4.35389662 11.19981194 -0.087829515;
	setAttr -s 48 ".ed[0:47]"  0 1 1 1 2 1 3 4 1 4 5 1 6 7 1 7 8 1 9 10 1
		 10 11 1 12 13 1 13 14 1 15 16 1 16 17 1 18 19 1 19 20 1 21 22 1 22 23 1 0 3 1 1 4 1
		 2 5 1 3 6 1 4 7 1 5 8 1 6 9 1 7 10 1 8 11 1 9 12 1 10 13 1 11 14 1 12 15 1 13 16 1
		 14 17 1 15 18 1 16 19 1 17 20 1 18 21 1 19 22 1 20 23 1 21 0 1 22 1 1 23 2 1 17 24 1
		 24 5 1 23 24 1 24 11 1 15 25 1 25 3 1 21 25 1 25 9 1;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -3 -17
		mu 0 4 0 1 2 3
		f 4 1 18 -4 -18
		mu 0 4 1 4 5 2
		f 4 2 20 -5 -20
		mu 0 4 3 2 6 7
		f 4 3 21 -6 -21
		mu 0 4 2 5 8 6
		f 4 4 23 -7 -23
		mu 0 4 7 6 9 10
		f 4 5 24 -8 -24
		mu 0 4 6 8 11 9
		f 4 6 26 -9 -26
		mu 0 4 12 13 14 15
		f 4 7 27 -10 -27
		mu 0 4 13 16 17 14
		f 4 8 29 -11 -29
		mu 0 4 15 14 18 19
		f 4 9 30 -12 -30
		mu 0 4 14 17 20 18
		f 4 10 32 -13 -32
		mu 0 4 19 18 21 22
		f 4 11 33 -14 -33
		mu 0 4 18 20 23 21
		f 4 12 35 -15 -35
		mu 0 4 22 21 24 25
		f 4 13 36 -16 -36
		mu 0 4 21 23 26 24
		f 4 14 38 -1 -38
		mu 0 4 27 24 1 0
		f 4 15 39 -2 -39
		mu 0 4 24 26 4 1
		f 4 -37 -34 40 -43
		mu 0 4 26 23 20 28
		f 4 -40 42 41 -19
		mu 0 4 4 26 29 5
		f 4 -41 -31 -28 -44
		mu 0 4 28 20 17 16
		f 4 -42 43 -25 -22
		mu 0 4 5 29 11 8
		f 4 34 46 -45 31
		mu 0 4 22 25 30 19
		f 4 37 16 -46 -47
		mu 0 4 27 0 3 31
		f 4 44 47 25 28
		mu 0 4 19 30 12 15
		f 4 45 19 22 -48
		mu 0 4 31 3 7 10;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "head_geo" -p "C_Robot_Geo";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 15.0778851715665 -0.024552634186147226 ;
	setAttr ".sp" -type "double3" 0 15.0778851715665 -0.024552634186147226 ;
createNode mesh -n "head_geoShape" -p "head_geo";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.85370112578759316 0.41418568906622849 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
	setAttr ".vcs" 2;
createNode mesh -n "head_geoShapeOrig" -p "head_geo";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.81247175 0.42191544
		 0.82154489 0.40314665 0.7207247 0.39207113 0.86412042 0.3618769 0.82512754 0.34154558
		 0.89928043 0.30624557 0.89851797 0.36309198 0.86416489 0.36186171 0.89850968 0.3630828
		 0.97300357 0.34249347 0.93353045 0.36118773 0.93360335 0.36120778 0.98786998 0.41168359
		 0.93956053 0.41017047 0.93939853 0.41028428 0.96892512 0.48548001 0.92962772 0.46097511
		 0.92970002 0.46098769 0.89613545 0.51327085 0.89779556 0.45863992 0.89790934 0.45854646
		 0.82521856 0.47960332 0.86332285 0.46070218 0.86352509 0.46079171 0.89725816 0.41028464
		 0.85370094 0.41407484 0.89720869 0.41025925 0.85370129 0.41429654 0.82171315 0.40322453
		 0.81451088 0.38411745 0.89538085 0.5131042 0.96789122 0.48534995 0.98759556 0.41184008
		 0.97289306 0.34268689 0.81271714 0.42287701 0.82471561 0.47973621 0.81478381 0.38451841
		 0.72108316 0.3917895 0.82501745 0.34124422 0.89971185 0.30582276;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 30 ".vt[0:29]"  -0.87120944 13.90341187 0.72921634 0 13.90341187 1.047902584
		 0.87120944 13.90341187 0.72921634 -0.87120944 14.99579048 0.72921634 0.87120944 14.99579048 0.72921634
		 -0.87120944 16.016551971 0.72921646 0 16.016551971 1.047902584 0.87120944 16.016551971 0.72921646
		 -1.072455287 16.016551971 -0.024552643 0 16.44378662 -0.024552643 1.072455287 16.016551971 -0.024552643
		 -0.87120944 16.016551971 -0.77832156 0 16.016551971 -1.09700799 0.87120944 16.016551971 -0.77832156
		 -0.87120944 14.99579048 -0.77832156 0 14.99579048 -1.09700799 0.87120944 14.99579048 -0.77832156
		 -0.87120944 13.90341187 -0.77832156 0 13.90341187 -1.09700799 0.87120944 13.90341187 -0.77832156
		 -1.072455287 13.90341187 -0.024552643 0 13.90341187 -0.024552643 1.072455287 13.90341187 -0.024552643
		 1.072455287 14.99579048 -0.024552643 -1.072455287 14.99579048 -0.024552643 0 15.10679722 2.69142342
		 0 15.34191036 1.010800838 0 14.77736855 1.010800838 0.23275079 15.069206238 0.92566127
		 -0.23275079 15.069206238 0.92566127;
	setAttr -s 60 ".ed[0:59]"  0 1 1 1 2 1 5 6 1 6 7 1 8 9 1 9 10 1 11 12 1
		 12 13 1 14 15 1 15 16 1 17 18 1 18 19 1 20 21 1 21 22 1 0 3 1 2 4 1 3 5 1 4 7 1 5 8 1
		 6 9 1 7 10 1 8 11 1 9 12 1 10 13 1 11 14 1 12 15 1 13 16 1 14 17 1 15 18 1 16 19 1
		 17 20 1 18 21 1 19 22 1 20 0 1 21 1 1 22 2 1 16 23 1 23 4 1 22 23 1 23 10 1 14 24 1
		 24 3 1 20 24 1 24 8 1 6 3 1 3 1 1 1 4 1 4 6 1 6 26 1 25 27 1 4 28 1 25 29 1 26 25 1
		 27 1 1 28 25 1 29 3 1 28 26 1 26 29 1 29 27 1 27 28 1;
	setAttr -s 32 -ch 120 ".fc[0:31]" -type "polyFaces" 
		f 3 59 54 49
		mu 0 3 0 1 2
		f 4 2 19 -5 -19
		mu 0 4 3 4 39 6
		f 4 3 20 -6 -20
		mu 0 4 38 7 8 5
		f 4 4 22 -7 -22
		mu 0 4 6 39 33 10
		f 4 5 23 -8 -23
		mu 0 4 5 8 11 9
		f 4 6 25 -9 -25
		mu 0 4 10 33 32 13
		f 4 7 26 -10 -26
		mu 0 4 9 11 14 12
		f 4 8 28 -11 -28
		mu 0 4 13 32 31 16
		f 4 9 29 -12 -29
		mu 0 4 12 14 17 15
		f 4 10 31 -13 -31
		mu 0 4 16 31 30 19
		f 4 11 32 -14 -32
		mu 0 4 15 17 20 18
		f 4 12 34 -1 -34
		mu 0 4 19 30 35 22
		f 4 13 35 -2 -35
		mu 0 4 18 20 23 21
		f 4 -33 -30 36 -39
		mu 0 4 20 17 14 24
		f 4 -36 38 37 -16
		mu 0 4 23 20 24 25
		f 4 -37 -27 -24 -40
		mu 0 4 24 14 11 8
		f 4 -38 39 -21 -18
		mu 0 4 25 24 8 7
		f 4 30 42 -41 27
		mu 0 4 16 19 26 13
		f 4 33 14 -42 -43
		mu 0 4 19 22 27 26
		f 4 40 43 21 24
		mu 0 4 13 26 6 10
		f 4 41 16 18 -44
		mu 0 4 26 27 3 6
		f 3 -3 -17 -45
		mu 0 3 4 3 27
		f 3 -46 -15 0
		mu 0 3 35 27 22
		f 3 -47 1 15
		mu 0 3 25 21 23
		f 3 -48 17 -4
		mu 0 3 38 25 7
		f 3 51 58 -50
		mu 0 3 37 28 34
		f 3 56 52 -55
		mu 0 3 1 36 2
		f 3 57 -52 -53
		mu 0 3 29 28 37
		f 4 48 -57 -51 47
		mu 0 4 38 36 1 25
		f 4 44 -56 -58 -49
		mu 0 4 4 27 28 29
		f 4 -59 55 45 -54
		mu 0 4 34 28 27 35
		f 4 50 -60 53 46
		mu 0 4 25 1 0 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "chest_geo" -p "C_Robot_Geo";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "chest_geoShape" -p "chest_geo";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 3;
	setAttr ".vcs" 2;
createNode mesh -n "chest_geoShapeOrig" -p "chest_geo";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 154 ".uvst[0].uvsp[0:153]" -type "float2" 0.26050135 0.35930929
		 0.26393703 0.42491031 0.32306299 0.4274084 0.320099 0.35504484 0.25641888 0.2347756
		 0.24946132 0.27879483 0.31318289 0.27283698 0.31125742 0.24388267 0.3178584 0.14482108
		 0.27691752 0.13560909 0.27506107 0.49172205 0.33376601 0.47343785 0.30140311 0.59569418
		 0.43451476 0.54444385 0.37506193 0.51021832 0.20778757 0.53812361 0.17469457 0.49352384
		 0.11902064 0.54499543 0.19561894 0.5860588 0.023144126 0.37639341 0.15689492 0.37874508
		 0.032731146 0.21564308 0.12622917 0.24435136 0.057076365 0.1620186 0.14006361 0.20060417
		 0.18525246 0.029603392 0.22018567 0.084342569 0.44209656 0.078682765 0.30108416 0.01326105
		 0.28870952 0.07936357 0.36775374 0.11147517 0.37634087 0.22678146 0.43976724 0.22158763
		 0.21787012 0.44827306 0.22015093 0.4891744 0.20650283 0.23667894 0.24298751 0.13533172
		 0.20076422 0.27034831 0.20038967 0.37379634 0.43552783 0.48046324 0.43662471 0.41161466
		 0.77838862 0.071523458 0.35793942 0.44767505 0.74288869 0.15157259 0.35658687 0.35820955
		 0.86781967 0.29105377 0.43953532 0.23652554 0.35820591 0.25972834 0.76761919 0.23673162
		 0.8714056 0.18256979 0.83752084 0.18004569 0.84816217 0.15488496 0.8724786 0.15137172
		 0.84641469 0.20670167 0.87019014 0.21473718 0.82847643 0.11346489 0.79660368 0.16978697
		 0.87418854 0.099036977 0.81563306 0.23221734 0.86890596 0.2586644 0.26038072 0.3593632
		 0.32014644 0.35473621 0.32340366 0.42719498 0.26408565 0.42509833 0.25581327 0.23458876
		 0.31083822 0.24344368 0.31288719 0.27243131 0.24899694 0.27872244 0.2760306 0.13515365
		 0.31707913 0.14422634 0.33433673 0.47319889 0.27555007 0.49199152 0.37590414 0.50968462
		 0.20833524 0.53898394 0.17490131 0.49446675 0.15651083 0.37940329 0.12524867 0.24471897
		 0.13897803 0.20083255 0.21901217 0.083999336 0.36688197 0.11065716 0.28763437 0.078790903
		 0.37597239 0.22601573 0.22044109 0.4898271 0.21797279 0.44883335 0.20574839 0.23671144
		 0.24203415 0.13500521 0.20011303 0.27049568 0.20011908 0.37422651 0.35843897 0.44724065
		 0.96977156 0.077739388 0.3567279 0.3576946 0.99663973 0.15360819 0.96853495 0.23902656
		 0.35795301 0.25907895 0.89642948 0.15647218 0.9054091 0.1823096 0.8949514 0.20828283
		 0.94690406 0.17478493 0.91884518 0.11645836 0.92378598 0.23579815 0.30236733 0.013928771
		 0.30018449 0.59547305 0.19479626 0.5850842 0.18664038 0.029916614 0.058487296 0.16159089
		 0.034047484 0.21502192 0.023948699 0.3751727 0.11867061 0.5436148 0.40622705 0.35459679
		 0.4078688 0.30590183 0.43883958 0.28239924 0.40946025 0.3942768 0.87624347 0.042343885
		 0.40601876 0.35537487 0.40782267 0.30674452 0.4091267 0.39508286 0.87019014 0.21473718
		 0.8714056 0.18256979 0.86890596 0.2586644 0.8724786 0.15137172 0.87418854 0.099036977
		 0.86781967 0.29105377 0.43882561 0.28132254 0.43622112 0.41268361 0.87624347 0.042343885
		 0.4347716 0.48152569 0.43341821 0.54549998 0.44010735 0.22267044 0.43978679 0.23760669
		 0.44306386 0.079777092 0.88891 0.67936587 0.93749171 0.67306238 0.93011391 0.71955758
		 0.8873502 0.71935743 0.87028944 0.76490659 0.9343611 0.77218777 0.92810762 0.82286483
		 0.85573667 0.81275028 0.85802603 0.71620345 0.81036592 0.70691484 0.81485057 0.67216003
		 0.86185694 0.67921251 0.88641006 0.64114112 0.9419297 0.6377539 0.9802056 0.67991239
		 0.97374433 0.7192136 0.8824181 0.73814082 0.93190241 0.73927134 0.84906447 0.73543322
		 0.84434968 0.75825852 0.80782247 0.75144595 0.80751371 0.72601318 0.98178822 0.73326284
		 0.98838627 0.75832289;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 116 ".vt[0:115]"  3.13698268 12.87487507 -1.81727481 3.63351202 12.54460049 2.096721411
		 2.49609137 14.18549061 1.26802158 2.3539753 14.40567493 -1.46232748 2.65495062 10.85752773 -1.050162077
		 3.056125879 10.47032642 -1.52455544 2.65495062 10.80371952 1.27219248 3.023782969 10.3636198 1.59315181
		 1.91502285 8.97141457 -0.73736227 1.91502285 8.92871952 0.86803454 1.59039521 13.81915474 0.80944484
		 1.59039521 13.93717766 -1.36481071 -0.014891647 13.81915474 0.80944484 -0.014891647 13.93717766 -1.36481071
		 -0.014891647 14.40567493 -2.054184437 -0.014891647 12.18828964 -2.72936606 -0.014891647 10.47032642 -2.033804417
		 -0.014891647 10.85752773 -1.55925608 -0.014891647 8.97141457 -1.076887131 -0.014891647 8.92871952 1.20755911
		 -0.014891647 10.80371952 1.82301736 3.069097042 14.30624771 -0.22939768 1.59039521 13.88388252 -0.38299322
		 -0.014891647 13.88388252 -0.38299322 -0.014891647 8.95213509 -0.045311421 1.91502285 8.95213509 -0.012421548
		 2.65495062 10.83323002 -0.0014681816 3.72608209 10.42214108 -0.20032838 4.50549412 12.72573471 -0.049851686
		 1.27331066 10.85752773 -1.31963468 0.90064037 8.97141457 -0.91707891 0.90064031 8.95213509 -0.029830754
		 0.90064031 8.92871952 1.04775095 1.27331054 10.80371952 1.56375384 0.74796706 13.81915474 0.80944484
		 0.74796706 13.93717766 -1.36481047 1.106848 14.40567493 -1.77560806 2.14505696 12.75378799 -2.35059023
		 1.43700433 10.47032642 -1.86587501 -0.014891706 13.38545227 2.83816147 -0.014891646 14.14847755 1.58080697
		 0.91526008 13.10381794 2.80549097 1.59174979 14.1570406 1.49938154 -0.014891647 11.072597504 2.39415455
		 -0.014891647 10.38951588 1.95793009 0.93872929 11.49263763 2.49738669 1.83861887 10.40695 1.8733604
		 1.23622692 12.34788513 2.92719698 2.5670085 12.53716564 2.76405382 -0.014891647 12.97737885 2.00051879883
		 -0.014891647 11.4689703 2.13220024 0.7760151 12.30122471 2.27389574 0.50982821 12.81530762 1.90292549
		 0.56378329 11.69384384 2.022986174 -0.014891647 12.25732136 2.80859709 -0.014891647 12.65260792 2.63713264
		 -0.014891647 11.82754326 2.62982225 0.43135637 12.2484417 2.71412611 0.27818981 12.55956459 2.61023855
		 0.26219195 11.95441246 2.59807205 -4.53527737 12.72573471 -0.049851686 -3.098880291 14.30624771 -0.22939768
		 -2.52587461 14.18549061 1.26802158 -3.66329527 12.54460049 2.096721411 -2.68473387 10.83323002 -0.0014681816
		 -3.75586534 10.42214108 -0.20032838 -3.053566217 10.3636198 1.59315181 -2.68473387 10.80371952 1.27219248
		 -1.9448061 8.92871952 0.86803454 -1.9448061 8.95213509 -0.012421548 -1.62017846 13.88388252 -0.38299322
		 -1.62017846 13.81915474 0.80944484 -0.77775037 13.81915474 0.80944484 -0.77775037 13.93717766 -1.36481047
		 -1.13663125 14.40567493 -1.77560806 -2.17484021 12.75378799 -2.35059023 -1.46678758 10.47032642 -1.86587501
		 -1.30309391 10.85752773 -1.31963468 -0.93042368 8.97141457 -0.91707891 -0.93042362 8.95213509 -0.029830754
		 -0.93042362 8.92871952 1.04775095 -1.30309379 10.80371952 1.56375384 -2.38375854 14.40567493 -1.46232748
		 -1.62017846 13.93717766 -1.36481071 -2.68473387 10.85752773 -1.050162077 -1.9448061 8.97141457 -0.73736227
		 -3.085909128 10.47032642 -1.52455544 -3.16676593 12.87487507 -1.81727481 -0.94504339 13.10381794 2.80549097
		 -1.62153304 14.1570406 1.49938154 -1.26601017 12.34788513 2.92719698 -2.59679174 12.53716564 2.76405382
		 -1.86840212 10.40695 1.8733604 -0.96851277 11.49263763 2.49738669 -0.46113962 12.2484417 2.71412611
		 -0.30797312 12.55956459 2.61023855 -0.29197526 11.95441246 2.59807205 -0.53961152 12.81530762 1.90292549
		 -0.80579841 12.30122471 2.27389574 -0.5935666 11.69384384 2.022986174 -0.94345176 7.23368597 0.58753502
		 0.94345176 7.23368597 0.58753502 -1.15037477 9.45214462 0.72113335 1.15037477 9.45214462 0.72113335
		 -1.15037477 9.45214462 -0.76432955 1.15037477 9.45214462 -0.76432955 -0.94345176 7.23368597 -0.63073123
		 0.94345176 7.23368597 -0.63073123 0.74922526 8.78398228 0.46213385 -0.74922526 8.78398228 0.46213385
		 -0.74922526 8.78398228 -0.50533015 0.74922526 8.78398228 -0.50533015 0.60764897 8.34954548 0.37072608
		 -0.60764897 8.34954548 0.37072608 -0.60764897 8.34954548 -0.41392249 0.60764897 8.34954548 -0.41392249;
	setAttr -s 226 ".ed";
	setAttr ".ed[0:165]"  0 28 1 1 2 1 2 21 1 3 0 1 5 4 1 4 29 1 5 27 1 7 6 1
		 6 26 1 0 5 1 1 7 1 4 8 1 8 30 1 6 9 1 9 25 1 2 10 1 3 11 1 10 22 1 12 34 1 13 35 1
		 12 23 1 14 36 1 13 14 1 15 37 1 14 15 1 16 38 1 15 16 1 16 17 1 17 18 1 19 32 1 18 24 1
		 20 33 1 19 20 1 21 3 1 22 11 1 21 22 1 23 13 1 24 19 1 25 8 1 24 31 1 26 4 1 25 26 1
		 27 7 1 26 27 1 28 1 1 27 28 1 28 21 1 29 17 1 30 18 1 31 25 1 32 9 1 33 6 1 34 10 1
		 35 11 1 36 3 1 37 0 1 38 5 1 29 30 1 30 31 1 31 32 1 32 33 1 35 36 1 36 37 1 37 38 1
		 38 29 1 34 22 1 22 35 1 39 40 1 39 41 1 41 42 1 42 40 1 41 47 1 47 48 1 48 42 1 43 44 1
		 44 46 1 46 45 1 45 43 1 46 48 1 47 45 1 20 44 1 40 12 1 42 34 1 33 46 1 7 46 1 1 48 1
		 2 42 1 39 49 1 43 50 1 47 51 1 41 52 1 52 51 1 49 52 1 45 53 1 51 53 1 53 50 1 49 55 1
		 54 55 1 50 56 1 56 54 1 51 57 1 54 57 1 52 58 1 58 57 1 55 58 1 53 59 1 57 59 1 59 56 1
		 60 61 1 62 61 1 63 62 1 60 63 1 64 65 1 65 66 1 66 67 1 67 64 1 63 66 1 65 60 1 67 68 1
		 68 69 1 69 64 1 61 70 1 71 70 1 62 71 1 12 72 1 72 70 1 73 74 1 14 74 1 13 73 1 74 75 1
		 15 75 1 75 76 1 16 76 1 76 77 1 77 17 1 77 78 1 78 18 1 24 79 1 79 80 1 19 80 1 80 81 1
		 20 81 1 61 82 1 82 83 1 70 83 1 70 73 1 78 79 1 64 84 1 69 85 1 84 85 1 86 84 1 86 65 1
		 87 60 1 87 86 1 82 87 1 84 77 1 85 78 1 79 69 1 80 68 1 81 67 1 74 82 1 73 83 1 75 87 1
		 76 86 1 72 71 1 39 88 1;
	setAttr ".ed[166:225]" 88 89 1 89 40 1 88 90 1 90 91 1 91 89 1 44 92 1 92 93 1
		 93 43 1 92 91 1 90 93 1 54 94 1 95 94 1 55 95 1 89 72 1 81 92 1 94 96 1 96 56 1 66 92 1
		 63 91 1 62 89 1 88 97 1 97 98 1 90 98 1 49 97 1 98 99 1 93 99 1 99 50 1 97 95 1 98 94 1
		 99 96 1 70 23 1 23 22 1 100 101 1 102 103 1 104 105 1 106 107 1 100 113 1 101 112 1
		 102 104 1 103 105 1 104 110 1 105 111 1 106 100 1 107 101 1 108 103 1 109 102 1 108 109 1
		 110 114 1 109 110 1 111 115 1 110 111 1 111 108 1 112 108 1 113 109 1 112 113 1 114 106 1
		 113 114 1 115 107 1 114 115 1 115 112 1;
	setAttr -s 114 -ch 452 ".fc[0:113]" -type "polyFaces" 
		f 4 46 -3 -2 -45
		mu 0 4 0 1 2 3
		f 4 43 42 7 8
		mu 0 4 4 5 6 7
		f 4 44 10 -43 45
		mu 0 4 0 3 6 5
		f 4 -9 13 14 41
		mu 0 4 4 7 8 9
		f 4 2 35 -18 -16
		mu 0 4 2 1 10 11
		f 4 197 66 -20 -37
		mu 0 4 101 10 15 102
		f 4 61 -22 -23 19
		mu 0 4 15 16 107 102
		f 4 -25 21 62 -24
		mu 0 4 106 107 16 20
		f 4 -27 23 63 -26
		mu 0 4 105 106 20 22
		f 4 -28 25 64 47
		mu 0 4 104 105 22 24
		f 4 -29 -48 57 48
		mu 0 4 103 104 24 26
		f 4 -38 39 59 -30
		mu 0 4 129 100 29 30
		f 4 60 -32 -33 29
		mu 0 4 30 31 127 129
		f 4 33 16 -35 -36
		mu 0 4 1 33 34 10
		f 4 -40 -31 -49 58
		mu 0 4 29 100 103 26
		f 4 -41 -42 38 -12
		mu 0 4 35 4 9 36
		f 4 -5 6 -44 40
		mu 0 4 35 37 5 4
		f 4 0 -46 -7 -10
		mu 0 4 38 0 5 37
		f 4 -4 -34 -47 -1
		mu 0 4 38 33 1 0
		f 4 -58 -6 11 12
		mu 0 4 26 24 35 36
		f 4 -50 -59 -13 -39
		mu 0 4 9 29 26 36
		f 4 -60 49 -15 -51
		mu 0 4 30 29 9 8
		f 4 -52 -61 50 -14
		mu 0 4 7 31 30 8
		f 4 -55 -62 53 -17
		mu 0 4 33 16 15 34
		f 4 -63 54 3 -56
		mu 0 4 20 16 33 38
		f 4 -64 55 9 -57
		mu 0 4 22 20 38 37
		f 4 -65 56 4 5
		mu 0 4 24 22 37 35
		f 3 -66 52 17
		mu 0 3 10 14 11
		f 3 -67 34 -54
		mu 0 3 15 10 34
		f 4 -68 68 69 70
		mu 0 4 125 123 115 42
		f 4 -70 71 72 73
		mu 0 4 42 115 113 44
		f 4 74 75 76 77
		mu 0 4 110 128 47 114
		f 4 -77 78 -73 79
		mu 0 4 114 47 44 113
		f 4 101 -104 -105 -98
		mu 0 4 117 50 51 119
		f 4 -82 -71 82 -19
		mu 0 4 126 125 42 14
		f 4 83 -76 -81 31
		mu 0 4 31 47 128 127
		f 4 -107 -102 -100 -108
		mu 0 4 53 50 117 116
		f 4 -8 84 -84 51
		mu 0 4 7 6 47 31
		f 4 85 -79 -85 -11
		mu 0 4 3 44 47 6
		f 4 -74 -86 1 86
		mu 0 4 42 44 3 2
		f 4 -83 -87 15 -53
		mu 0 4 14 42 2 11
		f 4 -72 90 91 -90
		mu 0 4 43 41 55 56
		f 4 -69 87 92 -91
		mu 0 4 41 112 120 55
		f 4 -80 89 94 -94
		mu 0 4 48 43 56 58
		f 4 -78 93 95 -89
		mu 0 4 121 48 58 118
		f 4 -92 102 103 -101
		mu 0 4 56 55 51 50
		f 4 -93 96 104 -103
		mu 0 4 55 120 119 51
		f 4 -95 100 106 -106
		mu 0 4 58 56 50 53
		f 4 -96 105 107 -99
		mu 0 4 118 58 53 116
		f 4 111 110 109 -109
		mu 0 4 60 61 62 63
		f 4 -116 -115 -114 -113
		mu 0 4 64 65 66 67
		f 4 -118 113 -117 -112
		mu 0 4 60 67 66 61
		f 4 -121 -120 -119 115
		mu 0 4 64 68 69 65
		f 4 123 122 -122 -110
		mu 0 4 62 70 71 63
		f 4 -129 22 127 -127
		mu 0 4 73 18 17 74
		f 4 130 -130 -128 24
		mu 0 4 19 75 74 17
		f 4 132 -132 -131 26
		mu 0 4 21 76 75 19
		f 4 -135 -134 -133 27
		mu 0 4 23 77 76 21
		f 4 -137 -136 134 28
		mu 0 4 25 78 77 23
		f 4 139 -139 -138 37
		mu 0 4 27 79 80 28
		f 4 -140 32 141 -141
		mu 0 4 79 27 32 81
		f 4 121 144 -144 -143
		mu 0 4 63 71 82 83
		f 4 36 128 -146 196
		mu 0 4 12 18 73 71
		f 4 -147 136 30 137
		mu 0 4 80 78 25 28
		f 4 149 -149 120 147
		mu 0 4 84 85 68 64
		f 4 -148 112 -152 150
		mu 0 4 84 64 67 86
		f 4 153 151 117 -153
		mu 0 4 87 86 67 60
		f 4 152 108 142 154
		mu 0 4 87 60 63 83
		f 4 -157 -150 155 135
		mu 0 4 78 85 84 77
		f 4 148 156 146 157
		mu 0 4 68 85 78 80
		f 4 158 119 -158 138
		mu 0 4 79 69 68 80
		f 4 118 -159 140 159
		mu 0 4 65 69 79 81
		f 4 143 -162 126 160
		mu 0 4 83 82 73 74
		f 4 162 -155 -161 129
		mu 0 4 75 87 83 74
		f 4 163 -154 -163 131
		mu 0 4 76 86 87 75
		f 4 -156 -151 -164 133
		mu 0 4 77 84 86 76
		f 3 -123 -165 125
		mu 0 3 71 70 72
		f 3 161 -145 145
		mu 0 3 73 82 71
		f 4 -168 -167 -166 67
		mu 0 4 39 88 111 40
		f 4 -171 -170 -169 166
		mu 0 4 88 90 108 111
		f 4 -174 -173 -172 -75
		mu 0 4 122 109 93 46
		f 4 -176 169 -175 172
		mu 0 4 109 108 90 93
		f 4 97 178 177 -177
		mu 0 4 49 52 94 95
		f 4 124 -180 167 81
		mu 0 4 13 72 88 39
		f 4 -142 80 171 -181
		mu 0 4 81 32 46 93
		f 4 182 99 176 181
		mu 0 4 96 54 49 95
		f 4 -160 180 -184 114
		mu 0 4 65 81 93 66
		f 4 116 183 174 -185
		mu 0 4 61 66 93 90
		f 4 -186 -111 184 170
		mu 0 4 88 62 61 90
		f 4 164 -124 185 179
		mu 0 4 72 70 62 88
		f 4 188 -188 -187 168
		mu 0 4 91 97 98 89
		f 4 186 -190 -88 165
		mu 0 4 89 98 57 124
		f 4 191 -191 -189 175
		mu 0 4 92 99 97 91
		f 4 88 -193 -192 173
		mu 0 4 45 59 99 92
		f 4 194 -178 -194 187
		mu 0 4 97 95 94 98
		f 4 193 -179 -97 189
		mu 0 4 98 94 52 57
		f 4 195 -182 -195 190
		mu 0 4 99 96 95 97
		f 4 98 -183 -196 192
		mu 0 4 59 54 96 99
		f 4 -197 -126 -125 20
		mu 0 4 12 71 72 13
		f 4 -21 18 65 -198
		mu 0 4 101 126 14 10
		f 4 198 203 220 -203
		mu 0 4 130 131 132 133
		f 4 199 205 -201 -205
		mu 0 4 134 135 136 137
		f 4 224 223 -202 -222
		mu 0 4 138 139 140 141
		f 4 201 209 -199 -209
		mu 0 4 142 143 131 130
		f 4 -210 -224 225 -204
		mu 0 4 131 144 145 132
		f 4 208 202 222 221
		mu 0 4 141 130 133 138
		f 4 -213 210 -200 -212
		mu 0 4 146 147 135 134
		f 4 -215 211 204 206
		mu 0 4 148 146 134 149
		f 4 200 207 -217 -207
		mu 0 4 149 150 151 148
		f 4 -218 -208 -206 -211
		mu 0 4 147 152 153 135
		f 4 -221 218 212 -220
		mu 0 4 133 132 147 146
		f 4 -223 219 214 213
		mu 0 4 138 133 146 148
		f 4 216 215 -225 -214
		mu 0 4 148 151 139 138
		f 4 -226 -216 217 -219
		mu 0 4 132 145 152 147;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bw" 3;
createNode transform -n "bottom_geo" -p "C_Robot_Geo";
createNode mesh -n "bottom_geoShape" -p "bottom_geo";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "bottom_geoShapeOrig" -p "bottom_geo";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 192 ".uvst[0].uvsp[0:191]" -type "float2" 0.61525369 0.20792595
		 0.58191979 0.13675535 0.57043588 0.029072369 0.55708164 0.25449115 0.71976846 0.37522259
		 0.72424942 0.24774456 0.66894764 0.26547793 0.59325063 0.31511486 0.68324816 0.0052216891
		 0.53995478 0.30182651 0.65122789 0.54587269 0.69374949 0.54595476 0.59351057 0.54396337
		 0.63521129 0.54552937 0.68694866 0.13890338 0.65918708 0.20835829 0.72651631 0.1462394
		 0.58011699 0.30439851 0.56065625 0.36062503 0.59144372 0.28430399 0.63350809 0.25322738
		 0.72443688 0.23472771 0.66508389 0.24642272 0.72909695 0.014640629 0.53417903 0.35630035
		 0.72544831 0.20185721 0.64830357 0.26935944 0.60024083 0.30168712 0.55171961 0.75501728
		 0.65379477 0.76015913 0.57796878 0.76020247 0.62654263 0.75982249 0.64970571 0.65629703
		 0.57010192 0.66306525 0.68136495 0.64225876 0.63009465 0.65605998 0.59879237 0.6407631
		 0.59738868 0.66724288 0.61576372 0.20912111 0.55600029 0.25412601 0.5709663 0.028992712
		 0.58239532 0.13629985 0.66866726 0.26555118 0.59385175 0.31509936 0.5994578 0.30112398
		 0.64723366 0.26939201 0.68370777 0.0053600669 0.54001838 0.3008548 0.65086001 0.54515582
		 0.63517481 0.54438573 0.593292 0.54291666 0.5660339 0.54434091 0.68733686 0.13891363
		 0.65964812 0.20781362 0.59183258 0.28384328 0.63341051 0.25356185 0.66442007 0.24702561
		 0.58037752 0.30551207 0.65338373 0.76078594 0.70408118 0.76021785 0.57774556 0.76067752
		 0.62610549 0.76013339 0.64926827 0.65603262 0.681485 0.64187735 0.56995344 0.66303599
		 0.63003546 0.65578115 0.59850317 0.64017314 0.59720886 0.66708958 0.56067026 0.35968357
		 0.53357065 0.35719237 0.66518074 0.36018786 0.57328165 0.36710322 0.57225943 0.36745676
		 0.66497582 0.35916317 0.64910215 0.095174015 0.62678045 0.098639488 0.62382323 0.058287024
		 0.64750212 0.055972755 0.4547047 0.31312793 0.48934761 0.34620824 0.48970327 0.34611404
		 0.49453199 0.20110452 0.63753408 0.35014164 0.64867115 0.095231332 0.62633848 0.098808385
		 0.62338459 0.058341481 0.64706975 0.055969484 0.454005 0.31242663 0.49348006 0.20115107
		 0.63832694 0.35034722 0.55162835 0.75571299 0.68211126 0.66593301 0.57118553 0.63951474
		 0.59988683 0.51755834 0.69383246 0.54454803 0.63805956 0.52912664 0.68190628 0.6661393
		 0.5712654 0.64010501 0.59965867 0.51874727 0.56630129 0.54531014 0.63795549 0.53015715
		 0.70456845 0.75927347 0.72476262 0.23494977 0.72445279 0.24753278 0.72503692 0.20163345
		 0.72612965 0.14601612 0.72866184 0.014416391 0.71984786 0.37617934 0.76750052 0.91805148
		 0.7704159 0.85027182 0.79144859 0.84973395 0.79334354 0.92626357 0.14976066 0.77225661
		 0.038992465 0.76226324 0.015162379 0.61453229 0.18700679 0.65093017 0.92644936 0.91761655
		 0.92113954 0.88135463 0.96138006 0.88395822 0.96888202 0.91062182 0.58598113 0.92266154
		 0.57660925 0.83795959 0.68877089 0.85467756 0.68497181 0.90868306 0.59535968 0.78818828
		 0.68844068 0.77935028 0.68770397 0.98325586 0.70052898 0.97413224 0.71405172 0.86243623
		 0.71030557 0.90255898 0.74318588 0.95744407 0.79112029 0.96071571 0.13642579 0.98153746
		 0.049674988 0.98066676 0.047628105 0.85531431 0.13161595 0.86066365 0.75231069 0.80911493
		 0.79786503 0.81524265 0.81442606 0.85086906 0.8101716 0.92493927 0.037050307 0.78565174
		 0.14969495 0.79192448 0.89776284 0.94794828 0.88456076 0.84777677 0.9812234 0.86171269
		 0.98839897 0.92813492 0.86344647 0.86217159 0.86080998 0.91754121 0.7045002 0.78945923
		 0.61206573 0.96620077 0.76750052 0.91805148 0.79334354 0.92626357 0.79144859 0.84973395
		 0.7704159 0.85027182 0.14976066 0.77225661 0.18700679 0.65093017 0.015162379 0.61453229
		 0.038992465 0.76226324 0.92644936 0.91761655 0.96888202 0.91062182 0.96138006 0.88395822
		 0.92113954 0.88135463 0.58598113 0.92266154 0.68497181 0.90868306 0.68877089 0.85467756
		 0.57660925 0.83795959 0.68844068 0.77935028 0.59535968 0.78818828 0.68770397 0.98325586
		 0.70052898 0.97413224 0.71030557 0.90255898 0.71405172 0.86243623 0.74318588 0.95744407
		 0.79112029 0.96071571 0.13642579 0.98153746 0.13161595 0.86066365 0.047628105 0.85531431
		 0.049674988 0.98066676 0.79786503 0.81524265 0.75231069 0.80911493 0.8101716 0.92493927
		 0.81442606 0.85086906 0.14969495 0.79192448 0.037050307 0.78565174 0.89776284 0.94794828
		 0.88456076 0.84777677 0.9812234 0.86171269 0.98839897 0.92813492 0.86344647 0.86217159
		 0.86080998 0.91754121 0.7045002 0.78945923 0.61206573 0.96620077;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 120 ".vt[0:119]"  1.87060595 8.0053958893 0.70433009 2.79437184 5.41165018 0.82470572
		 1.87060595 7.95566034 -1.016134501 2.79437184 5.41165018 -1.23266125 0.017181378 8.0053958893 1.35225582
		 0.017181378 7.95566034 -1.4887774 0.017181378 6.24890804 -1.51656651 0.017181378 6.24890804 1.1105051
		 0.017181378 7.16015148 1.41515994 0.017181378 7.16015148 -1.48441553 2.13772678 6.88682318 -0.91601372
		 2.13772678 6.88682318 0.61272335 0.44112939 5.41165018 1.45673561 0.44112939 5.41165018 -1.689924
		 1.46897936 7.16015148 1.26575923 1.22094774 7.001262188 -1.41077089 1.65495908 7.63500929 -0.67768574
		 1.65495908 7.63500929 0.36843559 1.18393171 5.82116699 0.32444653 1.18393171 5.82116699 -0.58282948
		 1.72749448 5.82116699 -0.5838449 1.72749448 5.82116699 0.3050243 1.28016961 1.99597406 0.32444653
		 1.18393171 1.99597406 -0.42865458 1.72749448 1.99597406 -0.41774538 1.60339856 1.99597406 0.33421293
		 1.25437212 3.97784424 0.32444653 1.63666391 3.97784424 0.34503779 1.72749448 3.73801279 -0.21224365
		 1.18393171 3.73452806 -0.22276446 1.18393171 4.16117239 -0.22276446 1.72749448 4.18016815 -0.21224365
		 -2.10336399 6.88682318 0.61272335 -2.76000881 5.41165018 0.82470572 -2.76000881 5.41165018 -1.23266125
		 -2.10336399 6.88682318 -0.91601372 -1.83624291 8.0053958893 0.70433009 -1.83624291 7.95566034 -1.016134501
		 -0.40676665 5.41165018 -1.689924 -1.18658483 7.001262188 -1.41077089 -1.24580693 1.99597406 0.32444653
		 -1.14956903 1.99597406 -0.42865458 -1.69313145 1.99597406 -0.41774538 -1.56903553 1.99597406 0.33421293
		 -0.40676665 5.41165018 1.45673561 -1.43461657 7.16015148 1.26575923 -1.62059617 7.63500929 -0.67768574
		 -1.62059617 7.63500929 0.36843559 -1.14956903 5.82116699 -0.58282948 -1.14956903 5.82116699 0.32444653
		 -1.69313145 5.82116699 -0.5838449 -1.69313145 5.82116699 0.3050243 -1.22000921 3.97784424 0.32444653
		 -1.14956903 4.16117239 -0.22276446 -1.14956903 3.73452806 -0.22276446 -1.602301 3.97784424 0.34503779
		 -1.69313145 3.73801279 -0.21224365 -1.69313145 4.18016815 -0.21224365 -1.12926292 7.74612474 0.66358173
		 -1.15325963 8.0053958893 0.94308937 -1.2802155 7.95566034 -1.15792727 -1.20746183 7.71589422 -0.88228607
		 1.39616561 7.6935358 0.52389395 1.31457853 8.0053958893 0.89870775 1.31457853 7.95566034 -1.15792727
		 1.33586252 7.69748354 -0.83571482 0.017181378 7.77587652 1.21797681 0.017181378 7.69941807 -1.34522462
		 0.79992425 0.0079636574 -0.9199999 2.23558331 0.0079638958 -0.9199999 1.12203455 0.0079638958 2.22955513
		 2.029771328 0.0079638958 2.22955513 0.48901743 2.74860024 1.084015608 2.73901939 3.15902209 1.084015608
		 0.69280607 2.57577229 -0.96025258 2.08169651 2.87359476 -0.9602527 1.94877148 0.80342877 -0.67492539
		 1.15242887 0.80342871 -0.67492539 0.9612937 0.91537404 0.47413874 2.2480278 0.91537422 0.47413874
		 0.76183522 0.0079636574 1.041538119 2.25328732 0.0079638958 0.90098208 1.16943479 0.57907438 1.1247232
		 2.058751583 0.59471667 1.094463587 1.0034644604 0.0079638958 0.55258024 2.19346046 0.0079638958 0.50918305
		 1.11081409 2.22687054 0.45066524 2.018505812 2.35969353 0.45066524 1.868922 2.26921034 -0.59589404
		 1.14367008 2.26920986 -0.60240972 2.20858383 0.0079638958 1.33547425 0.833875 0.0079636574 1.35388923
		 0.95234686 1.18973756 0.56541383 2.2597754 1.25116217 0.56541389 -0.79992425 0.0079636574 -0.9199999
		 -2.23558331 0.0079638958 -0.9199999 -1.12203455 0.0079638958 2.22955513 -2.029771328 0.0079638958 2.22955513
		 -0.48901743 2.74860024 1.084015608 -2.73901939 3.15902209 1.084015608 -0.69280607 2.57577229 -0.96025258
		 -2.08169651 2.87359476 -0.9602527 -1.94877148 0.80342877 -0.67492539 -1.15242887 0.80342871 -0.67492539
		 -0.9612937 0.91537404 0.47413874 -2.2480278 0.91537422 0.47413874 -0.76183522 0.0079636574 1.041538119
		 -2.25328732 0.0079638958 0.90098208 -1.16943479 0.57907438 1.1247232 -2.058751583 0.59471667 1.094463587
		 -1.0034644604 0.0079638958 0.55258024 -2.19346046 0.0079638958 0.50918305 -1.11081409 2.22687054 0.45066524
		 -2.018505812 2.35969353 0.45066524 -1.868922 2.26921034 -0.59589404 -1.14367008 2.26920986 -0.60240972
		 -2.20858383 0.0079638958 1.33547425 -0.833875 0.0079636574 1.35388923 -0.95234686 1.18973756 0.56541383
		 -2.2597754 1.25116217 0.56541389;
	setAttr -s 238 ".ed";
	setAttr ".ed[0:165]"  0 17 1 2 16 1 0 2 1 1 3 1 2 64 1 3 13 1 4 63 1 4 5 1
		 5 67 1 7 12 1 6 7 1 7 8 1 8 66 1 9 6 1 10 3 1 9 15 1 11 1 1 10 11 1 11 14 1 12 1 1
		 13 6 1 12 13 1 14 8 1 12 14 1 15 10 1 13 15 1 14 7 1 16 10 1 17 11 1 16 17 1 17 62 1
		 12 18 1 13 19 1 18 19 1 3 20 1 20 19 1 1 21 1 21 20 1 18 21 1 18 26 1 19 30 1 22 23 1
		 20 31 1 24 23 1 21 27 1 25 24 1 22 25 1 26 22 1 27 25 1 26 27 1 28 24 1 29 23 1 27 28 1
		 28 29 1 29 26 1 26 30 1 30 31 1 31 27 1 31 28 1 30 29 1 32 33 1 33 34 1 35 34 1 35 32 1
		 4 59 1 36 37 1 37 60 1 38 39 1 39 35 1 34 38 1 40 41 1 42 41 1 43 42 1 40 43 1 44 45 1
		 45 7 1 7 44 1 46 35 1 46 47 1 47 32 1 45 8 1 38 6 1 44 38 1 44 33 1 32 45 1 47 58 1
		 9 39 1 37 46 1 36 47 1 38 48 1 49 48 1 44 49 1 34 50 1 50 48 1 33 51 1 51 50 1 49 51 1
		 52 53 1 53 54 1 54 52 1 49 52 1 52 55 1 51 55 1 52 40 1 55 43 1 55 56 1 56 42 1 56 54 1
		 54 41 1 48 53 1 50 57 1 53 57 1 57 55 1 57 56 1 59 36 1 60 5 1 61 46 1 45 58 1 58 59 1
		 59 60 1 60 61 1 61 39 1 63 0 1 64 5 1 65 16 1 14 62 1 62 63 1 63 64 1 64 65 1 65 15 1
		 66 4 1 58 66 1 66 62 1 67 9 1 65 67 1 67 61 1 68 69 1 70 71 1 72 73 1 74 75 1 68 84 1
		 69 85 1 70 82 1 71 83 1 72 74 1 73 75 1 76 69 1 77 68 1 76 77 1 78 92 1 77 78 1 79 93 1
		 78 79 1 79 76 1 80 91 1 81 90 1 82 78 1 83 79 1 81 80 1 80 82 1 83 82 1 83 81 1 84 80 1
		 85 81 1 78 84 1 84 85 1;
	setAttr ".ed[166:237]" 85 79 1 72 86 1 73 87 1 86 87 1 75 88 1 87 88 1 74 89 1
		 89 88 1 86 89 1 90 71 1 91 70 1 83 90 1 90 91 1 91 82 1 75 76 1 74 77 1 92 72 1 93 73 1
		 92 93 1 93 76 1 92 77 1 94 95 1 96 97 1 98 99 1 100 101 1 94 110 1 95 111 1 96 108 1
		 97 109 1 98 100 1 99 101 1 102 95 1 103 94 1 102 103 1 104 118 1 103 104 1 105 119 1
		 104 105 1 105 102 1 106 117 1 107 116 1 108 104 1 109 105 1 107 106 1 106 108 1 109 108 1
		 109 107 1 110 106 1 111 107 1 104 110 1 110 111 1 111 105 1 98 112 1 99 113 1 112 113 1
		 101 114 1 113 114 1 100 115 1 115 114 1 112 115 1 116 97 1 117 96 1 109 116 1 116 117 1
		 117 108 1 101 102 1 100 103 1 118 98 1 119 99 1 118 119 1 119 102 1 118 103 1;
	setAttr -s 124 -ch 476 ".fc[0:123]" -type "polyFaces" 
		f 4 16 3 -15 17
		mu 0 4 0 1 88 3
		f 4 -8 6 127 123
		mu 0 4 4 103 6 70
		f 4 25 24 14 5
		mu 0 4 87 9 3 88
		f 4 41 -44 -46 -47
		mu 0 4 100 98 12 13
		f 3 23 26 9
		mu 0 3 14 15 105
		f 4 134 -9 -124 128
		mu 0 4 17 68 72 7
		f 4 29 28 -18 -28
		mu 0 4 19 20 0 3
		f 4 -131 132 126 -7
		mu 0 4 103 21 22 6
		f 4 -11 -21 -22 -10
		mu 0 4 105 106 8 14
		f 4 19 -17 18 -24
		mu 0 4 14 1 0 15
		f 4 15 -26 20 -14
		mu 0 4 69 9 87 79
		f 3 -27 22 -12
		mu 0 3 105 15 104
		f 4 0 -30 -2 -3
		mu 0 4 26 20 19 27
		f 4 21 32 -34 -32
		mu 0 4 14 8 86 83
		f 4 -6 34 35 -33
		mu 0 4 8 2 85 86
		f 4 -4 36 37 -35
		mu 0 4 2 1 84 85
		f 4 -20 31 38 -37
		mu 0 4 1 14 83 84
		f 3 55 59 54
		mu 0 3 32 96 34
		f 4 -39 39 49 -45
		mu 0 4 31 29 32 35
		f 4 -50 47 46 -49
		mu 0 4 35 32 10 13
		f 4 -53 48 45 -51
		mu 0 4 36 35 13 12
		f 4 -54 50 43 -52
		mu 0 4 97 36 12 99
		f 4 -55 51 -42 -48
		mu 0 4 32 34 11 10
		f 4 33 40 -56 -40
		mu 0 4 29 101 96 32
		f 4 -36 42 -57 -41
		mu 0 4 28 30 37 33
		f 4 -38 44 -58 -43
		mu 0 4 30 31 35 37
		f 3 -59 57 52
		mu 0 3 36 37 35
		f 4 -60 56 58 53
		mu 0 4 97 33 37 36
		f 4 -64 62 -62 -61
		mu 0 4 38 39 81 41
		f 4 119 -67 -66 -115
		mu 0 4 42 73 82 45
		f 4 -70 -63 -69 -68
		mu 0 4 78 81 39 47
		f 4 73 72 71 -71
		mu 0 4 95 49 50 93
		f 3 -77 -76 -75
		mu 0 3 52 16 53
		f 4 77 63 -80 -79
		mu 0 4 54 39 38 55
		f 4 76 82 81 10
		mu 0 4 16 52 46 23
		f 4 74 -85 60 -84
		mu 0 4 52 53 38 41
		f 4 117 -86 79 84
		mu 0 4 53 56 55 38
		f 4 13 -82 67 -87
		mu 0 4 24 80 78 47
		f 4 121 68 -78 -117
		mu 0 4 57 47 39 54
		f 3 11 -81 75
		mu 0 3 16 25 53
		f 4 66 120 116 -88
		mu 0 4 44 43 57 54
		f 4 65 87 78 -89
		mu 0 4 45 44 54 55
		f 4 118 114 88 85
		mu 0 4 56 42 45 55
		f 4 91 90 -90 -83
		mu 0 4 52 74 77 46
		f 4 89 -94 -93 69
		mu 0 4 46 77 76 40
		f 4 92 -96 -95 61
		mu 0 4 40 76 75 41
		f 4 94 -97 -92 83
		mu 0 4 41 75 74 52
		f 3 -100 -99 -98
		mu 0 3 62 63 91
		f 4 102 -102 -101 96
		mu 0 4 61 65 62 58
		f 4 104 -74 -104 101
		mu 0 4 65 49 48 62
		f 4 106 -73 -105 105
		mu 0 4 66 50 49 65
		f 4 108 -72 -107 107
		mu 0 4 92 51 50 66
		f 4 103 70 -109 99
		mu 0 4 62 48 94 63
		f 4 100 97 -110 -91
		mu 0 4 58 62 91 59
		f 4 109 111 -111 93
		mu 0 4 90 64 67 60
		f 4 110 112 -103 95
		mu 0 4 60 67 65 61
		f 3 -106 -113 113
		mu 0 3 66 65 67
		f 4 -108 -114 -112 98
		mu 0 4 92 66 67 64
		f 4 64 -119 131 130
		mu 0 4 5 42 56 102
		f 4 -116 -120 -65 7
		mu 0 4 107 73 42 5
		f 4 -121 115 8 135
		mu 0 4 57 43 71 18
		f 4 -126 -19 -29 30
		mu 0 4 22 15 0 20
		f 4 -127 -31 -1 -123
		mu 0 4 6 22 20 26
		f 4 -128 122 2 4
		mu 0 4 70 6 26 89
		f 4 1 -125 -129 -5
		mu 0 4 27 19 17 7
		f 4 -130 124 27 -25
		mu 0 4 9 17 19 3
		f 4 -132 -118 80 12
		mu 0 4 102 56 53 25
		f 4 -133 -13 -23 125
		mu 0 4 22 21 104 15
		f 4 129 -16 -134 -135
		mu 0 4 17 9 69 68
		f 4 -136 133 86 -122
		mu 0 4 57 18 24 47
		f 4 165 163 158 -163
		mu 0 4 108 109 110 111
		f 4 184 183 -139 -183
		mu 0 4 112 113 114 115
		f 4 169 171 -174 -175
		mu 0 4 116 117 118 119
		f 4 139 180 148 -182
		mu 0 4 120 121 122 123
		f 4 -146 -184 185 -181
		mu 0 4 121 124 125 122
		f 3 186 150 149
		mu 0 3 126 123 127
		f 4 -149 146 -137 -148
		mu 0 4 123 122 128 129
		f 4 164 162 159 156
		mu 0 4 130 108 111 131
		f 4 137 143 160 -143
		mu 0 4 132 133 134 135
		f 4 166 -158 161 -164
		mu 0 4 109 136 137 110
		f 4 -159 155 178 -155
		mu 0 4 111 110 138 139
		f 3 -160 154 179
		mu 0 3 131 111 139
		f 4 -161 157 -153 -157
		mu 0 4 135 134 140 141
		f 3 -162 177 -156
		mu 0 3 110 137 138
		f 4 -151 147 140 -165
		mu 0 4 130 123 129 108
		f 4 136 141 -166 -141
		mu 0 4 129 128 109 108
		f 4 -147 -154 -167 -142
		mu 0 4 128 122 136 109
		f 4 138 168 -170 -168
		mu 0 4 142 143 117 116
		f 4 145 170 -172 -169
		mu 0 4 143 144 118 117
		f 4 -140 172 173 -171
		mu 0 4 144 145 119 118
		f 4 -145 167 174 -173
		mu 0 4 145 142 116 119
		f 3 -178 -144 -176
		mu 0 3 138 137 146
		f 4 -179 175 -138 -177
		mu 0 4 139 138 146 147
		f 3 -180 176 142
		mu 0 3 131 139 147
		f 4 152 151 -185 -150
		mu 0 4 141 140 113 112
		f 3 -186 -152 153
		mu 0 3 122 125 148
		f 4 182 144 181 -187
		mu 0 4 126 149 120 123
		f 4 213 -210 -215 -217
		mu 0 4 150 151 152 153
		f 4 233 189 -235 -236
		mu 0 4 154 155 156 157
		f 4 225 224 -223 -221
		mu 0 4 158 159 160 161
		f 4 232 -200 -232 -191
		mu 0 4 162 163 164 165
		f 4 231 -237 234 196
		mu 0 4 165 164 166 167
		f 3 -201 -202 -238
		mu 0 3 168 169 163
		f 4 198 187 -198 199
		mu 0 4 163 170 171 164
		f 4 -208 -211 -214 -216
		mu 0 4 172 173 151 150
		f 4 193 -212 -195 -189
		mu 0 4 174 175 176 177
		f 4 214 -213 208 -218
		mu 0 4 153 152 178 179
		f 4 205 -230 -207 209
		mu 0 4 151 180 181 152
		f 3 -231 -206 210
		mu 0 3 173 180 151
		f 4 207 203 -209 211
		mu 0 4 175 182 183 176
		f 3 206 -229 212
		mu 0 3 152 181 178
		f 4 215 -192 -199 201
		mu 0 4 172 150 170 163
		f 4 191 216 -193 -188
		mu 0 4 170 150 153 171
		f 4 192 217 204 197
		mu 0 4 171 153 179 164
		f 4 218 220 -220 -190
		mu 0 4 184 158 161 185
		f 4 219 222 -222 -197
		mu 0 4 185 161 160 186
		f 4 221 -225 -224 190
		mu 0 4 186 160 159 187
		f 4 223 -226 -219 195
		mu 0 4 187 159 158 184
		f 3 226 194 228
		mu 0 3 181 188 178
		f 4 227 188 -227 229
		mu 0 4 180 189 188 181
		f 3 -194 -228 230
		mu 0 3 173 189 180
		f 4 200 235 -203 -204
		mu 0 4 182 154 157 183
		f 3 -205 202 236
		mu 0 3 164 190 166
		f 4 237 -233 -196 -234
		mu 0 4 168 163 162 191;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "C_Robot_Anim";
createNode transform -n "torso_anim" -p "C_Robot_Anim";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".rp" -type "double3" 7.0943617811654861e-17 8.5365370207398943 -0.018175814976949763 ;
	setAttr ".sp" -type "double3" 7.0943617811654861e-17 8.5365370207398943 -0.018175814976949763 ;
createNode nurbsCurve -n "torso_animShape" -p "torso_anim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.3813243423632191 8.5365370207398943 -1.3995001573401666
		-1.5192596158834557e-16 8.5365370207398943 -1.9716634339831087
		-1.3813243423632173 8.5365370207398943 -1.3995001573401671
		-1.953487619006159 8.5365370207398943 -0.018175814976950328
		-1.381324342363218 8.5365370207398943 1.3631485273862674
		-5.1768032629046117e-16 8.5365370207398943 1.9353118040292097
		1.3813243423632169 8.5365370207398943 1.363148527386268
		1.953487619006159 8.5365370207398943 -0.018175814976948715
		1.3813243423632191 8.5365370207398943 -1.3995001573401666
		-1.5192596158834557e-16 8.5365370207398943 -1.9716634339831087
		-1.3813243423632173 8.5365370207398943 -1.3995001573401671
		;
createNode transform -n "waist_anim" -p "C_Robot_Anim";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".rp" -type "double3" 4.2464494681810561e-16 7.3913983732815689 -0.045052099000276083 ;
	setAttr ".sp" -type "double3" 4.2464494681810561e-16 7.3913983732815689 -0.045052099000276083 ;
createNode nurbsCurve -n "waist_animShape" -p "waist_anim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.8307085782133148 7.3913983732815689 -1.8757606772135875
		1.2926953185051205e-16 7.3913983732815689 -2.6340649990623088
		-1.8307085782133117 7.3913983732815689 -1.8757606772135882
		-2.5890129000620323 7.3913983732815689 -0.045052099000276832
		-1.8307085782133123 7.3913983732815689 1.7856564792130356
		-3.554751674527422e-16 7.3913983732815689 2.5439608010617571
		1.8307085782133119 7.3913983732815689 1.7856564792130365
		2.5890129000620332 7.3913983732815689 -0.045052099000274695
		1.8307085782133148 7.3913983732815689 -1.8757606772135875
		1.2926953185051205e-16 7.3913983732815689 -2.6340649990623088
		-1.8307085782133117 7.3913983732815689 -1.8757606772135882
		;
createNode transform -n "head_anim" -p "C_Robot_Anim";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".rp" -type "double3" 7.3757161000813373e-16 14.356053530437718 -0.018175814976949763 ;
	setAttr ".sp" -type "double3" 7.3757161000813373e-16 14.356053530437718 -0.018175814976949763 ;
createNode nurbsCurve -n "head_animShape" -p "head_anim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.3813243423632198 14.356053530437718 -1.3995001573401666
		5.1470203060813336e-16 15.318376201793484 -1.9716634339831087
		-1.3813243423632167 14.356053530437718 -1.3995001573401671
		-1.9534876190061583 14.356053530437718 -0.018175814976950328
		-1.3813243423632173 14.356053530437718 1.3631485273862674
		1.4894766590601771e-16 14.356053530437718 1.9353118040292097
		1.3813243423632175 14.356053530437718 1.363148527386268
		1.9534876190061596 14.356053530437718 -0.018175814976948715
		1.3813243423632198 14.356053530437718 -1.3995001573401666
		5.1470203060813336e-16 15.318376201793484 -1.9716634339831087
		-1.3813243423632167 14.356053530437718 -1.3995001573401671
		;
createNode transform -n "chest_anim" -p "C_Robot_Anim";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".rp" -type "double3" 7.0943617811654355e-17 10.205867693338691 -0.018175814976949815 ;
	setAttr ".sp" -type "double3" 7.0943617811654355e-17 10.205867693338691 -0.018175814976949815 ;
createNode nurbsCurve -n "chest_animShape" -p "chest_anim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.3012109928629734 10.205867693338691 -2.4297970578139472
		-4.616897999353313e-16 10.205867693338691 -3.4287232839040929
		-3.3012109928629694 10.205867693338691 -2.4297970578139481
		-4.6686173583619635 10.205867693338691 -0.018175814976950803
		-3.3012109928629707 10.205867693338691 2.3934454278600481
		-1.3358019055516839e-15 10.205867693338691 3.3923716539501947
		3.301210992862968 10.205867693338691 2.393445427860049
		4.6686173583619635 10.205867693338691 -0.018175814976947983
		3.3012109928629734 10.205867693338691 -2.4297970578139472
		-4.616897999353313e-16 10.205867693338691 -3.4287232839040929
		-3.3012109928629694 10.205867693338691 -2.4297970578139481
		;
createNode transform -n "L_clavicle_anim" -p "C_Robot_Anim";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".rp" -type "double3" 1.4528466920724901 12.978720392534807 -0.014009244297008117 ;
	setAttr ".sp" -type "double3" 1.4528466920724901 12.978720392534807 -0.014009244297008117 ;
createNode nurbsCurve -n "L_clavicle_animShape" -p "L_clavicle_anim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.59251524726289517 12.277986028239081 2.9746906574796799
		1.4528466920724907 12.40856774353901 2.9746906574796799
		2.3131781368820836 12.277986028239079 2.9746906574796799
		2.1356327509166193 12.978720392534807 2.9746906574796799
		2.3131781368820841 13.679454756830534 2.9746906574796799
		1.452846692072491 13.548873041530605 2.9746906574796799
		0.59251524726289706 13.679454756830536 2.9746906574796799
		0.77006063322836082 12.978720392534807 2.9746906574796799
		0.59251524726289517 12.277986028239081 2.9746906574796799
		1.4528466920724907 12.40856774353901 2.9746906574796799
		2.3131781368820836 12.277986028239079 2.9746906574796799
		;
createNode transform -n "L_shoulder_anim" -p "L_clavicle_anim";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".rp" -type "double3" 4.3538966178894052 12.950670242309569 -0.068027500739356012 ;
	setAttr ".sp" -type "double3" 4.3538966178894052 12.950670242309569 -0.068027500739356012 ;
createNode nurbsCurve -n "L_shoulder_animShape" -p "L_shoulder_anim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.3538966178894176 14.680413973880791 1.6617162308318636
		4.3538966178894052 12.950670242309569 2.3781995438785111
		4.3538966178893928 11.220926510738348 1.6617162308318649
		4.3538966178893874 10.504443197691701 -0.068027500739354999
		4.3538966178893928 11.220926510738346 -1.7977712323105763
		4.3538966178894052 12.950670242309567 -2.514254545357224
		4.3538966178894176 14.680413973880789 -1.7977712323105774
		4.3538966178894229 15.396897286927436 -0.068027500739357621
		4.3538966178894176 14.680413973880791 1.6617162308318636
		4.3538966178894052 12.950670242309569 2.3781995438785111
		4.3538966178893928 11.220926510738348 1.6617162308318649
		;
createNode transform -n "L_elbow_anim" -p "L_shoulder_anim";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".rp" -type "double3" 6.9190889464876193 12.950254252637807 -0.055882880394723972 ;
	setAttr ".sp" -type "double3" 6.9190889464876193 12.950254252637807 -0.055882880394723972 ;
createNode nurbsCurve -n "L_elbow_animShape" -p "L_elbow_anim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		6.9190889464876246 13.70300466924377 0.69686753621123676
		6.9190889464876193 12.950254252637807 1.0086669678514242
		6.919088946487614 12.197503836031846 0.69686753621123743
		6.9190889464876113 11.885704404391658 -0.055882880394723534
		6.919088946487614 12.197503836031846 -0.80863329700068509
		6.9190889464876193 12.950254252637807 -1.1204327286408724
		6.9190889464876246 13.703004669243768 -0.80863329700068554
		6.9190889464876273 14.014804100883955 -0.055882880394724672
		6.9190889464876246 13.70300466924377 0.69686753621123676
		6.9190889464876193 12.950254252637807 1.0086669678514242
		6.919088946487614 12.197503836031846 0.69686753621123743
		;
createNode transform -n "L_hand_anim" -p "L_elbow_anim";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".rp" -type "double3" 8.0803138384933568 12.951278241479177 -0.040035739070360538 ;
	setAttr ".sp" -type "double3" 8.0803138384933568 12.951278241479177 -0.040035739070360538 ;
createNode nurbsCurve -n "L_hand_animShape" -p "L_hand_anim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		8.0803138384933657 14.27809458311757 1.2867806025680308
		8.0803138384933568 12.951278241479177 1.8363659260529079
		8.0803138384933479 11.624461899840785 1.286780602568032
		8.0803138384933426 11.074876576355908 -0.040035739070359767
		8.0803138384933479 11.624461899840783 -1.3668520807087523
		8.0803138384933568 12.951278241479177 -1.9164374041936296
		8.0803138384933657 14.278094583117568 -1.3668520807087532
		8.080313838493371 14.827679906602445 -0.040035739070361773
		8.0803138384933657 14.27809458311757 1.2867806025680308
		8.0803138384933568 12.951278241479177 1.8363659260529079
		8.0803138384933479 11.624461899840785 1.286780602568032
		;
createNode transform -n "L_claw_1_anim" -p "L_hand_anim";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".rp" -type "double3" 11.472440159266684 14.043015610043641 -0.12799170326533257 ;
	setAttr ".sp" -type "double3" 11.472440159266684 14.043015610043641 -0.12799170326533257 ;
createNode nurbsCurve -n "L_claw_1_animShape" -p "L_claw_1_anim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		11.472440159266688 14.542995838403355 0.37198852509438074
		11.472440159266684 14.043015610043641 0.57908711659937173
		11.47244015926668 13.543035381683927 0.37198852509438118
		11.47244015926668 13.525076280270596 -0.12799170326533227
		11.47244015926668 13.543035381683927 -0.62797193162504605
		11.472440159266684 14.043015610043641 -0.83507052313003716
		11.472440159266688 14.542995838403355 -0.62797193162504639
		11.472440159266691 15.132148124157531 -0.12799170326533305
		11.472440159266688 14.542995838403355 0.37198852509438074
		11.472440159266684 14.043015610043641 0.57908711659937173
		11.47244015926668 13.543035381683927 0.37198852509438118
		;
createNode transform -n "L_claw_2_anim" -p "L_hand_anim";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".rp" -type "double3" 11.494945806946149 11.914511063823593 0.046252605247053824 ;
	setAttr ".sp" -type "double3" 11.494945806946149 11.914511063823593 0.046252605247053824 ;
createNode nurbsCurve -n "L_claw_2_animShape" -p "L_claw_2_anim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		11.494945806946152 12.414491292183307 0.54623283360676711
		11.494945806946149 11.914511063823593 0.75333142511175821
		11.494945806946145 11.414530835463879 0.54623283360676755
		11.494945806946138 10.718853454086887 0.046252605247054122
		11.494945806946145 11.414530835463879 -0.45372762311265968
		11.494945806946149 11.914511063823593 -0.66082621461765068
		11.494945806946152 12.414491292183307 -0.45372762311265996
		11.494945806946152 12.424635605537809 0.046252605247053359
		11.494945806946152 12.414491292183307 0.54623283360676711
		11.494945806946149 11.914511063823593 0.75333142511175821
		11.494945806946145 11.414530835463879 0.54623283360676755
		;
createNode transform -n "R_clavicle_anim" -p "C_Robot_Anim";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".rp" -type "double3" -1.4528466920724901 12.978720392534807 -0.026630795606339852 ;
	setAttr ".sp" -type "double3" -1.4528466920724901 12.978720392534807 -0.026630795606339852 ;
createNode nurbsCurve -n "R_clavicle_animShape" -p "R_clavicle_anim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.59251524726289517 12.277986028239081 2.9746906574796799
		-1.4528466920724907 12.40856774353901 2.9746906574796799
		-2.3131781368820836 12.277986028239079 2.9746906574796799
		-2.1356327509166193 12.978720392534807 2.9746906574796799
		-2.3131781368820841 13.679454756830534 2.9746906574796799
		-1.452846692072491 13.548873041530605 2.9746906574796799
		-0.59251524726289706 13.679454756830536 2.9746906574796799
		-0.77006063322836082 12.978720392534807 2.9746906574796799
		-0.59251524726289517 12.277986028239081 2.9746906574796799
		-1.4528466920724907 12.40856774353901 2.9746906574796799
		-2.3131781368820836 12.277986028239079 2.9746906574796799
		;
createNode transform -n "R_shoulder_anim" -p "R_clavicle_anim";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".rp" -type "double3" -4.3538966178894052 12.950670242309569 -0.068027500739356012 ;
	setAttr ".sp" -type "double3" -4.3538966178894052 12.950670242309569 -0.068027500739356012 ;
createNode nurbsCurve -n "R_shoulder_animShape" -p "R_shoulder_anim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-4.3538966178894176 14.680413973880791 1.6617162308318636
		-4.3538966178894052 12.950670242309569 2.3781995438785111
		-4.3538966178893928 11.220926510738348 1.6617162308318649
		-4.3538966178893874 10.504443197691701 -0.068027500739354999
		-4.3538966178893928 11.220926510738346 -1.7977712323105763
		-4.3538966178894052 12.950670242309567 -2.514254545357224
		-4.3538966178894176 14.680413973880789 -1.7977712323105774
		-4.3538966178894229 15.396897286927436 -0.068027500739357621
		-4.3538966178894176 14.680413973880791 1.6617162308318636
		-4.3538966178894052 12.950670242309569 2.3781995438785111
		-4.3538966178893928 11.220926510738348 1.6617162308318649
		;
createNode transform -n "R_elbow_anim" -p "R_shoulder_anim";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".rp" -type "double3" -6.9190889464876193 12.950254252637807 -0.055882880394723972 ;
	setAttr ".sp" -type "double3" -6.9190889464876193 12.950254252637807 -0.055882880394723972 ;
createNode nurbsCurve -n "R_elbow_animShape" -p "R_elbow_anim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-6.9190889464876246 13.70300466924377 0.69686753621123676
		-6.9190889464876193 12.950254252637807 1.0086669678514242
		-6.919088946487614 12.197503836031846 0.69686753621123743
		-6.9190889464876113 11.885704404391658 -0.055882880394723534
		-6.919088946487614 12.197503836031846 -0.80863329700068509
		-6.9190889464876193 12.950254252637807 -1.1204327286408724
		-6.9190889464876246 13.703004669243768 -0.80863329700068554
		-6.9190889464876273 14.014804100883955 -0.055882880394724672
		-6.9190889464876246 13.70300466924377 0.69686753621123676
		-6.9190889464876193 12.950254252637807 1.0086669678514242
		-6.919088946487614 12.197503836031846 0.69686753621123743
		;
createNode transform -n "R_hand_anim" -p "R_elbow_anim";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".rp" -type "double3" -8.0803138384933568 12.951278241479177 -0.040035739070360538 ;
	setAttr ".sp" -type "double3" -8.0803138384933568 12.951278241479177 -0.040035739070360538 ;
createNode nurbsCurve -n "R_hand_animShape" -p "R_hand_anim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-8.0803138384933657 14.27809458311757 1.2867806025680308
		-8.0803138384933568 12.951278241479177 1.8363659260529079
		-8.0803138384933479 11.624461899840785 1.286780602568032
		-8.0803138384933426 11.074876576355908 -0.040035739070359767
		-8.0803138384933479 11.624461899840783 -1.3668520807087523
		-8.0803138384933568 12.951278241479177 -1.9164374041936296
		-8.0803138384933657 14.278094583117568 -1.3668520807087532
		-8.080313838493371 14.827679906602445 -0.040035739070361773
		-8.0803138384933657 14.27809458311757 1.2867806025680308
		-8.0803138384933568 12.951278241479177 1.8363659260529079
		-8.0803138384933479 11.624461899840785 1.286780602568032
		;
createNode transform -n "R_claw_1_anim" -p "R_hand_anim";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".rp" -type "double3" -11.472440159266684 14.043015610043641 -0.12799170326533257 ;
	setAttr ".sp" -type "double3" -11.472440159266684 14.043015610043641 -0.12799170326533257 ;
createNode nurbsCurve -n "R_claw_1_animShape" -p "R_claw_1_anim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-11.472440159266688 14.542995838403355 0.37198852509438074
		-11.472440159266684 14.043015610043641 0.57908711659937173
		-11.47244015926668 13.543035381683927 0.37198852509438118
		-11.47244015926668 13.525076280270596 -0.12799170326533227
		-11.47244015926668 13.543035381683927 -0.62797193162504605
		-11.472440159266684 14.043015610043641 -0.83507052313003716
		-11.472440159266688 14.542995838403355 -0.62797193162504639
		-11.472440159266691 15.132148124157531 -0.12799170326533305
		-11.472440159266688 14.542995838403355 0.37198852509438074
		-11.472440159266684 14.043015610043641 0.57908711659937173
		-11.47244015926668 13.543035381683927 0.37198852509438118
		;
createNode transform -n "R_claw_2_anim" -p "R_hand_anim";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".rp" -type "double3" -11.494945806946149 11.914511063823593 0.046252605247053824 ;
	setAttr ".sp" -type "double3" -11.494945806946149 11.914511063823593 0.046252605247053824 ;
createNode nurbsCurve -n "R_claw_2_animShape" -p "R_claw_2_anim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-11.494945806946152 12.414491292183307 0.54623283360676711
		-11.494945806946149 11.914511063823593 0.75333142511175821
		-11.494945806946145 11.414530835463879 0.54623283360676755
		-11.494945806946138 10.718853454086887 0.046252605247054122
		-11.494945806946145 11.414530835463879 -0.45372762311265968
		-11.494945806946149 11.914511063823593 -0.66082621461765068
		-11.494945806946152 12.414491292183307 -0.45372762311265996
		-11.494945806946152 12.424635605537809 0.046252605247053359
		-11.494945806946152 12.414491292183307 0.54623283360676711
		-11.494945806946149 11.914511063823593 0.75333142511175821
		-11.494945806946145 11.414530835463879 0.54623283360676755
		;
createNode transform -n "L_foot_anim" -p "C_Robot_Anim";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".rp" -type "double3" 1.4044336136966189 0 0.43593589577554498 ;
	setAttr ".sp" -type "double3" 1.4044336136966189 0 0.43593589577554498 ;
createNode nurbsCurve -n "L_foot_animShape" -p "L_foot_anim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.3744718968560026 1.1209857002402668e-16 -1.3947726824377664
		1.4044336136966187 0.73436765399561577 -2.1530770042864877
		0.43439533053723622 1.1209857002402673e-16 -1.3947726824377671
		0.80855987238903004 8.9839718900446397e-17 0.4359358957755442
		0.43439533053723578 -1.120985700240267e-16 2.2666444739888565
		1.4044336136966185 -1.5853131805060878e-16 3.0249487958375783
		2.3744718968560012 -1.1209857002402675e-16 2.2666444739888574
		2.7762749097617307 -8.5147480177488022e-32 0.43593589577554637
		2.3744718968560026 1.1209857002402668e-16 -1.3947726824377664
		1.4044336136966187 0.73436765399561577 -2.1530770042864877
		0.43439533053723622 1.1209857002402673e-16 -1.3947726824377671
		;
createNode transform -n "R_foot_anim" -p "C_Robot_Anim";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".rp" -type "double3" -1.4044336136966189 0 0.43593589577554498 ;
	setAttr ".sp" -type "double3" -1.4044336136966189 0 0.43593589577554498 ;
createNode nurbsCurve -n "R_foot_animShape" -p "R_foot_anim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-2.3744718968560026 1.1209857002402668e-16 -1.3947726824377664
		-1.4044336136966187 0.73436765399561577 -2.1530770042864877
		-0.43439533053723622 1.1209857002402673e-16 -1.3947726824377671
		-0.80855987238903004 8.9839718900446397e-17 0.4359358957755442
		-0.43439533053723578 -1.120985700240267e-16 2.2666444739888565
		-1.4044336136966185 -1.5853131805060878e-16 3.0249487958375783
		-2.3744718968560012 -1.1209857002402675e-16 2.2666444739888574
		-2.7762749097617307 -8.5147480177488022e-32 0.43593589577554637
		-2.3744718968560026 1.1209857002402668e-16 -1.3947726824377664
		-1.4044336136966187 0.73436765399561577 -2.1530770042864877
		-0.43439533053723622 1.1209857002402673e-16 -1.3947726824377671
		;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 7 ".lnk";
	setAttr -s 7 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n"
		+ "            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n"
		+ "                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n"
		+ "                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n"
		+ "            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n"
		+ "            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n"
		+ "            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n"
		+ "\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode displayLayer -n "Geo_Layer";
	setAttr ".do" 1;
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
createNode groupId -n "C_Robot_Model:groupId3";
	setAttr ".ihi" 0;
createNode lambert -n "C_Robot_Model:lambert2";
createNode shadingEngine -n "C_Robot_Model:lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "C_Robot_Model:materialInfo1";
createNode file -n "C_Robot_Model:file1";
	setAttr ".ftn" -type "string" "F:/Maya Projects/Roboto//custom_uv_diag.png";
createNode place2dTexture -n "C_Robot_Model:place2dTexture1";
createNode hyperGraphInfo -n "C_Robot_Model:nodeEditorPanel1Info";
createNode hyperView -n "C_Robot_Model:hyperView1";
	setAttr ".dag" no;
createNode hyperLayout -n "C_Robot_Model:hyperLayout1";
	setAttr ".ihi" 0;
	setAttr -s 243 ".hyp";
	setAttr ".hyp[0].nvs" 1920;
	setAttr ".hyp[1].nvs" 1920;
	setAttr ".hyp[2].nvs" 1920;
	setAttr ".hyp[3].nvs" 1920;
	setAttr ".hyp[4].nvs" 1920;
	setAttr ".hyp[5].nvs" 1920;
	setAttr ".hyp[6].nvs" 1920;
	setAttr ".hyp[7].nvs" 1920;
	setAttr ".hyp[8].nvs" 1920;
	setAttr ".hyp[9].nvs" 1920;
	setAttr ".hyp[10].nvs" 1920;
	setAttr ".hyp[11].nvs" 1920;
	setAttr ".hyp[12].nvs" 1920;
	setAttr ".hyp[13].nvs" 1920;
	setAttr ".hyp[14].nvs" 1920;
	setAttr ".hyp[15].nvs" 1920;
	setAttr ".hyp[16].nvs" 1920;
	setAttr ".hyp[17].nvs" 1920;
	setAttr ".hyp[18].nvs" 1920;
	setAttr ".hyp[19].nvs" 1920;
	setAttr ".hyp[20].nvs" 1920;
	setAttr ".hyp[21].nvs" 1920;
	setAttr ".hyp[22].nvs" 1920;
	setAttr ".hyp[23].nvs" 1920;
	setAttr ".hyp[24].nvs" 1920;
	setAttr ".hyp[25].nvs" 1920;
	setAttr ".hyp[26].nvs" 1920;
	setAttr ".hyp[27].nvs" 1920;
	setAttr ".hyp[28].nvs" 1920;
	setAttr ".hyp[29].nvs" 1920;
	setAttr ".hyp[30].nvs" 1920;
	setAttr ".hyp[31].nvs" 1920;
	setAttr ".hyp[32].nvs" 1920;
	setAttr ".hyp[33].nvs" 1920;
	setAttr ".hyp[34].nvs" 1920;
	setAttr ".hyp[35].nvs" 1920;
	setAttr ".hyp[36].nvs" 1920;
	setAttr ".hyp[37].nvs" 1920;
	setAttr ".hyp[38].nvs" 1920;
	setAttr ".hyp[39].nvs" 1920;
	setAttr ".hyp[40].nvs" 1920;
	setAttr ".hyp[41].nvs" 1920;
	setAttr ".hyp[42].nvs" 1920;
	setAttr ".hyp[43].nvs" 1920;
	setAttr ".hyp[44].nvs" 1920;
	setAttr ".hyp[45].nvs" 1920;
	setAttr ".hyp[46].nvs" 1920;
	setAttr ".hyp[47].nvs" 1920;
	setAttr ".hyp[48].nvs" 1920;
	setAttr ".hyp[49].nvs" 1920;
	setAttr ".hyp[50].nvs" 1920;
	setAttr ".hyp[51].nvs" 1920;
	setAttr ".hyp[52].nvs" 1920;
	setAttr ".hyp[53].nvs" 1920;
	setAttr ".hyp[54].nvs" 1920;
	setAttr ".hyp[55].nvs" 1920;
	setAttr ".hyp[56].nvs" 1920;
	setAttr ".hyp[57].nvs" 1920;
	setAttr ".hyp[58].nvs" 1920;
	setAttr ".hyp[59].nvs" 1920;
	setAttr ".hyp[60].nvs" 1920;
	setAttr ".hyp[61].nvs" 1920;
	setAttr ".hyp[62].nvs" 1920;
	setAttr ".hyp[63].nvs" 1920;
	setAttr ".hyp[64].nvs" 1920;
	setAttr ".hyp[65].nvs" 1920;
	setAttr ".hyp[66].nvs" 1920;
	setAttr ".hyp[67].nvs" 1920;
	setAttr ".hyp[68].nvs" 1920;
	setAttr ".hyp[69].nvs" 1920;
	setAttr ".hyp[70].nvs" 1920;
	setAttr ".hyp[71].nvs" 1920;
	setAttr ".hyp[72].nvs" 1920;
	setAttr ".hyp[73].nvs" 1920;
	setAttr ".hyp[74].nvs" 1920;
	setAttr ".hyp[75].nvs" 1920;
	setAttr ".hyp[76].nvs" 1920;
	setAttr ".hyp[77].nvs" 1920;
	setAttr ".hyp[78].nvs" 1920;
	setAttr ".hyp[79].nvs" 1920;
	setAttr ".hyp[80].nvs" 1920;
	setAttr ".hyp[81].nvs" 1920;
	setAttr ".hyp[82].nvs" 1920;
	setAttr ".hyp[83].nvs" 1920;
	setAttr ".hyp[84].nvs" 1920;
	setAttr ".hyp[85].nvs" 1920;
	setAttr ".hyp[86].nvs" 1920;
	setAttr ".hyp[87].nvs" 1920;
	setAttr ".hyp[88].nvs" 1920;
	setAttr ".hyp[89].nvs" 1920;
	setAttr ".hyp[90].nvs" 1920;
	setAttr ".hyp[91].nvs" 1920;
	setAttr ".hyp[92].nvs" 1920;
	setAttr ".hyp[93].nvs" 1920;
	setAttr ".hyp[94].nvs" 1920;
	setAttr ".hyp[95].nvs" 1920;
	setAttr ".hyp[96].nvs" 1920;
	setAttr ".hyp[97].nvs" 1920;
	setAttr ".hyp[98].nvs" 1920;
	setAttr ".hyp[99].nvs" 1920;
	setAttr ".hyp[100].nvs" 1920;
	setAttr ".hyp[101].nvs" 1920;
	setAttr ".hyp[102].nvs" 1920;
	setAttr ".hyp[103].nvs" 1920;
	setAttr ".hyp[104].nvs" 1920;
	setAttr ".hyp[105].nvs" 1920;
	setAttr ".hyp[106].nvs" 1920;
	setAttr ".hyp[107].nvs" 1920;
	setAttr ".hyp[108].nvs" 1920;
	setAttr ".hyp[109].nvs" 1920;
	setAttr ".hyp[110].nvs" 1920;
	setAttr ".hyp[111].nvs" 1920;
	setAttr ".hyp[112].nvs" 1920;
	setAttr ".hyp[113].nvs" 1920;
	setAttr ".hyp[114].nvs" 1920;
	setAttr ".hyp[115].nvs" 1920;
	setAttr ".hyp[116].nvs" 1920;
	setAttr ".hyp[117].nvs" 1920;
	setAttr ".hyp[118].nvs" 1920;
	setAttr ".hyp[119].nvs" 1920;
	setAttr ".hyp[120].nvs" 1920;
	setAttr ".hyp[121].nvs" 1920;
	setAttr ".hyp[122].nvs" 1920;
	setAttr ".hyp[123].nvs" 1920;
	setAttr ".hyp[124].nvs" 1920;
	setAttr ".hyp[125].nvs" 1920;
	setAttr ".hyp[126].nvs" 1920;
	setAttr ".hyp[127].nvs" 1920;
	setAttr ".hyp[128].nvs" 1920;
	setAttr ".hyp[129].nvs" 1920;
	setAttr ".hyp[130].nvs" 1920;
	setAttr ".hyp[131].nvs" 1920;
	setAttr ".hyp[132].nvs" 1920;
	setAttr ".hyp[133].nvs" 1920;
	setAttr ".hyp[134].nvs" 1920;
	setAttr ".hyp[135].nvs" 1920;
	setAttr ".hyp[136].nvs" 1920;
	setAttr ".hyp[137].nvs" 1920;
	setAttr ".hyp[138].nvs" 1920;
	setAttr ".hyp[139].nvs" 1920;
	setAttr ".hyp[140].nvs" 1920;
	setAttr ".hyp[141].nvs" 1920;
	setAttr ".hyp[142].nvs" 1920;
	setAttr ".hyp[143].nvs" 1920;
	setAttr ".hyp[144].nvs" 1920;
	setAttr ".hyp[145].nvs" 1920;
	setAttr ".hyp[146].nvs" 1920;
	setAttr ".hyp[147].nvs" 1920;
	setAttr ".hyp[148].nvs" 1920;
	setAttr ".hyp[149].nvs" 1920;
	setAttr ".hyp[150].nvs" 1920;
	setAttr ".hyp[151].nvs" 1920;
	setAttr ".hyp[152].nvs" 1920;
	setAttr ".hyp[153].nvs" 1920;
	setAttr ".hyp[154].nvs" 1920;
	setAttr ".hyp[155].nvs" 1920;
	setAttr ".hyp[156].nvs" 1920;
	setAttr ".hyp[157].nvs" 1920;
	setAttr ".hyp[158].nvs" 1920;
	setAttr ".hyp[159].nvs" 1920;
	setAttr ".hyp[160].nvs" 1920;
	setAttr ".hyp[161].nvs" 1920;
	setAttr ".hyp[162].nvs" 1920;
	setAttr ".hyp[163].nvs" 1920;
	setAttr ".hyp[164].nvs" 1920;
	setAttr ".hyp[165].nvs" 1920;
	setAttr ".hyp[166].nvs" 1920;
	setAttr ".hyp[167].nvs" 1920;
	setAttr ".hyp[168].nvs" 1920;
	setAttr ".hyp[169].nvs" 1920;
	setAttr ".hyp[170].nvs" 1920;
	setAttr ".hyp[171].nvs" 1920;
	setAttr ".hyp[172].nvs" 1920;
	setAttr ".hyp[173].nvs" 1920;
	setAttr ".hyp[174].nvs" 1920;
	setAttr ".hyp[175].nvs" 1920;
	setAttr ".hyp[176].nvs" 1920;
	setAttr ".hyp[177].nvs" 1920;
	setAttr ".hyp[178].nvs" 1920;
	setAttr ".hyp[179].nvs" 1920;
	setAttr ".hyp[180].nvs" 1920;
	setAttr ".hyp[181].nvs" 1920;
	setAttr ".hyp[182].nvs" 1920;
	setAttr ".hyp[183].nvs" 1920;
	setAttr ".hyp[184].nvs" 1920;
	setAttr ".hyp[185].nvs" 1920;
	setAttr ".hyp[186].nvs" 1920;
	setAttr ".hyp[187].nvs" 1920;
	setAttr ".hyp[188].nvs" 1920;
	setAttr ".hyp[189].nvs" 1920;
	setAttr ".hyp[190].nvs" 1920;
	setAttr ".hyp[191].nvs" 1920;
	setAttr ".hyp[192].nvs" 1920;
	setAttr ".hyp[193].nvs" 1920;
	setAttr ".hyp[194].nvs" 1920;
	setAttr ".hyp[195].nvs" 1920;
	setAttr ".hyp[196].nvs" 1920;
	setAttr ".hyp[197].nvs" 1920;
	setAttr ".hyp[198].nvs" 1920;
	setAttr ".hyp[199].nvs" 1920;
	setAttr ".hyp[200].nvs" 1920;
	setAttr ".hyp[201].nvs" 1920;
	setAttr ".hyp[202].nvs" 1920;
	setAttr ".hyp[203].nvs" 1920;
	setAttr ".hyp[204].nvs" 1920;
	setAttr ".hyp[205].nvs" 1920;
	setAttr ".hyp[206].nvs" 1920;
	setAttr ".hyp[207].nvs" 1920;
	setAttr ".hyp[208].nvs" 1920;
	setAttr ".hyp[209].nvs" 1920;
	setAttr ".hyp[210].nvs" 1920;
	setAttr ".hyp[211].nvs" 1920;
	setAttr ".hyp[212].nvs" 1920;
	setAttr ".hyp[213].nvs" 1920;
	setAttr ".hyp[214].nvs" 1920;
	setAttr ".hyp[215].nvs" 1920;
	setAttr ".hyp[216].nvs" 1920;
	setAttr ".hyp[217].nvs" 1920;
	setAttr ".hyp[218].nvs" 1920;
	setAttr ".hyp[219].nvs" 1920;
	setAttr ".hyp[220].nvs" 1920;
	setAttr ".hyp[221].nvs" 1920;
	setAttr ".hyp[222].nvs" 1920;
	setAttr ".hyp[223].nvs" 1920;
	setAttr ".hyp[224].nvs" 1920;
	setAttr ".hyp[225].nvs" 1920;
	setAttr ".hyp[226].nvs" 1920;
	setAttr ".hyp[227].nvs" 1920;
	setAttr ".hyp[228].nvs" 1920;
	setAttr ".hyp[229].nvs" 1920;
	setAttr ".hyp[230].nvs" 1920;
	setAttr ".hyp[231].nvs" 1920;
	setAttr ".hyp[232].nvs" 1920;
	setAttr ".hyp[233].nvs" 1920;
	setAttr ".hyp[234].nvs" 1920;
	setAttr ".hyp[235].nvs" 1920;
	setAttr ".hyp[236].nvs" 1920;
	setAttr ".hyp[237].nvs" 1920;
	setAttr ".hyp[238].nvs" 1920;
	setAttr ".hyp[239].nvs" 1920;
	setAttr ".hyp[240].nvs" 1920;
	setAttr ".hyp[241].nvs" 1920;
	setAttr ".hyp[242].nvs" 1920;
	setAttr ".anf" yes;
createNode shadingEngine -n "C_Robot_Model:blinn1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "C_Robot_Model:materialInfo2";
createNode file -n "C_Robot_Model:file2";
	setAttr ".ftn" -type "string" "F:/Maya Projects/Roboto//Roboto_Color.jpg";
createNode place2dTexture -n "C_Robot_Model:place2dTexture2";
createNode file -n "C_Robot_Model:file3";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "F:/Maya Projects/Roboto//Roboto_Color.jpg";
createNode place2dTexture -n "C_Robot_Model:place2dTexture3";
createNode bump2d -n "C_Robot_Model:bump2d1";
	setAttr ".bf" 0.99248123168945312;
	setAttr -av ".bv" 1;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode ramp -n "C_Robot_Model:ramp1";
	setAttr -s 3 ".cel";
	setAttr ".cel[2].ep" 0.34185302257537842;
	setAttr ".cel[2].ec" -type "float3" 0.23529412 0.23529412 0.23529412 ;
	setAttr ".cel[3].ep" 0.43450480699539185;
	setAttr ".cel[3].ec" -type "float3" 0 0 0 ;
	setAttr ".cel[4].ep" 0.24281150102615356;
	setAttr ".cel[4].ec" -type "float3" 0 0 0 ;
createNode place2dTexture -n "C_Robot_Model:place2dTexture4";
createNode blinn -n "C_Robot_Model:blinn2";
	setAttr ".dc" 1;
createNode surfaceShader -n "C_Robot_Model:surfaceShader1";
createNode shadingEngine -n "C_Robot_Model:surfaceShader1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "C_Robot_Model:materialInfo3";
createNode mib_amb_occlusion -n "C_Robot_Model:mib_amb_occlusion1";
	setAttr ".S00" 256;
createNode blinn -n "C_Robot_Model:blinn3";
createNode shadingEngine -n "C_Robot_Model:blinn3SG";
	setAttr ".ihi" 0;
	setAttr -s 7 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 6 ".gn";
createNode materialInfo -n "C_Robot_Model:materialInfo4";
createNode file -n "C_Robot_Model:file4";
	setAttr ".ftn" -type "string" "/Users/Emi-Bear/Google Drive Emily/LetMakeAGame2014/Models/Character Models/C_Robot_Texture.tga";
createNode place2dTexture -n "C_Robot_Model:place2dTexture5";
createNode lambert -n "C_Robot_Model:lambert3";
createNode shadingEngine -n "C_Robot_Model:lambert3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "C_Robot_Model:materialInfo5";
createNode file -n "C_Robot_Model:file5";
	setAttr ".ftn" -type "string" "F:/Maya Projects/Roboto//Roboto_Color_w_AO.jpg";
createNode place2dTexture -n "C_Robot_Model:place2dTexture6";
createNode mentalrayOptions -s -n "miContourPreset";
createNode groupId -n "groupId11";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 79 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]" "f[30]" "f[31]" "f[32]" "f[33]" "f[34]" "f[35]" "f[36]" "f[37]" "f[38]" "f[39]" "f[40]" "f[41]" "f[42]" "f[43]" "f[44]" "f[45]" "f[46]" "f[47]" "f[48]" "f[49]" "f[50]" "f[51]" "f[52]" "f[53]" "f[54]" "f[55]" "f[56]" "f[57]" "f[58]" "f[59]" "f[60]" "f[61]" "f[62]" "f[63]" "f[64]" "f[65]" "f[66]" "f[67]" "f[68]" "f[69]" "f[70]" "f[71]" "f[72]" "f[73]" "f[74]" "f[75]" "f[76]" "f[77]" "f[78]";
createNode groupId -n "groupId14";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 24 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]";
createNode groupId -n "groupId20";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 24 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]";
createNode groupId -n "groupId25";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts15";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:113]";
createNode groupId -n "groupId28";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts18";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:123]";
createNode groupParts -n "groupParts7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 79 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]" "f[30]" "f[31]" "f[32]" "f[33]" "f[34]" "f[35]" "f[36]" "f[37]" "f[38]" "f[39]" "f[40]" "f[41]" "f[42]" "f[43]" "f[44]" "f[45]" "f[46]" "f[47]" "f[48]" "f[49]" "f[50]" "f[51]" "f[52]" "f[53]" "f[54]" "f[55]" "f[56]" "f[57]" "f[58]" "f[59]" "f[60]" "f[61]" "f[62]" "f[63]" "f[64]" "f[65]" "f[66]" "f[67]" "f[68]" "f[69]" "f[70]" "f[71]" "f[72]" "f[73]" "f[74]" "f[75]" "f[76]" "f[77]" "f[78]";
createNode groupId -n "groupId17";
	setAttr ".ihi" 0;
createNode skinCluster -n "skinCluster1";
	setAttr -s 76 ".wl";
	setAttr ".wl[0].w[21]"  1;
	setAttr ".wl[1].w[21]"  1;
	setAttr ".wl[2].w[21]"  1;
	setAttr ".wl[3].w[21]"  1;
	setAttr ".wl[4].w[21]"  1;
	setAttr ".wl[5].w[21]"  1;
	setAttr ".wl[6].w[21]"  1;
	setAttr ".wl[7].w[21]"  1;
	setAttr ".wl[8].w[21]"  1;
	setAttr ".wl[9].w[21]"  1;
	setAttr ".wl[10].w[21]"  1;
	setAttr ".wl[11].w[21]"  1;
	setAttr ".wl[12].w[21]"  1;
	setAttr ".wl[13].w[21]"  1;
	setAttr ".wl[14].w[21]"  1;
	setAttr ".wl[15].w[21]"  1;
	setAttr ".wl[16].w[21]"  1;
	setAttr ".wl[17].w[21]"  1;
	setAttr ".wl[18].w[21]"  1;
	setAttr ".wl[19].w[21]"  1;
	setAttr ".wl[20].w[21]"  1;
	setAttr ".wl[21].w[21]"  1;
	setAttr ".wl[22].w[21]"  1;
	setAttr ".wl[23].w[21]"  1;
	setAttr ".wl[24].w[21]"  1;
	setAttr ".wl[25].w[21]"  1;
	setAttr ".wl[26].w[21]"  1;
	setAttr ".wl[27].w[21]"  1;
	setAttr ".wl[28].w[21]"  1;
	setAttr ".wl[29].w[21]"  1;
	setAttr ".wl[30].w[21]"  1;
	setAttr ".wl[31].w[21]"  1;
	setAttr -s 2 ".wl[32].w";
	setAttr ".wl[32].w[21]" 0.77669519186019897;
	setAttr ".wl[32].w[25]" 0.22330480813980103;
	setAttr -s 2 ".wl[33].w";
	setAttr ".wl[33].w[21]" 0.77639046311378479;
	setAttr ".wl[33].w[25]" 0.22360953688621521;
	setAttr -s 2 ".wl[34].w";
	setAttr ".wl[34].w[21]" 0.77592402696609497;
	setAttr ".wl[34].w[25]" 0.22407597303390503;
	setAttr -s 2 ".wl[35].w";
	setAttr ".wl[35].w[21]" 0.77876114845275879;
	setAttr ".wl[35].w[24]" 0.22123885154724121;
	setAttr -s 2 ".wl[36].w";
	setAttr ".wl[36].w[21]" 0.77670000493526459;
	setAttr ".wl[36].w[24]" 0.22329999506473541;
	setAttr -s 2 ".wl[37].w";
	setAttr ".wl[37].w[21]" 0.77535121142864227;
	setAttr ".wl[37].w[24]" 0.22464878857135773;
	setAttr -s 2 ".wl[38].w";
	setAttr ".wl[38].w[21]" 0.49509966373443604;
	setAttr ".wl[38].w[25]" 0.50490033626556396;
	setAttr -s 2 ".wl[39].w";
	setAttr ".wl[39].w[21]" 0.31069999933242798;
	setAttr ".wl[39].w[25]" 0.68930000066757202;
	setAttr -s 2 ".wl[40].w";
	setAttr ".wl[40].w[21]" 0.31069934368133545;
	setAttr ".wl[40].w[25]" 0.68930065631866455;
	setAttr -s 2 ".wl[41].w";
	setAttr ".wl[41].w[21]" 0.35920000076293945;
	setAttr ".wl[41].w[24]" 0.64079999923706055;
	setAttr -s 2 ".wl[42].w";
	setAttr ".wl[42].w[21]" 0.35921728610992432;
	setAttr ".wl[42].w[24]" 0.64078271389007568;
	setAttr -s 2 ".wl[43].w";
	setAttr ".wl[43].w[21]" 0.52430048584938049;
	setAttr ".wl[43].w[24]" 0.47569951415061951;
	setAttr -s 2 ".wl[44].w";
	setAttr ".wl[44].w[21]" 0.18434113264083862;
	setAttr ".wl[44].w[25]" 0.81565886735916138;
	setAttr -s 2 ".wl[45].w";
	setAttr ".wl[45].w[21]" 0.00066739320755004883;
	setAttr ".wl[45].w[25]" 0.99933260679244995;
	setAttr -s 2 ".wl[46].w";
	setAttr ".wl[46].w[21]" 0.0022799968719482422;
	setAttr ".wl[46].w[25]" 0.99772000312805176;
	setAttr -s 2 ".wl[47].w";
	setAttr ".wl[47].w[21]" 0.0029212236404418945;
	setAttr ".wl[47].w[24]" 0.99707877635955811;
	setAttr -s 2 ".wl[48].w";
	setAttr ".wl[48].w[21]" 9.6559524536132812e-06;
	setAttr ".wl[48].w[24]" 0.99999034404754639;
	setAttr -s 2 ".wl[49].w";
	setAttr ".wl[49].w[21]" 0.14400374889373779;
	setAttr ".wl[49].w[24]" 0.85599625110626221;
	setAttr ".wl[50].w[19]"  1;
	setAttr ".wl[51].w[19]"  1;
	setAttr ".wl[52].w[19]"  1;
	setAttr ".wl[53].w[19]"  1;
	setAttr ".wl[54].w[20]"  1;
	setAttr ".wl[55].w[20]"  1;
	setAttr ".wl[56].w[20]"  1;
	setAttr ".wl[57].w[20]"  1;
	setAttr ".wl[58].w[19]"  1;
	setAttr ".wl[59].w[19]"  1;
	setAttr ".wl[60].w[21]"  1;
	setAttr ".wl[61].w[21]"  1;
	setAttr ".wl[62].w[21]"  1;
	setAttr ".wl[63].w[21]"  1;
	setAttr ".wl[64].w[21]"  1;
	setAttr ".wl[65].w[21]"  1;
	setAttr ".wl[66].w[21]"  1;
	setAttr ".wl[67].w[21]"  1;
	setAttr ".wl[68].w[21]"  1;
	setAttr ".wl[69].w[21]"  1;
	setAttr ".wl[70].w[21]"  1;
	setAttr ".wl[71].w[21]"  1;
	setAttr ".wl[72].w[21]"  1;
	setAttr ".wl[73].w[21]"  1;
	setAttr ".wl[74].w[21]"  1;
	setAttr ".wl[75].w[21]"  1;
	setAttr -s 26 ".pm";
	setAttr ".pm[0]" -type "matrix" -1 -0 1.2246467991473532e-16 -0 -0 1 -0 0 -1.2246467991473532e-16 -0 -1 0
		 6.8717722448313527e-17 -10.634563903704942 -0.018175814976949763 1;
	setAttr ".pm[1]" -type "matrix" -1 -0 1.2246467991473532e-16 -0 -0 1 -0 0 -1.2246467991473532e-16 -0 -1 0
		 7.353457146447921e-16 -14.132338326454143 -0.018175814976949763 1;
	setAttr ".pm[2]" -type "matrix" -1 -0 1.2246467991473532e-16 -0 -0 1 -0 0 -1.2246467991473532e-16 -0 -1 0
		 6.8717722448313428e-17 -8.5365370207398907 -0.018175814976949763 1;
	setAttr ".pm[3]" -type "matrix" -1 -0 1.2246467991473532e-16 -0 -0 1 -0 0 -1.2246467991473532e-16 -0 -1 0
		 4.2241905145476408e-16 -7.3913983732815653 -0.045052099000275944 1;
	setAttr ".pm[4]" -type "matrix" 1.477176941278356e-15 6.981057536655051e-16 -1 -0
		 -0.99892875515336343 0.046274638061808995 -1.529528359619386e-15 0 0.046274638061808863 0.99892875515336343 4.4852572293978137e-16 -0
		 6.8627936880930589 -0.27433068417854384 1.4719753077507971 1;
	setAttr ".pm[5]" -type "matrix" 1.4064063985879794e-15 8.3151933300203677e-16 -1 -0
		 -0.9989340743284465 -0.046159670119807199 -1.529528359619386e-15 0 -0.046159670119807331 0.9989340743284465 4.4852572293978137e-16 -0
		 3.9435928581974777 0.090188359666807966 1.4719753077507971 1;
	setAttr ".pm[6]" -type "matrix" 1.4654040599441831e-15 -7.2249173022566048e-16 -1 -0
		 -0.5850674743411175 0.81098461789858001 -1.5295283596193864e-15 0 0.81098461789858001 0.58506747434111761 4.4852572293978157e-16 -0
		 0.52934012017617871 -0.64521122801142317 1.4719753077507964 1;
	setAttr ".pm[7]" -type "matrix" 1.464973975462413e-15 -0.99994728840146285 -0.010267444597432169 -0
		 -0.5850674743411175 0.0083267396336424247 -0.81094186960298142 0 0.8109846178985799 0.0060071478785578628 -0.585036634499293 -0
		 -0.90878943373902465 1.4652730470420681 0.66029064281732275 1;
	setAttr ".pm[8]" -type "matrix" 1.1106241961056644e-15 1.1825607839880968e-15 -1 -0
		 0.99892875515336343 -0.046274638061808364 1.2820340345168972e-15 0 -0.046274638061808641 -0.99892875515336343 -1.2376969010084732e-15 0
		 -6.8627971761989981 0.27433083090909582 -1.4719800000000089 1;
	setAttr ".pm[9]" -type "matrix" 9.9668717112965231e-16 1.2800589032179211e-15 -1 -0
		 0.99893407432844661 0.046159670119807393 1.2820340345168972e-15 0 0.046159670119807115 -0.99893407432844672 -1.2376969010084736e-15 -0
		 -3.9435905135198688 -0.090188271185206503 -1.471980000000005 1;
	setAttr ".pm[10]" -type "matrix" 1.6167683789787193e-15 -1.3414962369094175e-16 -1 -0
		 0.58506747434111783 -0.8109846178985799 1.2820340345168974e-15 0 -0.81098461789858023 -0.58506747434111772 -1.2376969010084738e-15 0
		 -0.52934008704748747 0.64521116757982055 -1.4719800000000014 1;
	setAttr ".pm[11]" -type "matrix" 1.6158949178723962e-15 -0.99994728840146319 -0.010267444597431763 -0
		 0.58506747434111783 -0.0083267396336418626 0.81094186960298154 0 -0.81098461789858012 -0.0060071478785580718 0.58503663449929322 0
		 0.9087923910337149 -1.4652777171703215 -0.66029282126784716 1;
	setAttr ".pm[12]" -type "matrix" -0.99995325883512598 0.0096685129379943131 1.6061271050617637e-06 -0
		 0.00966851307139871 0.99995324503795169 0.00016611158518660784 0 -1.2245851779986961e-16 0.00016611934979852676 -0.999999986202181 0
		 1.3272938565604671 -12.99215742064008 -0.020334064000712502 1;
	setAttr ".pm[13]" -type "matrix" -0.99980566703278784 -0.017117319501743482 -0.0097788313308614892 -0
		 0.0096670860114213605 0.0065988191016375193 -0.99993149917107393 -0 0.017180675690146401 -0.99983171231939783 -0.00643206213363306 -0
		 4.2290240275309685 -0.078948143237026744 12.99192157420962 1;
	setAttr ".pm[14]" -type "matrix" -0.9999887798164705 0.0047294247656044985 -0.00026978241813739671 -0
		 0.00016216523014272592 -0.022740448206859897 -0.99974138941917823 0 -0.0047343366594256846 -0.9997302158866348 0.022739426106601929 0
		 6.9166466637092094 0.20590347139745455 12.950042573040394 1;
	setAttr ".pm[15]" -type "matrix" -0.99990612408113166 0.013666963790080479 0.00097832806844420786 -0
		 -0.00015115248526284083 0.060394096631831144 -0.99817459907821282 0 -0.013701101341683281 -0.99808104239725204 -0.060386361284972712 -0
		 8.0809646874999821 -0.93245748834910869 12.916471143858102 1;
	setAttr ".pm[16]" -type "matrix" 0.95669909334599668 -0.29107847904145767 0.00040475901380116619 -0
		 -0.29107845299057894 -0.95669917896845258 -0.00012314909504049798 0 0.00042307866746336162 1.4769544094683774e-16 -0.99999991050221637 -0
		 -7.5304204047180008 14.741670881892746 -0.041647075215516798 1;
	setAttr ".pm[17]" -type "matrix" 0.95150469301091578 0.30763396539512061 0.000403129602716486 -0
		 0.30763393778478132 -0.95150477840905912 0.000130337084023426 0 0.00042367585729911401 -6.2544912825257478e-16 -0.99999991024937951 -0
		 -15.236999271363663 9.8366169770217446 -0.04491666401818066 1;
	setAttr ".pm[18]" -type "matrix" -0.99995325883512576 0.0096685129379963323 1.6061271011246137e-06 -0
		 -0.0096685130714007275 -0.99995324503795124 -0.00016611158480471007 0 -1.2245851779986952e-16 -0.00016611934941660874 0.99999998620218045 -0
		 -1.3272973614988237 12.992137061043953 0.020334045636677348 1;
	setAttr ".pm[19]" -type "matrix" -0.99980566703278795 -0.017117319501743493 -0.0097788313308640028 0
		 -0.0096670860114238845 -0.0065988191016367933 0.99993149917107382 0 -0.017180675690146415 0.9998317123193976 0.0064320621336323375 -0
		 -4.2290271213014208 0.078948280970734447 -12.991951362939481 1;
	setAttr ".pm[20]" -type "matrix" -0.9999887798164705 0.0047294247656060329 -0.0002697824181365603 0
		 -0.00016216523014183943 0.022740448206862822 0.99974138941917823 0 0.0047343366594272008 0.99973021588663458 -0.022739426106604801 -0
		 -6.9166477096983314 -0.20590448713050732 -12.950088309301858 1;
	setAttr ".pm[21]" -type "matrix" -0.99990612408113155 0.013666963790084922 0.00097832806844424689 -0
		 0.00015115248526264427 -0.060394096631828834 0.99817459907821304 -0 0.013701101341687722 0.99808104239725215 0.060386361284970463 -0
		 -8.080961287787094 0.93245560997347066 -12.91644141246493 1;
	setAttr ".pm[22]" -type "matrix" 0.95669909334599723 -0.29107847904145784 0.00040475901380100497 -0
		 0.29107845299057905 0.95669917896845291 0.00012314909504049245 -0 -0.00042307866746322707 -4.7157373492257025e-16 0.99999991050221648 -0
		 7.5303749307173202 -14.741661040490099 0.041647044718498047 1;
	setAttr ".pm[23]" -type "matrix" 0.95150469301091611 0.30763396539512072 0.00040312960271650887 -0
		 -0.30763393778478154 0.95150477840905945 -0.0001303370840238637 0 -0.00042367585729924086 6.5014183273093273e-16 0.99999991024937973 -0
		 15.23697946724454 -9.8366107712992346 0.044916644369739522 1;
	setAttr ".pm[24]" -type "matrix" 0.951504693010916 0.30763396539512072 0.00040312960271663524 -0
		 -0.3076339377847816 0.95150477840905967 -0.00013033708402399209 0 -0.0004236758572993965 7.2384047540563509e-16 0.99999991024938018 -0
		 15.236979467244542 -9.8366107712992346 0.04491664436974141 1;
	setAttr ".pm[25]" -type "matrix" 0.95669909334599712 -0.29107847904145773 0.0004047590138011258 -0
		 0.29107845299057905 0.95669917896845302 0.00012314909504036969 -0 -0.00042307866746331266 -3.2230620082562848e-16 0.99999991050221693 -0
		 7.530374930717322 -14.741661040490103 0.041647044718499823 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 5 ".ma";
	setAttr -s 26 ".dpf[0:25]"  1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 
		1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
	setAttr -s 22 ".ifcl";
createNode tweak -n "tweak1";
createNode objectSet -n "skinCluster1Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId30";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts20";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	setAttr -s 17 ".wm";
	setAttr -s 74 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.3009992939108477e-16
		 11.801700171964772 -0.018175814976949763 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 -6.6662799219647858e-16
		 3.4977744227492007 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.0675640425458421e-31
		 -1.976300571234578 -2.9490299091605721e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.5370132900645056e-16
		 -1.1451386474583254 0.026876284023326178 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.4719753077507862 -0.52326186444079159
		 -0.0015156138377443104 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.4882943174813193 0.51143783543599186 -0.48829431748131974 0.51143783543599086 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.9277204680419149 5.5511151231257827e-17
		 2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.0462171541673317 0.99893141639487593 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.1139154803205411 5.3429483060085659e-15
		 1.1102230246251565e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.47591540557845469 0.87949106120136034 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4381295539152035 1.8873791418627661e-15
		 4.4408920985006262e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70346732525490019 0 0 0.71072760063101292 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4719800000000005 -0.52325837328156499
		 -0.0015155990002761258 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.51143783543599075 0.4882943174813198 0.51143783543599186 0.4882943174813198 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.9277262989788779 2.7512401051810187e-07
		 -3.7747582837255322e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.046217154167331485 0.99893141639487604 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.113913204353532 9.3805318082673672e-08
		 -3.9968028886505635e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.47591540557845458 0.87949106120136045 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.4381324780812021 -2.1908170172446617e-06
		 -2.6645352591003757e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70346732525490063 0 0 0.71072760063101248 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.4528466920724898 2.3441564888298654
		 1.7694179454963432e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -8.3058704603609497e-05 -4.0153646971788825e-07 0.0048343130097092219 0.9999883111910931 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.9011855306081316 -8.2813296309325324e-06
		 0.049851685074561669 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70486160609924298 0.0060945205700710181 -0.0060544338841574258 0.70929282873617094 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 -0.081681407984354665 0 0 0 -2.5644891957859439
		 -0.056054538267271851 -0.024746736889104781 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.055425259936454647 -0.0042107820014693331 0.011177232163825655 0.99839139587491854 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.1612867224960617 -0.010419323044271955
		 -0.00012695152391550835 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.041574260659313932 -0.00024111395346293867 0.0044798249149418639 0.99912534443052969 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.4145760234172613 -0.017585687905879888
		 1.0403867852359472 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10568394364506711 -0.6771824465921471 -0.72090878403810499 0.10269061875264411 1
		 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.3915715821890284 0.11107405765888567
		 -1.0913535019615406 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10190255649626843 0.67785510504361279 0.7185028139215186 0.11782203500490408 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1769998280352283 1.4528500000000004
		 1.4976949763712e-08 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -5.844744396682121e-05 -5.9015302286778667e-05 0.71051689146204988 0.70368014043896099 1
		 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.9011851199096426 -4.186726573784938e-05
		 -0.049851707642807441 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70486160609910786 0.0060945205700699556 -0.0060544338841583313 0.70929282873630528 1
		 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 -0.081681407984354665 0 0 0 2.5644867134162546
		 0.056054372553752209 0.024762702563736028 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.055425259936455737 -0.0042107820014709793 0.011177232163826512 0.99839139587491854 1
		 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1612822855531473 0.010417678721605483
		 5.1430226095661169e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.04157426065931423 -0.0002411139534624131 0.0044798249149433349 0.99912534443052969 1
		 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.4145330586468816 0.01758422371719659
		 -1.0403531935299082 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10568394364506882 -0.67718244659214755 -0.72090878403810443 0.10269061875264232 1
		 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.3915580472033184 -0.11107496879342826
		 1.0913712753055176 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10190255649626707 0.67785510504361401 0.7185028139215176 0.11782203500490548 1
		 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0 0 0 0 -6.6662799219647858e-16
		 3.4977744227492007 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4381295539152035 1.8873791418627661e-15
		 4.4408920985006262e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70346732525490019 0 0 0.71072760063101292 1
		 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.4381324780812021 -2.1908170172446617e-06
		 -2.6645352591003757e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70346732525490063 0 0 0.71072760063101248 1
		 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.4145760234172613 -0.017585687905879888
		 1.0403867852359472 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10568394364506711 -0.6771824465921471 -0.72090878403810499 0.10269061875264411 1
		 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.3915715821890284 0.11107405765888567
		 -1.0913535019615406 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10190255649626843 0.67785510504361279 0.7185028139215186 0.11782203500490408 1
		 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.4145330586468816 0.01758422371719659
		 -1.0403531935299082 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10568394364506882 -0.67718244659214755 -0.72090878403810443 0.10269061875264232 1
		 1 1 yes;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.3915580472033184 -0.11107496879342826
		 1.0913712753055176 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10190255649626707 0.67785510504361401 0.7185028139215176 0.11782203500490548 1
		 1 1 yes;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 0 0 0 0 -6.6662799219647858e-16
		 3.4977744227492007 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4381295539152035 1.8873791418627661e-15
		 4.4408920985006262e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70346732525490019 0 0 0.71072760063101292 1
		 1 1 yes;
	setAttr ".xm[33]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.4381324780812021 -2.1908170172446617e-06
		 -2.6645352591003757e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70346732525490063 0 0 0.71072760063101248 1
		 1 1 yes;
	setAttr ".xm[34]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.4145760234172613 -0.017585687905879888
		 1.0403867852359472 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10568394364506711 -0.6771824465921471 -0.72090878403810499 0.10269061875264411 1
		 1 1 yes;
	setAttr ".xm[35]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.3915715821890284 0.11107405765888567
		 -1.0913535019615406 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10190255649626843 0.67785510504361279 0.7185028139215186 0.11782203500490408 1
		 1 1 yes;
	setAttr ".xm[36]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.4145330586468816 0.01758422371719659
		 -1.0403531935299082 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10568394364506882 -0.67718244659214755 -0.72090878403810443 0.10269061875264232 1
		 1 1 yes;
	setAttr ".xm[37]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.3915580472033184 -0.11107496879342826
		 1.0913712753055176 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10190255649626707 0.67785510504361401 0.7185028139215176 0.11782203500490548 1
		 1 1 yes;
	setAttr ".xm[38]" -type "matrix" "xform" 1 1 1 0 0 0 0 -6.6662799219647858e-16
		 3.4977744227492007 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[39]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4381295539152035 1.8873791418627661e-15
		 4.4408920985006262e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70346732525490019 0 0 0.71072760063101292 1
		 1 1 yes;
	setAttr ".xm[40]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.4381324780812021 -2.1908170172446617e-06
		 -2.6645352591003757e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70346732525490063 0 0 0.71072760063101248 1
		 1 1 yes;
	setAttr ".xm[41]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.4145760234172613 -0.017585687905879888
		 1.0403867852359472 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10568394364506711 -0.6771824465921471 -0.72090878403810499 0.10269061875264411 1
		 1 1 yes;
	setAttr ".xm[42]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.3915715821890284 0.11107405765888567
		 -1.0913535019615406 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10190255649626843 0.67785510504361279 0.7185028139215186 0.11782203500490408 1
		 1 1 yes;
	setAttr ".xm[43]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.4145330586468816 0.01758422371719659
		 -1.0403531935299082 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10568394364506882 -0.67718244659214755 -0.72090878403810443 0.10269061875264232 1
		 1 1 yes;
	setAttr ".xm[44]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.3915580472033184 -0.11107496879342826
		 1.0913712753055176 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10190255649626707 0.67785510504361401 0.7185028139215176 0.11782203500490548 1
		 1 1 yes;
	setAttr ".xm[45]" -type "matrix" "xform" 1 1 1 0 0 0 0 -6.6662799219647858e-16
		 3.4977744227492007 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[46]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4381295539152035 1.8873791418627661e-15
		 4.4408920985006262e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70346732525490019 0 0 0.71072760063101292 1
		 1 1 yes;
	setAttr ".xm[47]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.4381324780812021 -2.1908170172446617e-06
		 -2.6645352591003757e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70346732525490063 0 0 0.71072760063101248 1
		 1 1 yes;
	setAttr ".xm[48]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.4145760234172613 -0.017585687905879888
		 1.0403867852359472 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10568394364506711 -0.6771824465921471 -0.72090878403810499 0.10269061875264411 1
		 1 1 yes;
	setAttr ".xm[49]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.3915715821890284 0.11107405765888567
		 -1.0913535019615406 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10190255649626843 0.67785510504361279 0.7185028139215186 0.11782203500490408 1
		 1 1 yes;
	setAttr ".xm[50]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.4145330586468816 0.01758422371719659
		 -1.0403531935299082 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10568394364506882 -0.67718244659214755 -0.72090878403810443 0.10269061875264232 1
		 1 1 yes;
	setAttr ".xm[51]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.3915580472033184 -0.11107496879342826
		 1.0913712753055176 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10190255649626707 0.67785510504361401 0.7185028139215176 0.11782203500490548 1
		 1 1 yes;
	setAttr ".xm[52]" -type "matrix" "xform" 1 1 1 0 0 0 0 -6.6662799219647858e-16
		 3.4977744227492007 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[53]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4381295539152035 1.8873791418627661e-15
		 4.4408920985006262e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70346732525490019 0 0 0.71072760063101292 1
		 1 1 yes;
	setAttr ".xm[54]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.4381324780812021 -2.1908170172446617e-06
		 -2.6645352591003757e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70346732525490063 0 0 0.71072760063101248 1
		 1 1 yes;
	setAttr ".xm[55]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.4145760234172613 -0.017585687905879888
		 1.0403867852359472 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10568394364506711 -0.6771824465921471 -0.72090878403810499 0.10269061875264411 1
		 1 1 yes;
	setAttr ".xm[56]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.3915715821890284 0.11107405765888567
		 -1.0913535019615406 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10190255649626843 0.67785510504361279 0.7185028139215186 0.11782203500490408 1
		 1 1 yes;
	setAttr ".xm[57]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.4145330586468816 0.01758422371719659
		 -1.0403531935299082 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10568394364506882 -0.67718244659214755 -0.72090878403810443 0.10269061875264232 1
		 1 1 yes;
	setAttr ".xm[58]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.3915580472033184 -0.11107496879342826
		 1.0913712753055176 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10190255649626707 0.67785510504361401 0.7185028139215176 0.11782203500490548 1
		 1 1 yes;
	setAttr ".xm[59]" -type "matrix" "xform" 1 1 1 0 0 0 0 -6.6662799219647858e-16
		 3.4977744227492007 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[60]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4381295539152035 1.8873791418627661e-15
		 4.4408920985006262e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70346732525490019 0 0 0.71072760063101292 1
		 1 1 yes;
	setAttr ".xm[61]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.4381324780812021 -2.1908170172446617e-06
		 -2.6645352591003757e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70346732525490063 0 0 0.71072760063101248 1
		 1 1 yes;
	setAttr ".xm[62]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.4145760234172613 -0.017585687905879888
		 1.0403867852359472 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10568394364506711 -0.6771824465921471 -0.72090878403810499 0.10269061875264411 1
		 1 1 yes;
	setAttr ".xm[63]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.3915715821890284 0.11107405765888567
		 -1.0913535019615406 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10190255649626843 0.67785510504361279 0.7185028139215186 0.11782203500490408 1
		 1 1 yes;
	setAttr ".xm[64]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.4145330586468816 0.01758422371719659
		 -1.0403531935299082 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10568394364506882 -0.67718244659214755 -0.72090878403810443 0.10269061875264232 1
		 1 1 yes;
	setAttr ".xm[65]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.3915580472033184 -0.11107496879342826
		 1.0913712753055176 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10190255649626707 0.67785510504361401 0.7185028139215176 0.11782203500490548 1
		 1 1 yes;
	setAttr ".xm[66]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.391571582189032 0.11107405765888567
		 -1.0913535019615423 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10190255649626843 0.67785510504361279 0.7185028139215186 0.11782203500490408 1
		 1 1 yes;
	setAttr ".xm[67]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.4145760234172613 -0.017585687905879888
		 1.0403867852359472 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10568394364506711 -0.6771824465921471 -0.72090878403810499 0.10269061875264411 1
		 1 1 yes;
	setAttr ".xm[68]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.3306381544893711 1.1003394761974752e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[69]" -type "matrix" "xform" 1 1 1.0000000000000002 1.5605287017891873
		 9.8607613152626476e-32 5.5511151231257827e-17 0 1.438129553915203 1.7763568394002505e-15
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[70]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.2888625799902993 -2.7028670797172157e-17
		 -5.2041704279304213e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70710678118654746 0.70710678118654757 4.329780281177467e-17 4.3297802811774658e-17 1
		 1 1 yes;
	setAttr ".xm[71]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.4381324780812021 -2.1908170172446617e-06
		 -2.6645352591003757e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70346732525490052 0 0 0.71072760063101248 1
		 1 1 yes;
	setAttr ".xm[72]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.3915580472033184 -0.11107496879342826
		 1.0913712753055194 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10190255649626707 0.67785510504361401 0.7185028139215176 0.11782203500490548 1
		 1 1 yes;
	setAttr ".xm[73]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.4145330586468816 0.01758422371719659
		 -1.0403531935299082 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10568394364506882 -0.67718244659214755 -0.72090878403810443 0.10269061875264232 1
		 1 1 yes;
	setAttr -s 23 ".m";
	setAttr -s 25 ".p";
	setAttr -s 74 ".g[0:73]" yes no yes yes yes yes yes no yes yes yes 
		no yes yes yes yes no no yes no no no no no no no no no no no no no no no no no no 
		no no no no no no no no no no no no no no no no no no no no no no no no no no no 
		no no no no no yes yes no no no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster2";
	setAttr -s 26 ".wl";
	setAttr ".wl[0].w[19]"  1;
	setAttr ".wl[1].w[19]"  1;
	setAttr ".wl[2].w[19]"  1;
	setAttr ".wl[3].w[18]"  1;
	setAttr ".wl[4].w[18]"  1;
	setAttr ".wl[5].w[18]"  1;
	setAttr ".wl[6].w[18]"  1;
	setAttr ".wl[7].w[18]"  1;
	setAttr ".wl[8].w[18]"  1;
	setAttr ".wl[9].w[18]"  1;
	setAttr ".wl[10].w[18]"  1;
	setAttr ".wl[11].w[18]"  1;
	setAttr ".wl[12].w[18]"  1;
	setAttr ".wl[13].w[18]"  1;
	setAttr ".wl[14].w[18]"  1;
	setAttr ".wl[15].w[18]"  1;
	setAttr ".wl[16].w[18]"  1;
	setAttr ".wl[17].w[18]"  1;
	setAttr ".wl[18].w[19]"  1;
	setAttr ".wl[19].w[19]"  1;
	setAttr ".wl[20].w[19]"  1;
	setAttr ".wl[21].w[19]"  1;
	setAttr ".wl[22].w[19]"  1;
	setAttr ".wl[23].w[19]"  1;
	setAttr ".wl[24].w[18]"  1;
	setAttr ".wl[25].w[19]"  1;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" -1 -0 1.2246467991473532e-16 -0 -0 1 -0 0 -1.2246467991473532e-16 -0 -1 0
		 6.8717722448313527e-17 -10.634563903704942 -0.018175814976949763 1;
	setAttr ".pm[1]" -type "matrix" -1 -0 1.2246467991473532e-16 -0 -0 1 -0 0 -1.2246467991473532e-16 -0 -1 0
		 7.353457146447921e-16 -14.132338326454143 -0.018175814976949763 1;
	setAttr ".pm[2]" -type "matrix" -1 -0 1.2246467991473532e-16 -0 -0 1 -0 0 -1.2246467991473532e-16 -0 -1 0
		 6.8717722448313428e-17 -8.5365370207398907 -0.018175814976949763 1;
	setAttr ".pm[3]" -type "matrix" -1 -0 1.2246467991473532e-16 -0 -0 1 -0 0 -1.2246467991473532e-16 -0 -1 0
		 4.2241905145476408e-16 -7.3913983732815653 -0.045052099000275944 1;
	setAttr ".pm[4]" -type "matrix" 1.477176941278356e-15 6.981057536655051e-16 -1 -0
		 -0.99892875515336343 0.046274638061808995 -1.529528359619386e-15 0 0.046274638061808863 0.99892875515336343 4.4852572293978137e-16 -0
		 6.8627936880930589 -0.27433068417854384 1.4719753077507971 1;
	setAttr ".pm[5]" -type "matrix" 1.4064063985879794e-15 8.3151933300203677e-16 -1 -0
		 -0.9989340743284465 -0.046159670119807199 -1.529528359619386e-15 0 -0.046159670119807331 0.9989340743284465 4.4852572293978137e-16 -0
		 3.9435928581974777 0.090188359666807966 1.4719753077507971 1;
	setAttr ".pm[6]" -type "matrix" 1.4654040599441831e-15 -7.2249173022566048e-16 -1 -0
		 -0.5850674743411175 0.81098461789858001 -1.5295283596193864e-15 0 0.81098461789858001 0.58506747434111761 4.4852572293978157e-16 -0
		 0.52934012017617871 -0.64521122801142317 1.4719753077507964 1;
	setAttr ".pm[7]" -type "matrix" 1.464973975462413e-15 -0.99994728840146285 -0.010267444597432169 -0
		 -0.5850674743411175 0.0083267396336424247 -0.81094186960298142 0 0.8109846178985799 0.0060071478785578628 -0.585036634499293 -0
		 -0.90878943373902465 1.4652730470420681 0.66029064281732275 1;
	setAttr ".pm[8]" -type "matrix" 1.1106241961056644e-15 1.1825607839880968e-15 -1 -0
		 0.99892875515336343 -0.046274638061808364 1.2820340345168972e-15 0 -0.046274638061808641 -0.99892875515336343 -1.2376969010084732e-15 0
		 -6.8627971761989981 0.27433083090909582 -1.4719800000000089 1;
	setAttr ".pm[9]" -type "matrix" 9.9668717112965231e-16 1.2800589032179211e-15 -1 -0
		 0.99893407432844661 0.046159670119807393 1.2820340345168972e-15 0 0.046159670119807115 -0.99893407432844672 -1.2376969010084736e-15 -0
		 -3.9435905135198688 -0.090188271185206503 -1.471980000000005 1;
	setAttr ".pm[10]" -type "matrix" 1.6167683789787193e-15 -1.3414962369094175e-16 -1 -0
		 0.58506747434111783 -0.8109846178985799 1.2820340345168974e-15 0 -0.81098461789858023 -0.58506747434111772 -1.2376969010084738e-15 0
		 -0.52934008704748747 0.64521116757982055 -1.4719800000000014 1;
	setAttr ".pm[11]" -type "matrix" 1.6158949178723962e-15 -0.99994728840146319 -0.010267444597431763 -0
		 0.58506747434111783 -0.0083267396336418626 0.81094186960298154 0 -0.81098461789858012 -0.0060071478785580718 0.58503663449929322 0
		 0.9087923910337149 -1.4652777171703215 -0.66029282126784716 1;
	setAttr ".pm[12]" -type "matrix" -0.99995325883512598 0.0096685129379943131 1.6061271050617637e-06 -0
		 0.00966851307139871 0.99995324503795169 0.00016611158518660784 0 -1.2245851779986961e-16 0.00016611934979852676 -0.999999986202181 0
		 1.3272938565604671 -12.99215742064008 -0.020334064000712502 1;
	setAttr ".pm[13]" -type "matrix" -0.99980566703278784 -0.017117319501743482 -0.0097788313308614892 -0
		 0.0096670860114213605 0.0065988191016375193 -0.99993149917107393 -0 0.017180675690146401 -0.99983171231939783 -0.00643206213363306 -0
		 4.2290240275309685 -0.078948143237026744 12.99192157420962 1;
	setAttr ".pm[14]" -type "matrix" -0.9999887798164705 0.0047294247656044985 -0.00026978241813739671 -0
		 0.00016216523014272592 -0.022740448206859897 -0.99974138941917823 0 -0.0047343366594256846 -0.9997302158866348 0.022739426106601929 0
		 6.9166466637092094 0.20590347139745455 12.950042573040394 1;
	setAttr ".pm[15]" -type "matrix" -0.99990612408113166 0.013666963790080479 0.00097832806844420786 -0
		 -0.00015115248526284083 0.060394096631831144 -0.99817459907821282 0 -0.013701101341683281 -0.99808104239725204 -0.060386361284972712 -0
		 8.0809646874999821 -0.93245748834910869 12.916471143858102 1;
	setAttr ".pm[16]" -type "matrix" 0.95669909334599668 -0.29107847904145767 0.00040475901380116619 -0
		 -0.29107845299057894 -0.95669917896845258 -0.00012314909504049798 0 0.00042307866746336162 1.4769544094683774e-16 -0.99999991050221637 -0
		 -7.5304204047180008 14.741670881892746 -0.041647075215516798 1;
	setAttr ".pm[17]" -type "matrix" 0.95150469301091578 0.30763396539512061 0.000403129602716486 -0
		 0.30763393778478132 -0.95150477840905912 0.000130337084023426 0 0.00042367585729911401 -6.2544912825257478e-16 -0.99999991024937951 -0
		 -15.236999271363663 9.8366169770217446 -0.04491666401818066 1;
	setAttr ".pm[18]" -type "matrix" -0.99995325883512576 0.0096685129379963323 1.6061271011246137e-06 -0
		 -0.0096685130714007275 -0.99995324503795124 -0.00016611158480471007 0 -1.2245851779986952e-16 -0.00016611934941660874 0.99999998620218045 -0
		 -1.3272973614988237 12.992137061043953 0.020334045636677348 1;
	setAttr ".pm[19]" -type "matrix" -0.99980566703278795 -0.017117319501743493 -0.0097788313308640028 0
		 -0.0096670860114238845 -0.0065988191016367933 0.99993149917107382 0 -0.017180675690146415 0.9998317123193976 0.0064320621336323375 -0
		 -4.2290271213014208 0.078948280970734447 -12.991951362939481 1;
	setAttr ".pm[20]" -type "matrix" -0.9999887798164705 0.0047294247656060329 -0.0002697824181365603 0
		 -0.00016216523014183943 0.022740448206862822 0.99974138941917823 0 0.0047343366594272008 0.99973021588663458 -0.022739426106604801 -0
		 -6.9166477096983314 -0.20590448713050732 -12.950088309301858 1;
	setAttr ".pm[21]" -type "matrix" -0.99990612408113155 0.013666963790084922 0.00097832806844424689 -0
		 0.00015115248526264427 -0.060394096631828834 0.99817459907821304 -0 0.013701101341687722 0.99808104239725215 0.060386361284970463 -0
		 -8.080961287787094 0.93245560997347066 -12.91644141246493 1;
	setAttr ".pm[22]" -type "matrix" 0.95669909334599723 -0.29107847904145784 0.00040475901380100497 -0
		 0.29107845299057905 0.95669917896845291 0.00012314909504049245 -0 -0.00042307866746322707 -4.7157373492257025e-16 0.99999991050221648 -0
		 7.5303749307173202 -14.741661040490099 0.041647044718498047 1;
	setAttr ".pm[23]" -type "matrix" 0.95150469301091611 0.30763396539512072 0.00040312960271650887 -0
		 -0.30763393778478154 0.95150477840905945 -0.0001303370840238637 0 -0.00042367585729924086 6.5014183273093273e-16 0.99999991024937973 -0
		 15.23697946724454 -9.8366107712992346 0.044916644369739522 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 2 ".ma";
	setAttr -s 24 ".dpf[0:23]"  1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 
		1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2;
	setAttr -s 2 ".lw";
	setAttr -s 2 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
	setAttr -s 20 ".ifcl";
createNode tweak -n "tweak2";
createNode objectSet -n "skinCluster2Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster2GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster2GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId32";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts22";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster3";
	setAttr -s 76 ".wl";
	setAttr ".wl[0].w[15]"  1;
	setAttr ".wl[1].w[15]"  1;
	setAttr ".wl[2].w[15]"  1;
	setAttr ".wl[3].w[15]"  1;
	setAttr ".wl[4].w[15]"  1;
	setAttr ".wl[5].w[15]"  1;
	setAttr ".wl[6].w[15]"  1;
	setAttr ".wl[7].w[15]"  0.99999999999999989;
	setAttr ".wl[8].w[15]"  1;
	setAttr ".wl[9].w[15]"  1;
	setAttr ".wl[10].w[15]"  1;
	setAttr ".wl[11].w[15]"  1;
	setAttr ".wl[12].w[15]"  1;
	setAttr ".wl[13].w[15]"  1;
	setAttr ".wl[14].w[15]"  0.99999999999999989;
	setAttr ".wl[15].w[15]"  1;
	setAttr ".wl[16].w[15]"  1;
	setAttr ".wl[17].w[15]"  1;
	setAttr ".wl[18].w[15]"  0.99999999999999989;
	setAttr ".wl[19].w[15]"  1;
	setAttr ".wl[20].w[15]"  1;
	setAttr ".wl[21].w[15]"  1;
	setAttr ".wl[22].w[15]"  1;
	setAttr ".wl[23].w[15]"  0.99999999999999989;
	setAttr ".wl[24].w[15]"  1;
	setAttr ".wl[25].w[15]"  1;
	setAttr ".wl[26].w[15]"  1;
	setAttr ".wl[27].w[15]"  1;
	setAttr ".wl[28].w[15]"  1;
	setAttr ".wl[29].w[15]"  1;
	setAttr ".wl[30].w[15]"  1;
	setAttr ".wl[31].w[15]"  1;
	setAttr -s 2 ".wl[32].w";
	setAttr ".wl[32].w[15]" 0.82018563914572662;
	setAttr ".wl[32].w[25]" 0.17981436085427352;
	setAttr -s 2 ".wl[33].w";
	setAttr ".wl[33].w[15]" 0.768002456670414;
	setAttr ".wl[33].w[25]" 0.23199754332958603;
	setAttr -s 2 ".wl[34].w";
	setAttr ".wl[34].w[15]" 0.80563465097905107;
	setAttr ".wl[34].w[25]" 0.1943653490209491;
	setAttr -s 2 ".wl[35].w";
	setAttr ".wl[35].w[15]" 0.80487015617998359;
	setAttr ".wl[35].w[24]" 0.19512984382001641;
	setAttr -s 2 ".wl[36].w";
	setAttr ".wl[36].w[15]" 0.76779686708111639;
	setAttr ".wl[36].w[24]" 0.23220313291888364;
	setAttr -s 2 ".wl[37].w";
	setAttr ".wl[37].w[15]" 0.82181784301093974;
	setAttr ".wl[37].w[24]" 0.17818215698906023;
	setAttr -s 2 ".wl[38].w";
	setAttr ".wl[38].w[15]" 0.45847219077262402;
	setAttr ".wl[38].w[25]" 0.54152780922737587;
	setAttr -s 2 ".wl[39].w";
	setAttr ".wl[39].w[15]" 0.30800826288104716;
	setAttr ".wl[39].w[25]" 0.69199173711895279;
	setAttr -s 2 ".wl[40].w";
	setAttr ".wl[40].w[15]" 0.32468165079918099;
	setAttr ".wl[40].w[25]" 0.6753183492008189;
	setAttr -s 2 ".wl[41].w";
	setAttr ".wl[41].w[15]" 0.37064601314797735;
	setAttr ".wl[41].w[24]" 0.62935398685202271;
	setAttr -s 2 ".wl[42].w";
	setAttr ".wl[42].w[15]" 0.35555697603236819;
	setAttr ".wl[42].w[24]" 0.64444302396763176;
	setAttr -s 2 ".wl[43].w";
	setAttr ".wl[43].w[15]" 0.49007678915640085;
	setAttr ".wl[43].w[24]" 0.50992321084359915;
	setAttr -s 2 ".wl[44].w";
	setAttr ".wl[44].w[15]" 0.15252908328177212;
	setAttr ".wl[44].w[25]" 0.84747091671822794;
	setAttr -s 2 ".wl[45].w";
	setAttr ".wl[45].w[15]" 0.012222989692377804;
	setAttr ".wl[45].w[25]" 0.98777701030762222;
	setAttr -s 2 ".wl[46].w";
	setAttr ".wl[46].w[15]" 0.050985423172051784;
	setAttr ".wl[46].w[25]" 0.9490145768279481;
	setAttr -s 2 ".wl[47].w";
	setAttr ".wl[47].w[15]" 0.067856318711978128;
	setAttr ".wl[47].w[24]" 0.93214368128802194;
	setAttr -s 2 ".wl[48].w";
	setAttr ".wl[48].w[15]" 0.010980032481238853;
	setAttr ".wl[48].w[24]" 0.98901996751876109;
	setAttr -s 2 ".wl[49].w";
	setAttr ".wl[49].w[15]" 0.13211936482978634;
	setAttr ".wl[49].w[24]" 0.86788063517021363;
	setAttr ".wl[50].w[13]"  1;
	setAttr ".wl[51].w[13]"  1;
	setAttr ".wl[52].w[13]"  1;
	setAttr ".wl[53].w[13]"  1;
	setAttr -s 2 ".wl[54].w[13:14]"  0.029639432151542171 0.97036056784845781;
	setAttr -s 2 ".wl[55].w[14:15]"  0.99828981263628258 0.00171018736371737;
	setAttr -s 2 ".wl[56].w[14:15]"  0.98805650358320773 0.011943496416792276;
	setAttr -s 2 ".wl[57].w[14:15]"  0.99725655370884669 0.002743446291153273;
	setAttr ".wl[58].w[13]"  1;
	setAttr ".wl[59].w[13]"  1;
	setAttr ".wl[60].w[15]"  1;
	setAttr ".wl[61].w[15]"  0.99999999999999989;
	setAttr ".wl[62].w[15]"  1;
	setAttr ".wl[63].w[15]"  1;
	setAttr ".wl[64].w[15]"  1;
	setAttr ".wl[65].w[15]"  1;
	setAttr ".wl[66].w[15]"  1;
	setAttr ".wl[67].w[15]"  0.99999999999999989;
	setAttr ".wl[68].w[15]"  1;
	setAttr ".wl[69].w[15]"  1;
	setAttr ".wl[70].w[15]"  1;
	setAttr ".wl[71].w[15]"  1;
	setAttr ".wl[72].w[15]"  0.99999999999999989;
	setAttr ".wl[73].w[15]"  1;
	setAttr ".wl[74].w[15]"  1;
	setAttr ".wl[75].w[15]"  1;
	setAttr -s 26 ".pm";
	setAttr ".pm[0]" -type "matrix" -1 -0 1.2246467991473532e-16 -0 -0 1 -0 0 -1.2246467991473532e-16 -0 -1 0
		 6.8717722448313527e-17 -10.634563903704942 -0.018175814976949763 1;
	setAttr ".pm[1]" -type "matrix" -1 -0 1.2246467991473532e-16 -0 -0 1 -0 0 -1.2246467991473532e-16 -0 -1 0
		 7.353457146447921e-16 -14.132338326454143 -0.018175814976949763 1;
	setAttr ".pm[2]" -type "matrix" -1 -0 1.2246467991473532e-16 -0 -0 1 -0 0 -1.2246467991473532e-16 -0 -1 0
		 6.8717722448313428e-17 -8.5365370207398907 -0.018175814976949763 1;
	setAttr ".pm[3]" -type "matrix" -1 -0 1.2246467991473532e-16 -0 -0 1 -0 0 -1.2246467991473532e-16 -0 -1 0
		 4.2241905145476408e-16 -7.3913983732815653 -0.045052099000275944 1;
	setAttr ".pm[4]" -type "matrix" 1.477176941278356e-15 6.981057536655051e-16 -1 -0
		 -0.99892875515336343 0.046274638061808995 -1.529528359619386e-15 0 0.046274638061808863 0.99892875515336343 4.4852572293978137e-16 -0
		 6.8627936880930589 -0.27433068417854384 1.4719753077507971 1;
	setAttr ".pm[5]" -type "matrix" 1.4064063985879794e-15 8.3151933300203677e-16 -1 -0
		 -0.9989340743284465 -0.046159670119807199 -1.529528359619386e-15 0 -0.046159670119807331 0.9989340743284465 4.4852572293978137e-16 -0
		 3.9435928581974777 0.090188359666807966 1.4719753077507971 1;
	setAttr ".pm[6]" -type "matrix" 1.4654040599441831e-15 -7.2249173022566048e-16 -1 -0
		 -0.5850674743411175 0.81098461789858001 -1.5295283596193864e-15 0 0.81098461789858001 0.58506747434111761 4.4852572293978157e-16 -0
		 0.52934012017617871 -0.64521122801142317 1.4719753077507964 1;
	setAttr ".pm[7]" -type "matrix" 1.464973975462413e-15 -0.99994728840146285 -0.010267444597432169 -0
		 -0.5850674743411175 0.0083267396336424247 -0.81094186960298142 0 0.8109846178985799 0.0060071478785578628 -0.585036634499293 -0
		 -0.90878943373902465 1.4652730470420681 0.66029064281732275 1;
	setAttr ".pm[8]" -type "matrix" 1.1106241961056644e-15 1.1825607839880968e-15 -1 -0
		 0.99892875515336343 -0.046274638061808364 1.2820340345168972e-15 0 -0.046274638061808641 -0.99892875515336343 -1.2376969010084732e-15 0
		 -6.8627971761989981 0.27433083090909582 -1.4719800000000089 1;
	setAttr ".pm[9]" -type "matrix" 9.9668717112965231e-16 1.2800589032179211e-15 -1 -0
		 0.99893407432844661 0.046159670119807393 1.2820340345168972e-15 0 0.046159670119807115 -0.99893407432844672 -1.2376969010084736e-15 -0
		 -3.9435905135198688 -0.090188271185206503 -1.471980000000005 1;
	setAttr ".pm[10]" -type "matrix" 1.6167683789787193e-15 -1.3414962369094175e-16 -1 -0
		 0.58506747434111783 -0.8109846178985799 1.2820340345168974e-15 0 -0.81098461789858023 -0.58506747434111772 -1.2376969010084738e-15 0
		 -0.52934008704748747 0.64521116757982055 -1.4719800000000014 1;
	setAttr ".pm[11]" -type "matrix" 1.6158949178723962e-15 -0.99994728840146319 -0.010267444597431763 -0
		 0.58506747434111783 -0.0083267396336418626 0.81094186960298154 0 -0.81098461789858012 -0.0060071478785580718 0.58503663449929322 0
		 0.9087923910337149 -1.4652777171703215 -0.66029282126784716 1;
	setAttr ".pm[12]" -type "matrix" -0.99995325883512598 0.0096685129379943131 1.6061271050617637e-06 -0
		 0.00966851307139871 0.99995324503795169 0.00016611158518660784 0 -1.2245851779986961e-16 0.00016611934979852676 -0.999999986202181 0
		 1.3272938565604671 -12.99215742064008 -0.020334064000712502 1;
	setAttr ".pm[13]" -type "matrix" -0.99980566703278784 -0.017117319501743482 -0.0097788313308614892 -0
		 0.0096670860114213605 0.0065988191016375193 -0.99993149917107393 -0 0.017180675690146401 -0.99983171231939783 -0.00643206213363306 -0
		 4.2290240275309685 -0.078948143237026744 12.99192157420962 1;
	setAttr ".pm[14]" -type "matrix" -0.9999887798164705 0.0047294247656044985 -0.00026978241813739671 -0
		 0.00016216523014272592 -0.022740448206859897 -0.99974138941917823 0 -0.0047343366594256846 -0.9997302158866348 0.022739426106601929 0
		 6.9166466637092094 0.20590347139745455 12.950042573040394 1;
	setAttr ".pm[15]" -type "matrix" -0.99990612408113166 0.013666963790080479 0.00097832806844420786 -0
		 -0.00015115248526284083 0.060394096631831144 -0.99817459907821282 0 -0.013701101341683281 -0.99808104239725204 -0.060386361284972712 -0
		 8.0809646874999821 -0.93245748834910869 12.916471143858102 1;
	setAttr ".pm[16]" -type "matrix" 0.95669909334599668 -0.29107847904145767 0.00040475901380116619 -0
		 -0.29107845299057894 -0.95669917896845258 -0.00012314909504049798 0 0.00042307866746336162 1.4769544094683774e-16 -0.99999991050221637 -0
		 -7.5304204047180008 14.741670881892746 -0.041647075215516798 1;
	setAttr ".pm[17]" -type "matrix" 0.95150469301091578 0.30763396539512061 0.000403129602716486 -0
		 0.30763393778478132 -0.95150477840905912 0.000130337084023426 0 0.00042367585729911401 -6.2544912825257478e-16 -0.99999991024937951 -0
		 -15.236999271363663 9.8366169770217446 -0.04491666401818066 1;
	setAttr ".pm[18]" -type "matrix" -0.99995325883512576 0.0096685129379963323 1.6061271011246137e-06 -0
		 -0.0096685130714007275 -0.99995324503795124 -0.00016611158480471007 0 -1.2245851779986952e-16 -0.00016611934941660874 0.99999998620218045 -0
		 -1.3272973614988237 12.992137061043953 0.020334045636677348 1;
	setAttr ".pm[19]" -type "matrix" -0.99980566703278795 -0.017117319501743493 -0.0097788313308640028 0
		 -0.0096670860114238845 -0.0065988191016367933 0.99993149917107382 0 -0.017180675690146415 0.9998317123193976 0.0064320621336323375 -0
		 -4.2290271213014208 0.078948280970734447 -12.991951362939481 1;
	setAttr ".pm[20]" -type "matrix" -0.9999887798164705 0.0047294247656060329 -0.0002697824181365603 0
		 -0.00016216523014183943 0.022740448206862822 0.99974138941917823 0 0.0047343366594272008 0.99973021588663458 -0.022739426106604801 -0
		 -6.9166477096983314 -0.20590448713050732 -12.950088309301858 1;
	setAttr ".pm[21]" -type "matrix" -0.99990612408113155 0.013666963790084922 0.00097832806844424689 -0
		 0.00015115248526264427 -0.060394096631828834 0.99817459907821304 -0 0.013701101341687722 0.99808104239725215 0.060386361284970463 -0
		 -8.080961287787094 0.93245560997347066 -12.91644141246493 1;
	setAttr ".pm[22]" -type "matrix" 0.95669909334599723 -0.29107847904145784 0.00040475901380100497 -0
		 0.29107845299057905 0.95669917896845291 0.00012314909504049245 -0 -0.00042307866746322707 -4.7157373492257025e-16 0.99999991050221648 -0
		 7.5303749307173202 -14.741661040490099 0.041647044718498047 1;
	setAttr ".pm[23]" -type "matrix" 0.95150469301091611 0.30763396539512072 0.00040312960271650887 -0
		 -0.30763393778478154 0.95150477840905945 -0.0001303370840238637 0 -0.00042367585729924086 6.5014183273093273e-16 0.99999991024937973 -0
		 15.23697946724454 -9.8366107712992346 0.044916644369739522 1;
	setAttr ".pm[24]" -type "matrix" 0.95150469301091578 0.30763396539512061 0.000403129602716486 -0
		 0.30763393778478132 -0.95150477840905912 0.000130337084023426 0 0.00042367585729911401 -6.2544912825257478e-16 -0.99999991024937951 -0
		 -15.236999271363663 9.8366169770217446 -0.04491666401818066 1;
	setAttr ".pm[25]" -type "matrix" 0.95669909334599668 -0.29107847904145767 0.00040475901380116619 -0
		 -0.29107845299057894 -0.95669917896845258 -0.00012314909504049798 0 0.00042307866746336162 1.4769544094683774e-16 -0.99999991050221637 -0
		 -7.5304204047180008 14.741670881892746 -0.041647075215516798 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 5 ".ma";
	setAttr -s 26 ".dpf[0:25]"  1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 
		1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
	setAttr -s 22 ".ifcl";
createNode tweak -n "tweak3";
createNode objectSet -n "skinCluster3Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster3GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster3GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId34";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts24";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster4";
	setAttr -s 26 ".wl";
	setAttr ".wl[0].w[13]"  1;
	setAttr ".wl[1].w[13]"  1;
	setAttr ".wl[2].w[13]"  1;
	setAttr ".wl[3].w[13]"  1;
	setAttr ".wl[4].w[13]"  1;
	setAttr ".wl[5].w[13]"  1;
	setAttr ".wl[6].w[13]"  1;
	setAttr ".wl[7].w[13]"  1;
	setAttr ".wl[8].w[13]"  1;
	setAttr ".wl[9].w[13]"  1;
	setAttr ".wl[10].w[13]"  1;
	setAttr ".wl[11].w[13]"  1;
	setAttr ".wl[12].w[13]"  1;
	setAttr ".wl[13].w[13]"  1;
	setAttr ".wl[14].w[13]"  1;
	setAttr ".wl[15].w[13]"  1;
	setAttr ".wl[16].w[13]"  1;
	setAttr ".wl[17].w[13]"  1;
	setAttr ".wl[18].w[13]"  1;
	setAttr ".wl[19].w[13]"  1;
	setAttr ".wl[20].w[13]"  1;
	setAttr ".wl[21].w[13]"  1;
	setAttr ".wl[22].w[13]"  1;
	setAttr ".wl[23].w[13]"  1;
	setAttr ".wl[24].w[13]"  1;
	setAttr ".wl[25].w[13]"  1;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" -1 -0 1.2246467991473532e-16 -0 -0 1 -0 0 -1.2246467991473532e-16 -0 -1 0
		 6.8717722448313527e-17 -10.634563903704942 -0.018175814976949763 1;
	setAttr ".pm[1]" -type "matrix" -1 -0 1.2246467991473532e-16 -0 -0 1 -0 0 -1.2246467991473532e-16 -0 -1 0
		 7.353457146447921e-16 -14.132338326454143 -0.018175814976949763 1;
	setAttr ".pm[2]" -type "matrix" -1 -0 1.2246467991473532e-16 -0 -0 1 -0 0 -1.2246467991473532e-16 -0 -1 0
		 6.8717722448313428e-17 -8.5365370207398907 -0.018175814976949763 1;
	setAttr ".pm[3]" -type "matrix" -1 -0 1.2246467991473532e-16 -0 -0 1 -0 0 -1.2246467991473532e-16 -0 -1 0
		 4.2241905145476408e-16 -7.3913983732815653 -0.045052099000275944 1;
	setAttr ".pm[4]" -type "matrix" 1.477176941278356e-15 6.981057536655051e-16 -1 -0
		 -0.99892875515336343 0.046274638061808995 -1.529528359619386e-15 0 0.046274638061808863 0.99892875515336343 4.4852572293978137e-16 -0
		 6.8627936880930589 -0.27433068417854384 1.4719753077507971 1;
	setAttr ".pm[5]" -type "matrix" 1.4064063985879794e-15 8.3151933300203677e-16 -1 -0
		 -0.9989340743284465 -0.046159670119807199 -1.529528359619386e-15 0 -0.046159670119807331 0.9989340743284465 4.4852572293978137e-16 -0
		 3.9435928581974777 0.090188359666807966 1.4719753077507971 1;
	setAttr ".pm[6]" -type "matrix" 1.4654040599441831e-15 -7.2249173022566048e-16 -1 -0
		 -0.5850674743411175 0.81098461789858001 -1.5295283596193864e-15 0 0.81098461789858001 0.58506747434111761 4.4852572293978157e-16 -0
		 0.52934012017617871 -0.64521122801142317 1.4719753077507964 1;
	setAttr ".pm[7]" -type "matrix" 1.464973975462413e-15 -0.99994728840146285 -0.010267444597432169 -0
		 -0.5850674743411175 0.0083267396336424247 -0.81094186960298142 0 0.8109846178985799 0.0060071478785578628 -0.585036634499293 -0
		 -0.90878943373902465 1.4652730470420681 0.66029064281732275 1;
	setAttr ".pm[8]" -type "matrix" 1.1106241961056644e-15 1.1825607839880968e-15 -1 -0
		 0.99892875515336343 -0.046274638061808364 1.2820340345168972e-15 0 -0.046274638061808641 -0.99892875515336343 -1.2376969010084732e-15 0
		 -6.8627971761989981 0.27433083090909582 -1.4719800000000089 1;
	setAttr ".pm[9]" -type "matrix" 9.9668717112965231e-16 1.2800589032179211e-15 -1 -0
		 0.99893407432844661 0.046159670119807393 1.2820340345168972e-15 0 0.046159670119807115 -0.99893407432844672 -1.2376969010084736e-15 -0
		 -3.9435905135198688 -0.090188271185206503 -1.471980000000005 1;
	setAttr ".pm[10]" -type "matrix" 1.6167683789787193e-15 -1.3414962369094175e-16 -1 -0
		 0.58506747434111783 -0.8109846178985799 1.2820340345168974e-15 0 -0.81098461789858023 -0.58506747434111772 -1.2376969010084738e-15 0
		 -0.52934008704748747 0.64521116757982055 -1.4719800000000014 1;
	setAttr ".pm[11]" -type "matrix" 1.6158949178723962e-15 -0.99994728840146319 -0.010267444597431763 -0
		 0.58506747434111783 -0.0083267396336418626 0.81094186960298154 0 -0.81098461789858012 -0.0060071478785580718 0.58503663449929322 0
		 0.9087923910337149 -1.4652777171703215 -0.66029282126784716 1;
	setAttr ".pm[12]" -type "matrix" -0.99995325883512598 0.0096685129379943131 1.6061271050617637e-06 -0
		 0.00966851307139871 0.99995324503795169 0.00016611158518660784 0 -1.2245851779986961e-16 0.00016611934979852676 -0.999999986202181 0
		 1.3272938565604671 -12.99215742064008 -0.020334064000712502 1;
	setAttr ".pm[13]" -type "matrix" -0.99980566703278784 -0.017117319501743482 -0.0097788313308614892 -0
		 0.0096670860114213605 0.0065988191016375193 -0.99993149917107393 -0 0.017180675690146401 -0.99983171231939783 -0.00643206213363306 -0
		 4.2290240275309685 -0.078948143237026744 12.99192157420962 1;
	setAttr ".pm[14]" -type "matrix" -0.9999887798164705 0.0047294247656044985 -0.00026978241813739671 -0
		 0.00016216523014272592 -0.022740448206859897 -0.99974138941917823 0 -0.0047343366594256846 -0.9997302158866348 0.022739426106601929 0
		 6.9166466637092094 0.20590347139745455 12.950042573040394 1;
	setAttr ".pm[15]" -type "matrix" -0.99990612408113166 0.013666963790080479 0.00097832806844420786 -0
		 -0.00015115248526284083 0.060394096631831144 -0.99817459907821282 0 -0.013701101341683281 -0.99808104239725204 -0.060386361284972712 -0
		 8.0809646874999821 -0.93245748834910869 12.916471143858102 1;
	setAttr ".pm[16]" -type "matrix" 0.95669909334599668 -0.29107847904145767 0.00040475901380116619 -0
		 -0.29107845299057894 -0.95669917896845258 -0.00012314909504049798 0 0.00042307866746336162 1.4769544094683774e-16 -0.99999991050221637 -0
		 -7.5304204047180008 14.741670881892746 -0.041647075215516798 1;
	setAttr ".pm[17]" -type "matrix" 0.95150469301091578 0.30763396539512061 0.000403129602716486 -0
		 0.30763393778478132 -0.95150477840905912 0.000130337084023426 0 0.00042367585729911401 -6.2544912825257478e-16 -0.99999991024937951 -0
		 -15.236999271363663 9.8366169770217446 -0.04491666401818066 1;
	setAttr ".pm[18]" -type "matrix" -0.99995325883512576 0.0096685129379963323 1.6061271011246137e-06 -0
		 -0.0096685130714007275 -0.99995324503795124 -0.00016611158480471007 0 -1.2245851779986952e-16 -0.00016611934941660874 0.99999998620218045 -0
		 -1.3272973614988237 12.992137061043953 0.020334045636677348 1;
	setAttr ".pm[19]" -type "matrix" -0.99980566703278795 -0.017117319501743493 -0.0097788313308640028 0
		 -0.0096670860114238845 -0.0065988191016367933 0.99993149917107382 0 -0.017180675690146415 0.9998317123193976 0.0064320621336323375 -0
		 -4.2290271213014208 0.078948280970734447 -12.991951362939481 1;
	setAttr ".pm[20]" -type "matrix" -0.9999887798164705 0.0047294247656060329 -0.0002697824181365603 0
		 -0.00016216523014183943 0.022740448206862822 0.99974138941917823 0 0.0047343366594272008 0.99973021588663458 -0.022739426106604801 -0
		 -6.9166477096983314 -0.20590448713050732 -12.950088309301858 1;
	setAttr ".pm[21]" -type "matrix" -0.99990612408113155 0.013666963790084922 0.00097832806844424689 -0
		 0.00015115248526264427 -0.060394096631828834 0.99817459907821304 -0 0.013701101341687722 0.99808104239725215 0.060386361284970463 -0
		 -8.080961287787094 0.93245560997347066 -12.91644141246493 1;
	setAttr ".pm[22]" -type "matrix" 0.95669909334599723 -0.29107847904145784 0.00040475901380100497 -0
		 0.29107845299057905 0.95669917896845291 0.00012314909504049245 -0 -0.00042307866746322707 -4.7157373492257025e-16 0.99999991050221648 -0
		 7.5303749307173202 -14.741661040490099 0.041647044718498047 1;
	setAttr ".pm[23]" -type "matrix" 0.95150469301091611 0.30763396539512072 0.00040312960271650887 -0
		 -0.30763393778478154 0.95150477840905945 -0.0001303370840238637 0 -0.00042367585729924086 6.5014183273093273e-16 0.99999991024937973 -0
		 15.23697946724454 -9.8366107712992346 0.044916644369739522 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 2 ".ma";
	setAttr -s 24 ".dpf[0:23]"  1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 
		1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2;
	setAttr -s 2 ".lw";
	setAttr -s 2 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
	setAttr -s 20 ".ifcl";
createNode tweak -n "tweak4";
createNode objectSet -n "skinCluster4Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster4GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster4GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId36";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts26";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster5";
	setAttr -s 30 ".wl";
	setAttr ".wl[0].w[24]"  1;
	setAttr ".wl[1].w[24]"  1;
	setAttr ".wl[2].w[24]"  1;
	setAttr ".wl[3].w[24]"  1;
	setAttr ".wl[4].w[24]"  1;
	setAttr ".wl[5].w[24]"  1;
	setAttr ".wl[6].w[24]"  1;
	setAttr ".wl[7].w[24]"  1;
	setAttr ".wl[8].w[24]"  1;
	setAttr ".wl[9].w[24]"  1;
	setAttr ".wl[10].w[24]"  1;
	setAttr ".wl[11].w[24]"  1;
	setAttr ".wl[12].w[24]"  1;
	setAttr ".wl[13].w[24]"  1;
	setAttr ".wl[14].w[24]"  1;
	setAttr ".wl[15].w[24]"  1;
	setAttr ".wl[16].w[24]"  1;
	setAttr ".wl[17].w[24]"  1;
	setAttr ".wl[18].w[24]"  1;
	setAttr ".wl[19].w[24]"  1;
	setAttr ".wl[20].w[24]"  1;
	setAttr ".wl[21].w[24]"  1;
	setAttr ".wl[22].w[24]"  1;
	setAttr ".wl[23].w[24]"  1;
	setAttr ".wl[24].w[24]"  1;
	setAttr ".wl[25].w[24]"  1;
	setAttr ".wl[26].w[24]"  1;
	setAttr ".wl[27].w[24]"  1;
	setAttr ".wl[28].w[24]"  1;
	setAttr ".wl[29].w[24]"  1;
	setAttr -s 25 ".pm";
	setAttr ".pm[0]" -type "matrix" -1 -0 1.2246467991473532e-16 -0 -0 1 -0 0 -1.2246467991473532e-16 -0 -1 0
		 6.8717722448313527e-17 -10.634563903704942 -0.018175814976949763 1;
	setAttr ".pm[1]" -type "matrix" -1 -0 1.2246467991473532e-16 -0 -0 1 -0 0 -1.2246467991473532e-16 -0 -1 0
		 7.353457146447921e-16 -14.132338326454143 -0.018175814976949763 1;
	setAttr ".pm[2]" -type "matrix" -1 -0 1.2246467991473532e-16 -0 -0 1 -0 0 -1.2246467991473532e-16 -0 -1 0
		 6.8717722448313428e-17 -8.5365370207398907 -0.018175814976949763 1;
	setAttr ".pm[3]" -type "matrix" -1 -0 1.2246467991473532e-16 -0 -0 1 -0 0 -1.2246467991473532e-16 -0 -1 0
		 4.2241905145476408e-16 -7.3913983732815653 -0.045052099000275944 1;
	setAttr ".pm[4]" -type "matrix" 1.477176941278356e-15 6.981057536655051e-16 -1 -0
		 -0.99892875515336343 0.046274638061808995 -1.529528359619386e-15 0 0.046274638061808863 0.99892875515336343 4.4852572293978137e-16 -0
		 6.8627936880930589 -0.27433068417854384 1.4719753077507971 1;
	setAttr ".pm[5]" -type "matrix" 1.4064063985879794e-15 8.3151933300203677e-16 -1 -0
		 -0.9989340743284465 -0.046159670119807199 -1.529528359619386e-15 0 -0.046159670119807331 0.9989340743284465 4.4852572293978137e-16 -0
		 3.9435928581974777 0.090188359666807966 1.4719753077507971 1;
	setAttr ".pm[6]" -type "matrix" 1.4654040599441831e-15 -7.2249173022566048e-16 -1 -0
		 -0.5850674743411175 0.81098461789858001 -1.5295283596193864e-15 0 0.81098461789858001 0.58506747434111761 4.4852572293978157e-16 -0
		 0.52934012017617871 -0.64521122801142317 1.4719753077507964 1;
	setAttr ".pm[7]" -type "matrix" 1.464973975462413e-15 -0.99994728840146285 -0.010267444597432169 -0
		 -0.5850674743411175 0.0083267396336424247 -0.81094186960298142 0 0.8109846178985799 0.0060071478785578628 -0.585036634499293 -0
		 -0.90878943373902465 1.4652730470420681 0.66029064281732275 1;
	setAttr ".pm[8]" -type "matrix" 1.1106241961056644e-15 1.1825607839880968e-15 -1 -0
		 0.99892875515336343 -0.046274638061808364 1.2820340345168972e-15 0 -0.046274638061808641 -0.99892875515336343 -1.2376969010084732e-15 0
		 -6.8627971761989981 0.27433083090909582 -1.4719800000000089 1;
	setAttr ".pm[9]" -type "matrix" 9.9668717112965231e-16 1.2800589032179211e-15 -1 -0
		 0.99893407432844661 0.046159670119807393 1.2820340345168972e-15 0 0.046159670119807115 -0.99893407432844672 -1.2376969010084736e-15 -0
		 -3.9435905135198688 -0.090188271185206503 -1.471980000000005 1;
	setAttr ".pm[10]" -type "matrix" 1.6167683789787193e-15 -1.3414962369094175e-16 -1 -0
		 0.58506747434111783 -0.8109846178985799 1.2820340345168974e-15 0 -0.81098461789858023 -0.58506747434111772 -1.2376969010084738e-15 0
		 -0.52934008704748747 0.64521116757982055 -1.4719800000000014 1;
	setAttr ".pm[11]" -type "matrix" 1.6158949178723962e-15 -0.99994728840146319 -0.010267444597431763 -0
		 0.58506747434111783 -0.0083267396336418626 0.81094186960298154 0 -0.81098461789858012 -0.0060071478785580718 0.58503663449929322 0
		 0.9087923910337149 -1.4652777171703215 -0.66029282126784716 1;
	setAttr ".pm[12]" -type "matrix" -0.99995325883512598 0.0096685129379943131 1.6061271050617637e-06 -0
		 0.00966851307139871 0.99995324503795169 0.00016611158518660784 0 -1.2245851779986961e-16 0.00016611934979852676 -0.999999986202181 0
		 1.3272938565604671 -12.99215742064008 -0.020334064000712502 1;
	setAttr ".pm[13]" -type "matrix" -0.99980566703278784 -0.017117319501743482 -0.0097788313308614892 -0
		 0.0096670860114213605 0.0065988191016375193 -0.99993149917107393 -0 0.017180675690146401 -0.99983171231939783 -0.00643206213363306 -0
		 4.2290240275309685 -0.078948143237026744 12.99192157420962 1;
	setAttr ".pm[14]" -type "matrix" -0.9999887798164705 0.0047294247656044985 -0.00026978241813739671 -0
		 0.00016216523014272592 -0.022740448206859897 -0.99974138941917823 0 -0.0047343366594256846 -0.9997302158866348 0.022739426106601929 0
		 6.9166466637092094 0.20590347139745455 12.950042573040394 1;
	setAttr ".pm[15]" -type "matrix" -0.99990612408113166 0.013666963790080479 0.00097832806844420786 -0
		 -0.00015115248526284083 0.060394096631831144 -0.99817459907821282 0 -0.013701101341683281 -0.99808104239725204 -0.060386361284972712 -0
		 8.0809646874999821 -0.93245748834910869 12.916471143858102 1;
	setAttr ".pm[16]" -type "matrix" 0.95669909334599668 -0.29107847904145767 0.00040475901380116619 -0
		 -0.29107845299057894 -0.95669917896845258 -0.00012314909504049798 0 0.00042307866746336162 1.4769544094683774e-16 -0.99999991050221637 -0
		 -7.5304204047180008 14.741670881892746 -0.041647075215516798 1;
	setAttr ".pm[17]" -type "matrix" 0.95150469301091578 0.30763396539512061 0.000403129602716486 -0
		 0.30763393778478132 -0.95150477840905912 0.000130337084023426 0 0.00042367585729911401 -6.2544912825257478e-16 -0.99999991024937951 -0
		 -15.236999271363663 9.8366169770217446 -0.04491666401818066 1;
	setAttr ".pm[18]" -type "matrix" -0.99995325883512576 0.0096685129379963323 1.6061271011246137e-06 -0
		 -0.0096685130714007275 -0.99995324503795124 -0.00016611158480471007 0 -1.2245851779986952e-16 -0.00016611934941660874 0.99999998620218045 -0
		 -1.3272973614988237 12.992137061043953 0.020334045636677348 1;
	setAttr ".pm[19]" -type "matrix" -0.99980566703278795 -0.017117319501743493 -0.0097788313308640028 0
		 -0.0096670860114238845 -0.0065988191016367933 0.99993149917107382 0 -0.017180675690146415 0.9998317123193976 0.0064320621336323375 -0
		 -4.2290271213014208 0.078948280970734447 -12.991951362939481 1;
	setAttr ".pm[20]" -type "matrix" -0.9999887798164705 0.0047294247656060329 -0.0002697824181365603 0
		 -0.00016216523014183943 0.022740448206862822 0.99974138941917823 0 0.0047343366594272008 0.99973021588663458 -0.022739426106604801 -0
		 -6.9166477096983314 -0.20590448713050732 -12.950088309301858 1;
	setAttr ".pm[21]" -type "matrix" -0.99990612408113155 0.013666963790084922 0.00097832806844424689 -0
		 0.00015115248526264427 -0.060394096631828834 0.99817459907821304 -0 0.013701101341687722 0.99808104239725215 0.060386361284970463 -0
		 -8.080961287787094 0.93245560997347066 -12.91644141246493 1;
	setAttr ".pm[22]" -type "matrix" 0.95669909334599723 -0.29107847904145784 0.00040475901380100497 -0
		 0.29107845299057905 0.95669917896845291 0.00012314909504049245 -0 -0.00042307866746322707 -4.7157373492257025e-16 0.99999991050221648 -0
		 7.5303749307173202 -14.741661040490099 0.041647044718498047 1;
	setAttr ".pm[23]" -type "matrix" 0.95150469301091611 0.30763396539512072 0.00040312960271650887 -0
		 -0.30763393778478154 0.95150477840905945 -0.0001303370840238637 0 -0.00042367585729924086 6.5014183273093273e-16 0.99999991024937973 -0
		 15.23697946724454 -9.8366107712992346 0.044916644369739522 1;
	setAttr ".pm[24]" -type "matrix" -1 -0 1.2246467991473532e-16 -0 -0 1 -0 0 -1.2246467991473532e-16 -0 -1 0
		 7.353457146447921e-16 -14.132338326454143 -0.018175814976949763 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 2 ".ma";
	setAttr -s 25 ".dpf[0:24]"  1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 
		1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2;
	setAttr -s 2 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
	setAttr -s 21 ".ifcl";
createNode tweak -n "tweak5";
createNode objectSet -n "skinCluster5Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster5GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster5GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet5";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId38";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts28";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose2";
	setAttr -s 26 ".wm";
	setAttr ".wm[0]" -type "matrix" 2.2204460492503131e-16 1.0000000000000002 0 0 -1.0000000000000002 2.2204460492503131e-16 0 0
		 0 0 1 0 3.3009992939108477e-16 11.801700171964772 -0.018175814976949763 1;
	setAttr ".wm[1]" -type "matrix" -1.0000000000000002 -4.9303806576313238e-32 0 0 -4.9303806576313238e-32 1.0000000000000002 1.2246467991473532e-16 0
		 2.5407181807811967e-33 1.2246467991473535e-16 -1 0 7.3757161000813373e-16 14.132338326454143 -0.018175814976949763 1;
	setAttr ".wm[2]" -type "matrix" -0.99995325883512609 0.0096685130713986007 0 0 0.0096685129379945351 0.9999532450379518 0.00016611934979852676 0
		 1.6061271049393073e-06 0.00016611158518660906 -0.99999998620218111 0 1.4528466920724896 12.978720392534807 -0.018175814976949763 1;
	setAttr ".wm[3]" -type "matrix" -0.99980566703278795 0.0096670860114212494 0.017180675690146533 0
		 -0.017117319501743607 0.0065988191016375158 -0.99983171231939838 0 -0.0097788313308617165 -0.9999314991710746 -0.0064320621336330713 0
		 4.3538966178894052 12.950670242309569 -0.068027500739356012 1;
	setAttr ".wm[4]" -type "matrix" -0.9999887798164705 0.0001621652301426104 -0.0047343366594255667 0
		 0.0047294247656043667 -0.022740448206859918 -0.99973021588663546 0 -0.00026978241813761794 -0.99974138941917889 0.022739426106601929 0
		 6.9190889464876193 12.950254252637807 -0.055882880394723972 1;
	setAttr ".wm[5]" -type "matrix" -0.99990612408113144 -0.00015115248526295646 -0.013701101341683172 0
		 0.013666963790080365 0.060394096631831179 -0.99808104239725293 0 0.00097832806844397628 -0.99817459907821349 -0.060386361284972781 0
		 8.0803133959783686 12.95042979107814 -0.039971332820661253 1;
	setAttr ".wm[6]" -type "matrix" 0.95669909334599701 -0.29107845299057911 0.00042307866746325515 0
		 -0.29107847904145795 -0.95669917896845347 4.2327252813834093e-16 0 0.00040475901380110103 -0.0001231490950402564 -0.99999991050221726 0
		 11.495346369568086 11.911396178756311 -0.038461111257935755 1;
	setAttr ".wm[7]" -type "matrix" 0.95150469301091589 0.30763393778478182 0.00042367585729892812 0
		 0.30763396539512045 -0.95150477840906034 -3.9551695252271202e-16 0 0.00040312960271634668 0.00013033708402370586 -0.99999991024938084 0
		 11.472016934629188 14.047011997196339 -0.03846111125791999 1;
	setAttr ".wm[8]" -type "matrix" -0.99995325883512609 -0.0096685130714007101 0 0 0.0096685129379963115 -0.9999532450379518 -0.0001661193494167325 0
		 1.6061271012482164e-06 -0.00016611158480483263 0.99999998620218078 0 -1.4528500000000002 12.9787 -0.018175799999999999 1;
	setAttr ".wm[9]" -type "matrix" -0.99980566703278795 -0.0096670860114238619 -0.017180675690146294 0
		 -0.017117319501743365 -0.0065988191016369581 0.99983171231939783 0 -0.0097788313308639803 0.99993149917107438 0.0064320621336324216 0
		 -4.3539000000000012 12.950700000000001 -0.06802749999999963 1;
	setAttr ".wm[10]" -type "matrix" -0.99998877981647061 -0.0001621652301418159 0.004734336659427324 0
		 0.0047294247656061569 0.022740448206862669 0.9997302158866348 0 -0.00026978241813653894 0.99974138941917856 -0.022739426106604722 0
		 -6.9190900000000006 12.950299999999999 -0.055882899999999285 1;
	setAttr ".wm[11]" -type "matrix" -0.99990612408113155 0.00015115248526266655 0.013701101341687845 0
		 0.013666963790085047 -0.060394096631829014 0.99808104239725226 0 0.00097832806844427812 0.99817459907821326 0.060386361284970547 0
		 -8.0803100000000008 12.950400000000002 -0.03997129999999921 1;
	setAttr ".wm[12]" -type "matrix" 0.95669909334599679 0.291078452990579 -0.00042307866746330025 0
		 -0.29107847904145767 0.9566991789684528 -2.7755575615628914e-16 0 0.00040475901380112428 0.00012314909504041599 0.99999991050221637 0
		 -11.495300000000002 11.9114 -0.038461099999998777 1;
	setAttr ".wm[13]" -type "matrix" 0.95150469301091567 -0.30763393778478154 -0.0004236758572993618 0
		 0.30763396539512072 0.95150477840905978 8.5348395018058909e-16 0 0.00040312960271670777 -0.00013033708402387933 0.99999991024937984 0
		 -11.472000000000001 14.047000000000001 -0.038461099999998721 1;
	setAttr ".wm[14]" -type "matrix" -1.0000000000000002 -4.9303806576313238e-32 0 0
		 -4.9303806576313238e-32 1.0000000000000002 1.2246467991473532e-16 0 2.5407181807811967e-33 1.2246467991473535e-16 -1 0
		 7.0943617811654355e-17 10.512837591974472 -0.018175814976949815 1;
	setAttr ".wm[15]" -type "matrix" -1.0000000000000002 -4.9303806576313238e-32 0 0
		 -4.9303806576313238e-32 1.0000000000000002 1.2246467991473532e-16 0 2.5407181807811967e-33 1.2246467991473535e-16 -1 0
		 7.0943617811654848e-17 8.5365370207398925 -0.018175814976949763 1;
	setAttr ".wm[16]" -type "matrix" -1.0000000000000002 -4.9303806576313238e-32 0 0
		 -4.9303806576313238e-32 1.0000000000000002 1.2246467991473532e-16 0 2.5407181807811967e-33 1.2246467991473535e-16 -1 0
		 4.2464494681810561e-16 7.3913983732815671 -0.045052099000276083 1;
	setAttr ".wm[17]" -type "matrix" 1.5543122344752196e-15 -0.99892875515336388 0.046274638061808877 0
		 4.9960036108132074e-16 0.046274638061808752 0.99892875515336366 0 -1.0000000000000002 -1.4432899320127047e-15 8.8817841970012504e-16 0
		 1.4719753077507869 6.8681365088407755 -0.043536485162531835 1;
	setAttr ".wm[18]" -type "matrix" 1.5015412674381593e-15 -0.99893407432844694 -0.046159670119807331 0
		 6.4098429404482457e-16 -0.046159670119807483 0.99893407432844672 0 -1.0000000000000002 -1.4432899320127047e-15 8.8817841970012504e-16 0
		 1.4719753077507911 3.9435523462626407 0.091942719842257492 1;
	setAttr ".wm[19]" -type "matrix" 1.3579417279783538e-15 -0.58506747434111783 0.81098461789858001 0
		 -9.0635605941986096e-16 0.81098461789858012 0.58506747434111761 0 -1.0000000000000002 -1.4432899320127047e-15 8.8817841970012504e-16 0
		 1.4719753077507951 0.83295606839162017 -0.051794591510294752 1;
	setAttr ".wm[20]" -type "matrix" 1.3579417279783538e-15 -0.58506747434111783 0.81098461789858001 0
		 -0.99994728840146341 0.0083267396336425149 0.0060071478785583051 0 -0.010267444597431992 -0.81094186960298187 -0.58503663449929322 0
		 1.4719753077507967 -0.0084467574928648315 1.114506355260283 1;
	setAttr ".wm[21]" -type "matrix" 1.3322676295501882e-15 0.99892875515336388 -0.046274638061808246 0
		 1.0547118733938989e-15 -0.04627463806180853 -0.99892875515336366 0 -1.0000000000000002 1.0547118733938991e-15 -1.1102230246251563e-15 0
		 -1.4719800000000003 6.8681400000000021 -0.04353650000000002 1;
	setAttr ".wm[22]" -type "matrix" 1.2291887300950337e-15 0.99893407432844694 0.046159670119807511 0
		 1.1732217345551963e-15 0.046159670119807261 -0.99893407432844661 0 -1.0000000000000002 1.0547118733938991e-15 -1.1102230246251563e-15 0
		 -1.4719800000000003 3.9435500000000014 0.091942699999999614 1;
	setAttr ".wm[23]" -type "matrix" 1.6545125912860441e-15 0.58506747434111783 -0.81098461789857967 0
		 -3.8722378271651246e-16 -0.81098461789858012 -0.58506747434111783 0 -1.0000000000000002 1.0547118733938991e-15 -1.1102230246251563e-15 0
		 -1.4719800000000003 0.83295600000000025 -0.051794600000000759 1;
	setAttr ".wm[24]" -type "matrix" 1.6545125912860441e-15 0.58506747434111783 -0.81098461789857967 0
		 -0.99994728840146319 -0.0083267396336420916 -0.0060071478785579452 0 -0.010267444597431511 0.81094186960298176 0.58503663449929333 0
		 -1.4719800000000001 -0.0084467599999999976 1.1145099999999997 1;
	setAttr -s 30 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.3009992939108477e-16
		 11.801700171964772 -0.018175814976949763 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.3306381544893711 1.1003394761974752e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70710678118654746 0.70710678118654757 4.329780281177467e-17 4.3297802811774658e-17 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1770202205700357 -1.452846692072489
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.7105168914620491 0.70368014043896177 5.8447444101151793e-05 5.9015302422414236e-05 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.9011855306081316 -8.2813296273798187e-06
		 0.049851685074561683 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70486160609924298 0.0060945205700710181 -0.0060544338841574258 0.70929282873617094 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -0.081681407984354665 0 0 0 -2.564489195785943
		 -0.056054538267271838 -0.024746736889104781 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.055425259936454647 -0.0042107820014693331 0.011177232163825655 0.99839139587491854 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.1612867224960617 -0.010419323044272066
		 -0.0001269515239172847 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.041574260659313932 -0.00024111395346293867 0.0044798249149418639 0.99912534443052969 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.4145760234172613 -0.017585687905879666
		 1.0403867852359454 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10568394364506711 -0.6771824465921471 -0.72090878403810499 0.10269061875264411 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.3915715821890284 0.11107405765888567
		 -1.0913535019615406 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10190255649626843 0.67785510504361279 0.7185028139215186 0.11782203500490408 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1769998280352283 1.4528500000000004
		 1.4976949763712e-08 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -5.844744396682121e-05 -5.9015302286778667e-05 0.71051689146204988 0.70368014043896099 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.9011851199096426 -4.186726573784938e-05
		 -0.049851707642807441 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70486160609910786 0.0060945205700699556 -0.0060544338841583313 0.70929282873630528 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 -0.081681407984354665 0 0 0 2.5644867134162546
		 0.056054372553752209 0.024762702563736028 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.055425259936455737 -0.0042107820014709793 0.011177232163826512 0.99839139587491854 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1612822855531473 0.010417678721605483
		 5.1430226095661169e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.04157426065931423 -0.0002411139534624131 0.0044798249149433349 0.99912534443052969 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.4145330586468816 0.01758422371719659
		 -1.0403531935299082 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10568394364506882 -0.67718244659214755 -0.72090878403810443 0.10269061875264232 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.3915580472033184 -0.11107496879342826
		 1.0913712753055176 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10190255649626707 0.67785510504361401 0.7185028139215176 0.11782203500490548 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.2888625799902993 -2.7028670797172157e-17
		 -5.2041704279304213e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70710678118654746 0.70710678118654757 4.329780281177467e-17 4.3297802811774658e-17 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.0675640425458421e-31
		 -1.976300571234578 -2.9490299091605721e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.70710678118654746 0.70710678118654757 4.329780281177467e-17 4.3297802811774658e-17 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.5370132900645056e-16
		 -1.1451386474583254 0.026876284023326178 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.4719753077507862 -0.52326186444079159
		 -0.0015156138377443104 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.4882943174813193 0.51143783543599186 -0.48829431748131974 0.51143783543599086 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.9277204680419158 -5.5511151231257827e-17
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.0462171541673317 0.99893141639487593 1
		 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.1139154803205416 5.3429483060085659e-15
		 6.6613381477509392e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.47591540557845469 0.87949106120136034 1
		 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4381295539152035 1.8873791418627661e-15
		 4.4408920985006262e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70346732525490019 0 0 0.71072760063101292 1
		 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4719800000000005 -0.52325837328156499
		 -0.0015155990002761258 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.51143783543599075 0.4882943174813198 0.51143783543599186 0.4882943174813198 1
		 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.9277262989788779 2.7512401051810187e-07
		 -3.7747582837255322e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.046217154167331485 0.99893141639487604 1
		 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.113913204353532 9.3805318082673672e-08
		 -3.9968028886505635e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.47591540557845458 0.87949106120136045 1
		 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.4381324780812021 -2.1908170172446617e-06
		 -2.6645352591003757e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70346732525490063 0 0 0.71072760063101248 1
		 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.4145330586468816 0.01758422371719659
		 -1.0403531935299082 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10568394364506882 -0.67718244659214755 -0.72090878403810443 0.10269061875264232 1
		 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.3915580472033184 -0.11107496879342826
		 1.0913712753055176 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10190255649626707 0.67785510504361401 0.7185028139215176 0.11782203500490548 1
		 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.2888625799902993 -2.7028670797172157e-17
		 -5.2041704279304213e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70710678118654746 0.70710678118654757 4.329780281177467e-17 4.3297802811774658e-17 1
		 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4381295539152035 1.8873791418627661e-15
		 4.4408920985006262e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70346732525490019 0 0 0.71072760063101292 1
		 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.4381324780812021 -2.1908170172446617e-06
		 -2.6645352591003757e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70346732525490063 0 0 0.71072760063101248 1
		 1 1 yes;
	setAttr -s 19 ".m";
	setAttr -s 21 ".p";
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster8";
	setAttr -s 116 ".wl";
	setAttr -s 2 ".wl[0].w";
	setAttr ".wl[0].w[0]" 0.89336705952882767;
	setAttr ".wl[0].w[2]" 0.10663294047117233;
	setAttr -s 2 ".wl[1].w";
	setAttr ".wl[1].w[0]" 0.87382715940475464;
	setAttr ".wl[1].w[2]" 0.12617284059524536;
	setAttr -s 2 ".wl[2].w";
	setAttr ".wl[2].w[0]" 0.87996561825275421;
	setAttr ".wl[2].w[2]" 0.12003438174724579;
	setAttr -s 2 ".wl[3].w";
	setAttr ".wl[3].w[0]" 0.8763599768280983;
	setAttr ".wl[3].w[2]" 0.1236400231719017;
	setAttr -s 2 ".wl[4].w";
	setAttr ".wl[4].w[0]" 0.79210540652275085;
	setAttr ".wl[4].w[14]" 0.20789459347724915;
	setAttr -s 3 ".wl[5].w";
	setAttr ".wl[5].w[0]" 0.96430291817523539;
	setAttr ".wl[5].w[2]" 0.0018421763088554144;
	setAttr ".wl[5].w[14]" 0.033854905515909195;
	setAttr -s 2 ".wl[6].w";
	setAttr ".wl[6].w[0]" 0.82401777803897858;
	setAttr ".wl[6].w[14]" 0.17598222196102142;
	setAttr -s 3 ".wl[7].w";
	setAttr ".wl[7].w[0]" 0.94765803869813681;
	setAttr ".wl[7].w[2]" 0.0072654904797673225;
	setAttr ".wl[7].w[14]" 0.045076470822095871;
	setAttr ".wl[8].w[14]"  1;
	setAttr ".wl[9].w[14]"  1;
	setAttr -s 2 ".wl[10].w";
	setAttr ".wl[10].w[0]" 0.99239215673878789;
	setAttr ".wl[10].w[2]" 0.0076078432612121105;
	setAttr -s 2 ".wl[11].w";
	setAttr ".wl[11].w[0]" 0.99060431309044361;
	setAttr ".wl[11].w[2]" 0.0093956869095563889;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr -s 2 ".wl[16].w";
	setAttr ".wl[16].w[0]" 0.98288235254585743;
	setAttr ".wl[16].w[14]" 0.01711764745414257;
	setAttr -s 2 ".wl[17].w";
	setAttr ".wl[17].w[0]" 0.80241385102272034;
	setAttr ".wl[17].w[14]" 0.19758614897727966;
	setAttr ".wl[18].w[14]"  1;
	setAttr ".wl[19].w[14]"  1;
	setAttr -s 2 ".wl[20].w";
	setAttr ".wl[20].w[0]" 0.82576940953731537;
	setAttr ".wl[20].w[14]" 0.17423059046268463;
	setAttr -s 2 ".wl[21].w";
	setAttr ".wl[21].w[0]" 0.69263041019439697;
	setAttr ".wl[21].w[2]" 0.30736958980560303;
	setAttr -s 2 ".wl[22].w";
	setAttr ".wl[22].w[0]" 0.99140313733369112;
	setAttr ".wl[22].w[2]" 0.0085968626663088799;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[14]"  1;
	setAttr ".wl[25].w[14]"  1;
	setAttr -s 2 ".wl[26].w";
	setAttr ".wl[26].w[0]" 0.78661680221557617;
	setAttr ".wl[26].w[14]" 0.21338319778442383;
	setAttr -s 3 ".wl[27].w";
	setAttr ".wl[27].w[0]" 0.95576039212755859;
	setAttr ".wl[27].w[2]" 0.0022062745410948992;
	setAttr ".wl[27].w[14]" 0.042033333331346512;
	setAttr -s 2 ".wl[28].w";
	setAttr ".wl[28].w[0]" 0.70899763703346252;
	setAttr ".wl[28].w[2]" 0.29100236296653748;
	setAttr -s 2 ".wl[29].w";
	setAttr ".wl[29].w[0]" 0.78641971945762634;
	setAttr ".wl[29].w[14]" 0.21358028054237366;
	setAttr ".wl[30].w[14]"  1;
	setAttr ".wl[31].w[14]"  1;
	setAttr ".wl[32].w[14]"  1;
	setAttr -s 2 ".wl[33].w";
	setAttr ".wl[33].w[0]" 0.79067036509513855;
	setAttr ".wl[33].w[14]" 0.20932963490486145;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr -s 2 ".wl[37].w";
	setAttr ".wl[37].w[0]" 0.99490274488925934;
	setAttr ".wl[37].w[2]" 0.0050972551107406616;
	setAttr -s 2 ".wl[38].w";
	setAttr ".wl[38].w[0]" 0.96367254853248596;
	setAttr ".wl[38].w[14]" 0.036327451467514038;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr -s 2 ".wl[44].w";
	setAttr ".wl[44].w[0]" 0.98288235254585743;
	setAttr ".wl[44].w[14]" 0.01711764745414257;
	setAttr ".wl[45].w[0]"  1;
	setAttr -s 2 ".wl[46].w";
	setAttr ".wl[46].w[0]" 0.97070980258285999;
	setAttr ".wl[46].w[14]" 0.029290197417140007;
	setAttr ".wl[47].w[0]"  1;
	setAttr -s 2 ".wl[48].w";
	setAttr ".wl[48].w[0]" 0.99029999971389771;
	setAttr ".wl[48].w[2]" 0.0097000002861022949;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr -s 2 ".wl[64].w";
	setAttr ".wl[64].w[0]" 0.7877778559923172;
	setAttr ".wl[64].w[14]" 0.2122221440076828;
	setAttr -s 2 ".wl[65].w";
	setAttr ".wl[65].w[0]" 0.95492352917790413;
	setAttr ".wl[65].w[14]" 0.045076470822095871;
	setAttr -s 2 ".wl[66].w";
	setAttr ".wl[66].w[0]" 0.9551137238740921;
	setAttr ".wl[66].w[14]" 0.044886276125907898;
	setAttr -s 2 ".wl[67].w";
	setAttr ".wl[67].w[0]" 0.81823058426380157;
	setAttr ".wl[67].w[14]" 0.18176941573619843;
	setAttr ".wl[68].w[14]"  1;
	setAttr ".wl[69].w[14]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr -s 2 ".wl[76].w";
	setAttr ".wl[76].w[0]" 0.9868764691054821;
	setAttr ".wl[76].w[14]" 0.013123530894517899;
	setAttr -s 2 ".wl[77].w";
	setAttr ".wl[77].w[0]" 0.81007486581802368;
	setAttr ".wl[77].w[14]" 0.18992513418197632;
	setAttr ".wl[78].w[14]"  1;
	setAttr ".wl[79].w[14]"  1;
	setAttr ".wl[80].w[14]"  1;
	setAttr -s 2 ".wl[81].w";
	setAttr ".wl[81].w[0]" 0.82761223614215851;
	setAttr ".wl[81].w[14]" 0.17238776385784149;
	setAttr ".wl[82].w[0]"  1;
	setAttr ".wl[83].w[0]"  1;
	setAttr -s 2 ".wl[84].w";
	setAttr ".wl[84].w[0]" 0.79531846940517426;
	setAttr ".wl[84].w[14]" 0.20468153059482574;
	setAttr ".wl[85].w[14]"  1;
	setAttr -s 2 ".wl[86].w";
	setAttr ".wl[86].w[0]" 0.9994294117204845;
	setAttr ".wl[86].w[14]" 0.00057058827951550484;
	setAttr ".wl[87].w[0]"  1;
	setAttr ".wl[88].w[0]"  1;
	setAttr ".wl[89].w[0]"  1;
	setAttr ".wl[90].w[0]"  1;
	setAttr ".wl[91].w[0]"  1;
	setAttr -s 2 ".wl[92].w";
	setAttr ".wl[92].w[0]" 0.95530391857028008;
	setAttr ".wl[92].w[14]" 0.044696081429719925;
	setAttr ".wl[93].w[0]"  1;
	setAttr ".wl[94].w[0]"  1;
	setAttr ".wl[95].w[0]"  1;
	setAttr ".wl[96].w[0]"  1;
	setAttr ".wl[97].w[0]"  1;
	setAttr ".wl[98].w[0]"  1;
	setAttr ".wl[99].w[0]"  1;
	setAttr ".wl[100].w[16]"  1;
	setAttr ".wl[101].w[16]"  1;
	setAttr ".wl[102].w[14]"  1;
	setAttr ".wl[103].w[14]"  1;
	setAttr ".wl[104].w[14]"  1;
	setAttr ".wl[105].w[14]"  1;
	setAttr ".wl[106].w[16]"  1;
	setAttr ".wl[107].w[16]"  1;
	setAttr -s 3 ".wl[108].w";
	setAttr ".wl[108].w[0]" 0.80536706186830997;
	setAttr ".wl[108].w[14]" 0.17135293781757355;
	setAttr ".wl[108].w[15]" 0.023280000314116478;
	setAttr -s 3 ".wl[109].w";
	setAttr ".wl[109].w[0]" 0.79208369180560112;
	setAttr ".wl[109].w[14]" 0.18098454177379608;
	setAttr ".wl[109].w[15]" 0.026931766420602798;
	setAttr -s 3 ".wl[110].w";
	setAttr ".wl[110].w[0]" 0.78173627145588398;
	setAttr ".wl[110].w[14]" 0.19258725643157959;
	setAttr ".wl[110].w[15]" 0.02567647211253643;
	setAttr -s 3 ".wl[111].w";
	setAttr ".wl[111].w[0]" 0.80224157124757767;
	setAttr ".wl[111].w[14]" 0.17744548618793488;
	setAttr ".wl[111].w[15]" 0.020312942564487457;
	setAttr -s 2 ".wl[112].w[14:15]"  0.028415294364094734 0.97158470563590527;
	setAttr -s 2 ".wl[113].w[14:15]"  0.026703530922532082 0.97329646907746792;
	setAttr -s 2 ".wl[114].w[14:15]"  0.020198823884129524 0.97980117611587048;
	setAttr -s 2 ".wl[115].w[14:15]"  0.029100000858306885 0.97089999914169312;
	setAttr -s 25 ".pm";
	setAttr ".pm[0]" -type "matrix" 2.2204460492503121e-16 -0.99999999999999978 0 -0
		 0.99999999999999978 2.2204460492503121e-16 -0 0 0 -0 1 -0 -11.801700171964768 -2.2904039227365056e-15 0.018175814976949763 1;
	setAttr ".pm[1]" -type "matrix" -0.99999999999999978 -4.9303806576313216e-32 -6.0379748909462206e-48 0
		 -4.9303806576313216e-32 0.99999999999999978 1.224646799147353e-16 0 -2.5407181807812025e-33 1.2246467991473532e-16 -1 0
		 7.3757161000813432e-16 -14.132338326454139 -0.018175814976951494 1;
	setAttr ".pm[2]" -type "matrix" -0.99995325883512565 0.0096685129379942003 1.606127104939291e-06 -0
		 0.0096685130713989268 0.99995324503795124 0.00016611158518660895 -0 3.981054852095208e-20 0.00016611934979852668 -0.99999998620218045 -0
		 1.3272938565604637 -12.992157420640073 -0.020334064000712328 1;
	setAttr ".pm[3]" -type "matrix" -0.99980566703278773 -0.017117319501743607 -0.0097788313308613799 -0
		 0.0096670860114215756 0.0065988191016375219 -0.9999314991710736 -0 0.017180675690146523 -0.99983171231939738 -0.0064320621336330583 -0
		 4.2290240275309658 -0.078948143237026577 12.991921574209615 1;
	setAttr ".pm[4]" -type "matrix" -0.99998877981647039 0.0047294247656043762 -0.00026978241813728281 -0
		 0.0001621652301429455 -0.02274044820685989 -0.99974138941917789 0 -0.0047343366594255589 -0.99973021588663435 0.022739426106601911 0
		 6.916646663709205 0.20590347139745468 12.95004257304039 1;
	setAttr ".pm[5]" -type "matrix" -0.99990612408113155 0.013666963790080347 0.0009783280684443113 -0
		 -0.00015115248526262093 0.060394096631831116 -0.99817459907821249 0 -0.013701101341683153 -0.99808104239725159 -0.060386361284972691 -0
		 8.0809646874999803 -0.93245748834910835 12.916471143858097 1;
	setAttr ".pm[6]" -type "matrix" 0.95669909334599679 -0.29107847904145756 0.00040475901380103966 -0
		 -0.29107845299057905 -0.95669917896845225 -0.00012314909504049584 0 0.00042307866746324338 1.7637258840907916e-16 -0.99999991050221582 -0
		 -7.5304204047180017 14.741670881892741 -0.041647075215516603 1;
	setAttr ".pm[7]" -type "matrix" 0.95150469301091589 0.30763396539512072 0.00040312960271636299 -0
		 0.3076339377847811 -0.95150477840905912 0.00013033708402342259 0 0.00042367585729899897 -6.6979299710723142e-16 -0.99999991024937918 -0
		 -15.236999271363663 9.8366169770217411 -0.044916664018180431 1;
	setAttr ".pm[8]" -type "matrix" -0.99995325883512565 0.0096685129379963115 1.6061271012482595e-06 -0
		 -0.0096685130714007032 -0.99995324503795135 -0.00016611158480483258 0 -4.2775163836342149e-20 -0.00016611934941673247 0.99999998620218089 -0
		 -1.3272973614988242 12.992137061043955 0.020334045636679132 1;
	setAttr ".pm[9]" -type "matrix" -0.99980566703278761 -0.017117319501743365 -0.0097788313308639786 0
		 -0.009667086011423855 -0.0065988191016369139 0.99993149917107371 0 -0.017180675690146294 0.99983171231939783 0.0064320621336324624 -0
		 -4.2290271213014199 0.078948280970736223 -12.99195136293948 1;
	setAttr ".pm[10]" -type "matrix" -0.99998877981647016 0.0047294247656061534 -0.0002697824181365416 0
		 -0.00016216523014181278 0.022740448206862694 0.99974138941917812 0 0.0047343366594273266 0.9997302158866348 -0.022739426106604683 -0
		 -6.9166477096983305 -0.20590448713050558 -12.950088309301858 1;
	setAttr ".pm[11]" -type "matrix" -0.99990612408113133 0.013666963790085038 0.0009783280684442753 -0
		 0.00015115248526266942 -0.060394096631828952 0.99817459907821293 -0 0.01370110134168785 0.99808104239725237 0.060386361284970595 -0
		 -8.080961287787094 0.93245560997347243 -12.916441412464929 1;
	setAttr ".pm[12]" -type "matrix" 0.95669909334599712 -0.29107847904145773 0.0004047590138011258 -0
		 0.29107845299057905 0.95669917896845302 0.00012314909504036969 -0 -0.00042307866746331266 -3.2230620082562848e-16 0.99999991050221693 -0
		 7.530374930717322 -14.741661040490103 0.041647044718499823 1;
	setAttr ".pm[13]" -type "matrix" 0.951504693010916 0.30763396539512072 0.00040312960271663524 -0
		 -0.3076339377847816 0.95150477840905967 -0.00013033708402399209 0 -0.0004236758572993965 7.2384047540563509e-16 0.99999991024938018 -0
		 15.236979467244542 -9.8366107712992346 0.04491664436974141 1;
	setAttr ".pm[14]" -type "matrix" -0.99999999999999978 -4.9303806576313216e-32 -6.0379748909462206e-48 0
		 -4.9303806576313216e-32 0.99999999999999978 1.224646799147353e-16 0 -2.5407181807812025e-33 1.2246467991473532e-16 -1 0
		 7.0943617811654848e-17 -10.512837591974469 -0.018175814976951102 1;
	setAttr ".pm[15]" -type "matrix" -0.99999999999999978 -4.9303806576313216e-32 -6.0379748909462206e-48 0
		 -4.9303806576313216e-32 0.99999999999999978 1.224646799147353e-16 0 -2.5407181807812025e-33 1.2246467991473532e-16 -1 0
		 7.0943617811655255e-17 -8.5365370207398925 -0.018175814976950807 1;
	setAttr ".pm[16]" -type "matrix" -0.99999999999999978 -4.9303806576313216e-32 -6.0379748909462206e-48 0
		 -4.9303806576313216e-32 0.99999999999999978 1.224646799147353e-16 0 -2.5407181807812025e-33 1.2246467991473532e-16 -1 0
		 4.2464494681810585e-16 -7.3913983732815671 -0.045052099000276978 1;
	setAttr ".pm[17]" -type "matrix" 1.4828439500167654e-15 8.2043924392298666e-16 -0.99999999999999978 -0
		 -0.99892875515336321 0.046274638061808857 -1.529528359619386e-15 0 0.046274638061808732 0.99892875515336343 5.7099040285451642e-16 -0
		 6.8627936880930616 -0.27433068417854289 1.4719753077507971 1;
	setAttr ".pm[18]" -type "matrix" 1.4007534693617872e-15 9.5385347467059227e-16 -0.99999999999999978 -0
		 -0.99893407432844628 -0.04615967011980731 -1.529528359619386e-15 0 -0.046159670119807462 0.9989340743284465 5.7099040285451642e-16 -0
		 3.9435928581974795 0.090188359666809131 1.4719753077507969 1;
	setAttr ".pm[19]" -type "matrix" 1.564721031590906e-15 -6.5084162925195283e-16 -0.99999999999999978 -0
		 -0.58506747434111728 0.81098461789857967 -1.529528359619386e-15 0 0.81098461789857978 0.5850674743411175 5.7099040285451642e-16 -0
		 0.52934012017618048 -0.64521122801142372 1.471975307750796 1;
	setAttr ".pm[20]" -type "matrix" 1.5638532135930902e-15 -0.99994728840146263 -0.01026744459743224 -0
		 -0.58506747434111739 0.0083267396336424212 -0.81094186960298131 0 0.81098461789857978 0.0060071478785579868 -0.585036634499293 -0
		 -0.90878943373902299 1.4652730470420678 0.66029064281732364 1;
	setAttr ".pm[21]" -type "matrix" 1.1049571873672545e-15 1.0602272937306147e-15 -0.99999999999999978 -0
		 0.99892875515336321 -0.046274638061808225 1.282034034516897e-15 0 -0.04627463806180851 -0.99892875515336343 -1.1152322210937375e-15 0
		 -6.8627971761990008 0.27433083090909488 -1.4719800000000087 1;
	setAttr ".pm[22]" -type "matrix" 1.0023401003558441e-15 1.157724761549365e-15 -0.99999999999999978 -0
		 0.99893407432844639 0.046159670119807497 1.282034034516897e-15 0 0.046159670119807247 -0.99893407432844672 -1.1152322210937377e-15 -0
		 -3.943590513519871 -0.090188271185207627 -1.4719800000000052 1;
	setAttr ".pm[23]" -type "matrix" 1.5174514073319951e-15 -2.0579972466464937e-16 -0.99999999999999978 -0
		 0.58506747434111772 -0.81098461789857956 1.282034034516897e-15 0 -0.81098461789858001 -0.58506747434111772 -1.1152322210937379e-15 0
		 -0.52934008704748947 0.64521116757982167 -1.471980000000001 1;
	setAttr ".pm[24]" -type "matrix" 1.5178830414797056e-15 -0.99994728840146285 -0.010267444597431686 -0
		 0.58506747434111772 -0.0083267396336418591 0.81094186960298109 0 -0.8109846178985799 -0.0060071478785579486 0.58503663449929322 0
		 0.90879239103371279 -1.4652777171703215 -0.66029282126784816 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 8 ".ma";
	setAttr -s 25 ".dpf[0:24]"  1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 
		1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2;
	setAttr -s 8 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
	setAttr -s 21 ".ifcl";
	setAttr -s 21 ".ifcl";
createNode tweak -n "tweak8";
createNode objectSet -n "skinCluster8Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster8GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster8GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet8";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId44";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts34";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
select -ne :time1;
	setAttr ".o" 34;
	setAttr ".unw" 34;
select -ne :renderPartition;
	setAttr -s 7 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 7 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 7 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 7 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "head_joint_group_parentConstraint1.ctx" "head_joint_group.tx";
connectAttr "head_joint_group_parentConstraint1.cty" "head_joint_group.ty";
connectAttr "head_joint_group_parentConstraint1.ctz" "head_joint_group.tz";
connectAttr "head_joint_group_parentConstraint1.crx" "head_joint_group.rx";
connectAttr "head_joint_group_parentConstraint1.cry" "head_joint_group.ry";
connectAttr "head_joint_group_parentConstraint1.crz" "head_joint_group.rz";
connectAttr "root.s" "head_joint.is";
connectAttr "head_joint_group.ro" "head_joint_group_parentConstraint1.cro";
connectAttr "head_joint_group.pim" "head_joint_group_parentConstraint1.cpim";
connectAttr "head_joint_group.rp" "head_joint_group_parentConstraint1.crp";
connectAttr "head_joint_group.rpt" "head_joint_group_parentConstraint1.crt";
connectAttr "head_anim.t" "head_joint_group_parentConstraint1.tg[0].tt";
connectAttr "head_anim.rp" "head_joint_group_parentConstraint1.tg[0].trp";
connectAttr "head_anim.rpt" "head_joint_group_parentConstraint1.tg[0].trt";
connectAttr "head_anim.r" "head_joint_group_parentConstraint1.tg[0].tr";
connectAttr "head_anim.ro" "head_joint_group_parentConstraint1.tg[0].tro";
connectAttr "head_anim.s" "head_joint_group_parentConstraint1.tg[0].ts";
connectAttr "head_anim.pm" "head_joint_group_parentConstraint1.tg[0].tpm";
connectAttr "head_joint_group_parentConstraint1.w0" "head_joint_group_parentConstraint1.tg[0].tw"
		;
connectAttr "L_clavicle_joint_group_parentConstraint1.ctx" "L_clavicle_joint_group.tx"
		;
connectAttr "L_clavicle_joint_group_parentConstraint1.cty" "L_clavicle_joint_group.ty"
		;
connectAttr "L_clavicle_joint_group_parentConstraint1.ctz" "L_clavicle_joint_group.tz"
		;
connectAttr "L_clavicle_joint_group_parentConstraint1.crx" "L_clavicle_joint_group.rx"
		;
connectAttr "L_clavicle_joint_group_parentConstraint1.cry" "L_clavicle_joint_group.ry"
		;
connectAttr "L_clavicle_joint_group_parentConstraint1.crz" "L_clavicle_joint_group.rz"
		;
connectAttr "root.s" "L_clavicle_joint.is";
connectAttr "L_shoulder_joint_group_parentConstraint1.ctx" "L_shoulder_joint_group.tx"
		;
connectAttr "L_shoulder_joint_group_parentConstraint1.cty" "L_shoulder_joint_group.ty"
		;
connectAttr "L_shoulder_joint_group_parentConstraint1.ctz" "L_shoulder_joint_group.tz"
		;
connectAttr "L_shoulder_joint_group_parentConstraint1.crx" "L_shoulder_joint_group.rx"
		;
connectAttr "L_shoulder_joint_group_parentConstraint1.cry" "L_shoulder_joint_group.ry"
		;
connectAttr "L_shoulder_joint_group_parentConstraint1.crz" "L_shoulder_joint_group.rz"
		;
connectAttr "L_clavicle_joint.s" "L_shoulder_joint.is";
connectAttr "L_elbow_joint_group_parentConstraint1.ctx" "L_elbow_joint_group.tx"
		;
connectAttr "L_elbow_joint_group_parentConstraint1.cty" "L_elbow_joint_group.ty"
		;
connectAttr "L_elbow_joint_group_parentConstraint1.ctz" "L_elbow_joint_group.tz"
		;
connectAttr "L_elbow_joint_group_parentConstraint1.crx" "L_elbow_joint_group.rx"
		;
connectAttr "L_elbow_joint_group_parentConstraint1.cry" "L_elbow_joint_group.ry"
		;
connectAttr "L_elbow_joint_group_parentConstraint1.crz" "L_elbow_joint_group.rz"
		;
connectAttr "L_shoulder_joint.s" "L_elbow_joint.is";
connectAttr "L_hand_joint_group_parentConstraint1.ctx" "L_hand_joint_group.tx";
connectAttr "L_hand_joint_group_parentConstraint1.cty" "L_hand_joint_group.ty";
connectAttr "L_hand_joint_group_parentConstraint1.ctz" "L_hand_joint_group.tz";
connectAttr "L_hand_joint_group_parentConstraint1.crx" "L_hand_joint_group.rx";
connectAttr "L_hand_joint_group_parentConstraint1.cry" "L_hand_joint_group.ry";
connectAttr "L_hand_joint_group_parentConstraint1.crz" "L_hand_joint_group.rz";
connectAttr "L_elbow_joint.s" "L_hand_joint.is";
connectAttr "L_claw_2_joint_group_parentConstraint1.ctx" "L_claw_2_joint_group.tx"
		;
connectAttr "L_claw_2_joint_group_parentConstraint1.cty" "L_claw_2_joint_group.ty"
		;
connectAttr "L_claw_2_joint_group_parentConstraint1.ctz" "L_claw_2_joint_group.tz"
		;
connectAttr "L_claw_2_joint_group_parentConstraint1.crx" "L_claw_2_joint_group.rx"
		;
connectAttr "L_claw_2_joint_group_parentConstraint1.cry" "L_claw_2_joint_group.ry"
		;
connectAttr "L_claw_2_joint_group_parentConstraint1.crz" "L_claw_2_joint_group.rz"
		;
connectAttr "L_hand_joint.s" "L_claw_2_joint.is";
connectAttr "L_claw_2_joint_group.ro" "L_claw_2_joint_group_parentConstraint1.cro"
		;
connectAttr "L_claw_2_joint_group.pim" "L_claw_2_joint_group_parentConstraint1.cpim"
		;
connectAttr "L_claw_2_joint_group.rp" "L_claw_2_joint_group_parentConstraint1.crp"
		;
connectAttr "L_claw_2_joint_group.rpt" "L_claw_2_joint_group_parentConstraint1.crt"
		;
connectAttr "L_claw_2_anim.t" "L_claw_2_joint_group_parentConstraint1.tg[0].tt";
connectAttr "L_claw_2_anim.rp" "L_claw_2_joint_group_parentConstraint1.tg[0].trp"
		;
connectAttr "L_claw_2_anim.rpt" "L_claw_2_joint_group_parentConstraint1.tg[0].trt"
		;
connectAttr "L_claw_2_anim.r" "L_claw_2_joint_group_parentConstraint1.tg[0].tr";
connectAttr "L_claw_2_anim.ro" "L_claw_2_joint_group_parentConstraint1.tg[0].tro"
		;
connectAttr "L_claw_2_anim.s" "L_claw_2_joint_group_parentConstraint1.tg[0].ts";
connectAttr "L_claw_2_anim.pm" "L_claw_2_joint_group_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_claw_2_joint_group_parentConstraint1.w0" "L_claw_2_joint_group_parentConstraint1.tg[0].tw"
		;
connectAttr "L_claw_1_joint_group_parentConstraint1.ctx" "L_claw_1_joint_group.tx"
		;
connectAttr "L_claw_1_joint_group_parentConstraint1.cty" "L_claw_1_joint_group.ty"
		;
connectAttr "L_claw_1_joint_group_parentConstraint1.ctz" "L_claw_1_joint_group.tz"
		;
connectAttr "L_claw_1_joint_group_parentConstraint1.crx" "L_claw_1_joint_group.rx"
		;
connectAttr "L_claw_1_joint_group_parentConstraint1.cry" "L_claw_1_joint_group.ry"
		;
connectAttr "L_claw_1_joint_group_parentConstraint1.crz" "L_claw_1_joint_group.rz"
		;
connectAttr "L_hand_joint.s" "L_claw_1_joint.is";
connectAttr "L_claw_1_joint_group.ro" "L_claw_1_joint_group_parentConstraint1.cro"
		;
connectAttr "L_claw_1_joint_group.pim" "L_claw_1_joint_group_parentConstraint1.cpim"
		;
connectAttr "L_claw_1_joint_group.rp" "L_claw_1_joint_group_parentConstraint1.crp"
		;
connectAttr "L_claw_1_joint_group.rpt" "L_claw_1_joint_group_parentConstraint1.crt"
		;
connectAttr "L_claw_1_anim.t" "L_claw_1_joint_group_parentConstraint1.tg[0].tt";
connectAttr "L_claw_1_anim.rp" "L_claw_1_joint_group_parentConstraint1.tg[0].trp"
		;
connectAttr "L_claw_1_anim.rpt" "L_claw_1_joint_group_parentConstraint1.tg[0].trt"
		;
connectAttr "L_claw_1_anim.r" "L_claw_1_joint_group_parentConstraint1.tg[0].tr";
connectAttr "L_claw_1_anim.ro" "L_claw_1_joint_group_parentConstraint1.tg[0].tro"
		;
connectAttr "L_claw_1_anim.s" "L_claw_1_joint_group_parentConstraint1.tg[0].ts";
connectAttr "L_claw_1_anim.pm" "L_claw_1_joint_group_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_claw_1_joint_group_parentConstraint1.w0" "L_claw_1_joint_group_parentConstraint1.tg[0].tw"
		;
connectAttr "L_hand_joint_group.ro" "L_hand_joint_group_parentConstraint1.cro";
connectAttr "L_hand_joint_group.pim" "L_hand_joint_group_parentConstraint1.cpim"
		;
connectAttr "L_hand_joint_group.rp" "L_hand_joint_group_parentConstraint1.crp";
connectAttr "L_hand_joint_group.rpt" "L_hand_joint_group_parentConstraint1.crt";
connectAttr "L_hand_anim.t" "L_hand_joint_group_parentConstraint1.tg[0].tt";
connectAttr "L_hand_anim.rp" "L_hand_joint_group_parentConstraint1.tg[0].trp";
connectAttr "L_hand_anim.rpt" "L_hand_joint_group_parentConstraint1.tg[0].trt";
connectAttr "L_hand_anim.r" "L_hand_joint_group_parentConstraint1.tg[0].tr";
connectAttr "L_hand_anim.ro" "L_hand_joint_group_parentConstraint1.tg[0].tro";
connectAttr "L_hand_anim.s" "L_hand_joint_group_parentConstraint1.tg[0].ts";
connectAttr "L_hand_anim.pm" "L_hand_joint_group_parentConstraint1.tg[0].tpm";
connectAttr "L_hand_joint_group_parentConstraint1.w0" "L_hand_joint_group_parentConstraint1.tg[0].tw"
		;
connectAttr "L_elbow_joint_group.ro" "L_elbow_joint_group_parentConstraint1.cro"
		;
connectAttr "L_elbow_joint_group.pim" "L_elbow_joint_group_parentConstraint1.cpim"
		;
connectAttr "L_elbow_joint_group.rp" "L_elbow_joint_group_parentConstraint1.crp"
		;
connectAttr "L_elbow_joint_group.rpt" "L_elbow_joint_group_parentConstraint1.crt"
		;
connectAttr "L_elbow_anim.t" "L_elbow_joint_group_parentConstraint1.tg[0].tt";
connectAttr "L_elbow_anim.rp" "L_elbow_joint_group_parentConstraint1.tg[0].trp";
connectAttr "L_elbow_anim.rpt" "L_elbow_joint_group_parentConstraint1.tg[0].trt"
		;
connectAttr "L_elbow_anim.r" "L_elbow_joint_group_parentConstraint1.tg[0].tr";
connectAttr "L_elbow_anim.ro" "L_elbow_joint_group_parentConstraint1.tg[0].tro";
connectAttr "L_elbow_anim.s" "L_elbow_joint_group_parentConstraint1.tg[0].ts";
connectAttr "L_elbow_anim.pm" "L_elbow_joint_group_parentConstraint1.tg[0].tpm";
connectAttr "L_elbow_joint_group_parentConstraint1.w0" "L_elbow_joint_group_parentConstraint1.tg[0].tw"
		;
connectAttr "L_shoulder_joint_group.ro" "L_shoulder_joint_group_parentConstraint1.cro"
		;
connectAttr "L_shoulder_joint_group.pim" "L_shoulder_joint_group_parentConstraint1.cpim"
		;
connectAttr "L_shoulder_joint_group.rp" "L_shoulder_joint_group_parentConstraint1.crp"
		;
connectAttr "L_shoulder_joint_group.rpt" "L_shoulder_joint_group_parentConstraint1.crt"
		;
connectAttr "L_shoulder_anim.t" "L_shoulder_joint_group_parentConstraint1.tg[0].tt"
		;
connectAttr "L_shoulder_anim.rp" "L_shoulder_joint_group_parentConstraint1.tg[0].trp"
		;
connectAttr "L_shoulder_anim.rpt" "L_shoulder_joint_group_parentConstraint1.tg[0].trt"
		;
connectAttr "L_shoulder_anim.r" "L_shoulder_joint_group_parentConstraint1.tg[0].tr"
		;
connectAttr "L_shoulder_anim.ro" "L_shoulder_joint_group_parentConstraint1.tg[0].tro"
		;
connectAttr "L_shoulder_anim.s" "L_shoulder_joint_group_parentConstraint1.tg[0].ts"
		;
connectAttr "L_shoulder_anim.pm" "L_shoulder_joint_group_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_shoulder_joint_group_parentConstraint1.w0" "L_shoulder_joint_group_parentConstraint1.tg[0].tw"
		;
connectAttr "L_clavicle_joint_group.ro" "L_clavicle_joint_group_parentConstraint1.cro"
		;
connectAttr "L_clavicle_joint_group.pim" "L_clavicle_joint_group_parentConstraint1.cpim"
		;
connectAttr "L_clavicle_joint_group.rp" "L_clavicle_joint_group_parentConstraint1.crp"
		;
connectAttr "L_clavicle_joint_group.rpt" "L_clavicle_joint_group_parentConstraint1.crt"
		;
connectAttr "L_clavicle_anim.t" "L_clavicle_joint_group_parentConstraint1.tg[0].tt"
		;
connectAttr "L_clavicle_anim.rp" "L_clavicle_joint_group_parentConstraint1.tg[0].trp"
		;
connectAttr "L_clavicle_anim.rpt" "L_clavicle_joint_group_parentConstraint1.tg[0].trt"
		;
connectAttr "L_clavicle_anim.r" "L_clavicle_joint_group_parentConstraint1.tg[0].tr"
		;
connectAttr "L_clavicle_anim.ro" "L_clavicle_joint_group_parentConstraint1.tg[0].tro"
		;
connectAttr "L_clavicle_anim.s" "L_clavicle_joint_group_parentConstraint1.tg[0].ts"
		;
connectAttr "L_clavicle_anim.pm" "L_clavicle_joint_group_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_clavicle_joint_group_parentConstraint1.w0" "L_clavicle_joint_group_parentConstraint1.tg[0].tw"
		;
connectAttr "chest_joint_group_parentConstraint1.ctx" "chest_joint_group.tx";
connectAttr "chest_joint_group_parentConstraint1.cty" "chest_joint_group.ty";
connectAttr "chest_joint_group_parentConstraint1.ctz" "chest_joint_group.tz";
connectAttr "chest_joint_group_parentConstraint1.crx" "chest_joint_group.rx";
connectAttr "chest_joint_group_parentConstraint1.cry" "chest_joint_group.ry";
connectAttr "chest_joint_group_parentConstraint1.crz" "chest_joint_group.rz";
connectAttr "root.s" "chest.is";
connectAttr "torso_joint_group_parentConstraint1.ctx" "torso_joint_group.tx";
connectAttr "torso_joint_group_parentConstraint1.cty" "torso_joint_group.ty";
connectAttr "torso_joint_group_parentConstraint1.ctz" "torso_joint_group.tz";
connectAttr "torso_joint_group_parentConstraint1.crx" "torso_joint_group.rx";
connectAttr "torso_joint_group_parentConstraint1.cry" "torso_joint_group.ry";
connectAttr "torso_joint_group_parentConstraint1.crz" "torso_joint_group.rz";
connectAttr "torso_joint.s" "waist_joint.is";
connectAttr "waist_joint.s" "L_hip_joint.is";
connectAttr "L_hip_joint.s" "L_knee_joint.is";
connectAttr "L_knee_joint.s" "L_ankle_joint.is";
connectAttr "L_ankle_joint.s" "L_foot_joint.is";
connectAttr "waist_joint.s" "R_hip_joint.is";
connectAttr "R_hip_joint.s" "R_knee_joint.is";
connectAttr "R_knee_joint.s" "R_ankle_joint.is";
connectAttr "R_ankle_joint.s" "R_foot_joint.is";
connectAttr "torso_joint_group.ro" "torso_joint_group_parentConstraint1.cro";
connectAttr "torso_joint_group.pim" "torso_joint_group_parentConstraint1.cpim";
connectAttr "torso_joint_group.rp" "torso_joint_group_parentConstraint1.crp";
connectAttr "torso_joint_group.rpt" "torso_joint_group_parentConstraint1.crt";
connectAttr "torso_anim.t" "torso_joint_group_parentConstraint1.tg[0].tt";
connectAttr "torso_anim.rp" "torso_joint_group_parentConstraint1.tg[0].trp";
connectAttr "torso_anim.rpt" "torso_joint_group_parentConstraint1.tg[0].trt";
connectAttr "torso_anim.r" "torso_joint_group_parentConstraint1.tg[0].tr";
connectAttr "torso_anim.ro" "torso_joint_group_parentConstraint1.tg[0].tro";
connectAttr "torso_anim.s" "torso_joint_group_parentConstraint1.tg[0].ts";
connectAttr "torso_anim.pm" "torso_joint_group_parentConstraint1.tg[0].tpm";
connectAttr "torso_joint_group_parentConstraint1.w0" "torso_joint_group_parentConstraint1.tg[0].tw"
		;
connectAttr "chest_joint_group.ro" "chest_joint_group_parentConstraint1.cro";
connectAttr "chest_joint_group.pim" "chest_joint_group_parentConstraint1.cpim";
connectAttr "chest_joint_group.rp" "chest_joint_group_parentConstraint1.crp";
connectAttr "chest_joint_group.rpt" "chest_joint_group_parentConstraint1.crt";
connectAttr "chest_anim.t" "chest_joint_group_parentConstraint1.tg[0].tt";
connectAttr "chest_anim.rp" "chest_joint_group_parentConstraint1.tg[0].trp";
connectAttr "chest_anim.rpt" "chest_joint_group_parentConstraint1.tg[0].trt";
connectAttr "chest_anim.r" "chest_joint_group_parentConstraint1.tg[0].tr";
connectAttr "chest_anim.ro" "chest_joint_group_parentConstraint1.tg[0].tro";
connectAttr "chest_anim.s" "chest_joint_group_parentConstraint1.tg[0].ts";
connectAttr "chest_anim.pm" "chest_joint_group_parentConstraint1.tg[0].tpm";
connectAttr "chest_joint_group_parentConstraint1.w0" "chest_joint_group_parentConstraint1.tg[0].tw"
		;
connectAttr "R_clavicle_joint_group_parentConstraint1.ctx" "R_clavicle_joint_group.tx"
		;
connectAttr "R_clavicle_joint_group_parentConstraint1.cty" "R_clavicle_joint_group.ty"
		;
connectAttr "R_clavicle_joint_group_parentConstraint1.ctz" "R_clavicle_joint_group.tz"
		;
connectAttr "R_clavicle_joint_group_parentConstraint1.crx" "R_clavicle_joint_group.rx"
		;
connectAttr "R_clavicle_joint_group_parentConstraint1.cry" "R_clavicle_joint_group.ry"
		;
connectAttr "R_clavicle_joint_group_parentConstraint1.crz" "R_clavicle_joint_group.rz"
		;
connectAttr "root.s" "R_clavicle_joint.is";
connectAttr "R_shoulder_joint_group_parentConstraint1.ctx" "R_shoulder_joint_group.tx"
		;
connectAttr "R_shoulder_joint_group_parentConstraint1.cty" "R_shoulder_joint_group.ty"
		;
connectAttr "R_shoulder_joint_group_parentConstraint1.ctz" "R_shoulder_joint_group.tz"
		;
connectAttr "R_shoulder_joint_group_parentConstraint1.crx" "R_shoulder_joint_group.rx"
		;
connectAttr "R_shoulder_joint_group_parentConstraint1.cry" "R_shoulder_joint_group.ry"
		;
connectAttr "R_shoulder_joint_group_parentConstraint1.crz" "R_shoulder_joint_group.rz"
		;
connectAttr "R_clavicle_joint.s" "R_shoulder_joint.is";
connectAttr "R_elbow_joint_group_parentConstraint1.ctx" "R_elbow_joint_group.tx"
		;
connectAttr "R_elbow_joint_group_parentConstraint1.cty" "R_elbow_joint_group.ty"
		;
connectAttr "R_elbow_joint_group_parentConstraint1.ctz" "R_elbow_joint_group.tz"
		;
connectAttr "R_elbow_joint_group_parentConstraint1.crx" "R_elbow_joint_group.rx"
		;
connectAttr "R_elbow_joint_group_parentConstraint1.cry" "R_elbow_joint_group.ry"
		;
connectAttr "R_elbow_joint_group_parentConstraint1.crz" "R_elbow_joint_group.rz"
		;
connectAttr "R_shoulder_joint.s" "R_elbow_joint.is";
connectAttr "R_hand_joint_group_parentConstraint1.ctx" "R_hand_joint_group.tx";
connectAttr "R_hand_joint_group_parentConstraint1.cty" "R_hand_joint_group.ty";
connectAttr "R_hand_joint_group_parentConstraint1.ctz" "R_hand_joint_group.tz";
connectAttr "R_hand_joint_group_parentConstraint1.crx" "R_hand_joint_group.rx";
connectAttr "R_hand_joint_group_parentConstraint1.cry" "R_hand_joint_group.ry";
connectAttr "R_hand_joint_group_parentConstraint1.crz" "R_hand_joint_group.rz";
connectAttr "R_elbow_joint.s" "R_hand_joint.is";
connectAttr "R_claw_2_joint_group_parentConstraint1.ctx" "R_claw_2_joint_group.tx"
		;
connectAttr "R_claw_2_joint_group_parentConstraint1.cty" "R_claw_2_joint_group.ty"
		;
connectAttr "R_claw_2_joint_group_parentConstraint1.ctz" "R_claw_2_joint_group.tz"
		;
connectAttr "R_claw_2_joint_group_parentConstraint1.crx" "R_claw_2_joint_group.rx"
		;
connectAttr "R_claw_2_joint_group_parentConstraint1.cry" "R_claw_2_joint_group.ry"
		;
connectAttr "R_claw_2_joint_group_parentConstraint1.crz" "R_claw_2_joint_group.rz"
		;
connectAttr "R_hand_joint.s" "R_claw_2_joint.is";
connectAttr "R_claw_2_joint_group.ro" "R_claw_2_joint_group_parentConstraint1.cro"
		;
connectAttr "R_claw_2_joint_group.pim" "R_claw_2_joint_group_parentConstraint1.cpim"
		;
connectAttr "R_claw_2_joint_group.rp" "R_claw_2_joint_group_parentConstraint1.crp"
		;
connectAttr "R_claw_2_joint_group.rpt" "R_claw_2_joint_group_parentConstraint1.crt"
		;
connectAttr "R_claw_1_anim.t" "R_claw_2_joint_group_parentConstraint1.tg[0].tt";
connectAttr "R_claw_1_anim.rp" "R_claw_2_joint_group_parentConstraint1.tg[0].trp"
		;
connectAttr "R_claw_1_anim.rpt" "R_claw_2_joint_group_parentConstraint1.tg[0].trt"
		;
connectAttr "R_claw_1_anim.r" "R_claw_2_joint_group_parentConstraint1.tg[0].tr";
connectAttr "R_claw_1_anim.ro" "R_claw_2_joint_group_parentConstraint1.tg[0].tro"
		;
connectAttr "R_claw_1_anim.s" "R_claw_2_joint_group_parentConstraint1.tg[0].ts";
connectAttr "R_claw_1_anim.pm" "R_claw_2_joint_group_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_claw_2_joint_group_parentConstraint1.w0" "R_claw_2_joint_group_parentConstraint1.tg[0].tw"
		;
connectAttr "R_claw_1_joint_group_parentConstraint1.ctx" "R_claw_1_joint_group.tx"
		;
connectAttr "R_claw_1_joint_group_parentConstraint1.cty" "R_claw_1_joint_group.ty"
		;
connectAttr "R_claw_1_joint_group_parentConstraint1.ctz" "R_claw_1_joint_group.tz"
		;
connectAttr "R_claw_1_joint_group_parentConstraint1.crx" "R_claw_1_joint_group.rx"
		;
connectAttr "R_claw_1_joint_group_parentConstraint1.cry" "R_claw_1_joint_group.ry"
		;
connectAttr "R_claw_1_joint_group_parentConstraint1.crz" "R_claw_1_joint_group.rz"
		;
connectAttr "R_hand_joint.s" "R_claw_1_joint.is";
connectAttr "R_claw_1_joint_group.ro" "R_claw_1_joint_group_parentConstraint1.cro"
		;
connectAttr "R_claw_1_joint_group.pim" "R_claw_1_joint_group_parentConstraint1.cpim"
		;
connectAttr "R_claw_1_joint_group.rp" "R_claw_1_joint_group_parentConstraint1.crp"
		;
connectAttr "R_claw_1_joint_group.rpt" "R_claw_1_joint_group_parentConstraint1.crt"
		;
connectAttr "R_claw_2_anim.t" "R_claw_1_joint_group_parentConstraint1.tg[0].tt";
connectAttr "R_claw_2_anim.rp" "R_claw_1_joint_group_parentConstraint1.tg[0].trp"
		;
connectAttr "R_claw_2_anim.rpt" "R_claw_1_joint_group_parentConstraint1.tg[0].trt"
		;
connectAttr "R_claw_2_anim.r" "R_claw_1_joint_group_parentConstraint1.tg[0].tr";
connectAttr "R_claw_2_anim.ro" "R_claw_1_joint_group_parentConstraint1.tg[0].tro"
		;
connectAttr "R_claw_2_anim.s" "R_claw_1_joint_group_parentConstraint1.tg[0].ts";
connectAttr "R_claw_2_anim.pm" "R_claw_1_joint_group_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_claw_1_joint_group_parentConstraint1.w0" "R_claw_1_joint_group_parentConstraint1.tg[0].tw"
		;
connectAttr "R_hand_joint_group.ro" "R_hand_joint_group_parentConstraint1.cro";
connectAttr "R_hand_joint_group.pim" "R_hand_joint_group_parentConstraint1.cpim"
		;
connectAttr "R_hand_joint_group.rp" "R_hand_joint_group_parentConstraint1.crp";
connectAttr "R_hand_joint_group.rpt" "R_hand_joint_group_parentConstraint1.crt";
connectAttr "R_hand_anim.t" "R_hand_joint_group_parentConstraint1.tg[0].tt";
connectAttr "R_hand_anim.rp" "R_hand_joint_group_parentConstraint1.tg[0].trp";
connectAttr "R_hand_anim.rpt" "R_hand_joint_group_parentConstraint1.tg[0].trt";
connectAttr "R_hand_anim.r" "R_hand_joint_group_parentConstraint1.tg[0].tr";
connectAttr "R_hand_anim.ro" "R_hand_joint_group_parentConstraint1.tg[0].tro";
connectAttr "R_hand_anim.s" "R_hand_joint_group_parentConstraint1.tg[0].ts";
connectAttr "R_hand_anim.pm" "R_hand_joint_group_parentConstraint1.tg[0].tpm";
connectAttr "R_hand_joint_group_parentConstraint1.w0" "R_hand_joint_group_parentConstraint1.tg[0].tw"
		;
connectAttr "R_elbow_joint_group.ro" "R_elbow_joint_group_parentConstraint1.cro"
		;
connectAttr "R_elbow_joint_group.pim" "R_elbow_joint_group_parentConstraint1.cpim"
		;
connectAttr "R_elbow_joint_group.rp" "R_elbow_joint_group_parentConstraint1.crp"
		;
connectAttr "R_elbow_joint_group.rpt" "R_elbow_joint_group_parentConstraint1.crt"
		;
connectAttr "R_elbow_anim.t" "R_elbow_joint_group_parentConstraint1.tg[0].tt";
connectAttr "R_elbow_anim.rp" "R_elbow_joint_group_parentConstraint1.tg[0].trp";
connectAttr "R_elbow_anim.rpt" "R_elbow_joint_group_parentConstraint1.tg[0].trt"
		;
connectAttr "R_elbow_anim.r" "R_elbow_joint_group_parentConstraint1.tg[0].tr";
connectAttr "R_elbow_anim.ro" "R_elbow_joint_group_parentConstraint1.tg[0].tro";
connectAttr "R_elbow_anim.s" "R_elbow_joint_group_parentConstraint1.tg[0].ts";
connectAttr "R_elbow_anim.pm" "R_elbow_joint_group_parentConstraint1.tg[0].tpm";
connectAttr "R_elbow_joint_group_parentConstraint1.w0" "R_elbow_joint_group_parentConstraint1.tg[0].tw"
		;
connectAttr "R_shoulder_joint_group.ro" "R_shoulder_joint_group_parentConstraint1.cro"
		;
connectAttr "R_shoulder_joint_group.pim" "R_shoulder_joint_group_parentConstraint1.cpim"
		;
connectAttr "R_shoulder_joint_group.rp" "R_shoulder_joint_group_parentConstraint1.crp"
		;
connectAttr "R_shoulder_joint_group.rpt" "R_shoulder_joint_group_parentConstraint1.crt"
		;
connectAttr "R_shoulder_anim.t" "R_shoulder_joint_group_parentConstraint1.tg[0].tt"
		;
connectAttr "R_shoulder_anim.rp" "R_shoulder_joint_group_parentConstraint1.tg[0].trp"
		;
connectAttr "R_shoulder_anim.rpt" "R_shoulder_joint_group_parentConstraint1.tg[0].trt"
		;
connectAttr "R_shoulder_anim.r" "R_shoulder_joint_group_parentConstraint1.tg[0].tr"
		;
connectAttr "R_shoulder_anim.ro" "R_shoulder_joint_group_parentConstraint1.tg[0].tro"
		;
connectAttr "R_shoulder_anim.s" "R_shoulder_joint_group_parentConstraint1.tg[0].ts"
		;
connectAttr "R_shoulder_anim.pm" "R_shoulder_joint_group_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_shoulder_joint_group_parentConstraint1.w0" "R_shoulder_joint_group_parentConstraint1.tg[0].tw"
		;
connectAttr "R_clavicle_joint_group.ro" "R_clavicle_joint_group_parentConstraint1.cro"
		;
connectAttr "R_clavicle_joint_group.pim" "R_clavicle_joint_group_parentConstraint1.cpim"
		;
connectAttr "R_clavicle_joint_group.rp" "R_clavicle_joint_group_parentConstraint1.crp"
		;
connectAttr "R_clavicle_joint_group.rpt" "R_clavicle_joint_group_parentConstraint1.crt"
		;
connectAttr "R_clavicle_anim.t" "R_clavicle_joint_group_parentConstraint1.tg[0].tt"
		;
connectAttr "R_clavicle_anim.rp" "R_clavicle_joint_group_parentConstraint1.tg[0].trp"
		;
connectAttr "R_clavicle_anim.rpt" "R_clavicle_joint_group_parentConstraint1.tg[0].trt"
		;
connectAttr "R_clavicle_anim.r" "R_clavicle_joint_group_parentConstraint1.tg[0].tr"
		;
connectAttr "R_clavicle_anim.ro" "R_clavicle_joint_group_parentConstraint1.tg[0].tro"
		;
connectAttr "R_clavicle_anim.s" "R_clavicle_joint_group_parentConstraint1.tg[0].ts"
		;
connectAttr "R_clavicle_anim.pm" "R_clavicle_joint_group_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_clavicle_joint_group_parentConstraint1.w0" "R_clavicle_joint_group_parentConstraint1.tg[0].tw"
		;
connectAttr "skinCluster1.og[0]" "R_hand_geoShape.i";
connectAttr "groupId11.id" "R_hand_geoShape.iog.og[0].gid";
connectAttr "C_Robot_Model:blinn3SG.mwc" "R_hand_geoShape.iog.og[0].gco";
connectAttr "skinCluster1GroupId.id" "R_hand_geoShape.iog.og[3].gid";
connectAttr "skinCluster1Set.mwc" "R_hand_geoShape.iog.og[3].gco";
connectAttr "groupId30.id" "R_hand_geoShape.iog.og[4].gid";
connectAttr "tweakSet1.mwc" "R_hand_geoShape.iog.og[4].gco";
connectAttr "tweak1.vl[0].vt[0]" "R_hand_geoShape.twl";
connectAttr "skinCluster2.og[0]" "R_shoulder_geoShape.i";
connectAttr "groupId14.id" "R_shoulder_geoShape.iog.og[0].gid";
connectAttr "C_Robot_Model:blinn3SG.mwc" "R_shoulder_geoShape.iog.og[0].gco";
connectAttr "skinCluster2GroupId.id" "R_shoulder_geoShape.iog.og[3].gid";
connectAttr "skinCluster2Set.mwc" "R_shoulder_geoShape.iog.og[3].gco";
connectAttr "groupId32.id" "R_shoulder_geoShape.iog.og[4].gid";
connectAttr "tweakSet2.mwc" "R_shoulder_geoShape.iog.og[4].gco";
connectAttr "tweak2.vl[0].vt[0]" "R_shoulder_geoShape.twl";
connectAttr "skinCluster3.og[0]" "L_hand_geoShape.i";
connectAttr "groupId17.id" "L_hand_geoShape.iog.og[0].gid";
connectAttr "C_Robot_Model:blinn3SG.mwc" "L_hand_geoShape.iog.og[0].gco";
connectAttr "skinCluster3GroupId.id" "L_hand_geoShape.iog.og[3].gid";
connectAttr "skinCluster3Set.mwc" "L_hand_geoShape.iog.og[3].gco";
connectAttr "groupId34.id" "L_hand_geoShape.iog.og[4].gid";
connectAttr "tweakSet3.mwc" "L_hand_geoShape.iog.og[4].gco";
connectAttr "tweak3.vl[0].vt[0]" "L_hand_geoShape.twl";
connectAttr "skinCluster4.og[0]" "L_shoulder_geoShape.i";
connectAttr "groupId20.id" "L_shoulder_geoShape.iog.og[0].gid";
connectAttr "C_Robot_Model:blinn3SG.mwc" "L_shoulder_geoShape.iog.og[0].gco";
connectAttr "skinCluster4GroupId.id" "L_shoulder_geoShape.iog.og[3].gid";
connectAttr "skinCluster4Set.mwc" "L_shoulder_geoShape.iog.og[3].gco";
connectAttr "groupId36.id" "L_shoulder_geoShape.iog.og[4].gid";
connectAttr "tweakSet4.mwc" "L_shoulder_geoShape.iog.og[4].gco";
connectAttr "tweak4.vl[0].vt[0]" "L_shoulder_geoShape.twl";
connectAttr "skinCluster5GroupId.id" "head_geoShape.iog.og[2].gid";
connectAttr "skinCluster5Set.mwc" "head_geoShape.iog.og[2].gco";
connectAttr "groupId38.id" "head_geoShape.iog.og[3].gid";
connectAttr "tweakSet5.mwc" "head_geoShape.iog.og[3].gco";
connectAttr "skinCluster5.og[0]" "head_geoShape.i";
connectAttr "tweak5.vl[0].vt[0]" "head_geoShape.twl";
connectAttr "skinCluster8.og[0]" "chest_geoShape.i";
connectAttr "groupId25.id" "chest_geoShape.iog.og[0].gid";
connectAttr "C_Robot_Model:blinn3SG.mwc" "chest_geoShape.iog.og[0].gco";
connectAttr "skinCluster8GroupId.id" "chest_geoShape.iog.og[7].gid";
connectAttr "skinCluster8Set.mwc" "chest_geoShape.iog.og[7].gco";
connectAttr "groupId44.id" "chest_geoShape.iog.og[8].gid";
connectAttr "tweakSet8.mwc" "chest_geoShape.iog.og[8].gco";
connectAttr "tweak8.vl[0].vt[0]" "chest_geoShape.twl";
connectAttr "groupParts18.og" "bottom_geoShape.i";
connectAttr "groupId28.id" "bottom_geoShape.iog.og[0].gid";
connectAttr "C_Robot_Model:blinn3SG.mwc" "bottom_geoShape.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "C_Robot_Model:lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "C_Robot_Model:blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "C_Robot_Model:surfaceShader1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "C_Robot_Model:blinn3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "C_Robot_Model:lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "C_Robot_Model:lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "C_Robot_Model:blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "C_Robot_Model:surfaceShader1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "C_Robot_Model:blinn3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "C_Robot_Model:lambert3SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "layerManager.dli[1]" "Geo_Layer.id";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miContourPreset.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
connectAttr "C_Robot_Model:file1.oc" "C_Robot_Model:lambert2.c";
connectAttr "C_Robot_Model:lambert2.oc" "C_Robot_Model:lambert2SG.ss";
connectAttr "C_Robot_Model:lambert2SG.msg" "C_Robot_Model:materialInfo1.sg";
connectAttr "C_Robot_Model:lambert2.msg" "C_Robot_Model:materialInfo1.m";
connectAttr "C_Robot_Model:file1.msg" "C_Robot_Model:materialInfo1.t" -na;
connectAttr "C_Robot_Model:place2dTexture1.c" "C_Robot_Model:file1.c";
connectAttr "C_Robot_Model:place2dTexture1.tf" "C_Robot_Model:file1.tf";
connectAttr "C_Robot_Model:place2dTexture1.rf" "C_Robot_Model:file1.rf";
connectAttr "C_Robot_Model:place2dTexture1.mu" "C_Robot_Model:file1.mu";
connectAttr "C_Robot_Model:place2dTexture1.mv" "C_Robot_Model:file1.mv";
connectAttr "C_Robot_Model:place2dTexture1.s" "C_Robot_Model:file1.s";
connectAttr "C_Robot_Model:place2dTexture1.wu" "C_Robot_Model:file1.wu";
connectAttr "C_Robot_Model:place2dTexture1.wv" "C_Robot_Model:file1.wv";
connectAttr "C_Robot_Model:place2dTexture1.re" "C_Robot_Model:file1.re";
connectAttr "C_Robot_Model:place2dTexture1.of" "C_Robot_Model:file1.of";
connectAttr "C_Robot_Model:place2dTexture1.r" "C_Robot_Model:file1.ro";
connectAttr "C_Robot_Model:place2dTexture1.n" "C_Robot_Model:file1.n";
connectAttr "C_Robot_Model:place2dTexture1.vt1" "C_Robot_Model:file1.vt1";
connectAttr "C_Robot_Model:place2dTexture1.vt2" "C_Robot_Model:file1.vt2";
connectAttr "C_Robot_Model:place2dTexture1.vt3" "C_Robot_Model:file1.vt3";
connectAttr "C_Robot_Model:place2dTexture1.vc1" "C_Robot_Model:file1.vc1";
connectAttr "C_Robot_Model:place2dTexture1.o" "C_Robot_Model:file1.uv";
connectAttr "C_Robot_Model:place2dTexture1.ofs" "C_Robot_Model:file1.fs";
connectAttr "C_Robot_Model:hyperView1.msg" "C_Robot_Model:nodeEditorPanel1Info.b[0]"
		;
connectAttr "C_Robot_Model:hyperLayout1.msg" "C_Robot_Model:hyperView1.hl";
connectAttr "C_Robot_Model:lambert2.msg" "C_Robot_Model:hyperLayout1.hyp[5].dn";
connectAttr "C_Robot_Model:lambert2SG.msg" "C_Robot_Model:hyperLayout1.hyp[6].dn"
		;
connectAttr "C_Robot_Model:file1.msg" "C_Robot_Model:hyperLayout1.hyp[7].dn";
connectAttr "C_Robot_Model:place2dTexture1.msg" "C_Robot_Model:hyperLayout1.hyp[8].dn"
		;
connectAttr "C_Robot_Model:blinn2.oc" "C_Robot_Model:blinn1SG.ss";
connectAttr "C_Robot_Model:blinn1SG.msg" "C_Robot_Model:materialInfo2.sg";
connectAttr "C_Robot_Model:blinn2.msg" "C_Robot_Model:materialInfo2.m";
connectAttr "C_Robot_Model:file2.msg" "C_Robot_Model:materialInfo2.t" -na;
connectAttr "C_Robot_Model:place2dTexture2.c" "C_Robot_Model:file2.c";
connectAttr "C_Robot_Model:place2dTexture2.tf" "C_Robot_Model:file2.tf";
connectAttr "C_Robot_Model:place2dTexture2.rf" "C_Robot_Model:file2.rf";
connectAttr "C_Robot_Model:place2dTexture2.mu" "C_Robot_Model:file2.mu";
connectAttr "C_Robot_Model:place2dTexture2.mv" "C_Robot_Model:file2.mv";
connectAttr "C_Robot_Model:place2dTexture2.s" "C_Robot_Model:file2.s";
connectAttr "C_Robot_Model:place2dTexture2.wu" "C_Robot_Model:file2.wu";
connectAttr "C_Robot_Model:place2dTexture2.wv" "C_Robot_Model:file2.wv";
connectAttr "C_Robot_Model:place2dTexture2.re" "C_Robot_Model:file2.re";
connectAttr "C_Robot_Model:place2dTexture2.of" "C_Robot_Model:file2.of";
connectAttr "C_Robot_Model:place2dTexture2.r" "C_Robot_Model:file2.ro";
connectAttr "C_Robot_Model:place2dTexture2.n" "C_Robot_Model:file2.n";
connectAttr "C_Robot_Model:place2dTexture2.vt1" "C_Robot_Model:file2.vt1";
connectAttr "C_Robot_Model:place2dTexture2.vt2" "C_Robot_Model:file2.vt2";
connectAttr "C_Robot_Model:place2dTexture2.vt3" "C_Robot_Model:file2.vt3";
connectAttr "C_Robot_Model:place2dTexture2.vc1" "C_Robot_Model:file2.vc1";
connectAttr "C_Robot_Model:place2dTexture2.o" "C_Robot_Model:file2.uv";
connectAttr "C_Robot_Model:place2dTexture2.ofs" "C_Robot_Model:file2.fs";
connectAttr "C_Robot_Model:place2dTexture3.c" "C_Robot_Model:file3.c";
connectAttr "C_Robot_Model:place2dTexture3.tf" "C_Robot_Model:file3.tf";
connectAttr "C_Robot_Model:place2dTexture3.rf" "C_Robot_Model:file3.rf";
connectAttr "C_Robot_Model:place2dTexture3.mu" "C_Robot_Model:file3.mu";
connectAttr "C_Robot_Model:place2dTexture3.mv" "C_Robot_Model:file3.mv";
connectAttr "C_Robot_Model:place2dTexture3.s" "C_Robot_Model:file3.s";
connectAttr "C_Robot_Model:place2dTexture3.wu" "C_Robot_Model:file3.wu";
connectAttr "C_Robot_Model:place2dTexture3.wv" "C_Robot_Model:file3.wv";
connectAttr "C_Robot_Model:place2dTexture3.re" "C_Robot_Model:file3.re";
connectAttr "C_Robot_Model:place2dTexture3.of" "C_Robot_Model:file3.of";
connectAttr "C_Robot_Model:place2dTexture3.r" "C_Robot_Model:file3.ro";
connectAttr "C_Robot_Model:place2dTexture3.n" "C_Robot_Model:file3.n";
connectAttr "C_Robot_Model:place2dTexture3.vt1" "C_Robot_Model:file3.vt1";
connectAttr "C_Robot_Model:place2dTexture3.vt2" "C_Robot_Model:file3.vt2";
connectAttr "C_Robot_Model:place2dTexture3.vt3" "C_Robot_Model:file3.vt3";
connectAttr "C_Robot_Model:place2dTexture3.vc1" "C_Robot_Model:file3.vc1";
connectAttr "C_Robot_Model:place2dTexture3.o" "C_Robot_Model:file3.uv";
connectAttr "C_Robot_Model:place2dTexture3.ofs" "C_Robot_Model:file3.fs";
connectAttr "C_Robot_Model:file3.oa" "C_Robot_Model:bump2d1.bv";
connectAttr "C_Robot_Model:ramp1.oa" "C_Robot_Model:bump2d1.bd";
connectAttr "C_Robot_Model:place2dTexture4.o" "C_Robot_Model:ramp1.uv";
connectAttr "C_Robot_Model:place2dTexture4.ofs" "C_Robot_Model:ramp1.fs";
connectAttr "C_Robot_Model:file2.oc" "C_Robot_Model:blinn2.c";
connectAttr "C_Robot_Model:bump2d1.o" "C_Robot_Model:blinn2.n";
connectAttr "C_Robot_Model:mib_amb_occlusion1.S11" "C_Robot_Model:surfaceShader1.oc"
		;
connectAttr "C_Robot_Model:surfaceShader1.oc" "C_Robot_Model:surfaceShader1SG.ss"
		;
connectAttr "C_Robot_Model:surfaceShader1SG.msg" "C_Robot_Model:materialInfo3.sg"
		;
connectAttr "C_Robot_Model:surfaceShader1.msg" "C_Robot_Model:materialInfo3.m";
connectAttr "C_Robot_Model:surfaceShader1.msg" "C_Robot_Model:materialInfo3.t" -na
		;
connectAttr "C_Robot_Model:file4.oc" "C_Robot_Model:blinn3.c";
connectAttr "C_Robot_Model:blinn3.oc" "C_Robot_Model:blinn3SG.ss";
connectAttr "head_geoShape.iog" "C_Robot_Model:blinn3SG.dsm" -na;
connectAttr "R_hand_geoShape.iog.og[0]" "C_Robot_Model:blinn3SG.dsm" -na;
connectAttr "R_shoulder_geoShape.iog.og[0]" "C_Robot_Model:blinn3SG.dsm" -na;
connectAttr "L_hand_geoShape.iog.og[0]" "C_Robot_Model:blinn3SG.dsm" -na;
connectAttr "L_shoulder_geoShape.iog.og[0]" "C_Robot_Model:blinn3SG.dsm" -na;
connectAttr "chest_geoShape.iog.og[0]" "C_Robot_Model:blinn3SG.dsm" -na;
connectAttr "bottom_geoShape.iog.og[0]" "C_Robot_Model:blinn3SG.dsm" -na;
connectAttr "groupId11.msg" "C_Robot_Model:blinn3SG.gn" -na;
connectAttr "groupId14.msg" "C_Robot_Model:blinn3SG.gn" -na;
connectAttr "groupId17.msg" "C_Robot_Model:blinn3SG.gn" -na;
connectAttr "groupId20.msg" "C_Robot_Model:blinn3SG.gn" -na;
connectAttr "groupId25.msg" "C_Robot_Model:blinn3SG.gn" -na;
connectAttr "groupId28.msg" "C_Robot_Model:blinn3SG.gn" -na;
connectAttr "C_Robot_Model:blinn3SG.msg" "C_Robot_Model:materialInfo4.sg";
connectAttr "C_Robot_Model:blinn3.msg" "C_Robot_Model:materialInfo4.m";
connectAttr "C_Robot_Model:file4.msg" "C_Robot_Model:materialInfo4.t" -na;
connectAttr "C_Robot_Model:place2dTexture5.c" "C_Robot_Model:file4.c";
connectAttr "C_Robot_Model:place2dTexture5.tf" "C_Robot_Model:file4.tf";
connectAttr "C_Robot_Model:place2dTexture5.rf" "C_Robot_Model:file4.rf";
connectAttr "C_Robot_Model:place2dTexture5.mu" "C_Robot_Model:file4.mu";
connectAttr "C_Robot_Model:place2dTexture5.mv" "C_Robot_Model:file4.mv";
connectAttr "C_Robot_Model:place2dTexture5.s" "C_Robot_Model:file4.s";
connectAttr "C_Robot_Model:place2dTexture5.wu" "C_Robot_Model:file4.wu";
connectAttr "C_Robot_Model:place2dTexture5.wv" "C_Robot_Model:file4.wv";
connectAttr "C_Robot_Model:place2dTexture5.re" "C_Robot_Model:file4.re";
connectAttr "C_Robot_Model:place2dTexture5.of" "C_Robot_Model:file4.of";
connectAttr "C_Robot_Model:place2dTexture5.r" "C_Robot_Model:file4.ro";
connectAttr "C_Robot_Model:place2dTexture5.n" "C_Robot_Model:file4.n";
connectAttr "C_Robot_Model:place2dTexture5.vt1" "C_Robot_Model:file4.vt1";
connectAttr "C_Robot_Model:place2dTexture5.vt2" "C_Robot_Model:file4.vt2";
connectAttr "C_Robot_Model:place2dTexture5.vt3" "C_Robot_Model:file4.vt3";
connectAttr "C_Robot_Model:place2dTexture5.vc1" "C_Robot_Model:file4.vc1";
connectAttr "C_Robot_Model:place2dTexture5.o" "C_Robot_Model:file4.uv";
connectAttr "C_Robot_Model:place2dTexture5.ofs" "C_Robot_Model:file4.fs";
connectAttr "C_Robot_Model:file5.oc" "C_Robot_Model:lambert3.c";
connectAttr "C_Robot_Model:lambert3.oc" "C_Robot_Model:lambert3SG.ss";
connectAttr "C_Robot_Model:lambert3SG.msg" "C_Robot_Model:materialInfo5.sg";
connectAttr "C_Robot_Model:lambert3.msg" "C_Robot_Model:materialInfo5.m";
connectAttr "C_Robot_Model:file5.msg" "C_Robot_Model:materialInfo5.t" -na;
connectAttr "C_Robot_Model:place2dTexture6.c" "C_Robot_Model:file5.c";
connectAttr "C_Robot_Model:place2dTexture6.tf" "C_Robot_Model:file5.tf";
connectAttr "C_Robot_Model:place2dTexture6.rf" "C_Robot_Model:file5.rf";
connectAttr "C_Robot_Model:place2dTexture6.mu" "C_Robot_Model:file5.mu";
connectAttr "C_Robot_Model:place2dTexture6.mv" "C_Robot_Model:file5.mv";
connectAttr "C_Robot_Model:place2dTexture6.s" "C_Robot_Model:file5.s";
connectAttr "C_Robot_Model:place2dTexture6.wu" "C_Robot_Model:file5.wu";
connectAttr "C_Robot_Model:place2dTexture6.wv" "C_Robot_Model:file5.wv";
connectAttr "C_Robot_Model:place2dTexture6.re" "C_Robot_Model:file5.re";
connectAttr "C_Robot_Model:place2dTexture6.of" "C_Robot_Model:file5.of";
connectAttr "C_Robot_Model:place2dTexture6.r" "C_Robot_Model:file5.ro";
connectAttr "C_Robot_Model:place2dTexture6.n" "C_Robot_Model:file5.n";
connectAttr "C_Robot_Model:place2dTexture6.vt1" "C_Robot_Model:file5.vt1";
connectAttr "C_Robot_Model:place2dTexture6.vt2" "C_Robot_Model:file5.vt2";
connectAttr "C_Robot_Model:place2dTexture6.vt3" "C_Robot_Model:file5.vt3";
connectAttr "C_Robot_Model:place2dTexture6.vc1" "C_Robot_Model:file5.vc1";
connectAttr "C_Robot_Model:place2dTexture6.o" "C_Robot_Model:file5.uv";
connectAttr "C_Robot_Model:place2dTexture6.ofs" "C_Robot_Model:file5.fs";
connectAttr "R_hand_geoShapeOrig.w" "groupParts1.ig";
connectAttr "groupId11.id" "groupParts1.gi";
connectAttr "R_shoulder_geoShapeOrig.w" "groupParts4.ig";
connectAttr "groupId14.id" "groupParts4.gi";
connectAttr "L_shoulder_geoShapeOrig.w" "groupParts10.ig";
connectAttr "groupId20.id" "groupParts10.gi";
connectAttr "chest_geoShapeOrig.w" "groupParts15.ig";
connectAttr "groupId25.id" "groupParts15.gi";
connectAttr "bottom_geoShapeOrig.w" "groupParts18.ig";
connectAttr "groupId28.id" "groupParts18.gi";
connectAttr "L_hand_geoShapeOrig.w" "groupParts7.ig";
connectAttr "groupId17.id" "groupParts7.gi";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "R_shoulder_joint.wm" "skinCluster1.ma[19]";
connectAttr "R_elbow_joint.wm" "skinCluster1.ma[20]";
connectAttr "R_hand_joint.wm" "skinCluster1.ma[21]";
connectAttr "R_claw_1_joint.wm" "skinCluster1.ma[24]";
connectAttr "R_claw_2_joint.wm" "skinCluster1.ma[25]";
connectAttr "R_shoulder_joint.liw" "skinCluster1.lw[19]";
connectAttr "R_elbow_joint.liw" "skinCluster1.lw[20]";
connectAttr "R_hand_joint.liw" "skinCluster1.lw[21]";
connectAttr "R_claw_1_joint.liw" "skinCluster1.lw[24]";
connectAttr "R_claw_2_joint.liw" "skinCluster1.lw[25]";
connectAttr "root.obcc" "skinCluster1.ifcl[0]";
connectAttr "head_joint.obcc" "skinCluster1.ifcl[1]";
connectAttr "torso_joint.obcc" "skinCluster1.ifcl[2]";
connectAttr "waist_joint.obcc" "skinCluster1.ifcl[3]";
connectAttr "L_hip_joint.obcc" "skinCluster1.ifcl[4]";
connectAttr "L_knee_joint.obcc" "skinCluster1.ifcl[5]";
connectAttr "L_ankle_joint.obcc" "skinCluster1.ifcl[6]";
connectAttr "L_foot_joint.obcc" "skinCluster1.ifcl[7]";
connectAttr "L_clavicle_joint.obcc" "skinCluster1.ifcl[12]";
connectAttr "L_shoulder_joint.obcc" "skinCluster1.ifcl[13]";
connectAttr "L_elbow_joint.obcc" "skinCluster1.ifcl[14]";
connectAttr "L_hand_joint.obcc" "skinCluster1.ifcl[15]";
connectAttr "L_claw_2_joint.obcc" "skinCluster1.ifcl[16]";
connectAttr "L_claw_1_joint.obcc" "skinCluster1.ifcl[17]";
connectAttr "R_clavicle_joint.obcc" "skinCluster1.ifcl[18]";
connectAttr "R_shoulder_joint.obcc" "skinCluster1.ifcl[19]";
connectAttr "R_elbow_joint.obcc" "skinCluster1.ifcl[20]";
connectAttr "R_hand_joint.obcc" "skinCluster1.ifcl[21]";
connectAttr "R_claw_2_joint.obcc" "skinCluster1.ifcl[22]";
connectAttr "R_claw_1_joint.obcc" "skinCluster1.ifcl[23]";
connectAttr "R_claw_1_joint.obcc" "skinCluster1.ifcl[24]";
connectAttr "R_claw_2_joint.obcc" "skinCluster1.ifcl[25]";
connectAttr "R_claw_1_joint.msg" "skinCluster1.ptt";
connectAttr "groupParts20.og" "tweak1.ip[0].ig";
connectAttr "groupId30.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "R_hand_geoShape.iog.og[3]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId30.msg" "tweakSet1.gn" -na;
connectAttr "R_hand_geoShape.iog.og[4]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "groupParts1.og" "groupParts20.ig";
connectAttr "groupId30.id" "groupParts20.gi";
connectAttr "root.msg" "bindPose1.m[0]";
connectAttr "torso_joint.msg" "bindPose1.m[2]";
connectAttr "waist_joint.msg" "bindPose1.m[3]";
connectAttr "L_clavicle_joint.msg" "bindPose1.m[12]";
connectAttr "L_shoulder_joint.msg" "bindPose1.m[13]";
connectAttr "L_elbow_joint.msg" "bindPose1.m[14]";
connectAttr "L_hand_joint.msg" "bindPose1.m[15]";
connectAttr "R_clavicle_joint.msg" "bindPose1.m[18]";
connectAttr "R_shoulder_joint.msg" "bindPose1.m[19]";
connectAttr "R_elbow_joint.msg" "bindPose1.m[20]";
connectAttr "R_hand_joint.msg" "bindPose1.m[21]";
connectAttr "L_claw_1_joint.msg" "bindPose1.m[66]";
connectAttr "L_claw_2_joint.msg" "bindPose1.m[67]";
connectAttr "head_joint.msg" "bindPose1.m[68]";
connectAttr "chest.msg" "bindPose1.m[70]";
connectAttr "R_claw_1_joint.msg" "bindPose1.m[72]";
connectAttr "R_claw_2_joint.msg" "bindPose1.m[73]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[70]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[3]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[9]" "bindPose1.p[10]";
connectAttr "bindPose1.m[0]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[0]" "bindPose1.p[18]";
connectAttr "bindPose1.m[18]" "bindPose1.p[19]";
connectAttr "bindPose1.m[19]" "bindPose1.p[20]";
connectAttr "bindPose1.m[20]" "bindPose1.p[21]";
connectAttr "bindPose1.m[15]" "bindPose1.p[66]";
connectAttr "bindPose1.m[15]" "bindPose1.p[67]";
connectAttr "bindPose1.m[0]" "bindPose1.p[68]";
connectAttr "bindPose1.m[6]" "bindPose1.p[69]";
connectAttr "bindPose1.m[0]" "bindPose1.p[70]";
connectAttr "bindPose1.m[10]" "bindPose1.p[71]";
connectAttr "bindPose1.m[21]" "bindPose1.p[72]";
connectAttr "bindPose1.m[21]" "bindPose1.p[73]";
connectAttr "root.bps" "bindPose1.wm[0]";
connectAttr "torso_joint.bps" "bindPose1.wm[2]";
connectAttr "waist_joint.bps" "bindPose1.wm[3]";
connectAttr "L_clavicle_joint.bps" "bindPose1.wm[12]";
connectAttr "L_shoulder_joint.bps" "bindPose1.wm[13]";
connectAttr "L_elbow_joint.bps" "bindPose1.wm[14]";
connectAttr "L_hand_joint.bps" "bindPose1.wm[15]";
connectAttr "R_clavicle_joint.bps" "bindPose1.wm[18]";
connectAttr "R_shoulder_joint.bps" "bindPose1.wm[19]";
connectAttr "R_elbow_joint.bps" "bindPose1.wm[20]";
connectAttr "R_hand_joint.bps" "bindPose1.wm[21]";
connectAttr "L_claw_1_joint.bps" "bindPose1.wm[66]";
connectAttr "L_claw_2_joint.bps" "bindPose1.wm[67]";
connectAttr "head_joint.bps" "bindPose1.wm[68]";
connectAttr "chest.bps" "bindPose1.wm[70]";
connectAttr "R_claw_1_joint.bps" "bindPose1.wm[72]";
connectAttr "R_claw_2_joint.bps" "bindPose1.wm[73]";
connectAttr "skinCluster2GroupParts.og" "skinCluster2.ip[0].ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2.ip[0].gi";
connectAttr "R_clavicle_joint.wm" "skinCluster2.ma[18]";
connectAttr "R_shoulder_joint.wm" "skinCluster2.ma[19]";
connectAttr "R_clavicle_joint.liw" "skinCluster2.lw[18]";
connectAttr "R_shoulder_joint.liw" "skinCluster2.lw[19]";
connectAttr "root.obcc" "skinCluster2.ifcl[0]";
connectAttr "head_joint.obcc" "skinCluster2.ifcl[1]";
connectAttr "torso_joint.obcc" "skinCluster2.ifcl[2]";
connectAttr "waist_joint.obcc" "skinCluster2.ifcl[3]";
connectAttr "L_hip_joint.obcc" "skinCluster2.ifcl[4]";
connectAttr "L_knee_joint.obcc" "skinCluster2.ifcl[5]";
connectAttr "L_ankle_joint.obcc" "skinCluster2.ifcl[6]";
connectAttr "L_foot_joint.obcc" "skinCluster2.ifcl[7]";
connectAttr "L_clavicle_joint.obcc" "skinCluster2.ifcl[12]";
connectAttr "L_shoulder_joint.obcc" "skinCluster2.ifcl[13]";
connectAttr "L_elbow_joint.obcc" "skinCluster2.ifcl[14]";
connectAttr "L_hand_joint.obcc" "skinCluster2.ifcl[15]";
connectAttr "L_claw_2_joint.obcc" "skinCluster2.ifcl[16]";
connectAttr "L_claw_1_joint.obcc" "skinCluster2.ifcl[17]";
connectAttr "R_clavicle_joint.obcc" "skinCluster2.ifcl[18]";
connectAttr "R_shoulder_joint.obcc" "skinCluster2.ifcl[19]";
connectAttr "R_elbow_joint.obcc" "skinCluster2.ifcl[20]";
connectAttr "R_hand_joint.obcc" "skinCluster2.ifcl[21]";
connectAttr "R_claw_2_joint.obcc" "skinCluster2.ifcl[22]";
connectAttr "R_claw_1_joint.obcc" "skinCluster2.ifcl[23]";
connectAttr "bindPose1.msg" "skinCluster2.bp";
connectAttr "groupParts22.og" "tweak2.ip[0].ig";
connectAttr "groupId32.id" "tweak2.ip[0].gi";
connectAttr "skinCluster2GroupId.msg" "skinCluster2Set.gn" -na;
connectAttr "R_shoulder_geoShape.iog.og[3]" "skinCluster2Set.dsm" -na;
connectAttr "skinCluster2.msg" "skinCluster2Set.ub[0]";
connectAttr "tweak2.og[0]" "skinCluster2GroupParts.ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2GroupParts.gi";
connectAttr "groupId32.msg" "tweakSet2.gn" -na;
connectAttr "R_shoulder_geoShape.iog.og[4]" "tweakSet2.dsm" -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "groupParts4.og" "groupParts22.ig";
connectAttr "groupId32.id" "groupParts22.gi";
connectAttr "skinCluster3GroupParts.og" "skinCluster3.ip[0].ig";
connectAttr "skinCluster3GroupId.id" "skinCluster3.ip[0].gi";
connectAttr "L_shoulder_joint.wm" "skinCluster3.ma[13]";
connectAttr "L_elbow_joint.wm" "skinCluster3.ma[14]";
connectAttr "L_hand_joint.wm" "skinCluster3.ma[15]";
connectAttr "L_claw_1_joint.wm" "skinCluster3.ma[24]";
connectAttr "L_claw_2_joint.wm" "skinCluster3.ma[25]";
connectAttr "L_shoulder_joint.liw" "skinCluster3.lw[13]";
connectAttr "L_elbow_joint.liw" "skinCluster3.lw[14]";
connectAttr "L_hand_joint.liw" "skinCluster3.lw[15]";
connectAttr "L_claw_1_joint.liw" "skinCluster3.lw[24]";
connectAttr "L_claw_2_joint.liw" "skinCluster3.lw[25]";
connectAttr "root.obcc" "skinCluster3.ifcl[0]";
connectAttr "head_joint.obcc" "skinCluster3.ifcl[1]";
connectAttr "torso_joint.obcc" "skinCluster3.ifcl[2]";
connectAttr "waist_joint.obcc" "skinCluster3.ifcl[3]";
connectAttr "L_hip_joint.obcc" "skinCluster3.ifcl[4]";
connectAttr "L_knee_joint.obcc" "skinCluster3.ifcl[5]";
connectAttr "L_ankle_joint.obcc" "skinCluster3.ifcl[6]";
connectAttr "L_foot_joint.obcc" "skinCluster3.ifcl[7]";
connectAttr "L_clavicle_joint.obcc" "skinCluster3.ifcl[12]";
connectAttr "L_shoulder_joint.obcc" "skinCluster3.ifcl[13]";
connectAttr "L_elbow_joint.obcc" "skinCluster3.ifcl[14]";
connectAttr "L_hand_joint.obcc" "skinCluster3.ifcl[15]";
connectAttr "L_claw_2_joint.obcc" "skinCluster3.ifcl[16]";
connectAttr "L_claw_1_joint.obcc" "skinCluster3.ifcl[17]";
connectAttr "R_clavicle_joint.obcc" "skinCluster3.ifcl[18]";
connectAttr "R_shoulder_joint.obcc" "skinCluster3.ifcl[19]";
connectAttr "R_elbow_joint.obcc" "skinCluster3.ifcl[20]";
connectAttr "R_hand_joint.obcc" "skinCluster3.ifcl[21]";
connectAttr "R_claw_2_joint.obcc" "skinCluster3.ifcl[22]";
connectAttr "R_claw_1_joint.obcc" "skinCluster3.ifcl[23]";
connectAttr "L_claw_1_joint.obcc" "skinCluster3.ifcl[24]";
connectAttr "L_claw_2_joint.obcc" "skinCluster3.ifcl[25]";
connectAttr "bindPose1.msg" "skinCluster3.bp";
connectAttr "L_claw_1_joint.msg" "skinCluster3.ptt";
connectAttr "groupParts24.og" "tweak3.ip[0].ig";
connectAttr "groupId34.id" "tweak3.ip[0].gi";
connectAttr "skinCluster3GroupId.msg" "skinCluster3Set.gn" -na;
connectAttr "L_hand_geoShape.iog.og[3]" "skinCluster3Set.dsm" -na;
connectAttr "skinCluster3.msg" "skinCluster3Set.ub[0]";
connectAttr "tweak3.og[0]" "skinCluster3GroupParts.ig";
connectAttr "skinCluster3GroupId.id" "skinCluster3GroupParts.gi";
connectAttr "groupId34.msg" "tweakSet3.gn" -na;
connectAttr "L_hand_geoShape.iog.og[4]" "tweakSet3.dsm" -na;
connectAttr "tweak3.msg" "tweakSet3.ub[0]";
connectAttr "groupParts7.og" "groupParts24.ig";
connectAttr "groupId34.id" "groupParts24.gi";
connectAttr "skinCluster4GroupParts.og" "skinCluster4.ip[0].ig";
connectAttr "skinCluster4GroupId.id" "skinCluster4.ip[0].gi";
connectAttr "L_clavicle_joint.wm" "skinCluster4.ma[12]";
connectAttr "L_shoulder_joint.wm" "skinCluster4.ma[13]";
connectAttr "L_clavicle_joint.liw" "skinCluster4.lw[12]";
connectAttr "L_shoulder_joint.liw" "skinCluster4.lw[13]";
connectAttr "root.obcc" "skinCluster4.ifcl[0]";
connectAttr "head_joint.obcc" "skinCluster4.ifcl[1]";
connectAttr "torso_joint.obcc" "skinCluster4.ifcl[2]";
connectAttr "waist_joint.obcc" "skinCluster4.ifcl[3]";
connectAttr "L_hip_joint.obcc" "skinCluster4.ifcl[4]";
connectAttr "L_knee_joint.obcc" "skinCluster4.ifcl[5]";
connectAttr "L_ankle_joint.obcc" "skinCluster4.ifcl[6]";
connectAttr "L_foot_joint.obcc" "skinCluster4.ifcl[7]";
connectAttr "L_clavicle_joint.obcc" "skinCluster4.ifcl[12]";
connectAttr "L_shoulder_joint.obcc" "skinCluster4.ifcl[13]";
connectAttr "L_elbow_joint.obcc" "skinCluster4.ifcl[14]";
connectAttr "L_hand_joint.obcc" "skinCluster4.ifcl[15]";
connectAttr "L_claw_2_joint.obcc" "skinCluster4.ifcl[16]";
connectAttr "L_claw_1_joint.obcc" "skinCluster4.ifcl[17]";
connectAttr "R_clavicle_joint.obcc" "skinCluster4.ifcl[18]";
connectAttr "R_shoulder_joint.obcc" "skinCluster4.ifcl[19]";
connectAttr "R_elbow_joint.obcc" "skinCluster4.ifcl[20]";
connectAttr "R_hand_joint.obcc" "skinCluster4.ifcl[21]";
connectAttr "R_claw_2_joint.obcc" "skinCluster4.ifcl[22]";
connectAttr "R_claw_1_joint.obcc" "skinCluster4.ifcl[23]";
connectAttr "bindPose1.msg" "skinCluster4.bp";
connectAttr "L_shoulder_joint.msg" "skinCluster4.ptt";
connectAttr "groupParts26.og" "tweak4.ip[0].ig";
connectAttr "groupId36.id" "tweak4.ip[0].gi";
connectAttr "skinCluster4GroupId.msg" "skinCluster4Set.gn" -na;
connectAttr "L_shoulder_geoShape.iog.og[3]" "skinCluster4Set.dsm" -na;
connectAttr "skinCluster4.msg" "skinCluster4Set.ub[0]";
connectAttr "tweak4.og[0]" "skinCluster4GroupParts.ig";
connectAttr "skinCluster4GroupId.id" "skinCluster4GroupParts.gi";
connectAttr "groupId36.msg" "tweakSet4.gn" -na;
connectAttr "L_shoulder_geoShape.iog.og[4]" "tweakSet4.dsm" -na;
connectAttr "tweak4.msg" "tweakSet4.ub[0]";
connectAttr "groupParts10.og" "groupParts26.ig";
connectAttr "groupId36.id" "groupParts26.gi";
connectAttr "skinCluster5GroupParts.og" "skinCluster5.ip[0].ig";
connectAttr "skinCluster5GroupId.id" "skinCluster5.ip[0].gi";
connectAttr "root.wm" "skinCluster5.ma[0]";
connectAttr "head_joint.wm" "skinCluster5.ma[24]";
connectAttr "root.liw" "skinCluster5.lw[0]";
connectAttr "head_joint.liw" "skinCluster5.lw[24]";
connectAttr "root.obcc" "skinCluster5.ifcl[0]";
connectAttr "head_joint.obcc" "skinCluster5.ifcl[1]";
connectAttr "torso_joint.obcc" "skinCluster5.ifcl[2]";
connectAttr "waist_joint.obcc" "skinCluster5.ifcl[3]";
connectAttr "L_hip_joint.obcc" "skinCluster5.ifcl[4]";
connectAttr "L_knee_joint.obcc" "skinCluster5.ifcl[5]";
connectAttr "L_ankle_joint.obcc" "skinCluster5.ifcl[6]";
connectAttr "L_foot_joint.obcc" "skinCluster5.ifcl[7]";
connectAttr "L_clavicle_joint.obcc" "skinCluster5.ifcl[12]";
connectAttr "L_shoulder_joint.obcc" "skinCluster5.ifcl[13]";
connectAttr "L_elbow_joint.obcc" "skinCluster5.ifcl[14]";
connectAttr "L_hand_joint.obcc" "skinCluster5.ifcl[15]";
connectAttr "L_claw_2_joint.obcc" "skinCluster5.ifcl[16]";
connectAttr "L_claw_1_joint.obcc" "skinCluster5.ifcl[17]";
connectAttr "R_clavicle_joint.obcc" "skinCluster5.ifcl[18]";
connectAttr "R_shoulder_joint.obcc" "skinCluster5.ifcl[19]";
connectAttr "R_elbow_joint.obcc" "skinCluster5.ifcl[20]";
connectAttr "R_hand_joint.obcc" "skinCluster5.ifcl[21]";
connectAttr "R_claw_2_joint.obcc" "skinCluster5.ifcl[22]";
connectAttr "R_claw_1_joint.obcc" "skinCluster5.ifcl[23]";
connectAttr "head_joint.obcc" "skinCluster5.ifcl[24]";
connectAttr "bindPose1.msg" "skinCluster5.bp";
connectAttr "head_joint.msg" "skinCluster5.ptt";
connectAttr "groupParts28.og" "tweak5.ip[0].ig";
connectAttr "groupId38.id" "tweak5.ip[0].gi";
connectAttr "skinCluster5GroupId.msg" "skinCluster5Set.gn" -na;
connectAttr "head_geoShape.iog.og[2]" "skinCluster5Set.dsm" -na;
connectAttr "skinCluster5.msg" "skinCluster5Set.ub[0]";
connectAttr "tweak5.og[0]" "skinCluster5GroupParts.ig";
connectAttr "skinCluster5GroupId.id" "skinCluster5GroupParts.gi";
connectAttr "groupId38.msg" "tweakSet5.gn" -na;
connectAttr "head_geoShape.iog.og[3]" "tweakSet5.dsm" -na;
connectAttr "tweak5.msg" "tweakSet5.ub[0]";
connectAttr "head_geoShapeOrig.w" "groupParts28.ig";
connectAttr "groupId38.id" "groupParts28.gi";
connectAttr "root.msg" "bindPose2.m[0]";
connectAttr "head_joint.msg" "bindPose2.m[1]";
connectAttr "L_clavicle_joint.msg" "bindPose2.m[2]";
connectAttr "L_shoulder_joint.msg" "bindPose2.m[3]";
connectAttr "L_elbow_joint.msg" "bindPose2.m[4]";
connectAttr "L_hand_joint.msg" "bindPose2.m[5]";
connectAttr "L_claw_2_joint.msg" "bindPose2.m[6]";
connectAttr "L_claw_1_joint.msg" "bindPose2.m[7]";
connectAttr "R_clavicle_joint.msg" "bindPose2.m[8]";
connectAttr "R_shoulder_joint.msg" "bindPose2.m[9]";
connectAttr "R_elbow_joint.msg" "bindPose2.m[10]";
connectAttr "R_hand_joint.msg" "bindPose2.m[11]";
connectAttr "torso_joint.msg" "bindPose2.m[15]";
connectAttr "waist_joint.msg" "bindPose2.m[16]";
connectAttr "chest.msg" "bindPose2.m[27]";
connectAttr "bindPose2.w" "bindPose2.p[0]";
connectAttr "bindPose2.m[0]" "bindPose2.p[1]";
connectAttr "bindPose2.m[0]" "bindPose2.p[2]";
connectAttr "bindPose2.m[2]" "bindPose2.p[3]";
connectAttr "bindPose2.m[3]" "bindPose2.p[4]";
connectAttr "bindPose2.m[4]" "bindPose2.p[5]";
connectAttr "bindPose2.m[5]" "bindPose2.p[6]";
connectAttr "bindPose2.m[5]" "bindPose2.p[7]";
connectAttr "bindPose2.m[0]" "bindPose2.p[8]";
connectAttr "bindPose2.m[8]" "bindPose2.p[9]";
connectAttr "bindPose2.m[9]" "bindPose2.p[10]";
connectAttr "bindPose2.m[10]" "bindPose2.p[11]";
connectAttr "bindPose2.m[27]" "bindPose2.p[15]";
connectAttr "bindPose2.m[15]" "bindPose2.p[16]";
connectAttr "bindPose2.m[16]" "bindPose2.p[17]";
connectAttr "bindPose2.m[17]" "bindPose2.p[18]";
connectAttr "bindPose2.m[18]" "bindPose2.p[19]";
connectAttr "bindPose2.m[16]" "bindPose2.p[21]";
connectAttr "bindPose2.m[21]" "bindPose2.p[22]";
connectAttr "bindPose2.m[22]" "bindPose2.p[23]";
connectAttr "bindPose2.m[0]" "bindPose2.p[27]";
connectAttr "chest.bps" "bindPose2.wm[27]";
connectAttr "skinCluster8GroupParts.og" "skinCluster8.ip[0].ig";
connectAttr "skinCluster8GroupId.id" "skinCluster8.ip[0].gi";
connectAttr "root.wm" "skinCluster8.ma[0]";
connectAttr "L_clavicle_joint.wm" "skinCluster8.ma[2]";
connectAttr "L_shoulder_joint.wm" "skinCluster8.ma[3]";
connectAttr "R_clavicle_joint.wm" "skinCluster8.ma[8]";
connectAttr "R_shoulder_joint.wm" "skinCluster8.ma[9]";
connectAttr "chest.wm" "skinCluster8.ma[14]";
connectAttr "torso_joint.wm" "skinCluster8.ma[15]";
connectAttr "waist_joint.wm" "skinCluster8.ma[16]";
connectAttr "root.liw" "skinCluster8.lw[0]";
connectAttr "L_clavicle_joint.liw" "skinCluster8.lw[2]";
connectAttr "L_shoulder_joint.liw" "skinCluster8.lw[3]";
connectAttr "R_clavicle_joint.liw" "skinCluster8.lw[8]";
connectAttr "R_shoulder_joint.liw" "skinCluster8.lw[9]";
connectAttr "chest.liw" "skinCluster8.lw[14]";
connectAttr "torso_joint.liw" "skinCluster8.lw[15]";
connectAttr "waist_joint.liw" "skinCluster8.lw[16]";
connectAttr "root.obcc" "skinCluster8.ifcl[0]";
connectAttr "head_joint.obcc" "skinCluster8.ifcl[1]";
connectAttr "L_clavicle_joint.obcc" "skinCluster8.ifcl[2]";
connectAttr "L_shoulder_joint.obcc" "skinCluster8.ifcl[3]";
connectAttr "L_elbow_joint.obcc" "skinCluster8.ifcl[4]";
connectAttr "L_hand_joint.obcc" "skinCluster8.ifcl[5]";
connectAttr "L_claw_2_joint.obcc" "skinCluster8.ifcl[6]";
connectAttr "L_claw_1_joint.obcc" "skinCluster8.ifcl[7]";
connectAttr "R_clavicle_joint.obcc" "skinCluster8.ifcl[8]";
connectAttr "R_shoulder_joint.obcc" "skinCluster8.ifcl[9]";
connectAttr "R_elbow_joint.obcc" "skinCluster8.ifcl[10]";
connectAttr "R_hand_joint.obcc" "skinCluster8.ifcl[11]";
connectAttr "R_claw_2_joint.obcc" "skinCluster8.ifcl[12]";
connectAttr "R_claw_1_joint.obcc" "skinCluster8.ifcl[13]";
connectAttr "chest.obcc" "skinCluster8.ifcl[14]";
connectAttr "torso_joint.obcc" "skinCluster8.ifcl[15]";
connectAttr "waist_joint.obcc" "skinCluster8.ifcl[16]";
connectAttr "L_hip_joint.obcc" "skinCluster8.ifcl[17]";
connectAttr "L_knee_joint.obcc" "skinCluster8.ifcl[18]";
connectAttr "L_ankle_joint.obcc" "skinCluster8.ifcl[19]";
connectAttr "L_foot_joint.obcc" "skinCluster8.ifcl[20]";
connectAttr "bindPose2.msg" "skinCluster8.bp";
connectAttr "chest.msg" "skinCluster8.ptt";
connectAttr "groupParts34.og" "tweak8.ip[0].ig";
connectAttr "groupId44.id" "tweak8.ip[0].gi";
connectAttr "skinCluster8GroupId.msg" "skinCluster8Set.gn" -na;
connectAttr "chest_geoShape.iog.og[7]" "skinCluster8Set.dsm" -na;
connectAttr "skinCluster8.msg" "skinCluster8Set.ub[0]";
connectAttr "tweak8.og[0]" "skinCluster8GroupParts.ig";
connectAttr "skinCluster8GroupId.id" "skinCluster8GroupParts.gi";
connectAttr "groupId44.msg" "tweakSet8.gn" -na;
connectAttr "chest_geoShape.iog.og[8]" "tweakSet8.dsm" -na;
connectAttr "tweak8.msg" "tweakSet8.ub[0]";
connectAttr "groupParts15.og" "groupParts34.ig";
connectAttr "groupId44.id" "groupParts34.gi";
connectAttr "C_Robot_Model:lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "C_Robot_Model:blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "C_Robot_Model:surfaceShader1SG.pa" ":renderPartition.st" -na;
connectAttr "C_Robot_Model:blinn3SG.pa" ":renderPartition.st" -na;
connectAttr "C_Robot_Model:lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "C_Robot_Model:lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "C_Robot_Model:blinn2.msg" ":defaultShaderList1.s" -na;
connectAttr "C_Robot_Model:surfaceShader1.msg" ":defaultShaderList1.s" -na;
connectAttr "C_Robot_Model:blinn3.msg" ":defaultShaderList1.s" -na;
connectAttr "C_Robot_Model:lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "C_Robot_Model:place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "C_Robot_Model:place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "C_Robot_Model:place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "C_Robot_Model:bump2d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "C_Robot_Model:place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "C_Robot_Model:place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "C_Robot_Model:place2dTexture6.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "C_Robot_Model:file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "C_Robot_Model:file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "C_Robot_Model:file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "C_Robot_Model:ramp1.msg" ":defaultTextureList1.tx" -na;
connectAttr "C_Robot_Model:mib_amb_occlusion1.msg" ":defaultTextureList1.tx" -na
		;
connectAttr "C_Robot_Model:file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "C_Robot_Model:file5.msg" ":defaultTextureList1.tx" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"C_Robot_Model:file1\" \"fileTextureName\" \"F:/Maya Projects/Roboto//custom_uv_diag.png\" 1901128232 \"\" \"sourceImages\"\n1\n\"C_Robot_Model:file2\" \"fileTextureName\" \"F:/Maya Projects/Roboto//Roboto_Color.jpg\" 1135939539 \"\" \"sourceImages\"\n2\n\"C_Robot_Model:file3\" \"fileTextureName\" \"F:/Maya Projects/Roboto//Roboto_Color.jpg\" 1135939539 \"\" \"sourceImages\"\n3\n\"C_Robot_Model:file4\" \"fileTextureName\" \"/Users/Emi-Bear/Google Drive Emily/LetMakeAGame2014/Models/Character Models/C_Robot_Texture.tga\" 728363576 \"/Users/Emi-Bear/Google Drive Emily/LetMakeAGame2014/Models/Character Models/C_Robot_Texture.tga\" \"sourceImages\"\n4\n\"C_Robot_Model:file5\" \"fileTextureName\" \"F:/Maya Projects/Roboto//Roboto_Color_w_AO.jpg\" 2203339427 \"\" \"sourceImages\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of Roboto_Rig.ma
