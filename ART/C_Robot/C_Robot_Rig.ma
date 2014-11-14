//Maya ASCII 2015 scene
//Name: C_Robot_Rig.ma
//Last modified: Fri, Nov 14, 2014 03:31:06 PM
//Codeset: UTF-8
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
	setAttr ".t" -type "double3" -2.4080509562284504 10.807951104483509 53.962221590918531 ;
	setAttr ".r" -type "double3" 168.8616472678579 182.60000000000312 180.00000000000861 ;
	setAttr ".rp" -type "double3" -3.7747582837255322e-15 0 7.1054273576010019e-15 ;
	setAttr ".rpt" -type "double3" 5.1978788567991773e-15 2.6546500133499971e-15 3.5536745098438778e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 54.558001546561115;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -1.4719799999999978 0.28610299468534711 -1.1455164048053663 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.2591602245443028 100.63991397202254 9.556455476683178 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 1.0526315789473684;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".t" -type "double3" 1.2543721199035636 3.9424780896273295 101.42776426678773 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 27.225378763118098;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".t" -type "double3" 101.03091559074437 0.3073414630819985 -1.1214835806226784 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 1.3425735952329267;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "C_Robot_Joint";
createNode transform -n "L_foot_joint_group" -p "C_Robot_Joint";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode joint -n "L_heel_joint" -p "L_foot_joint_group";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.4719800000000007 -10.543653186480398 0.84582758934300317 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -90.000000000000014 1.4124500153760511e-30 180 ;
	setAttr ".bps" -type "matrix" -1.0000000000000002 1.2246467991473535e-16 0 0 2.4651903288156624e-32 2.2204460492503136e-16 -1 0
		 -1.2246467991473535e-16 -1.0000000000000002 -2.2204460492503131e-16 0 -1.471980000000001 -0.030815594505924082 0.86400340431995293 1;
	setAttr ".radi" 0.5;
	setAttr ".liw" yes;
createNode joint -n "L_ball_joint" -p "L_heel_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -3.1086244689504383e-15 2.7707123855344862 4.2431336222392702e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.2326548505849966e-14 -22.604150766459913 89.999999999999972 ;
	setAttr ".bps" -type "matrix" -2.6911539911025351e-16 -0.38436220319192982 -0.9231823745920662 0
		 1.0000000000000002 -6.6953528683477444e-17 -2.2204460492503128e-16 0 5.3476219686430919e-17 -0.92318237459206631 0.38436220319192971 0
		 -1.4719799999999978 -0.030815594505927711 -1.9067089812145332 1;
	setAttr ".radi" 0.5;
createNode joint -n "L_ball_2_joint" -p "L_ball_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.82453109738530372 -4.4408920985006262e-16 2.2204460492503131e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.999999999999787 14.862720463641351 2.4538197494020254e-15 ;
	setAttr ".bps" -type "matrix" -2.7382851561713188e-16 -0.13470272551672138 -0.99088605588047662 0
		 3.903122677905619e-15 0.99088605588047685 -0.13470272551672141 0 1.0000000000000002 -3.9464670297601707e-15 2.8076185193948111e-16 0
		 -1.4719799999999981 0.28610299468534706 -1.1455164048053663 1;
	setAttr -l on ".radi" 0.52266187347837256;
	setAttr ".liw" yes;
createNode joint -n "L_ankle_Move_joint" -p "L_ball_2_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -1.2600613694867735 0.38058796194417904 -2.6645352591003757e-15 ;
	setAttr ".r" -type "double3" 87.354303887734957 -2.4971124468511952e-13 6.060016023056064e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 7.7414303028185465 -89.999999999999773 0 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 -4.429842046513581e-15 -3.6870919018945924e-15 0
		 3.9783843992670399e-15 0.046159700212274266 0.99893407293790581 0 -4.3561069888210098e-15 -0.99893407293790604 0.046159700212274307 0
		 -1.471979999999999 0.83295600000000458 0.05179459999999958 1;
	setAttr ".radi" 0.52266187347837256;
createNode transform -n "L_ankle_ik_group" -p "L_ankle_Move_joint";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.4719800000000018 -0.090188389984199327 0.82967730644945648 ;
	setAttr ".r" -type "double3" 87.354303887734957 -179.99999999999974 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999944 0.99999999999999967 ;
createNode ikHandle -n "L_ikHandle_ankle" -p "L_ankle_ik_group";
	setAttr ".t" -type "double3" 1.4719799999999985 0.83295600000001191 -0.051794599999993904 ;
	setAttr ".r" -type "double3" 3.3395824155367502e-14 -1.8447217152488385e-13 -3.5781240166464569e-13 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "L_ikHandle_ankle_poleVectorConstraint1" -p "L_ikHandle_ankle";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_kneeW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 1.5543122344752192e-15 -2.9259575081206597 4.1914264147494933 ;
	setAttr -k on ".w0";
createNode joint -n "L_toe_joint" -p "L_ball_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.82453109738530361 -4.4408920985006262e-16 0 ;
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.999999999999659 14.862720463641367 2.2956377590176275e-15 ;
	setAttr ".bps" -type "matrix" -2.7382851561713188e-16 -0.13470272551672138 -0.99088605588047662 0
		 4.4582341902181973e-15 0.99088605588047685 -0.1347027255167213 0 1.0000000000000002 -4.5016089706382228e-15 3.9163190300912399e-16 0
		 -1.4719799999999981 0.28610299468534706 -1.1455164048053663 1;
	setAttr -l on ".radi" 0.52266187347837256;
	setAttr ".liw" yes;
createNode parentConstraint -n "L_foot_joint_group_parentConstraint1" -p "L_foot_joint_group";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_foot_outW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -2.2408129601860982 10.521284351974471 -1.1326858149769525 ;
	setAttr ".tg[0].tor" -type "double3" 0 180 0 ;
	setAttr ".lr" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".rst" -type "double3" 0 10.512837591974476 0.018175814976949756 ;
	setAttr ".rsrr" -type "double3" 0 -1.4033418597069752e-14 0 ;
	setAttr -k on ".w0";
createNode transform -n "R_foot_joint_group" -p "C_Robot_Joint";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode joint -n "R_heel_joint" -p "R_foot_joint_group";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.4719799999999998 -10.543653191974471 0.84582718502304999 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999986 -1.4124500153760504e-30 179.99999999999997 ;
	setAttr ".bps" -type "matrix" -1.0000000000000002 5.6655388976479806e-16 0 0 -1.4791141972893976e-31 -4.4408920985006271e-16 1.0000000000000002 0
		 5.6655388976479816e-16 1.0000000000000004 2.2204460492503131e-16 0 1.4719800000000001 -0.030815599999996834 0.86400299999999997 1;
	setAttr ".radi" 0.5;
	setAttr ".liw" yes;
createNode joint -n "R_ball_joint" -p "R_heel_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 -2.7707129999999993 -2.6194324487249787e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.5503432973262955e-14 -22.60415076645992 89.999999999999972 ;
	setAttr ".bps" -type "matrix" -4.2827036280758267e-18 0.38436220319192982 0.92318237459206642 0
		 1.0000000000000002 -5.9430946538042707e-16 2.2204460492503136e-16 0 6.6181044336558258e-16 0.92318237459206665 -0.38436220319192993 0
		 1.4719800000000001 -0.030815599999998222 -1.9067099999999999 1;
	setAttr ".radi" 0.5;
createNode joint -n "R_ball_2_joint" -p "R_ball_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.82452872304423597 -2.2204460492503131e-16 1.0002527283115015e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.999999999999673 14.862720463641351 2.7970519473258093e-14 ;
	setAttr ".bps" -type "matrix" -1.7389642113830516e-16 0.13470272551672136 0.99088605588047696 0
		 5.134589889103341e-15 -0.99088605588047718 0.13470272551672152 0 1.0000000000000002 5.1064646621228662e-15 -5.2792749090131376e-16 0
		 1.4719799999999998 0.28610300000000172 -1.1455200000000003 1;
	setAttr -l on ".radi" 0.52266187347837256;
	setAttr ".liw" yes;
createNode joint -n "R_ankle_Move_joint" -p "R_ball_2_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 1.2600649311991055 -0.3805874723954431 1.9984014443252818e-15 ;
	setAttr ".r" -type "double3" 87.354303887734957 -2.4971124468511952e-13 6.060016023056064e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 7.7414303028186273 -89.999999999999787 0 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 5.6149348911075171e-15 3.2124278567616376e-15 0
		 3.4919124233293006e-15 -0.046159700212272892 -0.99893407293790615 0 -5.5738310663009002e-15 0.99893407293790637 -0.046159700212273114 0
		 1.4719799999999996 0.83295600000000181 0.05179459999999958 1;
	setAttr ".radi" 0.52266187347837256;
createNode transform -n "R_ankle_ik_group" -p "R_ankle_Move_joint";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.4719799999999441 -0.41323748252554848 9.6711153772658847 ;
	setAttr ".r" -type "double3" 92.645696112264957 3.1287306203077701e-13 1.9871249795968647e-13 ;
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999956 ;
createNode ikHandle -n "R_ikHandle_ankle" -p "R_ankle_ik_group";
	setAttr ".t" -type "double3" 1.4719799999999994 -9.6798815919744747 0.033618785023049422 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "R_ikHandle_ankle_poleVectorConstraint1" -p "R_ikHandle_ankle";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_kneeW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 1.3322676295501878e-15 -2.9245899999999994 -4.1922661160534247 ;
	setAttr -k on ".w0";
createNode joint -n "R_toe_joint" -p "R_ball_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.82452872304423597 -2.2204460492503131e-16 1.0002527283115015e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.999999999999673 14.862720463641351 2.7970519473258093e-14 ;
	setAttr ".bps" -type "matrix" -1.7389642113830516e-16 0.13470272551672136 0.99088605588047696 0
		 5.134589889103341e-15 -0.99088605588047718 0.13470272551672152 0 1.0000000000000002 5.1064646621228662e-15 -5.2792749090131376e-16 0
		 1.4719799999999998 0.28610300000000172 -1.1455200000000003 1;
	setAttr -l on ".radi" 0.52266187347837256;
createNode parentConstraint -n "R_foot_joint_group_parentConstraint1" -p "R_foot_joint_group";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_foot_outW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 2.2408129601860982 10.521284351974469 -1.1326858149769528 ;
	setAttr ".tg[0].tor" -type "double3" 0 180 0 ;
	setAttr ".lr" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".rst" -type "double3" 0 10.512837591974476 0.018175814976949978 ;
	setAttr ".rsrr" -type "double3" 0 -1.4033418597069752e-14 0 ;
	setAttr -k on ".w0";
createNode transform -n "root_joint_group" -p "C_Robot_Joint";
createNode joint -n "root_joint" -p "root_joint_group";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.274286506692317e-16 8.1810495983390261 0.018175814976949076 1;
	setAttr ".radi" 0.53381885866986367;
	setAttr ".liw" yes;
createNode joint -n "waist_joint" -p "root_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -5.8112997967568226e-16 7.3913983732815742 0.045052099000275257 1;
	setAttr ".radi" 0.53381885866986367;
	setAttr ".liw" yes;
createNode joint -n "L_hip_joint" -p "waist_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -1.4719799999999992 -0.5232583732815721 -0.0015155990002750572 ;
	setAttr ".r" -type "double3" -0.067382767422798848 0.0032138615924964323 -1.8898330302597029e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -90.000000000000057 2.6522886105935077 -90 ;
	setAttr ".bps" -type "matrix" -5.6092466462764889e-05 -0.99892875510817969 -0.046274605040534877 0
		 -0.0011760508776855749 0.046274639009146412 -0.99892806281979385 0 0.99999930687874383 -1.6110489899356928e-06 -0.0011773866978268543 0
		 -1.4719799999999998 6.8681400000000021 0.0435365000000002 1;
	setAttr ".radi" 0.59970967938147857;
	setAttr ".liw" yes;
createNode joint -n "L_knee_joint" -p "L_hip_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 2.9277262989788788 -2.7512401057361302e-07 1.5543122344752192e-15 ;
	setAttr ".r" -type "double3" 2.7661146319182801e-29 1.4778022091513876e-28 -7.7582965762549427e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.4848083448933725e-17 -3.8825130388958945e-19 -5.2979829968473888 ;
	setAttr ".bps" -type "matrix" 5.2738449843662126e-05 -0.99893407437092874 0.046159639073022084 0
		 -0.0011762060566103947 -0.046159669172344348 -0.99893338190352399 0 0.99999930687874383 -1.6110489899356928e-06 -0.0011773866978268543 0
		 -1.472144223065676 3.9435500001322881 -0.091942603322939409 1;
	setAttr ".radi" 0.60934045587864838;
	setAttr ".liw" yes;
createNode joint -n "L_ankle_joint" -p "L_knee_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 3.1139132043535276 -9.3805318512885094e-08 1.1102230246251565e-15 ;
	setAttr ".r" -type "double3" 87.354303887735 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 92.645694386253879 -89.999999999999716 0 ;
	setAttr ".bps" -type "matrix" 0.99999930687874383 -1.611048994704563e-06 -0.001177386697826634 0
		 0.0011762060550216708 0.046159699264810845 0.99893338051298397 0 5.2738485271487133e-05 -0.99893407298038794 0.04615966916546773 0
		 -1.4719799999999952 0.83295600000000691 0.051794600000001162 1;
	setAttr ".radi" 0.52266187347837256;
	setAttr ".liw" yes;
createNode joint -n "L_foot_shadow" -p "L_ankle_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -89.996749043403611 -21.646410050115399 -89.933807546509584 ;
	setAttr ".bps" -type "matrix" 2.1397712432220245e-15 -0.41138875975320427 -0.91145997627362629 0
		 -7.0825506917615577e-17 0.91145997627362674 -0.41138875975320377 0 1 6.169855750436104e-16 1.9140229867351238e-15 0
		 -1.4719799999999961 0.83295600000000658 0.051794600000001169 1;
	setAttr ".radi" 0.5;
	setAttr ".liw" yes;
createNode joint -n "L_toe_shadow" -p "L_foot_shadow";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.316361819617758 3.677613769070831e-16 -4.0931021892716642e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 24.291726353724833 -89.999999999999901 0 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 -4.2825985813177425e-17 3.8470838859927352e-16 0
		 -2.5089115897672376e-16 0.99999999997823008 -6.5984478037628413e-06 0 -3.6676357209521754e-16 6.5984478040403971e-06 0.99999999997822964 0
		 -1.4719799999999974 0.29141954364098643 -1.1480165128763087 1;
	setAttr ".radi" 0.5;
	setAttr ".liw" yes;
createNode parentConstraint -n "L_foot_parentConstraint1" -p "L_foot_shadow";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_ball_2_jointW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.2600613694867755 0.38058796194418076 6.6613381477509392e-16 ;
	setAttr ".tg[0].tor" -type "double3" -2.174581508302521e-13 -1.9098676803809381e-13 
		-16.550674114116788 ;
	setAttr ".lr" -type "double3" 2.2581938238390979e-13 1.9083328088781107e-13 3.1805546814638938e-15 ;
	setAttr ".rst" -type "double3" -8.8817841970012523e-16 -4.163336342344337e-17 6.6613381477509392e-16 ;
	setAttr ".rsrr" -type "double3" 2.2581938238390979e-13 1.9083328088781107e-13 3.1805546814638938e-15 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector7" -p "L_knee_joint";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".hd" yes;
createNode joint -n "R_hip_joint" -p "waist_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 1.4719800000000003 -0.52325837328157032 -0.0015155990002761258 ;
	setAttr ".r" -type "double3" -1.7532077727446706e-10 -3.6758496988365057e-09 0.00040212829370891653 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999915 -2.6522886105935037 90.000000000000057 ;
	setAttr ".bps" -type "matrix" -8.8817841970012523e-16 0.99892875515336343 0.04627463806180835 0
		 -1.4988010832439607e-15 -0.046274638061808204 0.99892875515336343 0 0.99999999999999978 8.3266726846886701e-16 1.7763568394002505e-15 0
		 1.4719799999999996 6.8681400000000039 0.043536499999999131 1;
	setAttr ".radi" 0.59970967938147857;
	setAttr ".liw" yes;
createNode joint -n "R_knee_joint" -p "R_hip_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -2.9277262989788779 2.7512401068463532e-07 -2.6645352591003757e-15 ;
	setAttr ".r" -type "double3" -1.3546405873824703e-13 1.5818539199316676e-09 169.40210468488513 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 8.8292849177711304e-13 -4.0856047972266156e-14 -174.70124590839976 ;
	setAttr ".bps" -type "matrix" -7.4599147727668911e-16 0.99893407432844639 -0.046159670119807358 0
		 -1.5744085582163306e-15 0.046159670119807497 0.99893407432844639 0 0.99999999999999978 8.3266726846886701e-16 1.7763568394002505e-15 0
		 1.4719799999999996 3.9435500000000054 -0.091942700000000641 1;
	setAttr ".radi" 0.60934045587864838;
	setAttr ".liw" yes;
createNode joint -n "R_ankle_joint" -p "R_knee_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -3.1139132042863658 -2.0453320433488688e-05 -2.2991299618616715e-15 ;
	setAttr ".r" -type "double3" 3.0116347161097921e-14 8.5208975092017026e-14 -38.395104168963762 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 0.00037803516307402958 ;
	setAttr ".bps" -type "matrix" 3.9316671470822691e-16 0.75424222955284248 -0.65659626800580928 0
		 -1.6972582381004433e-15 0.65659626800580939 0.75424222955284248 0 0.99999999999999978 8.3266726846886701e-16 1.7763568394002505e-15 0
		 1.4719799999999994 0.83295600000000247 0.05179459999999976 1;
	setAttr ".radi" 0.52266187347837256;
	setAttr ".liw" yes;
createNode ikEffector -n "effector8" -p "R_knee_joint";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
	setAttr ".ra" -type "double3" 0 0 0.00037803516307402958 ;
	setAttr ".hd" yes;
createNode joint -n "R_foot_shadow" -p "R_knee_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -2.6876658675485797e-13 1.824970933637281e-13 -111.64565393230781 ;
	setAttr ".bps" -type "matrix" 1.7107631128164226e-15 -0.41137673172140288 -0.91146540504739759 0
		 -2.0122353289215498e-16 0.9114654050473977 -0.41137673172140315 0 1.0000000000000002 6.2315696715126896e-16 1.3249314250060136e-15 0
		 1.4719800000000001 0.83295505161855177 0.051774074772856268 1;
	setAttr ".radi" 0.5;
	setAttr ".liw" yes;
createNode joint -n "R_toe_shadow" -p "R_foot_shadow";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 24.291726353724833 -89.999999999999901 0 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 -3.6624664906129141e-17 -2.043813912271624e-16 0
		 -1.9329677863781224e-16 0.9999999999782333 6.5979582848721408e-06 0 7.7795373803655998e-17 -6.5979582851080631e-06 0.99999999997823363 0
		 1.4719799999999985 0.29143442850136037 -1.1480441843339735 1;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "R_toe_parentConstraint1" -p "R_toe_shadow";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_toe_jointW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.0017573536930954869 -0.0056062584615426125 
		-1.9984014443252818e-15 ;
	setAttr ".tg[0].tor" -type "double3" -172.258947760392 -89.999999999999702 0 ;
	setAttr ".lr" -type "double3" -1.7811106216195807e-13 -3.6178809501647448e-13 3.6099295634610971e-13 ;
	setAttr ".rst" -type "double3" 1.316361819617758 3.3306690738754696e-16 -3.7747582837255322e-15 ;
	setAttr ".rsrr" -type "double3" -2.2263882770245801e-14 -3.7451031374232902e-13 
		3.6258323368684107e-13 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_foot_parentConstraint1" -p "R_foot_shadow";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_ball_2_jointW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.2600651843847028 -0.38058935480893319 1.9984014443252818e-15 ;
	setAttr ".tg[0].tor" -type "double3" 2.7044859604896799e-13 -2.2846472526572076e-15 
		163.44932588588318 ;
	setAttr ".lr" -type "double3" -2.6546851481006077e-13 -9.6544851512741062e-14 -1.844721715248838e-13 ;
	setAttr ".rst" -type "double3" -3.1139132042863662 -2.0453320433586053e-05 -2.4424906541753444e-15 ;
	setAttr ".rsrr" -type "double3" -2.6546851481006087e-13 -9.6544851512740683e-14 
		-1.9083328088780883e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "waist_joint_group_parentConstraint1" -p "waist_joint";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "waist_animW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 3.5370132900645061e-16 0.78965122505745011 -0.026876284023326175 ;
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
	setAttr ".tg[0].tot" -type "double3" -1.9944219151221553e-16 0.78965122505745367 
		0.026876284023327007 ;
	setAttr ".tg[0].tor" -type "double3" 0 180 0 ;
	setAttr ".cpim" -type "matrix" 0.99999999999999978 0 0 0 0 0.99999999999999978 0 0
		 0 0 1 0 2.274286506692317e-16 -8.1810495983390208 -0.018175814976949076 1;
	setAttr ".lr" -type "double3" 0 -1.4033418597069752e-14 0 ;
	setAttr ".rsrr" -type "double3" 0 -1.4033418597069752e-14 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "waist_joint_parentConstraint1" -p "waist_joint";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "waist_animW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.5096774197402095e-16 5.3290705182007514e-15 
		8.2572837456496018e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 180 0 ;
	setAttr ".lr" -type "double3" 0 -1.4033418597069752e-14 0 ;
	setAttr ".rst" -type "double3" -3.5370132900645051e-16 -0.78965122505745011 0.026876284023326182 ;
	setAttr ".rsrr" -type "double3" 0 -1.4033418597069752e-14 0 ;
	setAttr -k on ".w0";
createNode joint -n "torso_joint" -p "root_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.98182266518913 0.24792472314992087 89.908320333076631 ;
	setAttr ".bps" -type "matrix" -0.99999867169251477 -0.0015987384955499662 -0.00031725136626387606 0
		 -0.0016000963820614771 0.99998935793862997 0.004327089212760398 0 0.00031033010595724752 0.0043275910978187691 -0.99999058778096273 0
		 0.0011407931217590596 9.1374351045348714 -0.021260825146649523 1;
	setAttr ".radi" 0.53381885866986367;
createNode joint -n "chest_joint" -p "torso_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -2.317374970090987e-18 ;
	setAttr ".bps" -type "matrix" 9.4269091908657024e-16 1.0000000000000004 -7.5460471204991109e-17 0
		 -1.0000000000000002 3.8987486606105112e-16 -2.1120258320017626e-16 0 -2.1000996081044221e-16 7.6327832942979512e-17 1.0000000000000007 0
		 -8.4784609888366447e-17 10.449564173868321 -0.018175814976949548 1;
	setAttr ".radi" 0.55679449394646829;
createNode joint -n "L_clavicle_joint" -p "chest_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.8249000307521008e-30 0 1.3030425760022063e-30 ;
	setAttr ".bps" -type "matrix" -0.99995325883512609 0.0096685130713982173 -5.3167050447818619e-16 0
		 0.0096685129379945889 0.99995324503795202 0.00016611934979871677 0 1.6061271054724516e-06 0.00016611158518679473 -0.99999998620218156 0
		 1.4528466920724898 12.978720392534807 -0.018175814976947972 1;
	setAttr ".radi" 0.61547472664236103;
createNode joint -n "L_shoulder_joint" -p "L_clavicle_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 1.2445674884880873e-20 -3.8948884955127414e-18 ;
	setAttr ".bps" -type "matrix" -0.99980566703278828 0.0096670860114202069 0.017180675690145693 0
		 -0.017117319501742768 0.0065988191016375869 -0.99983171231939827 0 -0.0097788313308612203 -0.99993149917107471 -0.0064320621336331502 0
		 4.3538966178894096 12.950670242309574 -0.068027500739353181 1;
	setAttr ".radi" 0.5888260834406347;
createNode joint -n "L_elbow_joint" -p "L_shoulder_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 4.9696166897867449e-17 3.1060104311167164e-18 -1.9878466759146985e-16 ;
	setAttr ".bps" -type "matrix" -0.99998877981647083 0.00016216523014222876 -0.0047343366594262241 0
		 0.0046916448112532972 -0.10423414028522671 -0.9945417198227362 0 -0.00065475959839811013 -0.99455277270813514 0.10423220993738208 0
		 6.9190889464876211 12.950254252637823 -0.055882880394721265 1;
	setAttr ".radi" 0.59065141099091611;
createNode joint -n "L_hand_joint" -p "L_elbow_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -6.2120208622334312e-18 4.9696166897867449e-17 ;
	setAttr ".bps" -type "matrix" -0.99990650512154777 -0.00088173540775351826 -0.013645642465037829 0
		 0.013661299068293697 -0.021245673631520759 -0.99968094423156373 0 0.0005915432186799352 -0.99977389638588554 0.021255732920951384 0
		 8.0803138384933639 12.951278241479191 -0.040035739070358567 1;
	setAttr ".radi" 0.5594721681939655;
createNode joint -n "L_claw_2_joint" -p "L_hand_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.987846675914698e-16 6.2120208622334312e-18 9.9392333795734899e-17 ;
	setAttr ".bps" -type "matrix" 0.95658675438649365 -0.29044352618105884 0.024173113821511133 0
		 -0.29144749129975439 -0.95339688079932872 0.078056053558917676 0 0.00037569588120620799 -0.081712580314325919 -0.99665586491575975 0
		 11.494945806946166 11.914511063823609 0.046252605247058279 1;
	setAttr ".radi" 0.5594721681939655;
createNode parentConstraint -n "L_claw_2_joint_parentConstraint1" -p "L_claw_2_joint";
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
	setAttr ".tg[0].tot" -type "double3" 8.8817841970012523e-15 1.7763568394002505e-14 
		4.7808978997920804e-15 ;
	setAttr ".tg[0].tor" -type "double3" 175.52185241409768 -1.3851523218565167 -16.889594531521677 ;
	setAttr ".lr" -type "double3" -93.626723991686902 -163.05476328920153 0.29508108226206642 ;
	setAttr ".rst" -type "double3" -3.4145760234172684 -0.017585687905879957 1.0403867852359525 ;
	setAttr ".rsrr" -type "double3" -93.626723991686902 -163.05476328920153 0.29508108226206642 ;
	setAttr -k on ".w0";
createNode joint -n "L_claw_1_joint" -p "L_hand_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.987846675914698e-16 6.2120208622334312e-18 9.9392333795734899e-17 ;
	setAttr ".bps" -type "matrix" 0.95162329983167815 0.30627477251083679 -0.024675067191485243 0
		 0.30726691201394124 -0.94845139154443336 0.077633772669154083 0 0.00037416424918658577 -0.081459938625466938 -0.99667654652863746 0
		 11.472440159266693 14.043015610043666 -0.12799170326532949 1;
	setAttr ".radi" 0.5594721681939655;
createNode parentConstraint -n "L_claw_1_joint_parentConstraint1" -p "L_claw_1_joint";
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
	setAttr ".tg[0].tot" -type "double3" 3.5527136788005009e-15 2.4868995751603507e-14 
		3.6637359812630166e-15 ;
	setAttr ".tg[0].tor" -type "double3" 175.54607336072735 1.4139207137446577 17.840488264769458 ;
	setAttr ".lr" -type "double3" -93.62903558966741 162.17160780612585 -1.8757678360256067 ;
	setAttr ".rst" -type "double3" -3.3915715821890284 0.11107405765888582 -1.0913535019615441 ;
	setAttr ".rsrr" -type "double3" -93.62903558966741 162.17160780612585 -1.8757678360256067 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_hand_joint_parentConstraint1" -p "L_hand_joint";
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
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-15 2.1316282072803006e-14 
		2.2135071553464059e-15 ;
	setAttr ".tg[0].tor" -type "double3" -88.781931061373115 0.78186198751877456 -179.94947557180799 ;
	setAttr ".lr" -type "double3" -4.765508877298994 -0.0062633056914739235 0.51405669747557425 ;
	setAttr ".rst" -type "double3" -1.1612867224960643 -0.010419323044271955 -0.00012695152391906106 ;
	setAttr ".rsrr" -type "double3" -4.7655088772990197 -0.00626330569147375 0.51405669747557448 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_elbow_joint_parentConstraint1" -p "L_elbow_joint";
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
	setAttr ".tg[0].tot" -type "double3" 8.8817841970012523e-16 1.9539925233402755e-14 
		2.2135071553464059e-15 ;
	setAttr ".tg[0].tor" -type "double3" -84.016999999999953 0.27125852271447953 179.99070851255834 ;
	setAttr ".lr" -type "double3" 6.3489368043754828 -0.55274204938427607 1.252170269704397 ;
	setAttr ".rst" -type "double3" -2.5644891957859413 -0.056054538267271567 -0.02474673688911011 ;
	setAttr ".rsrr" -type "double3" 6.3489368043754828 -0.55274204938428217 1.2521702697043973 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_shoulder_joint_parentConstraint1" -p "L_shoulder_joint";
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
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-15 1.0658141036401503e-14 
		1.4016565685892601e-15 ;
	setAttr ".tg[0].tor" -type "double3" -90.368586958678975 -0.98442864016791198 179.44602637569105 ;
	setAttr ".lr" -type "double3" 89.640932384046295 0.98442862658361197 0.00016354873906421333 ;
	setAttr ".rst" -type "double3" -2.9011855306081342 -8.2813296202743913e-06 0.049851685074561974 ;
	setAttr ".rsrr" -type "double3" 89.640932384046337 0.98442862658363006 0.00016354873906461096 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_clavicle_joint_parentConstraint1" -p "L_clavicle_joint";
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
	setAttr ".tg[0].tot" -type "double3" -8.8817841970012523e-16 1.7763568394002505e-15 
		-0.004166570679941136 ;
	setAttr ".tg[0].tor" -type "double3" 179.99048206231731 2.3470340980794224e-14 179.44602637569074 ;
	setAttr ".lr" -type "double3" 179.99048206231731 -7.765026077791789e-19 89.446026375690749 ;
	setAttr ".rst" -type "double3" 2.5291562186664862 -1.4528466920724885 -8.0491169285323849e-16 ;
	setAttr ".rsrr" -type "double3" 179.99048206231731 -7.765026077791788e-19 89.446026375690735 ;
	setAttr -k on ".w0";
createNode joint -n "R_clavicle_joint" -p "chest_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.8249000307521008e-30 0 1.3030425760022063e-30 ;
	setAttr ".bps" -type "matrix" -0.99995325883512609 -0.0096685130714007639 -5.3524298235457098e-16 0
		 0.0096685129379958136 -0.99995324503795202 -0.000166119349417094 0 1.6061271007167932e-06 -0.00016611158480520012 0.99999998620218145 0
		 -1.4528499999999998 12.9787 -0.018175799999999485 1;
	setAttr ".radi" 0.61547472664236103;
createNode joint -n "R_shoulder_joint" -p "R_clavicle_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 6.3548055400746523e-21 3.9288911081265987e-18 ;
	setAttr ".bps" -type "matrix" -0.99980566703278828 -0.0096670860114228749 -0.017180675690147151 0
		 -0.017117319501744228 -0.006598819101637371 0.9998317123193976 0 -0.0097788313308624503 0.99993149917107438 0.0064320621336328224 0
		 -4.3539000000000003 12.950700000000008 -0.068027500000002128 1;
	setAttr ".radi" 0.5888260834406347;
createNode joint -n "R_elbow_joint" -p "R_shoulder_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.5902773407317576e-15 -4.1154638212296473e-17 -1.9878466759146975e-16 ;
	setAttr ".bps" -type "matrix" -0.99998877981647083 -0.00016216523014215938 0.0047343366594268122 0
		 0.0047294247656056582 0.02274044820686252 0.9997302158866348 0 -0.0002697824181363221 0.99974138941917878 -0.022739426106604566 0
		 -6.9190899999999989 12.950299999999986 -0.055882900000002622 1;
	setAttr ".radi" 0.59065141099091611;
createNode joint -n "R_hand_joint" -p "R_elbow_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.987846675914698e-16 0 0 ;
	setAttr ".bps" -type "matrix" -0.99990612408113178 0.00015115248526239216 0.013701101341687357 0
		 0.013666963790084549 -0.060394096631828362 0.99808104239725237 0 0.00097832806844451469 0.99817459907821371 0.060386361284969867 0
		 -8.080309999999999 12.950399999999998 -0.039971300000003089 1;
	setAttr ".radi" 0.5594721681939655;
createNode joint -n "R_claw_2_joint" -p "R_hand_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.975693351829395e-16 0 -9.9392333795734899e-17 ;
	setAttr ".bps" -type "matrix" 0.95669909334599756 0.29107845299057877 -0.00042307866746268269 0
		 -0.29107847904145689 0.95669917896845336 -1.3877787807814457e-16 0 0.00040475901380065233 0.00012314909503977067 0.99999991050221659 0
		 -11.495300000000004 11.911399999999999 -0.038461100000005854 1;
	setAttr ".radi" 0.5594721681939655;
createNode parentConstraint -n "R_claw_2_joint_parentConstraint1" -p "R_claw_2_joint";
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
	setAttr ".tg[0].tot" -type "double3" -0.00035419305385531175 -0.0031110638235762877 
		-0.084713705247059276 ;
	setAttr ".tg[0].tor" -type "double3" -2.9763136407876335e-14 0.024240622770808462 
		16.92253402007707 ;
	setAttr ".lr" -type "double3" -93.626723991686745 -163.05476328920156 0.29508108226176111 ;
	setAttr ".rst" -type "double3" 3.4145330586468852 0.017584223717194813 -1.0403531935299046 ;
	setAttr ".rsrr" -type "double3" -93.626723991686745 -163.05476328920153 0.29508108226178653 ;
	setAttr -k on ".w0";
createNode joint -n "R_claw_1_joint" -p "R_hand_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.975693351829395e-16 0 -9.9392333795734899e-17 ;
	setAttr ".bps" -type "matrix" 0.95150469301091611 -0.3076339377847821 -0.00042367585730071836 0
		 0.30763396539512167 0.95150477840906 1.7347234759768071e-16 0 0.0004031296027180923 -0.00013033708402407362 0.99999991024937984 0
		 -11.472 14.046999999999992 -0.038461100000004564 1;
	setAttr ".radi" 0.5594721681939655;
createNode parentConstraint -n "R_claw_1_joint_parentConstraint1" -p "R_claw_1_joint";
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
	setAttr ".tg[0].tot" -type "double3" 0.00044015926668627969 0.0039843899563649643 
		0.089530603265327427 ;
	setAttr ".tg[0].tor" -type "double3" 4.4754607462807549e-14 0.024274839231101384 
		-17.916699966775283 ;
	setAttr ".lr" -type "double3" -93.629035589667311 162.17160780612582 -1.8757678360257086 ;
	setAttr ".rst" -type "double3" 3.3915580472033202 -0.11107496879342937 1.091371275305514 ;
	setAttr ".rsrr" -type "double3" -93.629035589667311 162.17160780612585 -1.8757678360257595 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_hand_joint_parentConstraint1" -p "R_hand_joint";
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
	setAttr ".tg[0].tot" -type "double3" 3.8384933596091741e-06 -0.00087824147916748529 
		6.4439070357268091e-05 ;
	setAttr ".tg[0].tor" -type "double3" 86.537684764103844 -0.78503984416941031 179.99133878751817 ;
	setAttr ".lr" -type "double3" -4.765508877299002 -0.0062633056914030713 0.51405669747574811 ;
	setAttr ".rst" -type "double3" 1.1612822855531491 0.010417678721604706 5.1430226097437526e-05 ;
	setAttr ".rsrr" -type "double3" -4.7655088772990402 -0.0062633056914279473 0.51405669747574867 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_elbow_joint_parentConstraint1" -p "R_elbow_joint";
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
	setAttr ".tg[0].tot" -type "double3" -1.0535123777799527e-06 4.5747362198866881e-05 
		-1.9605278150924832e-08 ;
	setAttr ".tg[0].tor" -type "double3" 91.303000057810465 -0.27125852271453449 -179.99070851255843 ;
	setAttr ".lr" -type "double3" 1.6689368621859006 -0.55274204938449223 1.2521702697044772 ;
	setAttr ".rst" -type "double3" 2.5644867134162519 0.05605437255375155 0.024762702563725369 ;
	setAttr ".rsrr" -type "double3" 1.6689368621859202 -0.55274204938447968 1.2521702697044774 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_shoulder_joint_parentConstraint1" -p "R_shoulder_joint";
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
	setAttr ".tg[0].tot" -type "double3" -3.3821105951403752e-06 2.9757690441556406e-05 
		7.3935527145074786e-10 ;
	setAttr ".tg[0].tor" -type "double3" 89.631413041321039 0.98442864016794573 -179.44602637569093 ;
	setAttr ".lr" -type "double3" 89.640932384024438 0.98442862658363528 0.00016354873871439999 ;
	setAttr ".rst" -type "double3" 2.9011851199096412 -4.1867265750283877e-05 -0.04985170764280774 ;
	setAttr ".rsrr" -type "double3" 89.640932384024438 0.98442862658361674 0.00016354873868915061 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_clavicle_joint_parentConstraint1" -p "R_clavicle_joint";
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
	setAttr ".tg[0].tot" -type "double3" -3.3079275094660687e-06 -2.0392534805679929e-05 
		0.0084549956063402661 ;
	setAttr ".tg[0].tor" -type "double3" -0.0095179376608237991 2.3676230105613064e-14 
		-179.44602637569062 ;
	setAttr ".lr" -type "double3" -0.0095179376608237973 0 90.553973624309407 ;
	setAttr ".rst" -type "double3" 2.5291358261316788 1.4528500000000006 1.4976950166167846e-08 ;
	setAttr ".rsrr" -type "double3" -0.0095179376608237973 0 90.553973624309407 ;
	setAttr -k on ".w0";
createNode joint -n "head_joint" -p "chest_joint";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.8249000307521008e-30 0 1.3030425760022063e-30 ;
	setAttr ".bps" -type "matrix" -1.0000000000000002 -5.2823515689619846e-17 -1.5441247785863536e-15 0
		 4.9852060583180802e-16 1.0000000000000004 1.8474805019152983e-16 0 1.5437453078259833e-15 1.8561541192951838e-16 -1.0000000000000007 0
		 1.591649085629021e-15 14.132338326454146 -0.018175814976947861 1;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "head_joint_parentConstraint1" -p "head_joint";
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
	setAttr ".tg[0].tot" -type "double3" 6.2952245087851975e-16 -0.2237152039835717 
		9.4368957093138306e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 179.99999999999994 0 ;
	setAttr ".lr" -type "double3" 0 179.99999999999994 -90 ;
	setAttr ".rst" -type "double3" 3.6827741525858251 1.5833905891091865e-16 3.4694469519536142e-17 ;
	setAttr ".rsrr" -type "double3" 0 179.99999999999994 -90 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "chest_joint_parentConstraint1" -p "chest_joint";
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
	setAttr ".tg[0].tot" -type "double3" 1.6192231355096379e-16 1.7763568394002505e-15 
		2.1163626406917047e-16 ;
	setAttr ".tg[0].tor" -type "double3" -2.3571281427102532e-14 -1.0535587382347892e-14 
		89.999999999999972 ;
	setAttr ".lr" -type "double3" 0.017780772112904006 -179.75204652068518 -89.908398134871689 ;
	setAttr ".rst" -type "double3" -0.00095793837152943068 1.3121302800685388 0.0025930229242777728 ;
	setAttr ".rsrr" -type "double3" 0.017780772112904006 -179.75204652068518 -89.908398134871689 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "torso_joint_parentConstraint1" -p "torso_joint";
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
	setAttr ".tg[0].tot" -type "double3" -7.7130142550618785e-16 1.7763568394002505e-15 
		-4.0939474033052647e-16 ;
	setAttr ".tg[0].tor" -type "double3" 179.75207526437339 0.018177164636582321 -179.90839898802864 ;
	setAttr ".lr" -type "double3" 180 -5.2710744918690479e-17 90.000000000000014 ;
	setAttr ".rst" -type "double3" -0.0011407931217588337 0.95638550619585061 0.0030850101697004473 ;
	setAttr ".rsrr" -type "double3" 180 -5.2710744918690479e-17 90.000000000000014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "root_joint_parentConstraint1" -p "root_joint";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "root_animW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 9.8607613152626476e-32 0.53627884877878262 
		1.3877787807814457e-17 ;
	setAttr ".tg[0].tor" -type "double3" 0 180 0 ;
	setAttr ".lr" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".rst" -type "double3" -2.274286506692317e-16 8.1810495983390261 0.018175814976949076 ;
	setAttr ".rsrr" -type "double3" 0 -1.4033418597069752e-14 0 ;
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
	setAttr -s 4 ".iog[0].og";
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
	setAttr -s 4 ".iog[0].og";
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
	setAttr -s 26 ".vt[0:25]"  5.3598237 11.94134521 -0.92149538 5.58675718 12.95067024 -1.1473937
		 5.3598237 13.95999527 -0.92149538 4.35154581 11.71261978 -1.15022063 4.35389662 12.95067024 -1.66302884
		 4.35154581 14.1887207 -1.15022075 3.33809924 11.93825626 -0.92458373 3.11066294 12.95067024 -1.15306735
		 3.33809924 13.96308422 -0.92458373 3.11066318 11.70977306 0.087829515 2.59499693 12.95067024 0.087829515
		 3.11066222 14.19156742 0.087829545 3.33809924 11.93825626 1.10024285 3.11066294 12.95067024 1.32872653
		 3.33809924 13.96308422 1.10024285 4.35154581 11.71261978 1.32587981 4.35389662 12.95067024 1.8386879
		 4.35154581 14.1887207 1.32587993 5.3598237 11.94134521 1.097154379 5.58675718 12.95067024 1.32305288
		 5.3598237 13.95999527 1.097154379 5.58675766 11.71544647 0.087829545 6.096750736 12.95067024 0.087829545
		 5.58675718 14.18589401 0.087829545 4.35389662 14.70152855 0.087829545 4.35389662 11.19981194 0.087829515;
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
	setAttr -s 4 ".iog[0].og";
	setAttr -av ".iog[0].og[3].gid";
	setAttr -av ".iog[0].og[4].gid";
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
	setAttr -s 4 ".iog[0].og";
	setAttr -av ".iog[0].og[3].gid";
	setAttr -av ".iog[0].og[4].gid";
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
	setAttr -s 26 ".vt[0:25]"  -5.3598237 11.94134521 -0.92149538 -5.58675718 12.95067024 -1.1473937
		 -5.3598237 13.95999527 -0.92149538 -4.35154581 11.71261978 -1.15022063 -4.35389662 12.95067024 -1.66302884
		 -4.35154581 14.1887207 -1.15022075 -3.33809924 11.93825626 -0.92458373 -3.11066294 12.95067024 -1.15306735
		 -3.33809924 13.96308422 -0.92458373 -3.11066318 11.70977306 0.087829515 -2.59499693 12.95067024 0.087829515
		 -3.11066222 14.19156742 0.087829545 -3.33809924 11.93825626 1.10024285 -3.11066294 12.95067024 1.32872653
		 -3.33809924 13.96308422 1.10024285 -4.35154581 11.71261978 1.32587981 -4.35389662 12.95067024 1.8386879
		 -4.35154581 14.1887207 1.32587993 -5.3598237 11.94134521 1.097154379 -5.58675718 12.95067024 1.32305288
		 -5.3598237 13.95999527 1.097154379 -5.58675766 11.71544647 0.087829545 -6.096750736 12.95067024 0.087829545
		 -5.58675718 14.18589401 0.087829545 -4.35389662 14.70152855 0.087829545 -4.35389662 11.19981194 0.087829515;
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
	setAttr ".vcs" 2;
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
	setAttr -s 30 ".vt[0:29]"  0.87120944 13.90341187 -0.77832162 1.313379e-16 13.90341187 -1.097007871
		 -0.87120944 13.90341187 -0.77832162 0.87120944 14.99579048 -0.77832162 -0.87120944 14.99579048 -0.77832162
		 0.87120944 16.016551971 -0.77832174 1.313379e-16 16.016551971 -1.097007871 -0.87120944 16.016551971 -0.77832174
		 1.072455287 16.016551971 -0.024552625 -1.2407691e-24 16.44378662 -0.024552625 -1.072455287 16.016551971 -0.024552625
		 0.87120944 16.016551971 0.72921628 -1.313379e-16 16.016551971 1.047902703 -0.87120944 16.016551971 0.72921628
		 0.87120944 14.99579048 0.72921628 -1.313379e-16 14.99579048 1.047902703 -0.87120944 14.99579048 0.72921628
		 0.87120944 13.90341187 0.72921628 -1.313379e-16 13.90341187 1.047902703 -0.87120944 13.90341187 0.72921628
		 1.072455287 13.90341187 -0.024552625 -1.2407691e-24 13.90341187 -0.024552625 -1.072455287 13.90341187 -0.024552625
		 -1.072455287 14.99579048 -0.024552625 1.072455287 14.99579048 -0.024552625 3.3261115e-16 15.10679722 -2.74052858
		 1.2679424e-16 15.34191036 -1.059906125 1.2679424e-16 14.77736855 -1.059906125 -0.23275079 15.069206238 -0.97476655
		 0.23275079 15.069206238 -0.97476655;
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
	setAttr ".vcs" 2;
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
	setAttr -s 4 ".iog[0].og";
	setAttr -av ".iog[0].og[11].gid";
	setAttr -av ".iog[0].og[12].gid";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5868193656206131 0.42623411118984222 ;
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
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "bottom_geoShape" -p "bottom_geo";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
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
	setAttr ".r" -type "double3" 0 180 0 ;
createNode transform -n "world_anim" -p "C_Robot_Anim";
	addAttr -ci true -sn "GlobalScale" -ln "GlobalScale" -at "double";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 0 0.43717832093266518 ;
	setAttr ".sp" -type "double3" 0 0 0.43717832093266518 ;
	setAttr -l on -k on ".GlobalScale" 1;
createNode nurbsCurve -n "world_animShape" -p "world_anim";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 15 ".cp[0:14]" -type "double3" -1.9177778626699151 0 0.94532623459607379 
		0 0 0 1.9177778626699096 0 0.94532623459607379 1.0917528937257943 0 0 0 0 0 1.0917528937257952 
		0 0 1.9177778626699122 0 -0.94532623459607379 0 0 0 -1.917777862669908 0 -0.94532623459607379 
		-1.0917528937257943 0 0 0 0 0 -1.0917528937257952 0 0 0 0 0 0 0 0 0 0 0;
createNode transform -n "root_anim" -p "world_anim";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 2.2520275530589007e-16 7.6447707495602426 -0.01817581497694909 ;
	setAttr ".sp" -type "double3" 2.2520275530589007e-16 7.6447707495602426 -0.01817581497694909 ;
createNode nurbsCurve -n "root_animShape" -p "root_anim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 12 2 no 3
		17 -2 -1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0.72173116425917161 7.6447707495602426 -2.8017388314082412
		-8.0793348220012671e-16 7.6447707495602435 -3.8994542989033141
		-0.72173116425916928 7.6447707495602426 -2.801738831408243
		-2.5297389132980581 7.6447707495602426 -1.9588150569401324
		-3.6445221386653235 7.6447707495602426 -0.018175814976950366
		-2.529738913298059 7.6447707495602426 1.9224634269862324
		-0.72173116425916994 7.6447707495602426 2.7653872014543444
		-2.0752602141325935e-15 7.6447707495602417 3.8631026689494137
		0.72173116425916928 7.6447707495602426 2.7653872014543461
		2.5297389132980581 7.6447707495602426 1.9224634269862351
		3.6445221386653248 7.6447707495602426 -0.018175814976945426
		2.5297389132980599 7.6447707495602426 -1.9588150569401284
		0.72173116425917161 7.6447707495602426 -2.8017388314082412
		-8.0793348220012671e-16 7.6447707495602435 -3.8994542989033141
		-0.72173116425916928 7.6447707495602426 -2.801738831408243
		;
createNode transform -n "torso_anim" -p "root_anim";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0.0011407931217598298 9.1374351045348732 -0.021260825146649114 ;
	setAttr ".sp" -type "double3" 0.0011407931217598298 9.1374351045348732 -0.021260825146649114 ;
createNode nurbsCurve -n "torso_animShape" -p "torso_anim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.2724620000105369 9.1374351045348767 -2.2925820320354222
		0.0011407931217594634 9.1374351045348767 -3.2333940804343815
		-2.2701804137670147 9.1374351045348767 -2.2925820320354231
		-3.2109924621659722 9.1374351045348767 -0.021260825146650016
		-2.2701804137670161 9.1374351045348767 2.2500603817421245
		0.0011407931217588619 9.1374351045348767 3.1908724301410838
		2.2724620000105333 9.1374351045348767 2.2500603817421263
		3.2132740484094917 9.1374351045348767 -0.021260825146647368
		2.2724620000105369 9.1374351045348767 -2.2925820320354222
		0.0011407931217594634 9.1374351045348767 -3.2333940804343815
		-2.2701804137670147 9.1374351045348767 -2.2925820320354231
		;
createNode transform -n "chest_anim" -p "torso_anim";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -5.2475385148298415e-16 10.449564173868319 -0.018175814976949766 ;
	setAttr ".sp" -type "double3" -5.2475385148298415e-16 10.449564173868319 -0.018175814976949766 ;
createNode nurbsCurve -n "chest_animShape" -p "chest_anim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.3012109928629734 10.449564173868321 -2.4297970578139472
		-1.0573872692299697e-15 10.449564173868321 -3.4287232839040929
		-3.3012109928629703 10.449564173868321 -2.4297970578139481
		-4.6686173583619643 10.449564173868321 -0.018175814976950738
		-3.3012109928629716 10.449564173868321 2.3934454278600481
		-1.9314993748463224e-15 10.449564173868321 3.3923716539501951
		3.301210992862968 10.449564173868321 2.3934454278600494
		4.6686173583619626 10.449564173868321 -0.018175814976947962
		3.3012109928629734 10.449564173868321 -2.4297970578139472
		-1.0573872692299697e-15 10.449564173868321 -3.4287232839040929
		-3.3012109928629703 10.449564173868321 -2.4297970578139481
		;
createNode transform -n "L_clavicle_anim" -p "chest_anim";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 1.4528466920724903 12.978720392534806 -0.014009244297008141 ;
	setAttr ".sp" -type "double3" 1.4528466920724903 12.978720392534806 -0.014009244297008141 ;
createNode nurbsCurve -n "L_clavicle_animShape" -p "L_clavicle_anim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.59251524726289539 12.277986028239079 2.9746906574796799
		1.4528466920724912 12.40856774353901 2.9746906574796799
		2.3131781368820836 12.277986028239079 2.9746906574796799
		2.1356327509166193 12.978720392534806 2.9746906574796799
		2.3131781368820845 13.679454756830532 2.9746906574796799
		1.4528466920724912 13.548873041530602 2.9746906574796799
		0.59251524726289728 13.679454756830532 2.9746906574796799
		0.77006063322836105 12.978720392534806 2.9746906574796799
		0.59251524726289539 12.277986028239079 2.9746906574796799
		1.4528466920724912 12.40856774353901 2.9746906574796799
		2.3131781368820836 12.277986028239079 2.9746906574796799
		;
createNode transform -n "L_shoulder_anim" -p "L_clavicle_anim";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 4.3538966178894052 12.950670242309567 -0.068027500739356039 ;
	setAttr ".sp" -type "double3" 4.3538966178894052 12.950670242309567 -0.068027500739356039 ;
createNode nurbsCurve -n "L_shoulder_animShape" -p "L_shoulder_anim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.3538966178894176 14.680413973880789 1.6617162308318638
		4.3538966178894052 12.950670242309567 2.3781995438785115
		4.3538966178893928 11.220926510738344 1.6617162308318651
		4.3538966178893874 10.5044431976917 -0.06802750073935504
		4.3538966178893928 11.220926510738344 -1.7977712323105761
		4.3538966178894052 12.950670242309567 -2.514254545357224
		4.3538966178894176 14.680413973880789 -1.7977712323105774
		4.3538966178894229 15.396897286927434 -0.068027500739357594
		4.3538966178894176 14.680413973880789 1.6617162308318638
		4.3538966178894052 12.950670242309567 2.3781995438785115
		4.3538966178893928 11.220926510738344 1.6617162308318651
		;
createNode transform -n "L_elbow_anim" -p "L_shoulder_anim";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 6.9190889464876193 12.950254252637805 -0.055882880394723999 ;
	setAttr ".sp" -type "double3" 6.9190889464876193 12.950254252637805 -0.055882880394723999 ;
createNode nurbsCurve -n "L_elbow_animShape" -p "L_elbow_anim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		6.9190889464876255 13.703004669243771 0.69686753621123687
		6.9190889464876202 12.950254252637807 1.0086669678514242
		6.919088946487614 12.197503836031844 0.69686753621123754
		6.9190889464876113 11.885704404391657 -0.055882880394723555
		6.919088946487614 12.197503836031844 -0.80863329700068509
		6.9190889464876202 12.950254252637807 -1.1204327286408722
		6.9190889464876255 13.703004669243766 -0.80863329700068554
		6.9190889464876282 14.014804100883957 -0.055882880394724721
		6.9190889464876255 13.703004669243771 0.69686753621123687
		6.9190889464876202 12.950254252637807 1.0086669678514242
		6.919088946487614 12.197503836031844 0.69686753621123754
		;
createNode transform -n "L_hand_anim" -p "L_elbow_anim";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 8.0803138384933568 12.951278241479175 -0.040035739070360565 ;
	setAttr ".sp" -type "double3" 8.0803138384933568 12.951278241479175 -0.040035739070360565 ;
createNode nurbsCurve -n "L_hand_animShape" -p "L_hand_anim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		8.0803138384933657 14.278094583117568 1.2867806025680308
		8.0803138384933568 12.951278241479173 1.8363659260529082
		8.0803138384933479 11.624461899840783 1.286780602568032
		8.0803138384933426 11.074876576355905 -0.040035739070359788
		8.0803138384933479 11.62446189984078 -1.3668520807087523
		8.0803138384933568 12.951278241479173 -1.9164374041936298
		8.0803138384933657 14.278094583117568 -1.3668520807087532
		8.080313838493371 14.827679906602445 -0.040035739070361842
		8.0803138384933657 14.278094583117568 1.2867806025680308
		8.0803138384933568 12.951278241479173 1.8363659260529082
		8.0803138384933479 11.624461899840783 1.286780602568032
		;
createNode transform -n "L_claw_1_anim" -p "L_hand_anim";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 11.472440159266684 14.043015610043639 -0.1279917032653326 ;
	setAttr ".sp" -type "double3" 11.472440159266684 14.043015610043639 -0.1279917032653326 ;
createNode nurbsCurve -n "L_claw_1_animShape" -p "L_claw_1_anim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		11.472440159266688 14.542995838403352 0.37198852509438074
		11.472440159266686 14.043015610043639 0.57908711659937173
		11.47244015926668 13.543035381683927 0.37198852509438118
		11.47244015926668 13.525076280270598 -0.12799170326533227
		11.47244015926668 13.543035381683927 -0.62797193162504605
		11.472440159266686 14.043015610043639 -0.83507052313003727
		11.472440159266688 14.542995838403352 -0.62797193162504628
		11.472440159266691 15.132148124157531 -0.12799170326533305
		11.472440159266688 14.542995838403352 0.37198852509438074
		11.472440159266686 14.043015610043639 0.57908711659937173
		11.47244015926668 13.543035381683927 0.37198852509438118
		;
createNode transform -n "L_claw_2_anim" -p "L_hand_anim";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 11.494945806946149 11.914511063823589 0.046252605247053796 ;
	setAttr ".sp" -type "double3" 11.494945806946149 11.914511063823589 0.046252605247053796 ;
createNode nurbsCurve -n "L_claw_2_animShape" -p "L_claw_2_anim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		11.494945806946152 12.414491292183309 0.54623283360676711
		11.49494580694615 11.914511063823591 0.75333142511175821
		11.494945806946145 11.414530835463877 0.54623283360676766
		11.49494580694614 10.718853454086885 0.046252605247054102
		11.494945806946145 11.414530835463877 -0.45372762311265957
		11.49494580694615 11.914511063823591 -0.66082621461765068
		11.494945806946152 12.414491292183309 -0.45372762311265991
		11.494945806946152 12.42463560553781 0.046252605247053324
		11.494945806946152 12.414491292183309 0.54623283360676711
		11.49494580694615 11.914511063823591 0.75333142511175821
		11.494945806946145 11.414530835463877 0.54623283360676766
		;
createNode transform -n "R_clavicle_anim" -p "chest_anim";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -1.4528466920724903 12.978720392534806 -0.026630795606339765 ;
	setAttr ".sp" -type "double3" -1.4528466920724903 12.978720392534806 -0.026630795606339765 ;
createNode nurbsCurve -n "R_clavicle_animShape" -p "R_clavicle_anim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.59251524726289539 12.277986028239079 2.9746906574796799
		-1.4528466920724912 12.40856774353901 2.9746906574796799
		-2.3131781368820845 12.277986028239079 2.9746906574796799
		-2.1356327509166202 12.978720392534806 2.9746906574796799
		-2.3131781368820845 13.679454756830532 2.9746906574796799
		-1.4528466920724912 13.548873041530602 2.9746906574796799
		-0.59251524726289728 13.679454756830532 2.9746906574796799
		-0.77006063322836105 12.978720392534806 2.9746906574796799
		-0.59251524726289539 12.277986028239079 2.9746906574796799
		-1.4528466920724912 12.40856774353901 2.9746906574796799
		-2.3131781368820845 12.277986028239079 2.9746906574796799
		;
createNode transform -n "R_shoulder_anim" -p "R_clavicle_anim";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -4.3538966178894052 12.950670242309567 -0.068027500739355928 ;
	setAttr ".sp" -type "double3" -4.3538966178894052 12.950670242309567 -0.068027500739355928 ;
createNode nurbsCurve -n "R_shoulder_animShape" -p "R_shoulder_anim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-4.3538966178894176 14.680413973880789 1.6617162308318638
		-4.3538966178894052 12.950670242309567 2.3781995438785115
		-4.3538966178893928 11.220926510738344 1.6617162308318651
		-4.3538966178893874 10.5044431976917 -0.068027500739354929
		-4.3538966178893928 11.220926510738344 -1.7977712323105761
		-4.3538966178894052 12.950670242309567 -2.514254545357224
		-4.3538966178894176 14.680413973880789 -1.7977712323105774
		-4.3538966178894229 15.396897286927434 -0.068027500739357483
		-4.3538966178894176 14.680413973880789 1.6617162308318638
		-4.3538966178894052 12.950670242309567 2.3781995438785115
		-4.3538966178893928 11.220926510738344 1.6617162308318651
		;
createNode transform -n "R_elbow_anim" -p "R_shoulder_anim";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -6.9190889464876193 12.950254252637805 -0.055882880394723888 ;
	setAttr ".sp" -type "double3" -6.9190889464876193 12.950254252637805 -0.055882880394723888 ;
createNode nurbsCurve -n "R_elbow_animShape" -p "R_elbow_anim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-6.9190889464876255 13.703004669243771 0.69686753621123698
		-6.9190889464876202 12.950254252637807 1.0086669678514242
		-6.919088946487614 12.197503836031844 0.69686753621123754
		-6.9190889464876113 11.885704404391657 -0.055882880394723444
		-6.919088946487614 12.197503836031844 -0.80863329700068487
		-6.9190889464876202 12.950254252637807 -1.1204327286408722
		-6.9190889464876255 13.703004669243766 -0.80863329700068554
		-6.9190889464876282 14.014804100883957 -0.055882880394724554
		-6.9190889464876255 13.703004669243771 0.69686753621123698
		-6.9190889464876202 12.950254252637807 1.0086669678514242
		-6.919088946487614 12.197503836031844 0.69686753621123754
		;
createNode transform -n "R_hand_anim" -p "R_elbow_anim";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -8.0803138384933568 12.951278241479175 -0.040035739070360454 ;
	setAttr ".sp" -type "double3" -8.0803138384933568 12.951278241479175 -0.040035739070360454 ;
createNode nurbsCurve -n "R_hand_animShape" -p "R_hand_anim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-8.0803138384933657 14.278094583117568 1.2867806025680308
		-8.0803138384933568 12.951278241479173 1.8363659260529082
		-8.0803138384933479 11.624461899840783 1.286780602568032
		-8.0803138384933426 11.074876576355905 -0.040035739070359622
		-8.0803138384933479 11.62446189984078 -1.3668520807087523
		-8.0803138384933568 12.951278241479173 -1.9164374041936298
		-8.0803138384933657 14.278094583117568 -1.3668520807087532
		-8.080313838493371 14.827679906602445 -0.040035739070361676
		-8.0803138384933657 14.278094583117568 1.2867806025680308
		-8.0803138384933568 12.951278241479173 1.8363659260529082
		-8.0803138384933479 11.624461899840783 1.286780602568032
		;
createNode transform -n "R_claw_1_anim" -p "R_hand_anim";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -11.472440159266684 14.043015610043639 -0.12799170326533249 ;
	setAttr ".sp" -type "double3" -11.472440159266684 14.043015610043639 -0.12799170326533249 ;
createNode nurbsCurve -n "R_claw_1_animShape" -p "R_claw_1_anim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-11.472440159266688 14.542995838403352 0.37198852509438085
		-11.472440159266686 14.043015610043639 0.57908711659937195
		-11.47244015926668 13.543035381683927 0.37198852509438135
		-11.47244015926668 13.525076280270598 -0.12799170326533216
		-11.47244015926668 13.543035381683927 -0.62797193162504605
		-11.472440159266686 14.043015610043639 -0.83507052313003705
		-11.472440159266688 14.542995838403352 -0.62797193162504628
		-11.472440159266691 15.132148124157531 -0.12799170326533305
		-11.472440159266688 14.542995838403352 0.37198852509438085
		-11.472440159266686 14.043015610043639 0.57908711659937195
		-11.47244015926668 13.543035381683927 0.37198852509438135
		;
createNode transform -n "R_claw_2_anim" -p "R_hand_anim";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -11.494945806946149 11.914511063823589 0.046252605247053907 ;
	setAttr ".sp" -type "double3" -11.494945806946149 11.914511063823589 0.046252605247053907 ;
createNode nurbsCurve -n "R_claw_2_animShape" -p "R_claw_2_anim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-11.494945806946152 12.414491292183309 0.54623283360676722
		-11.49494580694615 11.914511063823591 0.75333142511175843
		-11.494945806946145 11.414530835463877 0.54623283360676766
		-11.49494580694614 10.718853454086885 0.046252605247054268
		-11.494945806946145 11.414530835463877 -0.45372762311265957
		-11.49494580694615 11.914511063823591 -0.66082621461765068
		-11.494945806946152 12.414491292183309 -0.45372762311265991
		-11.494945806946152 12.42463560553781 0.046252605247053491
		-11.494945806946152 12.414491292183309 0.54623283360676722
		-11.49494580694615 11.914511063823591 0.75333142511175843
		-11.494945806946145 11.414530835463877 0.54623283360676766
		;
createNode transform -n "head_anim" -p "chest_anim";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
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
createNode transform -n "waist_anim" -p "root_anim";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
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
createNode transform -n "L_foot_anim" -p "world_anim";
	addAttr -ci true -sn "toe" -ln "toe" -at "double";
	addAttr -ci true -sn "ToeRoll" -ln "ToeRoll" -at "double";
	addAttr -ci true -sn "PivotToe" -ln "PivotToe" -at "double";
	addAttr -ci true -sn "BallPivot" -ln "BallPivot" -at "double";
	addAttr -ci true -sn "Bank" -ln "Bank" -at "double";
	addAttr -ci true -sn "FootRoll" -ln "FootRoll" -at "double";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".r" -type "double3" 0 -1.403341859706975e-14 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 1.4044336136966187 0 0.43593589577554498 ;
	setAttr ".sp" -type "double3" 1.4044336136966187 0 0.43593589577554498 ;
	setAttr -k on ".toe";
	setAttr -k on ".ToeRoll";
	setAttr -k on ".PivotToe";
	setAttr -k on ".BallPivot";
	setAttr -k on ".Bank";
	setAttr -k on ".FootRoll";
createNode nurbsCurve -n "L_foot_animShape" -p "L_foot_anim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.3744718968560026 1.1209857002402668e-16 -1.3947726824377664
		1.4044336136966185 0.73436765399561577 -2.1530770042864877
		0.43439533053723606 1.1209857002402673e-16 -1.3947726824377671
		0.80855987238902982 8.9839718900446397e-17 0.4359358957755442
		0.43439533053723561 -1.120985700240267e-16 2.2666444739888565
		1.4044336136966182 -1.5853131805060878e-16 3.0249487958375783
		2.3744718968560012 -1.1209857002402675e-16 2.2666444739888574
		2.7762749097617307 -8.5147480177488022e-32 0.43593589577554637
		2.3744718968560026 1.1209857002402668e-16 -1.3947726824377664
		1.4044336136966185 0.73436765399561577 -2.1530770042864877
		0.43439533053723606 1.1209857002402673e-16 -1.3947726824377671
		;
createNode transform -n "L_foot_toe" -p "L_foot_anim";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1.4719799999999965 -0.0084467599999985543 2.2366393053462943 ;
	setAttr ".sp" -type "double3" 1.4719799999999965 -0.0084467599999985543 2.2366393053462943 ;
createNode locator -n "L_foot_toeShape" -p "L_foot_toe";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 1.4719799999999965 -0.0084467599999985543 2.2366393053462943 ;
createNode transform -n "L_foot_ball" -p "L_foot_toe";
	setAttr ".rp" -type "double3" 1.4719799999999965 -0.0084467599999985543 1.1145100000000026 ;
	setAttr ".sp" -type "double3" 1.4719799999999965 -0.0084467599999985543 1.1145100000000026 ;
createNode locator -n "L_foot_ballShape" -p "L_foot_ball";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 1.4719799999999965 -0.0084467599999985543 1.1145100000000026 ;
createNode transform -n "L_foot_in" -p "L_foot_ball";
	setAttr ".rp" -type "double3" 0.77143807815415966 -0.0084467599999985543 1.1145100000000026 ;
	setAttr ".sp" -type "double3" 0.77143807815415966 -0.0084467599999985543 1.1145100000000026 ;
createNode locator -n "L_foot_inShape" -p "L_foot_in";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 0.77143807815415966 -0.0084467599999985543 1.1145100000000026 ;
createNode transform -n "L_foot_out" -p "L_foot_in";
	setAttr ".t" -type "double3" 0 2.2204460492503131e-15 0 ;
	setAttr ".r" -type "double3" 0 -1.4033418597069752e-14 0 ;
	setAttr ".rp" -type "double3" 2.2408129601860982 -0.008446759999996889 1.1145100000000028 ;
	setAttr ".sp" -type "double3" 2.2408129601860982 -0.008446759999996889 1.1145100000000028 ;
createNode locator -n "L_foot_outShape" -p "L_foot_out";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 2.2408129601860982 -0.008446759999996889 1.1145100000000028 ;
createNode transform -n "R_foot_anim" -p "world_anim";
	addAttr -ci true -sn "toe" -ln "toe" -at "double";
	addAttr -ci true -sn "ToeRoll" -ln "ToeRoll" -at "double";
	addAttr -ci true -sn "PivotToe" -ln "PivotToe" -at "double";
	addAttr -ci true -sn "BallPivot" -ln "BallPivot" -at "double";
	addAttr -ci true -sn "Bank" -ln "Bank" -at "double";
	addAttr -ci true -sn "FootRoll" -ln "FootRoll" -at "double";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -1.4044336136966187 0 0.43593589577554498 ;
	setAttr ".sp" -type "double3" -1.4044336136966187 0 0.43593589577554498 ;
	setAttr -k on ".toe";
	setAttr -k on ".ToeRoll";
	setAttr -k on ".PivotToe";
	setAttr -k on ".BallPivot";
	setAttr -k on ".Bank";
	setAttr -k on ".FootRoll";
createNode nurbsCurve -n "R_foot_animShape" -p "R_foot_anim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-2.3744718968560026 1.1209857002402668e-16 -1.3947726824377664
		-1.4044336136966185 0.73436765399561577 -2.1530770042864877
		-0.43439533053723606 1.1209857002402673e-16 -1.3947726824377671
		-0.80855987238902982 8.9839718900446397e-17 0.4359358957755442
		-0.43439533053723561 -1.120985700240267e-16 2.2666444739888565
		-1.4044336136966182 -1.5853131805060878e-16 3.0249487958375783
		-2.3744718968560012 -1.1209857002402675e-16 2.2666444739888574
		-2.7762749097617307 -8.5147480177488022e-32 0.43593589577554637
		-2.3744718968560026 1.1209857002402668e-16 -1.3947726824377664
		-1.4044336136966185 0.73436765399561577 -2.1530770042864877
		-0.43439533053723606 1.1209857002402673e-16 -1.3947726824377671
		;
createNode transform -n "R_foot_toe" -p "R_foot_anim";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" -1.4719799999999965 -0.0084467599999985543 2.2366393053462943 ;
	setAttr ".sp" -type "double3" -1.4719799999999965 -0.0084467599999985543 2.2366393053462943 ;
createNode locator -n "R_foot_toeShape" -p "R_foot_toe";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" -1.4719799999999965 -0.0084467599999985543 2.2366393053462943 ;
createNode transform -n "R_foot_ball" -p "R_foot_toe";
	setAttr ".rp" -type "double3" -1.4719799999999972 -0.0084467599999985543 1.1145100000000026 ;
	setAttr ".sp" -type "double3" -1.4719799999999972 -0.0084467599999985543 1.1145100000000026 ;
createNode locator -n "R_foot_ballShape" -p "R_foot_ball";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" -1.4719799999999972 -0.0084467599999985543 1.1145100000000026 ;
createNode transform -n "R_foot_in" -p "R_foot_ball";
	setAttr ".rp" -type "double3" -0.77143807815415966 -0.0084467599999985543 1.1145100000000026 ;
	setAttr ".sp" -type "double3" -0.77143807815415966 -0.0084467599999985543 1.1145100000000026 ;
createNode locator -n "R_foot_inShape" -p "R_foot_in";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" -0.77143807815415966 -0.0084467599999985543 1.1145100000000026 ;
createNode transform -n "R_foot_out" -p "R_foot_in";
	setAttr ".t" -type "double3" 0 3.9968028886505635e-15 0 ;
	setAttr ".r" -type "double3" 0 -1.4033418597069752e-14 0 ;
	setAttr ".rp" -type "double3" -2.2408129601860982 -0.008446759999996889 1.1145100000000028 ;
	setAttr ".sp" -type "double3" -2.2408129601860982 -0.008446759999996889 1.1145100000000028 ;
createNode locator -n "R_foot_outShape" -p "R_foot_out";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" -2.2408129601860982 -0.008446759999996889 1.1145100000000028 ;
createNode transform -n "L_knee_anim" -p "world_anim";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 1.4766763015259432 3.9487934733155297 3.9412164019716158 ;
	setAttr ".sp" -type "double3" 1.4766763015259432 3.9487934733155297 3.9412164019716158 ;
createNode nurbsCurve -n "L_knee_animShape" -p "L_knee_anim";
	setAttr -k off ".v";
	setAttr ".mb" no;
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".vis" no;
	setAttr ".tw" yes;
	setAttr -s 17 ".cp[0:16]" -type "double3" 0.22230418162237897 -0.48349651716909658 
		-0.074859463365605894 0.22230418162237897 -0.035366148653921847 -0.18391828187371928 
		0.22230418162237919 0.412764219861252 -0.07485946336560545 0.22230418162237897 0.41999702320434107 
		-0.033348206592727969 0.22230418162237919 0.96879591952202748 -0.60629486536038701 
		0.22230418162237919 1.141656001744586 -1.2268000922973483 0.22230418162237919 0.74215581798911012 
		-1.4098626388131592 0.22230418162237897 0.32956126055342949 -1.7585115042999027 0.22230418162237897 
		-0.035366148653921847 -1.9025580301004759 0.22230418162237897 -0.4002935578612723 
		-1.7585115042999035 0.22230418162237897 -0.81288811529695337 -1.4098626388131583 
		0.22230418162237875 -1.2123882990524288 -1.2268000922973474 0.22230418162237875 -1.0395282168298712 
		-0.6062948653603879 0.22230418162237875 -0.49072932051218565 -0.033348206592727969 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "R_knee_anim" -p "world_anim";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -1.4719800000000016 3.9435500000000019 3.9411186925473864 ;
	setAttr ".sp" -type "double3" -1.4719800000000016 3.9435500000000019 3.9411186925473864 ;
createNode nurbsCurve -n "R_knee_animShape" -p "R_knee_anim";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 14 2 no 3
		19 -2 -1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-1.4719800000000016 4.0979010649854741 3.5831090273205053
		-1.4719800000000016 3.9435500000000019 3.336537753174647
		-1.4719800000000016 3.7891989350145301 3.5831090273205053
		-1.4719800000000018 3.313279141711658 4.0099216226879708
		-1.4719800000000016 3.5939485754815386 3.993751529952271
		-1.4719800000000016 3.7668086577040967 3.9912216691655447
		-1.4719800000000016 3.6354379364964271 4.364935688681693
		-1.4719800000000016 3.7059959757067071 4.4015881617895367
		-1.4719800000000016 3.9435500000000019 4.3950540916267098
		-1.4719800000000014 4.1811040242932966 4.4015881617895367
		-1.4719800000000014 4.2516620635035771 4.3649356886816939
		-1.4719800000000016 4.1202913422959071 3.9912216691655451
		-1.4719800000000016 4.2931514245184657 3.9937515299522715
		-1.4719800000000016 4.5738208582883466 4.0099216226879708
		-1.4719800000000016 4.0979010649854741 3.5831090273205053
		-1.4719800000000016 3.9435500000000019 3.336537753174647
		-1.4719800000000016 3.7891989350145301 3.5831090273205053
		;
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
	setAttr ".cdl" 3;
	setAttr -s 4 ".dli[1:3]"  1 2 3;
	setAttr -s 4 ".dli";
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
		+ "                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 1\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n"
		+ "            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n"
		+ "            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n"
		+ "            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n"
		+ "\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 1\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 1\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 1\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 1\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode displayLayer -n "Geo_Layer";
	setAttr ".do" 1;
createNode groupId -n "C_Robot_Model:groupId3";
	setAttr ".ihi" 0;
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
createNode mentalrayOptions -s -n "miContourPreset";
createNode skinCluster -n "skinCluster1";
	setAttr -s 76 ".wl";
	setAttr ".wl[0].w[21]"  1;
	setAttr ".wl[1].w[21]"  1;
	setAttr ".wl[2].w[21]"  1;
	setAttr ".wl[3].w[21]"  1;
	setAttr ".wl[4].w[21]"  1;
	setAttr ".wl[5].w[21]"  1;
	setAttr ".wl[6].w[21]"  1;
	setAttr ".wl[7].w[21]"  0.99999999999999978;
	setAttr ".wl[8].w[21]"  1;
	setAttr ".wl[9].w[21]"  1;
	setAttr ".wl[10].w[21]"  1;
	setAttr ".wl[11].w[21]"  1;
	setAttr ".wl[12].w[21]"  1;
	setAttr ".wl[13].w[21]"  1;
	setAttr ".wl[14].w[21]"  0.99999999999999989;
	setAttr ".wl[15].w[21]"  1;
	setAttr ".wl[16].w[21]"  1;
	setAttr ".wl[17].w[21]"  1;
	setAttr ".wl[18].w[21]"  1;
	setAttr ".wl[19].w[21]"  1;
	setAttr ".wl[20].w[21]"  1;
	setAttr ".wl[21].w[21]"  1;
	setAttr ".wl[22].w[21]"  0.99999999999999989;
	setAttr ".wl[23].w[21]"  0.99999999999999989;
	setAttr ".wl[24].w[21]"  1;
	setAttr ".wl[25].w[21]"  1;
	setAttr ".wl[26].w[21]"  1;
	setAttr ".wl[27].w[21]"  1;
	setAttr ".wl[28].w[21]"  1;
	setAttr ".wl[29].w[21]"  1;
	setAttr ".wl[30].w[21]"  1;
	setAttr ".wl[31].w[21]"  1;
	setAttr -s 2 ".wl[32].w";
	setAttr ".wl[32].w[21]" 0.84242942616431282;
	setAttr ".wl[32].w[25]" 0.15757057383568718;
	setAttr -s 2 ".wl[33].w";
	setAttr ".wl[33].w[21]" 0.79025348948276053;
	setAttr ".wl[33].w[25]" 0.2097465105172395;
	setAttr -s 2 ".wl[34].w";
	setAttr ".wl[34].w[21]" 0.78711302348183698;
	setAttr ".wl[34].w[25]" 0.21288697651816321;
	setAttr -s 2 ".wl[35].w";
	setAttr ".wl[35].w[21]" 0.7894932898440854;
	setAttr ".wl[35].w[24]" 0.2105067101559146;
	setAttr -s 2 ".wl[36].w";
	setAttr ".wl[36].w[21]" 0.78954093719469465;
	setAttr ".wl[36].w[24]" 0.21045906280530546;
	setAttr -s 2 ".wl[37].w";
	setAttr ".wl[37].w[21]" 0.84338945955399491;
	setAttr ".wl[37].w[24]" 0.15661054044600509;
	setAttr -s 2 ".wl[38].w";
	setAttr ".wl[38].w[21]" 0.42430605810326666;
	setAttr ".wl[38].w[25]" 0.57569394189673329;
	setAttr -s 2 ".wl[39].w";
	setAttr ".wl[39].w[21]" 0.32285272626810552;
	setAttr ".wl[39].w[25]" 0.67714727373189443;
	setAttr -s 2 ".wl[40].w";
	setAttr ".wl[40].w[21]" 0.33052634413735682;
	setAttr ".wl[40].w[25]" 0.66947365586264307;
	setAttr -s 2 ".wl[41].w";
	setAttr ".wl[41].w[21]" 0.37273616528389852;
	setAttr ".wl[41].w[24]" 0.62726383471610148;
	setAttr -s 2 ".wl[42].w";
	setAttr ".wl[42].w[21]" 0.36845374776868539;
	setAttr ".wl[42].w[24]" 0.63154625223131466;
	setAttr -s 2 ".wl[43].w";
	setAttr ".wl[43].w[21]" 0.45914429038998777;
	setAttr ".wl[43].w[24]" 0.54085570961001217;
	setAttr -s 2 ".wl[44].w";
	setAttr ".wl[44].w[21]" 0.13360815190805087;
	setAttr ".wl[44].w[25]" 0.86639184809194913;
	setAttr -s 2 ".wl[45].w";
	setAttr ".wl[45].w[21]" 0.087135456737066588;
	setAttr ".wl[45].w[25]" 0.91286454326293343;
	setAttr -s 2 ".wl[46].w";
	setAttr ".wl[46].w[21]" 0.059539191339249856;
	setAttr ".wl[46].w[25]" 0.94046080866074999;
	setAttr -s 2 ".wl[47].w";
	setAttr ".wl[47].w[21]" 0.068235972557685459;
	setAttr ".wl[47].w[24]" 0.93176402744231446;
	setAttr -s 2 ".wl[48].w";
	setAttr ".wl[48].w[21]" 0.091492695296900628;
	setAttr ".wl[48].w[24]" 0.90850730470309937;
	setAttr -s 2 ".wl[49].w";
	setAttr ".wl[49].w[21]" 0.12509354298132735;
	setAttr ".wl[49].w[24]" 0.87490645701867265;
	setAttr ".wl[50].w[19]"  1;
	setAttr ".wl[51].w[19]"  1;
	setAttr ".wl[52].w[19]"  1;
	setAttr ".wl[53].w[19]"  1;
	setAttr -s 3 ".wl[54].w[19:21]"  0.027119604183425263 0.9710000489012266 
		0.0018803469153480707;
	setAttr -s 3 ".wl[55].w[19:21]"  0.026078769888582137 0.97171827647386322 
		0.0022029536375546698;
	setAttr -s 2 ".wl[56].w[20:21]"  0.98627521675139251 0.01372478324860738;
	setAttr -s 3 ".wl[57].w[19:21]"  0.0021831546210809836 0.98242958031301131 
		0.015387265065907645;
	setAttr -s 3 ".wl[58].w[19:21]"  1.0000000127940278 -1.2844920114189682e-08 
		5.0892334696600441e-11;
	setAttr ".wl[59].w[19]"  1;
	setAttr ".wl[60].w[21]"  1;
	setAttr ".wl[61].w[21]"  0.99999999999999989;
	setAttr ".wl[62].w[21]"  1;
	setAttr ".wl[63].w[21]"  0.99999999999999989;
	setAttr ".wl[64].w[21]"  1;
	setAttr ".wl[65].w[21]"  0.99999999999999989;
	setAttr ".wl[66].w[21]"  1;
	setAttr ".wl[67].w[21]"  0.99999999999999989;
	setAttr ".wl[68].w[21]"  0.99999999999999989;
	setAttr ".wl[69].w[21]"  1;
	setAttr ".wl[70].w[21]"  0.99999999999999989;
	setAttr ".wl[71].w[21]"  1;
	setAttr ".wl[72].w[21]"  1;
	setAttr ".wl[73].w[21]"  1;
	setAttr ".wl[74].w[21]"  1;
	setAttr ".wl[75].w[21]"  1;
	setAttr -s 26 ".pm";
	setAttr ".pm[0]" -type "matrix" -1 0 1.2246467991473532e-16 0 0 1 0 0 -1.2246467991473532e-16 0 -1 0
		 6.8717722448313527e-17 -10.634563903704942 -0.018175814976949763 1;
	setAttr ".pm[1]" -type "matrix" -1 0 1.2246467991473532e-16 0 0 1 0 0 -1.2246467991473532e-16 0 -1 0
		 7.353457146447921e-16 -14.132338326454143 -0.018175814976949763 1;
	setAttr ".pm[2]" -type "matrix" -1 0 1.2246467991473532e-16 0 0 1 0 0 -1.2246467991473532e-16 0 -1 0
		 6.8717722448313428e-17 -8.5365370207398907 -0.018175814976949763 1;
	setAttr ".pm[3]" -type "matrix" -1 0 1.2246467991473532e-16 0 0 1 0 0 -1.2246467991473532e-16 0 -1 0
		 4.2241905145476408e-16 -7.3913983732815653 -0.045052099000275944 1;
	setAttr ".pm[4]" -type "matrix" 1.477176941278356e-15 6.981057536655051e-16 -1 0
		 -0.99892875515336343 0.046274638061808995 -1.529528359619386e-15 0 0.046274638061808863 0.99892875515336343 4.4852572293978137e-16 0
		 6.8627936880930589 -0.27433068417854384 1.4719753077507971 1;
	setAttr ".pm[5]" -type "matrix" 1.4064063985879794e-15 8.3151933300203677e-16 -1 0
		 -0.9989340743284465 -0.046159670119807199 -1.529528359619386e-15 0 -0.046159670119807331 0.9989340743284465 4.4852572293978137e-16 0
		 3.9435928581974777 0.090188359666807966 1.4719753077507971 1;
	setAttr ".pm[6]" -type "matrix" 1.4654040599441831e-15 -7.2249173022566048e-16 -1 0
		 -0.5850674743411175 0.81098461789858001 -1.5295283596193864e-15 0 0.81098461789858001 0.58506747434111761 4.4852572293978157e-16 0
		 0.52934012017617871 -0.64521122801142317 1.4719753077507964 1;
	setAttr ".pm[7]" -type "matrix" 1.464973975462413e-15 -0.99994728840146285 -0.010267444597432169 0
		 -0.5850674743411175 0.0083267396336424247 -0.81094186960298142 0 0.8109846178985799 0.0060071478785578628 -0.585036634499293 0
		 -0.90878943373902465 1.4652730470420681 0.66029064281732275 1;
	setAttr ".pm[8]" -type "matrix" 1.1106241961056644e-15 1.1825607839880968e-15 -1 0
		 0.99892875515336343 -0.046274638061808364 1.2820340345168972e-15 0 -0.046274638061808641 -0.99892875515336343 -1.2376969010084732e-15 0
		 -6.8627971761989981 0.27433083090909582 -1.4719800000000089 1;
	setAttr ".pm[9]" -type "matrix" 9.9668717112965231e-16 1.2800589032179211e-15 -1 0
		 0.99893407432844661 0.046159670119807393 1.2820340345168972e-15 0 0.046159670119807115 -0.99893407432844672 -1.2376969010084736e-15 0
		 -3.9435905135198688 -0.090188271185206503 -1.471980000000005 1;
	setAttr ".pm[10]" -type "matrix" 1.6167683789787193e-15 -1.3414962369094175e-16 -1 0
		 0.58506747434111783 -0.8109846178985799 1.2820340345168974e-15 0 -0.81098461789858023 -0.58506747434111772 -1.2376969010084738e-15 0
		 -0.52934008704748747 0.64521116757982055 -1.4719800000000014 1;
	setAttr ".pm[11]" -type "matrix" 1.6158949178723962e-15 -0.99994728840146319 -0.010267444597431763 0
		 0.58506747434111783 -0.0083267396336418626 0.81094186960298154 0 -0.81098461789858012 -0.0060071478785580718 0.58503663449929322 0
		 0.9087923910337149 -1.4652777171703215 -0.66029282126784716 1;
	setAttr ".pm[12]" -type "matrix" -0.99995325883512598 0.0096685129379943131 1.6061271050617637e-06 0
		 0.00966851307139871 0.99995324503795169 0.00016611158518660784 0 -1.2245851779986961e-16 0.00016611934979852676 -0.999999986202181 0
		 1.3272938565604671 -12.99215742064008 -0.020334064000712502 1;
	setAttr ".pm[13]" -type "matrix" -0.99980566703278784 -0.017117319501743482 -0.0097788313308614892 0
		 0.0096670860114213605 0.0065988191016375193 -0.99993149917107393 0 0.017180675690146401 -0.99983171231939783 -0.00643206213363306 0
		 4.2290240275309685 -0.078948143237026744 12.99192157420962 1;
	setAttr ".pm[14]" -type "matrix" -0.9999887798164705 0.0047294247656044985 -0.00026978241813739671 0
		 0.00016216523014272592 -0.022740448206859897 -0.99974138941917823 0 -0.0047343366594256846 -0.9997302158866348 0.022739426106601929 0
		 6.9166466637092094 0.20590347139745455 12.950042573040394 1;
	setAttr ".pm[15]" -type "matrix" -0.99990612408113166 0.013666963790080479 0.00097832806844420786 0
		 -0.00015115248526284083 0.060394096631831144 -0.99817459907821282 0 -0.013701101341683281 -0.99808104239725204 -0.060386361284972712 0
		 8.0809646874999821 -0.93245748834910869 12.916471143858102 1;
	setAttr ".pm[16]" -type "matrix" 0.95669909334599668 -0.29107847904145767 0.00040475901380116619 0
		 -0.29107845299057894 -0.95669917896845258 -0.00012314909504049798 0 0.00042307866746336162 1.4769544094683774e-16 -0.99999991050221637 0
		 -7.5304204047180008 14.741670881892746 -0.041647075215516798 1;
	setAttr ".pm[17]" -type "matrix" 0.95150469301091578 0.30763396539512061 0.000403129602716486 0
		 0.30763393778478132 -0.95150477840905912 0.000130337084023426 0 0.00042367585729911401 -6.2544912825257478e-16 -0.99999991024937951 0
		 -15.236999271363663 9.8366169770217446 -0.04491666401818066 1;
	setAttr ".pm[18]" -type "matrix" -0.99995325883512576 0.0096685129379963323 1.6061271011246137e-06 0
		 -0.0096685130714007275 -0.99995324503795124 -0.00016611158480471007 0 -1.2245851779986952e-16 -0.00016611934941660874 0.99999998620218045 0
		 -1.3272973614988237 12.992137061043953 0.020334045636677348 1;
	setAttr ".pm[19]" -type "matrix" -0.99980566703278795 -0.017117319501743493 -0.0097788313308640028 0
		 -0.0096670860114238845 -0.0065988191016367933 0.99993149917107382 0 -0.017180675690146415 0.9998317123193976 0.0064320621336323375 0
		 -4.2290271213014208 0.078948280970734447 -12.991951362939481 1;
	setAttr ".pm[20]" -type "matrix" -0.9999887798164705 0.0047294247656060329 -0.0002697824181365603 0
		 -0.00016216523014183943 0.022740448206862822 0.99974138941917823 0 0.0047343366594272008 0.99973021588663458 -0.022739426106604801 0
		 -6.9166477096983314 -0.20590448713050732 -12.950088309301858 1;
	setAttr ".pm[21]" -type "matrix" -0.99990612408113155 0.013666963790084922 0.00097832806844424689 0
		 0.00015115248526264427 -0.060394096631828834 0.99817459907821304 0 0.013701101341687722 0.99808104239725215 0.060386361284970463 0
		 -8.080961287787094 0.93245560997347066 -12.91644141246493 1;
	setAttr ".pm[22]" -type "matrix" 0.95669909334599723 -0.29107847904145784 0.00040475901380100497 0
		 0.29107845299057905 0.95669917896845291 0.00012314909504049245 0 -0.00042307866746322707 -4.7157373492257025e-16 0.99999991050221648 0
		 7.5303749307173202 -14.741661040490099 0.041647044718498047 1;
	setAttr ".pm[23]" -type "matrix" 0.95150469301091611 0.30763396539512072 0.00040312960271650887 0
		 -0.30763393778478154 0.95150477840905945 -0.0001303370840238637 0 -0.00042367585729924086 6.5014183273093273e-16 0.99999991024937973 0
		 15.23697946724454 -9.8366107712992346 0.044916644369739522 1;
	setAttr ".pm[24]" -type "matrix" 0.951504693010916 0.30763396539512072 0.00040312960271663524 0
		 -0.3076339377847816 0.95150477840905967 -0.00013033708402399209 0 -0.0004236758572993965 7.2384047540563509e-16 0.99999991024938018 0
		 15.236979467244542 -9.8366107712992346 0.04491664436974141 1;
	setAttr ".pm[25]" -type "matrix" 0.95669909334599712 -0.29107847904145773 0.0004047590138011258 0
		 0.29107845299057905 0.95669917896845302 0.00012314909504036969 0 -0.00042307866746331266 -3.2230620082562848e-16 0.99999991050221693 0
		 7.530374930717322 -14.741661040490103 0.041647044718499823 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 5 ".ma";
	setAttr -s 26 ".dpf[0:25]"  1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 
		1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
	setAttr -s 18 ".ifcl";
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
	setAttr -s 53 ".wm";
	setAttr ".wm[74]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[75]" -type "matrix" 2.2204460492503131e-16 1.0000000000000002 0 0 -1.0000000000000002 2.2204460492503131e-16 0 0
		 0 0 1 0 3.3009992939108477e-16 11.801700171964772 -0.018175814976949763 1;
	setAttr ".wm[76]" -type "matrix" 2.2204460492503131e-16 1.0000000000000002 0 0 -1.0000000000000002 2.2204460492503131e-16 0 0
		 0 0 1 0 2.2204460492503151e-16 11.801700171964772 -0.018175814976949756 1;
	setAttr ".wm[77]" -type "matrix" -0.99995325883512609 0.0096685130713986007 0 0 0.0096685129379945351 0.9999532450379518 0.00016611934979852676 0
		 1.6061271049393073e-06 0.00016611158518660906 -0.99999998620218111 0 1.4528466920724896 12.978720392534806 -0.018175814976949766 1;
	setAttr ".wm[78]" -type "matrix" -0.99980566703278795 0.0096670860114212494 0.017180675690146533 0
		 -0.017117319501743607 0.0065988191016375158 -0.99983171231939838 0 -0.0097788313308617165 -0.9999314991710746 -0.0064320621336330713 0
		 4.3538966178894052 12.950670242309572 -0.068027500739356039 1;
	setAttr ".wm[79]" -type "matrix" -0.9999887798164705 0.0001621652301426104 -0.0047343366594255667 0
		 0.0047294247656043667 -0.022740448206859918 -0.99973021588663546 0 -0.00026978241813761794 -0.99974138941917889 0.022739426106601929 0
		 6.9190889464876202 12.950254252637809 -0.055882880394724006 1;
	setAttr ".wm[80]" -type "matrix" -0.99990612408113144 -0.00015115248526295646 -0.013701101341683172 0
		 0.013666963790080365 0.060394096631831179 -0.99808104239725293 0 0.00097832806844397628 -0.99817459907821349 -0.060386361284972781 0
		 8.0803133959783686 12.950429791078136 -0.039971332820661308 1;
	setAttr ".wm[81]" -type "matrix" -0.99990612408113144 -0.00015115248526295646 -0.013701101341683172 0
		 0.013666963790080365 0.060394096631831179 -0.99808104239725293 0 0.00097832806844397628 -0.99817459907821349 -0.060386361284972781 0
		 8.0803133959783722 12.950429791078145 -0.03997133282066069 1;
	setAttr ".wm[82]" -type "matrix" 2.2204460492503131e-16 1.0000000000000002 0 0 -1.0000000000000002 2.2204460492503131e-16 0 0
		 0 0 1 0 3.3009992939108477e-16 11.801700171964772 -0.018175814976949763 1;
	setAttr ".wm[83]" -type "matrix" -1.0000000000000002 -4.9303806576313238e-32 0 0
		 -4.9303806576313238e-32 1.0000000000000002 1.2246467991473532e-16 0 2.5407181807811967e-33 1.2246467991473535e-16 -1 0
		 7.0943617811654355e-17 10.512837591974474 -0.018175814976949815 1;
	setAttr ".wm[84]" -type "matrix" -1.0000000000000002 -4.9303806576313238e-32 0 0
		 -4.9303806576313238e-32 1.0000000000000002 1.2246467991473532e-16 0 2.5407181807811967e-33 1.2246467991473535e-16 -1 0
		 7.0943617811654861e-17 8.5365370207398943 -0.018175814976949763 1;
	setAttr ".wm[85]" -type "matrix" -1.0000000000000002 -4.9303806576313238e-32 0 0
		 -4.9303806576313238e-32 1.0000000000000002 1.2246467991473532e-16 0 2.5407181807811967e-33 1.2246467991473535e-16 -1 0
		 4.2464494681810561e-16 7.3913983732815689 -0.045052099000276083 1;
	setAttr ".wm[94]" -type "matrix" 2.2204460492503131e-16 1.0000000000000002 0 0 -1.0000000000000002 2.2204460492503131e-16 0 0
		 0 0 1 0 4.4408920985006281e-16 11.801700171964772 -0.018175814976949752 1;
	setAttr ".wm[95]" -type "matrix" -0.99995325883512609 -0.0096685130714007101 0 0
		 0.0096685129379963115 -0.9999532450379518 -0.0001661193494167325 0 1.6061271012482164e-06 -0.00016611158480483263 0.99999998620218078 0
		 -1.45285 12.978699999999998 -0.018175799999999999 1;
	setAttr ".wm[96]" -type "matrix" -0.99980566703278795 -0.0096670860114238619 -0.017180675690146294 0
		 -0.017117319501743365 -0.0065988191016369581 0.99983171231939783 0 -0.0097788313308639803 0.99993149917107438 0.0064320621336324216 0
		 -4.3539000000000003 12.950700000000001 -0.068027499999999602 1;
	setAttr ".wm[97]" -type "matrix" -0.99998877981647061 -0.0001621652301418159 0.004734336659427324 0
		 0.0047294247656061569 0.022740448206862669 0.9997302158866348 0 -0.00026978241813653894 0.99974138941917856 -0.022739426106604722 0
		 -6.9190900000000006 12.950299999999995 -0.055882899999999201 1;
	setAttr ".wm[98]" -type "matrix" -0.99990612408113155 0.00015115248526266655 0.013701101341687845 0
		 0.013666963790085047 -0.060394096631829014 0.99808104239725226 0 0.00097832806844427812 0.99817459907821326 0.060386361284970547 0
		 -8.0803100000000025 12.950400000000009 -0.039971299999999106 1;
	setAttr ".wm[99]" -type "matrix" -0.99990612408113155 0.00015115248526266655 0.013701101341687845 0
		 0.013666963790085047 -0.060394096631829014 0.99808104239725226 0 0.00097832806844427812 0.99817459907821326 0.060386361284970547 0
		 -8.0803100000000025 12.950400000000004 -0.039971299999999016 1;
	setAttr ".wm[100]" -type "matrix" 1.0000000000000002 0 0 0 0 1.0000000000000002 0 0
		 0 0 1 0 0 10.512837591974476 0.018175814976949978 1;
	setAttr ".wm[104]" -type "matrix" 1.0000000000000002 0 0 0 0 1.0000000000000002 0 0
		 0 0 1 0 0 10.512837591974476 0.018175814976949756 1;
	setAttr ".wm[111]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 127 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.3009992939108477e-16
		 11.801700171964772 -0.018175814976949763 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 -6.6662799219647858e-16
		 3.4977744227492007 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.274286506692317e-16
		 8.1810495983390261 0.018175814976949076 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.5370132900645061e-16
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
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1770202205700357 -1.452846692072489
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -8.3058704603609497e-05 -4.0153646971788825e-07 0.0048343130097092219 0.9999883111910931 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.9011855306081311 -8.2813296273798187e-06
		 0.049851685074561669 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70486160609924298 0.0060945205700710181 -0.0060544338841574258 0.70929282873617094 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 -0.081681407984354665 0 0 0 -2.564489195785943
		 -0.056054538267271824 -0.024746736889104781 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.055425259936454647 -0.0042107820014693331 0.011177232163825655 0.99839139587491854 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.161286722496059 -0.010419323044271733
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
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.9011851199096412 -4.1867265748507521e-05
		 -0.049851707642807414 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70486160609910786 0.0060945205700699556 -0.0060544338841583313 0.70929282873630528 1
		 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 -0.081681407984354665 0 0 0 2.5644867134162546
		 0.056054372553752216 0.024762702563737804 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.055425259936455737 -0.0042107820014709793 0.011177232163826512 0.99839139587491854 1
		 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1612822855531499 0.010417678721605511
		 5.1430226099213883e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.04157426065931423 -0.0002411139534624131 0.0044798249149433349 0.99912534443052969 1
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
	setAttr ".xm[66]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.3915715821890284 0.11107405765888563
		 -1.0913535019615423 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10190255649626843 0.67785510504361279 0.7185028139215186 0.11782203500490408 1
		 1 1 yes;
	setAttr ".xm[67]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.4145760234172631 -0.017585687905879846
		 1.0403867852359472 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10568394364506711 -0.6771824465921471 -0.72090878403810499 0.10269061875264411 1
		 1 1 yes;
	setAttr ".xm[68]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.3306381544893711 1.1003394761974752e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[69]" -type "matrix" "xform" 1 1 1.0000000000000002 1.5605287017891873
		 9.8607613152626476e-32 5.5511151231257827e-17 0 1.438129553915203 1.7763568394002505e-15
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[70]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.2888625799902993 -2.7028670797171762e-17
		 -5.2041704279304213e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70710678118654746 0.70710678118654757 4.3297802811774664e-17 4.3297802811774658e-17 1
		 1 1 yes;
	setAttr ".xm[71]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.4381324780812021 -2.1908170172446617e-06
		 -2.6645352591003757e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70346732525490052 0 0 0.71072760063101248 1
		 1 1 yes;
	setAttr ".xm[72]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.3915580472033184 -0.11107496879342826
		 1.0913712753055176 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10190255649626707 0.67785510504361401 0.7185028139215176 0.11782203500490548 1
		 1 1 yes;
	setAttr ".xm[73]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.4145330586468816 0.017584223717196479
		 -1.04035319352991 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10568394364506882 -0.67718244659214755 -0.72090878403810443 0.10269061875264232 1
		 1 1 yes;
	setAttr ".xm[74]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[75]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[76]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 1.0805532446605326e-16
		 6.9388939039072284e-18 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[77]" -type "matrix" "xform" 1 1 1 1.9022327116258175e-16 -1.8583902862759373e-18
		 2.2551405187698492e-17 0 0 -1.7763568394002505e-15 3.4694469519536142e-18 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[78]" -type "matrix" "xform" 1 1 1 -5.5511151231257827e-16 -4.5536491244391176e-16
		 1.9602375278537932e-16 0 0 5.5511151231257827e-17 -3.5527136788005009e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[79]" -type "matrix" "xform" 1 1 1 1.1102230246251559e-16 -4.2934406030425976e-16
		 2.5890747878953846e-16 0 -8.8817841970012523e-16 0 -1.7763568394002505e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[80]" -type "matrix" "xform" 1 1 1 -1.1102230246251565e-16 1.8474805019152993e-16
		 -1.4745149545802855e-16 0 4.4408920985006262e-16 -1.2490009027033011e-16 2.886579864025407e-15 0
		 0 0 -3.4101263415841854 0.068671146571312028 1.0404662078817875 0 0 0 -3.4101263415841854
		 0.068671146571312028 1.0404662078817875 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[81]" -type "matrix" "xform" 1 1 1 -1.1102230246251565e-16 1.8474805019152993e-16
		 -1.4745149545802855e-16 0 -3.1086244689504383e-15 -2.3939183968479938e-16 -4.6629367034256575e-15 0
		 0 0 -3.401820707719184 0.023315246114292507 -1.0873406220864232 0 0 0 -3.401820707719184
		 0.023315246114292507 -1.0873406220864232 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[82]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[83]" -type "matrix" "xform" 1 1 1 0 -2.4492935982947064e-16 0 0 0
		 1.7763568394002505e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[84]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[85]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[86]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.4719753077507862 -0.52326186444079159
		 -0.0015156138377443035 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.48829431748131952 0.51143783543599197 -0.48829431748131974 0.51143783543599075 1
		 1 1 yes;
	setAttr ".xm[87]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.9277204680419162 2.7755575615628914e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.0462171541673317 0.99893141639487593 1
		 1 1 yes;
	setAttr ".xm[88]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.1139154803205398 5.6898930012039273e-15
		 6.6613381477509392e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.47591540557845469 0.87949106120136034 1
		 1 1 yes;
	setAttr ".xm[89]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4381295539152033 1.8873791418627661e-15
		 6.6613381477509392e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70346732525490019 0 0 0.71072760063101292 1
		 1 1 yes;
	setAttr ".xm[90]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4719800000000003 -0.52325837328157032
		 -0.0015155990002761396 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.51143783543599075 0.4882943174813198 0.51143783543599186 0.4882943174813198 1
		 1 1 yes;
	setAttr ".xm[91]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.9277262989788779 2.7512401001850151e-07
		 -3.1086244689504383e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.046217154167331485 0.99893141639487604 1
		 1 1 yes;
	setAttr ".xm[92]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.1139132043535329 9.3805317499806584e-08
		 -3.1086244689504383e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.47591540557845458 0.87949106120136045 1
		 1 1 yes;
	setAttr ".xm[93]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.4381324780812013 -2.1908170177997732e-06
		 -2.4424906541753444e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70346732525490041 0 0 0.71072760063101259 1
		 1 1 yes;
	setAttr ".xm[94]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -1.1398928045897805e-16
		 1.0408340855860843e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[95]" -type "matrix" "xform" 1 1 1 1.3552527156068805e-19 -3.6104779376714552e-20
		 2.2551402344265137e-17 0 -2.2204460492503131e-16 1.7763568394002505e-15 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[96]" -type "matrix" "xform" 1 1 1 -1.1102230246251565e-16 4.5102810375396984e-17
		 -1.7347234759768094e-18 0 -8.8817841970012523e-16 1.3877787807814457e-17 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[97]" -type "matrix" "xform" 1 1 1 2.2204460492503131e-16 -8.4134088584875156e-17
		 -5.3342746886286837e-17 0 0 0 -3.5527136788005009e-15 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[98]" -type "matrix" "xform" 1 1 1 3.3306690738754691e-16 1.4398204850607491e-16
		 1.222980050563649e-16 0 1.3322676295501878e-15 -2.8796409701214998e-16 6.2172489379008766e-15 0
		 0 0 3.4063805124515185 0.016597295764802688 -1.0472002207408684 0 0 0 3.4063805124515185
		 0.016597295764802688 -1.0472002207408684 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[99]" -type "matrix" "xform" 1 1 1 3.3306690738754691e-16 1.4398204850607491e-16
		 1.222980050563649e-16 0 1.3322676295501878e-15 9.7144514654701197e-17 1.3322676295501878e-15 0
		 0 0 3.3959246184128209 -0.11282837389117172 1.094352305280037 0 0 0 3.3959246184128209
		 -0.11282837389117172 1.094352305280037 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[100]" -type "matrix" "xform" 1.0000000000000002 1.0000000000000002 1 0
		 -2.4492935982947064e-16 0 0 0 10.512837591974476 0.018175814976949978 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[101]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4719799999999998 -10.543653191974471
		 0.84582718502304999 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 2.0030704868015217e-16 0.70710678118654746 0.70710678118654768 2.0030704868015222e-16 1
		 1 1 yes;
	setAttr ".xm[102]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -2.7707129999999993
		 -2.6194324487249787e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.13857996374650813 -0.13857996374650819 0.6933942555631798 0.69339425556318002 1
		 1 1 yes;
	setAttr ".xm[103]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.82452872304423597
		 -2.2204460492503131e-16 1.0002527283115015e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.70116745117936308 0.091456029908544623 0.091456029908544081 0.70116745117936718 1
		 1 1 yes;
	setAttr ".xm[104]" -type "matrix" "xform" 1.0000000000000002 1.0000000000000002 1 0
		 -2.4492935982947064e-16 0 0 0 10.512837591974476 0.018175814976949756 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[105]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.4719800000000007
		 -10.543653186480398 0.84582758934300317 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -4.3297802811774664e-17 -0.70710678118654757 0.70710678118654746 4.3297802811774658e-17 1
		 1 1 yes;
	setAttr ".xm[106]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.1086244689504383e-15
		 2.7707123855344862 4.2431336222392702e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.13857996374650808 -0.13857996374650816 0.6933942555631798 0.69339425556318002 1
		 1 1 yes;
	setAttr ".xm[107]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.82453109738530372
		 -4.4408920985006262e-16 2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.70116745117936352 0.091456029908544581 0.091456029908544179 0.70116745117936663 1
		 1 1 yes;
	setAttr ".xm[108]" -type "matrix" "xform" 1 0.99999999999999989 1 3.1415926535897931
		 1.0106430996148606e-15 1.5707963267948968 0 3.6827741525858251 9.7637787617246887e-16
		 1.0026701691145945e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[111]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[112]" -type "matrix" "xform" 1 1 1 0 -2.4492935982947064e-16 0 0 -3.5370132900645056e-16
		 -0.78965122505745189 0.026876284023326182 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[113]" -type "matrix" "xform" 1 1 1 -0.001176051150633414 5.6092466492451029e-05
		 -3.2983808690973444e-08 0 -1.4719799999999992 -0.52325837328157299 -0.0015155990002750572 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.48829431748132002 0.51143783543599142 -0.48829431748131946 0.51143783543599108 1
		 1 1 yes;
	setAttr ".xm[114]" -type "matrix" "xform" 1 1 1 4.8277807814565022e-31 2.5792514242937591e-30
		 -1.3540781960185206e-15 0 2.9277262989788775 -2.7512401057361302e-07 1.7763568394002505e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.046217154167331485 0.99893141639487604 1
		 1 1 yes;
	setAttr ".xm[115]" -type "matrix" "xform" 1 1 1 1.5246202186286588 0 0 0 3.1139132043535276
		 -9.3805318526762882e-08 1.5543122344752192e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.51140973546653679 -0.48832374759993707 0.51140973546653423 0.48832374759993946 1
		 1 1 yes;
	setAttr ".xm[116]" -type "matrix" "xform" 1 1 1 1.1102230246251568e-16 -1.1102230246251568e-16
		 -6.1629758220391575e-33 0 0.0014105790571998789 -1.2212764998230066 0.49100262005054934 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.52199956446539875 0.47695920732835856 -0.52146570165997586 0.47759804358362601 1
		 1 1 yes;
	setAttr ".xm[117]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4719800000000003 -0.52325837328157032
		 -0.0015155990002761258 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.51143783543599075 0.48829431748131968 0.51143783543599197 0.48829431748132002 1
		 1 1 yes;
	setAttr ".xm[118]" -type "matrix" "xform" 1 1 1 4.2484466320176289e-30 7.5714215856227961e-30
		 -5.4163127840740833e-15 0 -2.9277262989788793 2.7512401068463532e-07 -3.1086244689504383e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.046217154167331458 0.99893141639487604 1
		 1 1 yes;
	setAttr ".xm[119]" -type "matrix" "xform" 1 1 1 5.2562941663480589e-16 1.4871771676055353e-15
		 -0.67012098439461887 0 -3.1139132043535347 9.3805318457373943e-08 -2.4424906541753444e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[120]" -type "matrix" "xform" 1 1 1 4.8874450140059835e-15 1.7717336256338422e-16
		 -5.5511151231257788e-16 0 0.37369267203120737 -1.262126872327952 -1.7763568394002505e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.88006068037651264 0.47486124168564192 1
		 1 1 yes;
	setAttr ".xm[121]" -type "matrix" "xform" 1 1 1 4.8393783722326961e-15 2.9392506121906583e-16
		 -0.0690447689236275 0 -3.6049156527366422 -1.2212808119096437 -4.2188474935755949e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70003882439122056 0.71410478526961141 1
		 1 1 yes;
	setAttr ".xm[122]" -type "matrix" "xform" 1 1 1 -5.633514488234681e-16 1.0267394573437711e-16
		 -5.5479101622116092e-16 0 3.6049158611945149 1.221276391226441 0.0014105790571996568 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.00045172544248310532 -0.00037749801674000959 0.67497389403707342 0.73784137577652931 1
		 1 1 yes;
	setAttr ".xm[123]" -type "matrix" "xform" 1 1 1 1.4918621893400531e-16 1.1379786002407858e-15
		 -2.4980018054066017e-16 0 0.095506651860324698 -0.0011329717123937932 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[124]" -type "matrix" "xform" 1 1 1 4.8884507553026408e-15 2.4980018054065958e-16
		 2.4980018054066076e-16 0 -0.095518627097549214 0.0012477525392636246 -1.1102230246251565e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[125]" -type "matrix" "xform" 1.0000000000000002 0.99999999999999978
		 1 0.42397060586597496 -1.5707963267948948 0 0 1.3163618196177582 2.2204460492503131e-16
		 -4.2188474935755949e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[126]" -type "matrix" "xform" 0.99999999999999967 0.99999999999999967
		 0.99999999999999989 -1.5707395868984499 -0.37780112661130455 -1.5696410505415155 0 -1.1102230246251565e-15
		 -1.3877787807814457e-17 4.4408920985006262e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[127]" -type "matrix" "xform" 1.0000000000000002 1 1.0000000000000002 0.4239706058659749
		 -1.5707963267948948 0 0 1.3163618196177582 5.5511151231257827e-16 -3.9968028886505635e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[128]" -type "matrix" "xform" 0.99999999999999989 0.99999999999999978
		 1 -5.1711766152990714e-17 -1.7929241234640503e-17 -1.9485842566609257 0 -3.1139132042863649
		 -2.0453320433572175e-05 -2.4424906541753444e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr -s 60 ".m";
	setAttr -s 68 ".p";
	setAttr -s 53 ".g";
	setAttr ".g[0]" yes;
	setAttr ".g[2]" yes;
	setAttr ".g[3]" yes;
	setAttr ".g[4]" yes;
	setAttr ".g[5]" yes;
	setAttr ".g[6]" yes;
	setAttr ".g[8]" yes;
	setAttr ".g[9]" yes;
	setAttr ".g[10]" yes;
	setAttr ".g[12]" yes;
	setAttr ".g[13]" yes;
	setAttr ".g[14]" yes;
	setAttr ".g[15]" yes;
	setAttr ".g[18]" yes;
	setAttr ".g[69]" yes;
	setAttr ".g[70]" yes;
	setAttr ".g[74]" yes;
	setAttr ".g[75]" yes;
	setAttr ".g[76]" yes;
	setAttr ".g[77]" yes;
	setAttr ".g[78]" yes;
	setAttr ".g[79]" yes;
	setAttr ".g[80]" yes;
	setAttr ".g[81]" yes;
	setAttr ".g[82]" yes;
	setAttr ".g[83]" yes;
	setAttr ".g[84]" yes;
	setAttr ".g[85]" yes;
	setAttr ".g[94]" yes;
	setAttr ".g[95]" yes;
	setAttr ".g[96]" yes;
	setAttr ".g[97]" yes;
	setAttr ".g[98]" yes;
	setAttr ".g[99]" yes;
	setAttr ".g[100]" yes;
	setAttr ".g[101]" yes;
	setAttr ".g[102]" yes;
	setAttr ".g[104]" yes;
	setAttr ".g[105]" yes;
	setAttr ".g[106]" yes;
	setAttr ".g[108]" yes;
	setAttr ".g[111]" yes;
	setAttr ".g[112]" yes;
	setAttr ".g[113]" yes;
	setAttr ".g[114]" yes;
	setAttr ".g[117]" yes;
	setAttr ".g[118]" yes;
	setAttr ".g[121]" yes;
	setAttr ".g[122]" yes;
	setAttr ".g[125]" yes;
	setAttr ".g[126]" yes;
	setAttr ".g[127]" yes;
	setAttr ".g[128]" yes;
	setAttr ".bp" yes;
createNode dagPose -n "bindPose2";
	setAttr -s 64 ".wm";
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
	setAttr ".wm[62]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[63]" -type "matrix" -1.0000000000000002 0 -1.2246467991473535e-16 0
		 0 1.0000000000000002 0 0 1.2246467991473532e-16 0 -1 0 9.2374025095764978e-17 10.512837591974474 -0.018175814976949759 1;
	setAttr ".wm[64]" -type "matrix" -1.0000000000000002 -4.9303806576313238e-32 0 0
		 -4.9303806576313238e-32 1.0000000000000002 1.2246467991473532e-16 0 2.5407181807811967e-33 1.2246467991473535e-16 -1 0
		 7.0943617811654848e-17 8.5365370207398925 -0.018175814976949763 1;
	setAttr ".wm[66]" -type "matrix" -1.0000000000000002 0 -1.2246467991473535e-16 0
		 0 1.0000000000000002 0 0 1.2246467991473532e-16 0 -1 0 5.821954798325549e-16 7.3913983732815725 -0.045052099000275257 1;
	setAttr ".wm[68]" -type "matrix" 2.1637759618662175e-16 -0.99892875515336377 0.046274638061808475 0
		 1.2099341392927059e-15 0.046274638061808433 0.99892875515336366 0 -1.0000000000000002 -1.6653345369377346e-16 1.2098029496354525e-15 0
		 1.4719800000000003 6.8681399999999995 -0.043536500000000027 1;
	setAttr ".wm[72]" -type "matrix" -1.0000000000000002 0 -1.2246467991473535e-16 0
		 0 1.0000000000000002 0 0 1.2246467991473532e-16 0 -1 0 5.821954798325549e-16 7.3913983732815725 -0.045052099000275257 1;
	setAttr ".wm[74]" -type "matrix" 8.9384542843853499e-16 0.99892875515336366 -0.046274638061808405 0
		 1.1215342124201222e-15 -0.046274638061808211 -0.99892875515336343 0 -1 8.8817841970012504e-16 -1.4547323094649232e-15 0
		 -1.4719799999999998 6.8681400000000021 -0.043536499999999305 1;
	setAttr ".wm[78]" -type "matrix" -0.0016000963820610456 0.9999893579386302 0.0043270892127603988 0
		 -0.99999867169251477 -0.0015987384955498123 -0.0003172513662636301 0 -0.00031033010595700304 -0.00432759109781877 0.99999058778096317 0
		 -0.002553485775426116 11.801683189017595 -0.011270505473314932 1;
	setAttr ".wm[80]" -type "matrix" -0.99999867169251477 -0.0015987384955500343 -0.00031725136626375332 0
		 -0.0016000963820612681 0.9999893579386302 0.0043270892127603988 0 0.00031033010595712528 0.00432759109781877 -0.99999058778096317 0
		 0.0011407931217598309 9.1374351045348732 -0.02126082514664912 1;
	setAttr ".wm[81]" -type "matrix" 2.2204460492503131e-16 1.0000000000000002 0 0 -1.0000000000000004 2.2204460492503136e-16 0 0
		 0 0 0.99999999999999933 0 -3.6271150995564438e-17 13.15383617006122 -0.018175814976950259 1;
	setAttr ".wm[82]" -type "matrix" -0.99995325883512609 0.0096685130713986007 0 0 0.0096685129379945351 0.9999532450379518 0.00016611934979852676 0
		 1.6061271049393073e-06 0.00016611158518660906 -0.99999998620218111 0 1.4528466920724892 12.978720392534807 -0.018175814976950432 1;
	setAttr ".wm[83]" -type "matrix" -0.99980566703278795 0.0096670860114212494 0.017180675690146533 0
		 -0.017117319501743607 0.0065988191016375158 -0.99983171231939838 0 -0.0097788313308617165 -0.9999314991710746 -0.0064320621336330713 0
		 4.3538966178894061 12.950670242309577 -0.068027500739356997 1;
	setAttr ".wm[84]" -type "matrix" -0.9999887798164705 0.0001621652301426104 -0.0047343366594255667 0
		 0.0047294247656043667 -0.022740448206859918 -0.99973021588663546 0 -0.00026978241813761794 -0.99974138941917889 0.022739426106601929 0
		 6.919088946487622 12.950254252637807 -0.055882880394724846 1;
	setAttr ".wm[85]" -type "matrix" -0.99990612408113144 -0.00015115248526295646 -0.013701101341683172 0
		 0.013666963790080365 0.060394096631831179 -0.99808104239725293 0 0.00097832806844397628 -0.99817459907821349 -0.060386361284972781 0
		 8.0803133959783704 12.950429791078133 -0.039971332820662606 1;
	setAttr ".wm[86]" -type "matrix" -0.99990612408113144 -0.00015115248526295646 -0.013701101341683172 0
		 0.013666963790080365 0.060394096631831179 -0.99808104239725293 0 0.00097832806844397628 -0.99817459907821349 -0.060386361284972781 0
		 8.0803133959783704 12.950429791078145 -0.039971332820662141 1;
	setAttr ".wm[87]" -type "matrix" 2.2204460492503131e-16 1.0000000000000002 0 0 -1.0000000000000004 2.2204460492503136e-16 0 0
		 0 0 0.99999999999999933 0 1.0739518736295925e-15 13.15383617006122 -0.018175814976949672 1;
	setAttr ".wm[88]" -type "matrix" -0.99995325883512609 -0.0096685130714007101 0 0
		 0.0096685129379963115 -0.9999532450379518 -0.0001661193494167325 0 1.6061271012482164e-06 -0.00016611158480483263 0.99999998620218078 0
		 -1.4528500000000002 12.9787 -0.018175799999999988 1;
	setAttr ".wm[89]" -type "matrix" -0.99980566703278795 -0.0096670860114238619 -0.017180675690146294 0
		 -0.017117319501743365 -0.0065988191016369581 0.99983171231939783 0 -0.0097788313308639803 0.99993149917107438 0.0064320621336324216 0
		 -4.3538999999999994 12.950699999999998 -0.068027499999999588 1;
	setAttr ".wm[90]" -type "matrix" -0.99998877981647061 -0.0001621652301418159 0.004734336659427324 0
		 0.0047294247656061569 0.022740448206862669 0.9997302158866348 0 -0.00026978241813653894 0.99974138941917856 -0.022739426106604722 0
		 -6.9190900000000015 12.950299999999999 -0.055882899999999278 1;
	setAttr ".wm[91]" -type "matrix" -0.99990612408113155 0.00015115248526266655 0.013701101341687845 0
		 0.013666963790085047 -0.060394096631829014 0.99808104239725226 0 0.00097832806844427812 0.99817459907821326 0.060386361284970547 0
		 -8.0803100000000025 12.950400000000005 -0.039971299999999543 1;
	setAttr ".wm[93]" -type "matrix" -0.99990612408113155 0.00015115248526266655 0.013701101341687845 0
		 0.013666963790085047 -0.060394096631829014 0.99808104239725226 0 0.00097832806844427812 0.99817459907821326 0.060386361284970547 0
		 -8.0803100000000008 12.950399999999998 -0.039971299999999363 1;
	setAttr ".wm[95]" -type "matrix" 2.2204460492503131e-16 1.0000000000000002 0 0 -1.0000000000000004 2.2204460492503136e-16 0 0
		 0 0 0.99999999999999933 0 9.6312326486171955e-16 13.153836170061222 -0.018175814976949711 1;
	setAttr ".wm[96]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[103]" -type "matrix" 1.0000000000000002 0 0 0 0 1.0000000000000002 0 0
		 0 0 1 0 0 10.512837591974476 0.018175814976949978 1;
	setAttr ".wm[109]" -type "matrix" 1.0000000000000002 0 0 0 0 1.0000000000000002 0 0
		 0 0 1 0 0 10.512837591974476 0.018175814976949756 1;
	setAttr -s 83 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.00095793837152942721
		 1.312130280068537 0.0025930229242777658 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 3.1415926535897922 -1.5707963267948966 0 3.6827741525858251
		 9.7637787617246887e-16 9.9920072216264089e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.5291562186664844 -1.4528466920724876
		 3.2265856653168612e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.7105168914620491 0.70368014043896177 5.8447444101151793e-05 5.9015302422414236e-05 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.9011855306081333 -8.2813296202743913e-06
		 0.049851685074561052 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70486160609924298 0.0060945205700710181 -0.0060544338841574258 0.70929282873617094 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -0.081681407984354665 0 0 0 -2.5644891957859421
		 -0.05605453826727156 -0.024746736889113663 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.055425259936454647 -0.0042107820014693331 0.011177232163825655 0.99839139587491854 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.1612867224960635 -0.010419323044271289
		 -0.00012695152391373199 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.041574260659313932 -0.00024111395346293867 0.0044798249149418639 0.99912534443052969 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.4145760234172737 -0.017585687905880262
		 1.0403867852359472 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10568394364506711 -0.6771824465921471 -0.72090878403810499 0.10269061875264411 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 -1.6341349465066468 2.8304285094698338
		 -0.032738324741655944 0 -3.3915715821890302 0.11107405765888544 -1.0913535019615459 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 -0.00016611935018094257 0 1.5804649905083019 0 2.5291358261316788
		 1.4528500000000013 1.4976950363926322e-08 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.9011851199096412 -4.1867265753836591e-05
		 -0.049851707642808711 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70486160609910786 0.0060945205700699556 -0.0060544338841583313 0.70929282873630528 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 -0.081681407984354665 0 0 0 2.5644867134162519
		 0.056054372553751522 0.024762702563723593 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.055425259936455737 -0.0042107820014709793 0.011177232163826512 0.99839139587491854 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1612822855531517 0.010417678721604789
		 5.1430226099213883e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.04157426065931423 -0.0002411139534624131 0.0044798249149433349 0.99912534443052969 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.4145330586468816 0.01758422371719659
		 -1.0403531935299082 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10568394364506882 -0.67718244659214755 -0.72090878403810443 0.10269061875264232 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.3915580472033184 -0.11107496879342826
		 1.0913712753055176 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10190255649626707 0.67785510504361401 0.7185028139215176 0.11782203500490548 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.2888625799902993 -2.7028670797172157e-17
		 -5.2041704279304213e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70710678118654746 0.70710678118654757 4.3297802811774664e-17 4.3297802811774658e-17 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.274286506692317e-16
		 8.1810495983390261 0.018175814976949076 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70710678118654746 0.70710678118654757 4.3297802811774664e-17 4.3297802811774658e-17 1
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
		 -5.2041704279304213e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70710678118654746 0.70710678118654757 4.3297802811774664e-17 4.3297802811774658e-17 1
		 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4381295539152035 1.8873791418627661e-15
		 4.4408920985006262e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70346732525490019 0 0 0.71072760063101292 1
		 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.4381324780812021 -2.1908170172446617e-06
		 -2.6645352591003757e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70346732525490063 0 0 0.71072760063101248 1
		 1 1 yes;
	setAttr ".xm[62]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[63]" -type "matrix" "xform" 1.0000000000000002 1.0000000000000002 1 0
		 3.1415926535897931 0 0 9.2374025095764978e-17 10.512837591974474 -0.018175814976949759 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[64]" -type "matrix" "xform" 1 1 1 0 -2.4492935982947064e-16 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[65]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.5370132900645056e-16
		 -0.78965122505745189 0.026876284023326182 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[66]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[67]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.4719799999999992 -0.5232583732815721
		 -0.0015155990002750641 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.48829431748132007 0.51143783543599175 -0.48829431748131952 0.51143783543599097 1
		 1 1 yes;
	setAttr ".xm[68]" -type "matrix" "xform" 1 1 1 0 0 0 0 8.8817841970012523e-16
		 -5.5511151231257827e-17 -2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[69]" -type "matrix" "xform" 1 1 1 3.0897791372529964e-30 -2.1778385263675721e-30
		 -5.4163127840740825e-15 0 2.9277262989788775 -2.7512401046259072e-07 1.7763568394002505e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.046217154167331478 0.99893141639487604 1
		 1 1 yes;
	setAttr ".xm[70]" -type "matrix" "xform" 1 1 1 -2.4492935982918645e-16 -3.731195962228488e-22
		 -4.159822656951181e-31 0 3.1139132043535316 -9.3805318152062611e-08 1.7763568394002505e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.47591540557845463 0.87949106120136034 1
		 1 1 yes;
	setAttr ".xm[71]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4381324780812013 2.1908170172446617e-06
		 2.4424906541753444e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70346732525490041 0 0 0.71072760063101259 1
		 1 1 yes;
	setAttr ".xm[72]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[73]" -type "matrix" "xform" 1 1 1 2.4465124285046754e-16 -1.1668790776933939e-17
		 2.6891329027933887e-31 0 1.4719800000000003 -0.52325837328157032 -0.0015155990002761327 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.51143783543599086 0.4882943174813198 0.51143783543599186 0.48829431748131985 1
		 1 1 yes;
	setAttr ".xm[74]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[75]" -type "matrix" "xform" 1 1 1 1.3131560830754566e-29 -2.5938891988711845e-29
		 -1.0832625568148165e-14 0 -2.9277262989788784 2.7512401007401266e-07 -2.886579864025407e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.046217154167331478 0.99893141639487604 1
		 1 1 yes;
	setAttr ".xm[76]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.1139132043535329 9.3805317499806584e-08
		 -3.7747582837255322e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.47591540557845458 0.87949106120136045 1
		 1 1 yes;
	setAttr ".xm[77]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.438132478081201 -2.1908170182438624e-06
		 -2.2204460492503131e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70346732525490041 0 0 0.71072760063101259 1
		 1 1 yes;
	setAttr ".xm[78]" -type "matrix" "xform" 1.0000000000000002 1 1.0000000000000002 -0.0003172543416871676
		 3.1372655508737317 -1.5723964388398413 0 0.0025534857754261867 3.2651461682777025
		 -0.0069053095036344311 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[79]" -type "matrix" "xform" 1 1 1 3.1415926535897931 -9.1997605001001955e-19
		 1.5707963267948968 0 -0.0011407931217588337 0.95638550619584883 0.0030850101697004473 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70767037218230588 0.70653941024251288 -0.0014190077982268469 0.0016408919486620181 1
		 1 1 yes;
	setAttr ".xm[80]" -type "matrix" "xform" 1 1 1 4.2067044292437577e-16 3.225755573028552e-16
		 -8.1098322501915658e-17 0 -7.7021722333370235e-16 0 -4.0245584642661925e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[81]" -type "matrix" "xform" 1 1.0000000000000002 0.99999999999999933 0
		 0 -2.2204460492503131e-16 0 1.3521359980964487 6.6660558388888784e-16 -4.9613091412936683e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[82]" -type "matrix" "xform" 1 1 1 1.9537323148188743e-16 5.3188481010768148e-16
		 -1.753805434212552e-15 0 4.4408920985006262e-16 0 6.6960326172704754e-16 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[83]" -type "matrix" "xform" 1 1 1 -2.2204460492503109e-16 -7.4636477553902125e-16
		 -4.874572967494826e-16 0 -8.8817841970012523e-16 1.0269562977782698e-15 -8.8817841970012523e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[84]" -type "matrix" "xform" 1 1 1 5.5511151231257827e-16 1.3834419720915046e-16
		 -3.3393426912553532e-16 0 -2.6645352591003757e-15 8.8817841970012523e-16 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[85]" -type "matrix" "xform" 1 1 1 1.1102230246251568e-16 -1.0842021724855042e-16
		 -3.6082248300317588e-16 0 -1.3322676295501878e-15 9.8532293435482643e-16 6.4392935428259079e-15 0
		 0 0 -3.4101263415841854 0.068671146571312028 1.0404662078817875 0 0 0 -3.4101263415841854
		 0.068671146571312028 1.0404662078817875 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[86]" -type "matrix" "xform" 1 1 1 1.1102230246251568e-16 -1.0842021724855042e-16
		 -3.6082248300317588e-16 0 -1.3322676295501878e-15 1.1900203045200897e-15 -4.6629367034256575e-15 0
		 0 0 -3.401820707719184 0.023315246114292507 -1.0873406220864232 0 0 0 -3.401820707719184
		 0.023315246114292507 -1.0873406220864232 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[87]" -type "matrix" "xform" 1 1.0000000000000002 0.99999999999999933 0
		 0 -4.4408920985006262e-16 0 1.3521359980964487 -4.436174407362687e-16 9.0205620750793969e-17 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[88]" -type "matrix" "xform" 1 1 1 3.5039362921250368e-31 -5.3504985459421539e-16
		 -1.3097606744636685e-15 0 0 0 1.0408340855860843e-17 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[89]" -type "matrix" "xform" 1 1 1 -1.1102230246251563e-16 -4.4929338027799304e-16
		 -9.0205620750793944e-17 0 -1.7763568394002505e-15 2.7755575615628914e-17 -3.5527136788005009e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[90]" -type "matrix" "xform" 1 1 1 1.1102230246251565e-16 -1.3617579286417936e-16
		 -1.4137996329210978e-16 0 8.8817841970012523e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[91]" -type "matrix" "xform" 1 1 1 3.3306690738754691e-16 9.1940344226770764e-17
		 1.4745149545802873e-17 0 1.3322676295501878e-15 -5.1000870193718129e-16 2.6645352591003757e-15 0
		 0 0 3.4063805124515185 0.016597295764802688 -1.0472002207408684 0 0 0 3.4063805124515185
		 0.016597295764802688 -1.0472002207408684 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[92]" -type "matrix" "xform" 1 1 1 1.507498052078891 -0.29575017313324742
		 -3.1364425171439771 0 3.4145330586468816 0.017584223717194369 -1.0403531935299046 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[93]" -type "matrix" "xform" 1 1 1 3.3306690738754691e-16 9.1940344226770764e-17
		 1.4745149545802873e-17 0 -4.4408920985006262e-16 9.7144514654701197e-17 -3.9968028886505635e-15 0
		 0 0 3.3959246184128209 -0.11282837389117172 1.094352305280037 0 0 0 3.3959246184128209
		 -0.11282837389117172 1.094352305280037 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[94]" -type "matrix" "xform" 1 1 1 -1.634134946506645 2.8304285094698334
		 -0.032738324741657721 0 3.3915580472033167 -0.11107496879342893 1.091371275305514 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[95]" -type "matrix" "xform" 1 1.0000000000000002 0.99999999999999933 0
		 0 -4.4408920985006262e-16 0 1.3521359980964505 -3.3278883196839555e-16 5.2041704279304213e-17 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[96]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[97]" -type "matrix" "xform" 1 1 1 -0.001176051150633414 5.6092466492451029e-05
		 -3.2983808690973444e-08 0 -1.4719799999999992 -0.5232583732815721 -0.0015155990002750572 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.48829431748132002 0.51143783543599142 -0.48829431748131946 0.51143783543599108 1
		 1 1 yes;
	setAttr ".xm[98]" -type "matrix" "xform" 1 1 1 4.8277807814565022e-31 2.5792514242937591e-30
		 -1.3540781960185206e-15 0 2.9277262989788788 -2.7512401057361302e-07 1.5543122344752192e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.046217154167331485 0.99893141639487604 1
		 1 1 yes;
	setAttr ".xm[99]" -type "matrix" "xform" 1 1 1 1.5246202186286588 0 0 0 3.1139132043535276
		 -9.3805318512885094e-08 1.1102230246251565e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.51140973546653679 -0.48832374759993707 0.51140973546653423 0.48832374759993946 1
		 1 1 yes;
	setAttr ".xm[100]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4719800000000003 -0.52325837328157032
		 -0.0015155990002761258 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.51143783543599075 0.48829431748131963 0.51143783543599186 0.48829431748132002 1
		 1 1 yes;
	setAttr ".xm[101]" -type "matrix" "xform" 1 1 1 4.2484466320176289e-30 7.5714215856227961e-30
		 -5.4163127840740833e-15 0 -2.9277262989788779 2.7512401068463532e-07 -2.6645352591003757e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.046217154167331458 0.99893141639487604 1
		 1 1 yes;
	setAttr ".xm[102]" -type "matrix" "xform" 1 1 1 5.2562941663480589e-16 1.4871771676055353e-15
		 -0.67012098439461887 0 -3.1139132043535356 9.3805318401862792e-08 -2.4424906541753444e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[103]" -type "matrix" "xform" 1.0000000000000002 1.0000000000000002 1 0
		 -2.4492935982947064e-16 0 0 0 10.512837591974476 0.018175814976949978 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[104]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4719799999999998 -10.543653191974471
		 0.84582718502304999 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 2.0030704868015217e-16 0.70710678118654746 0.70710678118654768 2.0030704868015222e-16 1
		 1 1 yes;
	setAttr ".xm[105]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -2.7707129999999993
		 -2.6194324487249787e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.13857996374650813 -0.13857996374650819 0.6933942555631798 0.69339425556318002 1
		 1 1 yes;
	setAttr ".xm[106]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.82452872304423597
		 -2.2204460492503131e-16 1.0002527283115015e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.70116745117936308 0.091456029908544623 0.091456029908544081 0.70116745117936718 1
		 1 1 yes;
	setAttr ".xm[107]" -type "matrix" "xform" 1 1 1 1.5246202186286582 -4.3582833990085262e-15
		 1.0576723232594092e-15 0 1.2600649311991055 -0.3805874723954431 1.9984014443252818e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.047733489605107718 -0.70549380859800404 0.047733489605107531 0.70549380859800681 1
		 1 1 yes;
	setAttr ".xm[108]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.82452872304423597
		 -2.2204460492503131e-16 1.0002527283115015e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.70116745117936308 0.091456029908544623 0.091456029908544081 0.70116745117936718 1
		 1 1 yes;
	setAttr ".xm[109]" -type "matrix" "xform" 1.0000000000000002 1.0000000000000002 1 0
		 -2.4492935982947064e-16 0 0 0 10.512837591974476 0.018175814976949756 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[110]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.4719800000000007
		 -10.543653186480398 0.84582758934300317 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -4.3297802811774664e-17 -0.70710678118654757 0.70710678118654746 4.3297802811774658e-17 1
		 1 1 yes;
	setAttr ".xm[111]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.1086244689504383e-15
		 2.7707123855344862 4.2431336222392702e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.13857996374650808 -0.13857996374650816 0.6933942555631798 0.69339425556318002 1
		 1 1 yes;
	setAttr ".xm[112]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.82453109738530372
		 -4.4408920985006262e-16 2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.70116745117936374 0.091456029908544539 0.091456029908544179 0.70116745117936652 1
		 1 1 yes;
	setAttr ".xm[113]" -type "matrix" "xform" 1 1 1 1.5246202186286582 -4.3582833990085262e-15
		 1.0576723232594092e-15 0 -1.2600613694867735 0.38058796194417904 -2.6645352591003757e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.047733489605107225 -0.70549380859800404 0.047733489605107031 0.70549380859800692 1
		 1 1 yes;
	setAttr ".xm[114]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.82453109738530372
		 -4.4408920985006262e-16 2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.70116745117936352 0.091456029908544581 0.091456029908544179 0.70116745117936663 1
		 1 1 yes;
	setAttr -s 47 ".m";
	setAttr -s 56 ".p";
	setAttr -s 28 ".g";
	setAttr ".g[15]" yes;
	setAttr ".g[62]" yes;
	setAttr ".g[63]" yes;
	setAttr ".g[64]" yes;
	setAttr ".g[66]" yes;
	setAttr ".g[68]" yes;
	setAttr ".g[72]" yes;
	setAttr ".g[74]" yes;
	setAttr ".g[78]" yes;
	setAttr ".g[80]" yes;
	setAttr ".g[81]" yes;
	setAttr ".g[82]" yes;
	setAttr ".g[83]" yes;
	setAttr ".g[84]" yes;
	setAttr ".g[85]" yes;
	setAttr ".g[86]" yes;
	setAttr ".g[87]" yes;
	setAttr ".g[88]" yes;
	setAttr ".g[89]" yes;
	setAttr ".g[90]" yes;
	setAttr ".g[91]" yes;
	setAttr ".g[93]" yes;
	setAttr ".g[95]" yes;
	setAttr ".g[96]" yes;
	setAttr ".g[103]" yes;
	setAttr ".g[105]" yes;
	setAttr ".g[109]" yes;
	setAttr ".g[111]" yes;
	setAttr ".bp" yes;
createNode ikRPsolver -n "ikRPsolver";
createNode makeNurbCircle -n "makeNurbCircle1";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".r" 4.002711693166547;
	setAttr ".s" 12;
createNode makeNurbCircle -n "makeNurbCircle2";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".r" 0.50602184246140947;
	setAttr ".s" 14;
createNode transformGeometry -n "transformGeometry1";
	setAttr ".txf" -type "matrix" 1.5157986519665132 0 0 0 0 1.5157986519665132 0 0
		 0 0 1.5157986519665132 0 0 0 0.43717832093266518 1;
createNode transformGeometry -n "transformGeometry2";
	setAttr ".txf" -type "matrix" 5.8920044892889207e-16 2.6535229222426873 0 0 -2.6535229222426873 5.8920044892889207e-16 0 0
		 0 0 2.6535229222426873 0 1.2543721199035638 3.9778442382812513 4.9057635831782989 1;
createNode hyperGraphInfo -n "nodeEditorPanel1Info";
createNode hyperView -n "hyperView1";
	setAttr ".dag" no;
createNode hyperLayout -n "hyperLayout1";
	setAttr ".ihi" 0;
	setAttr ".hyp[0].nvs" 1920;
	setAttr ".anf" yes;
createNode animCurveUA -n "L_foot_toe_rotateX";
	setAttr ".tan" 2;
	setAttr -s 3 ".ktv[0:2]"  -10 -90 0 0 10 180;
	setAttr -s 3 ".ktl[0:2]" no yes yes;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "L_foot_toe_rotateY";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  -10 -90 0 0 10 90;
	setAttr -s 3 ".kit[1:2]"  2 9;
	setAttr -s 3 ".kot[1:2]"  2 9;
	setAttr ".pre" 1;
	setAttr ".pst" 1;
createNode animCurveUA -n "L_foot_ball_rotateY";
	setAttr ".tan" 2;
	setAttr -s 3 ".ktv[0:2]"  -10 -90 0 0 10 90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "L_foot_in_rotateZ";
	setAttr ".tan" 2;
	setAttr -s 3 ".ktv[0:2]"  -10 0 0 0 10 90;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[2]"  9;
	setAttr ".pre" 1;
	setAttr ".pst" 1;
createNode animCurveUA -n "L_foot_out_rotateZ";
	setAttr ".tan" 2;
	setAttr -s 3 ".ktv[0:2]"  -10 -90 0 0 10 0;
	setAttr -s 3 ".kit[0:2]"  9 2 2;
	setAttr -s 3 ".kot[0:2]"  9 2 2;
	setAttr ".pre" 1;
	setAttr ".pst" 1;
createNode animCurveUA -n "L_ball_2_joint_rotateZ";
	setAttr ".tan" 2;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 -90;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr ".pst" 1;
createNode animCurveUA -n "L_heel_joint_rotateX";
	setAttr ".tan" 2;
	setAttr -s 3 ".ktv[0:2]"  -10 -90 0 0 10 0;
	setAttr -s 3 ".kit[0:2]"  9 2 2;
	setAttr -s 3 ".kot[0:2]"  9 2 2;
	setAttr ".pre" 1;
	setAttr ".pst" 1;
createNode animCurveUA -n "R_foot_toe_rotateX";
	setAttr ".tan" 2;
	setAttr -s 3 ".ktv[0:2]"  -10 -90 0 0 10 180;
	setAttr -s 3 ".ktl[0:2]" no yes yes;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "R_foot_toe_rotateY";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  -10 -90 0 0 10 90;
	setAttr -s 3 ".kit[1:2]"  2 9;
	setAttr -s 3 ".kot[1:2]"  2 9;
	setAttr ".pre" 1;
	setAttr ".pst" 1;
createNode animCurveUA -n "R_foot_ball_rotateY";
	setAttr ".tan" 2;
	setAttr -s 3 ".ktv[0:2]"  -10 -90 0 0 10 90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "R_foot_out_rotateZ";
	setAttr ".tan" 2;
	setAttr -s 3 ".ktv[0:2]"  -10 90 0 0 10 0;
	setAttr -s 3 ".kit[0:2]"  9 2 2;
	setAttr -s 3 ".kot[0:2]"  9 2 2;
	setAttr ".pre" 1;
	setAttr ".pst" 1;
createNode animCurveUA -n "R_toe_joint_rotateZ";
	setAttr ".tan" 2;
	setAttr -s 3 ".ktv[0:2]"  -10 -90 0 0 10 90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "R_heel_joint_rotateX";
	setAttr ".tan" 2;
	setAttr -s 3 ".ktv[0:2]"  -10 -90 0 0 10 0;
	setAttr -s 3 ".kit[0:2]"  9 2 2;
	setAttr -s 3 ".kot[0:2]"  9 2 2;
	setAttr ".pre" 1;
	setAttr ".pst" 1;
createNode animCurveUA -n "R_ball_2_joint_rotateZ";
	setAttr ".tan" 2;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 -90;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr ".pst" 1;
createNode animCurveUA -n "R_foot_in_rotateZ1";
	setAttr ".tan" 2;
	setAttr -s 3 ".ktv[0:2]"  -10 0 0 0 10 -90;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[2]"  9;
	setAttr ".pst" 1;
createNode dagPose -n "bindPose3";
	setAttr -s 59 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" -1.0000000000000002 0 -1.2246467991473535e-16 0 0 1.0000000000000002 0 0
		 1.2246467991473532e-16 0 -1 0 9.2374025095764978e-17 10.512837591974474 -0.018175814976949759 1;
	setAttr ".wm[2]" -type "matrix" -1.0000000000000002 0 -1.2246467991473535e-16 0 0 1.0000000000000002 0 0
		 1.2246467991473532e-16 0 -1 0 9.2374025095764978e-17 10.512837591974474 -0.018175814976949759 1;
	setAttr ".wm[3]" -type "matrix" -1.0000000000000002 0 -1.2246467991473535e-16 0 0 1.0000000000000002 0 0
		 1.2246467991473532e-16 0 -1 0 2.2520275530589007e-16 8.1810495983390226 -0.018175814976949076 1;
	setAttr ".wm[4]" -type "matrix" -0.99993049576488846 -0.011780861274521621 0.00046362378640443303 0
		 -0.011783344565849348 0.9999138793441511 -0.0057781213013727746 0 -0.00039551261334104981 -0.0057831827362954677 -0.99998319904246957 0
		 -0.0092941025623658278 8.1811370235194083 -0.022738967088415104 1;
	setAttr ".wm[5]" -type "matrix" -1.0000000000000002 0 -1.2246467991473535e-16 0 0 1.0000000000000002 0 0
		 1.2246467991473532e-16 0 -1 0 5.821954798325549e-16 7.3913983732815725 -0.045052099000275257 1;
	setAttr ".wm[6]" -type "matrix" -1.0000000000000002 0 -1.2246467991473535e-16 0 0 1.0000000000000002 0 0
		 1.2246467991473532e-16 0 -1 0 5.821954798325549e-16 7.3913983732815725 -0.045052099000275257 1;
	setAttr ".wm[7]" -type "matrix" 2.1637759618662175e-16 -0.99892875515336377 0.046274638061808475 0
		 1.2099341392927059e-15 0.046274638061808433 0.99892875515336366 0 -1.0000000000000002 -1.6653345369377346e-16 1.2098029496354525e-15 0
		 1.4719800000000001 6.8681400000000004 -0.043536500000000013 1;
	setAttr ".wm[8]" -type "matrix" -0.0010018890381054521 -0.99999796505669403 -0.0017510285053828345 0
		 -0.00074446504290151061 -0.0017502830283765035 0.99999819113892419 0 -0.99999922099477456 0.0010031908053387184 -0.00074270993857774594 0
		 1.4780440243038642 6.8855350205191286 -0.041195520051846388 1;
	setAttr ".wm[9]" -type "matrix" 1.0373330461024802e-16 -0.99893407432844672 -0.046159670119807289 0
		 1.2247445803399657e-15 -0.046159670119807344 0.99893407432844661 0 -1.0000000000000002 -1.6653345369377346e-16 1.2098029496354525e-15 0
		 1.4719799999999992 3.9435500000000006 0.091942700000000321 1;
	setAttr ".wm[10]" -type "matrix" -0.0010018889306233061 -0.99999796480398651 -0.0017511728801150946 0
		 -0.00074446518754922608 -0.001750427403076123 0.99999819088610897 0 -0.99999922099477456 0.0010031908053387184 -0.00074270993857774594 0
		 1.4751107676231625 3.9578146797788305 -0.04632232738083019 1;
	setAttr ".wm[11]" -type "matrix" -1.0000000000000002 -4.9354037707625774e-15 9.8943850404386808e-16 0
		 -1.2247446562567811e-15 0.046159700212273835 -0.99893407293790559 0 4.9887145760660253e-15 -0.99893407293790581 -0.046159700212273787 0
		 1.4719799999999983 0.83295600000000514 -0.051794599999999566 1;
	setAttr ".wm[12]" -type "matrix" -1.0000000000000002 0 -1.2246467991473535e-16 0
		 0 1.0000000000000002 0 0 1.2246467991473532e-16 0 -1 0 5.821954798325549e-16 7.3913983732815725 -0.045052099000275257 1;
	setAttr ".wm[13]" -type "matrix" 8.9384542843853499e-16 0.99892875515336366 -0.046274638061808405 0
		 1.1215342124201222e-15 -0.046274638061808211 -0.99892875515336343 0 -1 8.8817841970012504e-16 -1.4547323094649232e-15 0
		 -1.4719799999999998 6.8681400000000021 -0.043536499999999305 1;
	setAttr ".wm[14]" -type "matrix" 0.0011080422773219153 0.99600118668349213 -0.089333131409276831 0
		 0.00067623541326012433 -0.089333912125282536 -0.99600150343764937 0 -0.9999991574736341 0.0010432015470487955 -0.00077251702551789012 0
		 -1.4657113580081362 6.8508526361613908 -0.039830630169622079 1;
	setAttr ".wm[15]" -type "matrix" 7.8646941445142735e-16 0.99893407432844661 0.046159670119807344 0
		 1.1992766568651792e-15 0.046159670119807546 -0.99893407432844639 0 -1 8.8817841970012504e-16 -1.4547323094649232e-15 0
		 -1.4719799999999996 3.9435500000000023 0.091942700000001265 1;
	setAttr ".wm[16]" -type "matrix" 0.0009713170160647992 0.99613467733611416 0.087833713070380792 0
		 0.00086115926330894313 0.087832888709229562 -0.99613485134579793 0 -0.9999991574736341 0.0010432015470487955 -0.00077251702551789012 0
		 -1.4689554023377807 3.9348337435160552 0.22171205400352612 1;
	setAttr ".wm[17]" -type "matrix" -1 6.2115685448300079e-15 -1.2087441722995858e-15 0
		 -1.1992768459933591e-15 -0.046159700212273252 0.99893407293790548 0 6.1155398965244776e-15 0.9989340729379057 0.046159700212273051 0
		 -1.4719799999999996 0.83295599999999936 -0.051794599999999358 1;
	setAttr ".wm[18]" -type "matrix" -0.0016000963820610461 0.9999893579386302 0.0043270892127602765 0
		 -0.99999867169251477 -0.0015987384955498123 -0.00031725136626375235 0 -0.0003103301059571255 -0.0043275910978186477 0.99999058778096317 0
		 -0.0025534857754259629 11.446195766616725 -0.011270505473314645 1;
	setAttr ".wm[19]" -type "matrix" -0.99999867169251477 -0.0015987384955500343 -0.00031725136626375332 0
		 -0.0016000963820612681 0.9999893579386302 0.0043270892127603988 0 0.00031033010595712528 0.00432759109781877 -0.99999058778096317 0
		 0.0011407931217590609 9.1374351045348732 -0.021260825146649523 1;
	setAttr ".wm[20]" -type "matrix" -0.99999867169251477 -0.0015987384955500343 -0.00031725136626375332 0
		 -0.0016000963820612681 0.9999893579386302 0.0043270892127603988 0 0.00031033010595712528 0.00432759109781877 -0.99999058778096317 0
		 0.0011407931217598309 9.1374351045348732 -0.02126082514664912 1;
	setAttr ".wm[21]" -type "matrix" 7.2056521075683933e-16 1.0000000000000004 1.8474805019152996e-16 0
		 -1.0000000000000002 1.6922108923541138e-16 -5.3348167897149246e-16 0 -5.3310220821112253e-16 -1.8561541192951836e-16 1.0000000000000007 0
		 -8.565197162635485e-17 10.449564173868319 -0.018175814976949541 1;
	setAttr ".wm[22]" -type "matrix" 7.2056521075683933e-16 1.0000000000000004 1.8474805019152996e-16 0
		 -1.0000000000000004 1.6922108923541143e-16 -5.3348167897149256e-16 0 -5.3310220821112214e-16 -1.8561541192951824e-16 1 0
		 2.2204460492503412e-16 11.801700171964768 -0.018175814976949787 1;
	setAttr ".wm[23]" -type "matrix" -0.99995325883512631 0.0096685130713985504 -5.3167050447818619e-16 0
		 0.0096685129379950347 0.99995324503795202 0.00016611934979871666 0 1.6061271054724925e-06 0.00016611158518679473 -0.99999998620218111 0
		 1.4528466920724905 12.978720392534806 -0.018175814976949107 1;
	setAttr ".wm[24]" -type "matrix" -0.99995325883512631 0.0096685130713985504 -5.3167050447818619e-16 0
		 0.0096685129379950347 0.99995324503795202 0.00016611934979871666 0 1.6061271054724925e-06 0.00016611158518679473 -0.99999998620218111 0
		 1.4528466920724901 12.978720392534806 -0.018175814976949776 1;
	setAttr ".wm[25]" -type "matrix" -0.99980566703278828 0.009667086011420219 0.017180675690146002 0
		 -0.017117319501743087 0.0065988191016370353 -0.99983171231939838 0 -0.0097788313308612273 -0.99993149917107482 -0.0064320621336325951 0
		 4.3538966178894078 12.950670242309572 -0.068027500739354471 1;
	setAttr ".wm[26]" -type "matrix" -0.99980566703278828 0.009667086011420219 0.017180675690146002 0
		 -0.017117319501743087 0.0065988191016370353 -0.99983171231939838 0 -0.0097788313308612273 -0.99993149917107482 -0.0064320621336325951 0
		 4.3538966178894087 12.950670242309581 -0.068027500739355456 1;
	setAttr ".wm[27]" -type "matrix" -0.99998877981647083 0.00016216523014156436 -0.0047343366594260854 0
		 0.0046916448112532304 -0.10423414028522682 -0.9945417198227362 0 -0.00065475959839743705 -0.99455277270813514 0.10423220993738221 0
		 6.9190889464876228 12.950254252637821 -0.055882880394722063 1;
	setAttr ".wm[28]" -type "matrix" -0.99998877981647083 0.00016216523014156436 -0.0047343366594260854 0
		 0.0046916448112532304 -0.10423414028522682 -0.9945417198227362 0 -0.00065475959839743705 -0.99455277270813514 0.10423220993738221 0
		 6.9190889464876255 12.950254252637821 -0.055882880394722931 1;
	setAttr ".wm[29]" -type "matrix" -0.99990650512154777 -0.00088173540775369119 -0.013645642465037907 0
		 0.013661299068293775 -0.021245673631520454 -0.99968094423156384 0 0.00059154321868011019 -0.99977389638588554 0.021255732920951079 0
		 8.0803138384933639 12.951278241479192 -0.040035739070358886 1;
	setAttr ".wm[30]" -type "matrix" -0.99990650512154777 -0.00088173540775369119 -0.013645642465037907 0
		 0.013661299068293775 -0.021245673631520454 -0.99968094423156384 0 0.00059154321868011019 -0.99977389638588554 0.021255732920951079 0
		 8.0803138384933657 12.951278241479185 -0.040035739070359719 1;
	setAttr ".wm[31]" -type "matrix" 0.95658675438649365 -0.29044352618105873 0.024173113821511241 0
		 -0.29144749129975428 -0.95339688079932872 0.078056053558917676 0 0.00037569588120631902 -0.081712580314325919 -0.99665586491575975 0
		 11.494945806946159 11.914511063823605 0.046252605247056905 1;
	setAttr ".wm[32]" -type "matrix" -0.99990650512154777 -0.00088173540775369119 -0.013645642465037907 0
		 0.013661299068293775 -0.021245673631520454 -0.99968094423156384 0 0.00059154321868011019 -0.99977389638588554 0.021255732920951079 0
		 8.0803138384933657 12.951278241479198 -0.040035739070360156 1;
	setAttr ".wm[33]" -type "matrix" 0.95162329983167815 0.30627477251083673 -0.024675067191485354 0
		 0.30726691201394124 -0.94845139154443336 0.077633772669154749 0 0.00037416424918664166 -0.081459938625467604 -0.99667654652863735 0
		 11.472440159266693 14.043015610043666 -0.12799170326533091 1;
	setAttr ".wm[34]" -type "matrix" 7.2056521075683933e-16 1.0000000000000004 1.8474805019152996e-16 0
		 -1.0000000000000004 1.6922108923541143e-16 -5.3348167897149256e-16 0 -5.3310220821112214e-16 -1.8561541192951824e-16 1 0
		 1.3322676295501906e-15 11.801700171964768 -0.018175814976949201 1;
	setAttr ".wm[35]" -type "matrix" -0.99995325883512631 -0.0096685130714007639 -5.3524298235457108e-16 0
		 0.0096685129379958153 -0.99995324503795202 -0.00016611934941691207 0 1.6061271007150316e-06 -0.0001661115848050183 0.99999998620218078 0
		 -1.4528499999999991 12.978699999999998 -0.01817579999999969 1;
	setAttr ".wm[36]" -type "matrix" -0.99995325883512631 -0.0096685130714007639 -5.3524298235457108e-16 0
		 0.0096685129379958153 -0.99995324503795202 -0.00016611934941691207 0 1.6061271007150316e-06 -0.0001661115848050183 0.99999998620218078 0
		 -1.4528499999999991 12.978699999999998 -0.01817579999999968 1;
	setAttr ".wm[37]" -type "matrix" -0.99980566703278817 -0.0096670860114239157 -0.017180675690146831 0
		 -0.017117319501743906 -0.0065988191016370353 0.99983171231939783 0 -0.0097788313308634894 0.9999314991710746 0.0064320621336324902 0
		 -4.3539000000000003 12.950699999999999 -0.068027500000000865 1;
	setAttr ".wm[38]" -type "matrix" -0.99980566703278817 -0.0096670860114239157 -0.017180675690146831 0
		 -0.017117319501743906 -0.0065988191016370353 0.99983171231939783 0 -0.0097788313308634894 0.9999314991710746 0.0064320621336324902 0
		 -4.3538999999999985 12.950699999999996 -0.068027500000000823 1;
	setAttr ".wm[39]" -type "matrix" -0.99998877981647083 -0.00016216523014186794 0.0047343366594267862 0
		 0.0047294247656056365 0.022740448206862614 0.9997302158866348 0 -0.00026978241813602893 0.99974138941917889 -0.022739426106604663 0
		 -6.9190899999999989 12.950299999999993 -0.055882900000001859 1;
	setAttr ".wm[40]" -type "matrix" -0.99998877981647083 -0.00016216523014186794 0.0047343366594267862 0
		 0.0047294247656056365 0.022740448206862614 0.9997302158866348 0 -0.00026978241813602893 0.99974138941917889 -0.022739426106604663 0
		 -6.9190899999999997 12.950299999999993 -0.055882900000001852 1;
	setAttr ".wm[41]" -type "matrix" -0.99990612408113178 0.0001511524852626141 0.013701101341687309 0
		 0.013666963790084486 -0.060394096631829111 0.99808104239725226 0 0.00097832806844474368 0.9981745990782136 0.060386361284970616 0
		 -8.0803100000000008 12.950399999999997 -0.039971300000002402 1;
	setAttr ".wm[42]" -type "matrix" -0.99990612408113178 0.0001511524852626141 0.013701101341687309 0
		 0.013666963790084486 -0.060394096631829111 0.99808104239725226 0 0.00097832806844474368 0.9981745990782136 0.060386361284970616 0
		 -8.0803100000000025 12.9504 -0.039971300000002735 1;
	setAttr ".wm[43]" -type "matrix" 0.95669909334599734 0.29107845299057927 -0.00042307866746276249 0
		 -0.29107847904145739 0.95669917896845325 -5.8286708792820718e-16 0 0.00040475901380053665 0.00012314909504033272 0.99999991050221648 0
		 -11.495300000000004 11.911399999999999 -0.038461100000004203 1;
	setAttr ".wm[44]" -type "matrix" -0.99990612408113178 0.0001511524852626141 0.013701101341687309 0
		 0.013666963790084486 -0.060394096631829111 0.99808104239725226 0 0.00097832806844474368 0.9981745990782136 0.060386361284970616 0
		 -8.0803100000000008 12.950399999999993 -0.039971300000002555 1;
	setAttr ".wm[45]" -type "matrix" 0.95150469301091567 -0.3076339377847816 -0.00042367585729973303 0
		 0.30763396539512122 0.95150477840906011 8.5348395018058909e-16 0 0.00040312960271700809 -0.00013033708402406669 0.99999991024937973 0
		 -11.472000000000001 14.046999999999992 -0.038461100000003814 1;
	setAttr ".wm[46]" -type "matrix" 7.2056521075683933e-16 1.0000000000000004 1.8474805019152996e-16 0
		 -1.0000000000000004 1.6922108923541143e-16 -5.3348167897149256e-16 0 -5.3310220821112214e-16 -1.8561541192951824e-16 1 0
		 1.2214390207823188e-15 11.80170017196477 -0.018175814976949239 1;
	setAttr ".wm[47]" -type "matrix" -1.0000000000000004 -5.2823515689619981e-17 -5.3348167897149256e-16 0
		 4.9852060583180783e-16 1.0000000000000004 3.0721273010626515e-16 0 5.3310220821112223e-16 3.0808009184425361e-16 -1 0
		 2.4084159313993396e-15 14.132338326454143 -0.018175814976948819 1;
	setAttr ".wm[48]" -type "matrix" -1.0000000000000002 0 -1.2246467991473535e-16 0
		 0 1.0000000000000002 0 0 1.2246467991473532e-16 0 -1 0 -1.2325951644078309e-32 10.512837591974478 -0.018175814976949756 1;
	setAttr ".wm[54]" -type "matrix" -1.0000000000000002 0 -1.2246467991473535e-16 0
		 0 1.0000000000000002 0 0 1.2246467991473532e-16 0 -1 0 -1.2325951644078309e-32 10.512837591974478 -0.018175814976949756 1;
	setAttr ".wm[68]" -type "matrix" 1 -3.4694469519536881e-18 1.4637067577342992e-32 0
		 2.4651903288156619e-32 1 4.9303806576313238e-32 0 2.5407181807812077e-33 0 1.0000000000000002 0
		 0.21760788009643761 -0.035661746401910652 -0.025732606947902248 1;
	setAttr ".wm[71]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 91 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1.0000000000000002 1.0000000000000002 1 0
		 3.1415926535897931 0 0 9.2374025095764978e-17 10.512837591974474 -0.018175814976949759 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.274286506692317e-16
		 8.1810495983390261 0.018175814976949076 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 -2.4492935982947064e-16 0 0 0.0092941025623660533
		 8.7425180385736212e-05 0.0045631521114660283 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.5370132900645056e-16
		 -0.78965122505745189 0.026876284023326182 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.3877787807814457e-17
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 -2.4465124285046759e-16 1.1668790776933094e-17
		 -1.0956366502803062e-31 0 -1.4719799999999992 -0.5232583732815721 -0.0015155990002750641 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.48829431748132007 0.51143783543599175 -0.48829431748131952 0.51143783543599097 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 8.8817841970012523e-16
		 -4.8572257327350599e-17 -2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 1.3276397149005377e-30 7.0929414168078486e-30
		 -3.7237150390509323e-15 0 2.9277262989788775 -2.7512401046259072e-07 1.7763568394002505e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.046217154167331485 0.99893141639487604 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 5.9010404483551375e-17 1.1831130031478317e-16
		 7.6327832942979512e-17 0 -4.4408920985006262e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 1.5246202186286588 0 0 0 3.1139132043535276
		 -9.3805318485129519e-08 1.1102230246251565e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.51140973546653679 -0.48832374759993707 0.51140973546653423 0.48832374759993946 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4719800000000003 -0.52325837328157032
		 -0.0015155990002761327 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.51143783543599086 0.4882943174813198 0.51143783543599186 0.48829431748131985 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 -8.8817841970012523e-16
		 0 -2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 9.2934773007047973e-30 2.6294280365345429e-29
		 -1.1848184215162053e-14 0 -2.9277262989788784 2.7512401007401266e-07 -2.886579864025407e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.046217154167331485 0.99893141639487604 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.4408920985006262e-16
		 -5.5511151231257827e-17 -2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 3.1415926234652169 -1.5707963267948912
		 0 0 -3.1139132043535351 9.3805318721051911e-08 -2.4424906541753444e-15 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1.0000000000000002 1 1.0000000000000002 -0.0003172543416871676
		 3.1372655508737317 -1.5723964388398413 0 0.0025534857754261867 3.2651461682777025
		 -0.0069053095036344311 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 3.1415926535897931 -9.1997605001001955e-19
		 1.5707963267948968 0 -0.0011407931217588337 0.95638550619584883 0.0030850101697004473 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70767037218230588 0.70653941024251288 -0.0014190077982268469 0.0016408919486620181 1
		 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 8.6475965277443844e-16 3.2255056983091125e-16
		 -8.0881482067418495e-17 0 -7.7021722333370235e-16 0 -3.9551695252271202e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 -3.1412823205728766 -0.0043276046058190187
		 1.5723950809423535 0 -0.00095793837152942721 1.312130280068537 0.0025930229242777658 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1.0000000000000002 0.99999999999999933 0
		 0 -2.2204460492503131e-16 0 1.3521359980964487 6.6660558388888626e-16 -4.9613091412936683e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 3.1414265342392307 0 1.5611276630814939 0 2.5291562186664844
		 -1.4528466920724876 3.2265856653168612e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 1.9537323148188743e-16 5.3188481010768148e-16
		 -1.753805434212552e-15 0 6.6613381477509392e-16 0 6.6960326172704754e-16 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 1.5645294146592181 0.017181520784770119
		 2.8544639841677381e-06 0 -2.9011855306081333 -8.2813296202743913e-06 0.049851685074561052 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 -2.2204460492503109e-16 -7.4636477553902125e-16
		 -4.874572967494826e-16 0 -8.8817841970012523e-16 1.0269562977782698e-15 -8.8817841970012523e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 0.11080985123739941 -0.0096471686759773707
		 0.021854494001926981 0 -2.5644891957859421 -0.05605453826727156 -0.024746736889113663 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 -2.3098934191398278e-32 1.3834419720915037e-16
		 -3.3393426912553537e-16 0 -8.8817841970012523e-16 1.1102230246251565e-15 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 -0.083173820441886204 -0.00010931530637528345
		 0.0089719819128772881 0 -1.1612867224960635 -0.010419323044271289 -0.00012695152391373199 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 1.1102230246251568e-16 -1.0842021724855042e-16
		 -3.6082248300317588e-16 0 -5.3290705182007514e-15 9.9920072216264089e-16 3.5527136788005009e-15 0
		 0 0 -3.4101263415841854 0.068671146571312028 1.0404662078817875 0 0 0 -3.4101263415841854
		 0.068671146571312028 1.0404662078817875 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 1.507498052078889 -0.29575017313324725
		 -3.1364425171439718 0 -3.4145760234172737 -0.017585687905880262 1.0403867852359472 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 1.1102230246251568e-16 -1.0842021724855042e-16
		 -3.6082248300317588e-16 0 -1.3322676295501878e-15 1.1900203045200897e-15 -4.6629367034256575e-15 0
		 0 0 -3.401820707719184 0.023315246114292507 -1.0873406220864232 0 0 0 -3.401820707719184
		 0.023315246114292507 -1.0873406220864232 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[33]" -type "matrix" "xform" 1 1 1 -1.6341349465066468 2.8304285094698338
		 -0.032738324741655944 0 -3.3915715821890302 0.11107405765888544 -1.0913535019615459 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[34]" -type "matrix" "xform" 1 1.0000000000000002 0.99999999999999933 0
		 0 -4.4408920985006262e-16 0 1.3521359980964487 -4.436174407362687e-16 9.0205620750793969e-17 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[35]" -type "matrix" "xform" 1 1 1 -0.00016611935018094257 0 1.5804649905083019 0 2.5291358261316788
		 1.4528500000000013 1.4976950363926322e-08 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[36]" -type "matrix" "xform" 1 1 1 3.5039362921250368e-31 -5.3504985459421539e-16
		 -1.3097606744636685e-15 0 0 -1.7763568394002505e-15 1.0408340855860843e-17 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[37]" -type "matrix" "xform" 1 1 1 1.5645294146588369 0.01718152078476989
		 2.854463979089682e-06 0 2.9011851199096412 -4.1867265753836591e-05 -0.049851707642808711 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[38]" -type "matrix" "xform" 1 1 1 -1.1102230246251563e-16 -4.4929338027799304e-16
		 -9.0205620750793944e-17 0 -8.8817841970012523e-16 1.3877787807814457e-17 -3.5527136788005009e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[39]" -type "matrix" "xform" 1 1 1 0.029128443253046907 -0.0096471686759807759
		 0.021854494001928501 0 2.5644867134162519 0.056054372553751522 0.024762702563723593 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[40]" -type "matrix" "xform" 1 1 1 4.4408920985006262e-16 -1.3574211199518513e-16
		 -1.413799632921098e-16 0 1.7763568394002505e-15 2.7755575615628914e-17 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[41]" -type "matrix" "xform" 1 1 1 -0.083173820441886787 -0.00010931530637410826
		 0.008971981912880185 0 1.1612822855531517 0.010417678721604789 5.1430226099213883e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[42]" -type "matrix" "xform" 1 1 1 3.3306690738754691e-16 9.1940344226770764e-17
		 1.734723475976808e-17 0 0 -5.5511151231257827e-16 5.3290705182007514e-15 0 0
		 0 3.4063805124515185 0.016597295764802688 -1.0472002207408684 0 0 0 3.4063805124515185
		 0.016597295764802688 -1.0472002207408684 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[43]" -type "matrix" "xform" 1 1 1 1.507498052078891 -0.29575017313324742
		 -3.1364425171439771 0 3.4145330586468816 0.017584223717194369 -1.0403531935299046 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[44]" -type "matrix" "xform" 1 1 1 3.3306690738754691e-16 9.1940344226770764e-17
		 1.734723475976808e-17 0 -4.4408920985006262e-16 9.7144514654701197e-17 -3.9968028886505635e-15 0
		 0 0 3.3959246184128209 -0.11282837389117172 1.094352305280037 0 0 0 3.3959246184128209
		 -0.11282837389117172 1.094352305280037 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[45]" -type "matrix" "xform" 1 1 1 -1.634134946506645 2.8304285094698334
		 -0.032738324741657721 0 3.3915580472033167 -0.11107496879342893 1.091371275305514 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[46]" -type "matrix" "xform" 1 1.0000000000000002 0.99999999999999933 0
		 0 -4.4408920985006262e-16 0 1.3521359980964505 -3.3278883196839555e-16 5.2041704279304213e-17 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[47]" -type "matrix" "xform" 1 1 1 3.1415926535897931 0 1.5707963267948968 0 2.3306381544893711
		 4.9239986237054585e-16 -1.0408340855860843e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[48]" -type "matrix" "xform" 1 1 1 0 -2.4492935982947064e-16 0 0 0
		 10.512837591974476 0.018175814976949756 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[49]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.4719800000000007 -10.543653186480398
		 0.84582758934300317 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -4.3297802811774664e-17 -0.70710678118654757 0.70710678118654746 4.3297802811774658e-17 1
		 1 1 yes;
	setAttr ".xm[50]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.1086244689504383e-15
		 2.7707123855344862 4.2431336222392702e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.13857996374650808 -0.13857996374650816 0.6933942555631798 0.69339425556318002 1
		 1 1 yes;
	setAttr ".xm[51]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.82453109738530372
		 -4.4408920985006262e-16 2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.70116745117936374 0.091456029908544539 0.091456029908544179 0.70116745117936652 1
		 1 1 yes;
	setAttr ".xm[52]" -type "matrix" "xform" 1 1 1 1.5246202186286582 -4.3582833990085262e-15
		 1.0576723232594092e-15 0 -1.2600613694867735 0.38058796194417904 -2.6645352591003757e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.047733489605107225 -0.70549380859800404 0.047733489605107031 0.70549380859800692 1
		 1 1 yes;
	setAttr ".xm[53]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.82453109738530372
		 -4.4408920985006262e-16 2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.70116745117936352 0.091456029908544581 0.091456029908544179 0.70116745117936663 1
		 1 1 yes;
	setAttr ".xm[54]" -type "matrix" "xform" 1 1 1 0 -2.4492935982947064e-16 0 0 9.2374025095764965e-17
		 3.5527136788005009e-15 -3.4694469519536142e-18 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[55]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4719799999999998 -10.543653191974471
		 0.84582718502304999 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 2.0030704868015217e-16 0.70710678118654746 0.70710678118654768 2.0030704868015222e-16 1
		 1 1 yes;
	setAttr ".xm[56]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -2.7707129999999993
		 -2.6194324487249787e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.13857996374650813 -0.13857996374650819 0.6933942555631798 0.69339425556318002 1
		 1 1 yes;
	setAttr ".xm[57]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.82452872304423597 -2.2204460492503131e-16
		 1.0002527283115015e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.70116745117936308 0.091456029908544623 0.091456029908544081 0.70116745117936718 1
		 1 1 yes;
	setAttr ".xm[58]" -type "matrix" "xform" 1 1 1 1.5246202186286582 -4.3582833990085262e-15
		 1.0576723232594092e-15 0 1.2600649311991055 -0.3805874723954431 1.9984014443252818e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.047733489605107718 -0.70549380859800404 0.047733489605107531 0.70549380859800681 1
		 1 1 yes;
	setAttr ".xm[59]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.82452872304423597 -2.2204460492503131e-16
		 1.0002527283115015e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.70116745117936308 0.091456029908544623 0.091456029908544081 0.70116745117936718 1
		 1 1 yes;
	setAttr ".xm[60]" -type "matrix" "xform" 1 1 1 0.0012287567764434906 -0.012782192951010246
		 -0.053826422147905673 0 -1.4719799999999992 -0.5232583732815721 -0.0015155990002750641 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.48829431748132007 0.51143783543599175 -0.48829431748131952 0.51143783543599097 1
		 1 1 yes;
	setAttr ".xm[61]" -type "matrix" "xform" 1 1 1 -3.2967881673944607e-17 -1.6734414973623939e-16
		 0.092467102634669854 0 2.9277262989788775 -2.7512401046259072e-07 1.7763568394002505e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.046217154167331485 0.99893141639487604 1
		 1 1 yes;
	setAttr ".xm[62]" -type "matrix" "xform" 1 1 1 1.5246202186286588 0 0 0 3.1139132043535276
		 -9.3805318485129519e-08 1.1102230246251565e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.51140973546653679 -0.48832374759993707 0.51140973546653423 0.48832374759993946 1
		 1 1 yes;
	setAttr ".xm[63]" -type "matrix" "xform" 1 1 1 -8.5535073210924831e-05 0.012883490444524534
		 0.037384512714541018 0 1.4719800000000003 -0.52325837328157032 -0.0015155990002761327 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.51143783543599086 0.4882943174813198 0.51143783543599186 0.48829431748131985 1
		 1 1 yes;
	setAttr ".xm[64]" -type "matrix" "xform" 1 1 1 6.6619130978974505e-17 1.884872638064096e-16
		 -0.084932228331050977 0 -2.9277262989788784 2.7512401007401266e-07 -2.886579864025407e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.046217154167331485 0.99893141639487604 1
		 1 1 yes;
	setAttr ".xm[65]" -type "matrix" "xform" 1 1 1 3.1415926234652169 -1.5707963267948912
		 0 0 -3.1139132043535351 9.3805318721051911e-08 -2.4424906541753444e-15 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[66]" -type "matrix" "xform" 0.99999999999999978 1 1 -1.5707963267948921
		 0.25940340789407967 7.7615191848555627e-17 0 -0.8245310973853035 -4.4408920985006262e-16
		 1.1102230246251565e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[67]" -type "matrix" "xform" 1 1 1 -1.570796326794891 0.25940340789407978
		 -4.9109184878465411e-17 0 0.82452872304423686 -2.2204460492503131e-16 1.0002527279784346e-06 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[68]" -type "matrix" "xform" 1 1 1.0000000000000002 4.9303806576313238e-32
		 -1.4637067577342992e-32 -3.4694469519536881e-18 0 0.21760788009643761 -0.035661746401910652
		 -0.025732606947902248 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[69]" -type "matrix" "xform" 1 0.99999999999999989 1 3.1415926234652161
		 -1.5707963267948919 0 0 3.113913204353528 -9.3805318499007306e-08 8.8817841970012523e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[70]" -type "matrix" "xform" 1.0000000000000002 1 0.99999999999999989 3.1415926234652169
		 -1.5707963267948912 0 0 -3.1139132043535351 9.3805318707174123e-08 -2.4424906541753444e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[71]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[72]" -type "matrix" "xform" 1 1 1 -0.001176051150633414 5.6092466492451029e-05
		 -3.2983808690973444e-08 0 -1.4719799999999992 -0.52325837328157299 -0.0015155990002750572 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.48829431748132002 0.51143783543599142 -0.48829431748131946 0.51143783543599108 1
		 1 1 yes;
	setAttr ".xm[73]" -type "matrix" "xform" 1 1 1 4.8277807814565022e-31 2.5792514242937591e-30
		 -1.3540781960185206e-15 0 2.9277262989788775 -2.7512401057361302e-07 1.7763568394002505e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.046217154167331485 0.99893141639487604 1
		 1 1 yes;
	setAttr ".xm[74]" -type "matrix" "xform" 1 1 1 1.5246202186286588 0 0 0 3.1139132043535276
		 -9.3805318512885094e-08 1.1102230246251565e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.51140973546653679 -0.48832374759993707 0.51140973546653423 0.48832374759993946 1
		 1 1 yes;
	setAttr ".xm[75]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4719800000000003 -0.52325837328157032
		 -0.0015155990002761258 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.51143783543599075 0.48829431748131968 0.51143783543599197 0.48829431748132002 1
		 1 1 yes;
	setAttr ".xm[76]" -type "matrix" "xform" 1 1 1 4.2484466320176289e-30 7.5714215856227961e-30
		 -5.4163127840740833e-15 0 -2.9277262989788793 2.7512401068463532e-07 -3.1086244689504383e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.046217154167331458 0.99893141639487604 1
		 1 1 yes;
	setAttr ".xm[77]" -type "matrix" "xform" 1 1 1 5.2562941663480589e-16 1.4871771676055353e-15
		 -0.67012098439461887 0 -3.1139132043535356 9.3805318401862792e-08 -2.4424906541753444e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[78]" -type "matrix" "xform" 1 1 1 0 3.1415926535897922 -1.5707963267948966 0 3.6827741525858251
		 9.7637787617246887e-16 9.9920072216264089e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[79]" -type "matrix" "xform" 1 1 1 1.5246202186286588 0 0 0 3.1139132043535276
		 -9.3805318512885094e-08 1.1102230246251565e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.51140973546653679 -0.48832374759993707 0.51140973546653423 0.48832374759993946 1
		 1 1 yes;
	setAttr ".xm[80]" -type "matrix" "xform" 1 1 1 5.2562941663480589e-16 1.4871771676055353e-15
		 -0.67012098439461887 0 -3.1139132043535356 9.3805318401862792e-08 -2.4424906541753444e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[81]" -type "matrix" "xform" 1 1 1 0 3.1415926535897922 -1.5707963267948966 0 3.6827741525858251
		 9.7637787617246887e-16 9.9920072216264089e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[82]" -type "matrix" "xform" 1 1 1 1.5246202186286588 0 0 0 3.1139132043535276
		 -9.3805318512885094e-08 1.1102230246251565e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.51140973546653679 -0.48832374759993707 0.51140973546653423 0.48832374759993946 1
		 1 1 yes;
	setAttr ".xm[83]" -type "matrix" "xform" 1 1 1 5.2562941663480589e-16 1.4871771676055353e-15
		 -0.67012098439461887 0 -3.1139132043535356 9.3805318401862792e-08 -2.4424906541753444e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[84]" -type "matrix" "xform" 1 1 1 0 3.1415926535897922 -1.5707963267948966 0 3.6827741525858251
		 9.7637787617246887e-16 9.9920072216264089e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[85]" -type "matrix" "xform" 1 1 1 1.5246202186286588 0 0 0 3.1139132043535276
		 -9.3805318512885094e-08 1.1102230246251565e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.51140973546653679 -0.48832374759993707 0.51140973546653423 0.48832374759993946 1
		 1 1 yes;
	setAttr ".xm[86]" -type "matrix" "xform" 1 1 1 5.2562941663480589e-16 1.4871771676055353e-15
		 -0.67012098439461887 0 -3.1139132043535356 9.3805318401862792e-08 -2.4424906541753444e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[87]" -type "matrix" "xform" 1 1 1 0 3.1415926535897922 -1.5707963267948966 0 3.6827741525858251
		 9.7637787617246887e-16 9.9920072216264089e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[88]" -type "matrix" "xform" 1 1 1 1.5246202186286588 0 0 0 3.1139132043535276
		 -9.3805318512885094e-08 1.1102230246251565e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.51140973546653679 -0.48832374759993707 0.51140973546653423 0.48832374759993946 1
		 1 1 yes;
	setAttr ".xm[89]" -type "matrix" "xform" 1 1 1 5.2562941663480589e-16 1.4871771676055353e-15
		 -0.67012098439461887 0 -3.1139132043535356 9.3805318401862792e-08 -2.4424906541753444e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[90]" -type "matrix" "xform" 1 1 1 0 3.1415926535897922 -1.5707963267948966 0 3.6827741525858251
		 9.7637787617246887e-16 9.9920072216264089e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr -s 54 ".m";
	setAttr -s 69 ".p";
	setAttr -s 91 ".g[0:90]" yes yes yes no yes no yes no yes no yes no 
		yes no yes no yes no yes no yes no yes no yes no yes no yes no yes no yes no yes 
		no yes no yes no yes no yes no yes no yes no yes no yes no no no yes no yes no no 
		no no no no no no no yes yes yes yes yes yes no no no no no no no no no no no no 
		no no no no no no no;
	setAttr ".bp" yes;
createNode displayLayer -n "Contrl_Layer";
	setAttr ".dt" 2;
	setAttr ".do" 3;
createNode displayLayer -n "Joint_Layer";
	setAttr ".do" 2;
createNode lambert -n "lambert2";
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr -s 7 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
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
	setAttr ".pm[0]" -type "matrix" -1 0 1.2246467991473532e-16 0 0 1 0 0 -1.2246467991473532e-16 0 -1 0
		 6.8717722448313527e-17 -10.634563903704942 -0.018175814976949763 1;
	setAttr ".pm[1]" -type "matrix" -1 0 1.2246467991473532e-16 0 0 1 0 0 -1.2246467991473532e-16 0 -1 0
		 7.353457146447921e-16 -14.132338326454143 -0.018175814976949763 1;
	setAttr ".pm[2]" -type "matrix" -1 0 1.2246467991473532e-16 0 0 1 0 0 -1.2246467991473532e-16 0 -1 0
		 6.8717722448313428e-17 -8.5365370207398907 -0.018175814976949763 1;
	setAttr ".pm[3]" -type "matrix" -1 0 1.2246467991473532e-16 0 0 1 0 0 -1.2246467991473532e-16 0 -1 0
		 4.2241905145476408e-16 -7.3913983732815653 -0.045052099000275944 1;
	setAttr ".pm[4]" -type "matrix" 1.477176941278356e-15 6.981057536655051e-16 -1 0
		 -0.99892875515336343 0.046274638061808995 -1.529528359619386e-15 0 0.046274638061808863 0.99892875515336343 4.4852572293978137e-16 0
		 6.8627936880930589 -0.27433068417854384 1.4719753077507971 1;
	setAttr ".pm[5]" -type "matrix" 1.4064063985879794e-15 8.3151933300203677e-16 -1 0
		 -0.9989340743284465 -0.046159670119807199 -1.529528359619386e-15 0 -0.046159670119807331 0.9989340743284465 4.4852572293978137e-16 0
		 3.9435928581974777 0.090188359666807966 1.4719753077507971 1;
	setAttr ".pm[6]" -type "matrix" 1.4654040599441831e-15 -7.2249173022566048e-16 -1 0
		 -0.5850674743411175 0.81098461789858001 -1.5295283596193864e-15 0 0.81098461789858001 0.58506747434111761 4.4852572293978157e-16 0
		 0.52934012017617871 -0.64521122801142317 1.4719753077507964 1;
	setAttr ".pm[7]" -type "matrix" 1.464973975462413e-15 -0.99994728840146285 -0.010267444597432169 0
		 -0.5850674743411175 0.0083267396336424247 -0.81094186960298142 0 0.8109846178985799 0.0060071478785578628 -0.585036634499293 0
		 -0.90878943373902465 1.4652730470420681 0.66029064281732275 1;
	setAttr ".pm[8]" -type "matrix" 1.1106241961056644e-15 1.1825607839880968e-15 -1 0
		 0.99892875515336343 -0.046274638061808364 1.2820340345168972e-15 0 -0.046274638061808641 -0.99892875515336343 -1.2376969010084732e-15 0
		 -6.8627971761989981 0.27433083090909582 -1.4719800000000089 1;
	setAttr ".pm[9]" -type "matrix" 9.9668717112965231e-16 1.2800589032179211e-15 -1 0
		 0.99893407432844661 0.046159670119807393 1.2820340345168972e-15 0 0.046159670119807115 -0.99893407432844672 -1.2376969010084736e-15 0
		 -3.9435905135198688 -0.090188271185206503 -1.471980000000005 1;
	setAttr ".pm[10]" -type "matrix" 1.6167683789787193e-15 -1.3414962369094175e-16 -1 0
		 0.58506747434111783 -0.8109846178985799 1.2820340345168974e-15 0 -0.81098461789858023 -0.58506747434111772 -1.2376969010084738e-15 0
		 -0.52934008704748747 0.64521116757982055 -1.4719800000000014 1;
	setAttr ".pm[11]" -type "matrix" 1.6158949178723962e-15 -0.99994728840146319 -0.010267444597431763 0
		 0.58506747434111783 -0.0083267396336418626 0.81094186960298154 0 -0.81098461789858012 -0.0060071478785580718 0.58503663449929322 0
		 0.9087923910337149 -1.4652777171703215 -0.66029282126784716 1;
	setAttr ".pm[12]" -type "matrix" -0.99995325883512598 0.0096685129379943131 1.6061271050617637e-06 0
		 0.00966851307139871 0.99995324503795169 0.00016611158518660784 0 -1.2245851779986961e-16 0.00016611934979852676 -0.999999986202181 0
		 1.3272938565604671 -12.99215742064008 -0.020334064000712502 1;
	setAttr ".pm[13]" -type "matrix" -0.99980566703278784 -0.017117319501743482 -0.0097788313308614892 0
		 0.0096670860114213605 0.0065988191016375193 -0.99993149917107393 0 0.017180675690146401 -0.99983171231939783 -0.00643206213363306 0
		 4.2290240275309685 -0.078948143237026744 12.99192157420962 1;
	setAttr ".pm[14]" -type "matrix" -0.9999887798164705 0.0047294247656044985 -0.00026978241813739671 0
		 0.00016216523014272592 -0.022740448206859897 -0.99974138941917823 0 -0.0047343366594256846 -0.9997302158866348 0.022739426106601929 0
		 6.9166466637092094 0.20590347139745455 12.950042573040394 1;
	setAttr ".pm[15]" -type "matrix" -0.99990612408113166 0.013666963790080479 0.00097832806844420786 0
		 -0.00015115248526284083 0.060394096631831144 -0.99817459907821282 0 -0.013701101341683281 -0.99808104239725204 -0.060386361284972712 0
		 8.0809646874999821 -0.93245748834910869 12.916471143858102 1;
	setAttr ".pm[16]" -type "matrix" 0.95669909334599668 -0.29107847904145767 0.00040475901380116619 0
		 -0.29107845299057894 -0.95669917896845258 -0.00012314909504049798 0 0.00042307866746336162 1.4769544094683774e-16 -0.99999991050221637 0
		 -7.5304204047180008 14.741670881892746 -0.041647075215516798 1;
	setAttr ".pm[17]" -type "matrix" 0.95150469301091578 0.30763396539512061 0.000403129602716486 0
		 0.30763393778478132 -0.95150477840905912 0.000130337084023426 0 0.00042367585729911401 -6.2544912825257478e-16 -0.99999991024937951 0
		 -15.236999271363663 9.8366169770217446 -0.04491666401818066 1;
	setAttr ".pm[18]" -type "matrix" -0.99995325883512576 0.0096685129379963323 1.6061271011246137e-06 0
		 -0.0096685130714007275 -0.99995324503795124 -0.00016611158480471007 0 -1.2245851779986952e-16 -0.00016611934941660874 0.99999998620218045 0
		 -1.3272973614988237 12.992137061043953 0.020334045636677348 1;
	setAttr ".pm[19]" -type "matrix" -0.99980566703278795 -0.017117319501743493 -0.0097788313308640028 0
		 -0.0096670860114238845 -0.0065988191016367933 0.99993149917107382 0 -0.017180675690146415 0.9998317123193976 0.0064320621336323375 0
		 -4.2290271213014208 0.078948280970734447 -12.991951362939481 1;
	setAttr ".pm[20]" -type "matrix" -0.9999887798164705 0.0047294247656060329 -0.0002697824181365603 0
		 -0.00016216523014183943 0.022740448206862822 0.99974138941917823 0 0.0047343366594272008 0.99973021588663458 -0.022739426106604801 0
		 -6.9166477096983314 -0.20590448713050732 -12.950088309301858 1;
	setAttr ".pm[21]" -type "matrix" -0.99990612408113155 0.013666963790084922 0.00097832806844424689 0
		 0.00015115248526264427 -0.060394096631828834 0.99817459907821304 0 0.013701101341687722 0.99808104239725215 0.060386361284970463 0
		 -8.080961287787094 0.93245560997347066 -12.91644141246493 1;
	setAttr ".pm[22]" -type "matrix" 0.95669909334599723 -0.29107847904145784 0.00040475901380100497 0
		 0.29107845299057905 0.95669917896845291 0.00012314909504049245 0 -0.00042307866746322707 -4.7157373492257025e-16 0.99999991050221648 0
		 7.5303749307173202 -14.741661040490099 0.041647044718498047 1;
	setAttr ".pm[23]" -type "matrix" 0.95150469301091611 0.30763396539512072 0.00040312960271650887 0
		 -0.30763393778478154 0.95150477840905945 -0.0001303370840238637 0 -0.00042367585729924086 6.5014183273093273e-16 0.99999991024937973 0
		 15.23697946724454 -9.8366107712992346 0.044916644369739522 1;
	setAttr ".pm[24]" -type "matrix" 0.95150469301091578 0.30763396539512061 0.000403129602716486 0
		 0.30763393778478132 -0.95150477840905912 0.000130337084023426 0 0.00042367585729911401 -6.2544912825257478e-16 -0.99999991024937951 0
		 -15.236999271363663 9.8366169770217446 -0.04491666401818066 1;
	setAttr ".pm[25]" -type "matrix" 0.95669909334599668 -0.29107847904145767 0.00040475901380116619 0
		 -0.29107845299057894 -0.95669917896845258 -0.00012314909504049798 0 0.00042307866746336162 1.4769544094683774e-16 -0.99999991050221637 0
		 -7.5304204047180008 14.741670881892746 -0.041647075215516798 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 5 ".ma";
	setAttr -s 26 ".dpf[0:25]"  1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 
		1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
	setAttr -s 18 ".ifcl";
createNode tweak -n "tweak3";
createNode objectSet -n "tweakSet3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId34";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts24";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "skinCluster3Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster3GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster3GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster6";
	setAttr -s 116 ".wl";
	setAttr -s 2 ".wl[0].w[11:12]"  0.91731306165456772 0.082686938345432281;
	setAttr -s 2 ".wl[1].w[11:12]"  0.90297238528728485 0.097027614712715149;
	setAttr -s 2 ".wl[2].w[11:12]"  0.91013490408658981 0.089865095913410187;
	setAttr -s 2 ".wl[3].w[11:12]"  0.90448768436908722 0.095512315630912781;
	setAttr -s 2 ".wl[4].w[10:11]"  0.097099997103214264 0.90290000289678574;
	setAttr -s 2 ".wl[5].w[10:11]"  0.097099997103214264 0.90290000289678574;
	setAttr -s 2 ".wl[6].w[10:11]"  0.09669233113527298 0.90330766886472702;
	setAttr -s 2 ".wl[7].w[10:11]"  0.095845647156238556 0.90415435284376144;
	setAttr ".wl[8].w[10]"  1;
	setAttr ".wl[9].w[10]"  1;
	setAttr ".wl[10].w[11]"  1;
	setAttr ".wl[11].w[11]"  1;
	setAttr ".wl[12].w[11]"  1;
	setAttr ".wl[13].w[11]"  1;
	setAttr ".wl[14].w[11]"  1;
	setAttr ".wl[15].w[11]"  1;
	setAttr -s 2 ".wl[16].w[10:11]"  0.096988439559936523 0.90301156044006348;
	setAttr -s 2 ".wl[17].w[10:11]"  0.097017683088779449 0.90298231691122055;
	setAttr ".wl[18].w[10]"  1;
	setAttr ".wl[19].w[10]"  1;
	setAttr -s 2 ".wl[20].w[10:11]"  0.096405625343322754 0.90359437465667725;
	setAttr -s 2 ".wl[21].w[11:12]"  0.80513137578964233 0.19486862421035767;
	setAttr ".wl[22].w[11]"  1;
	setAttr ".wl[23].w[11]"  1;
	setAttr ".wl[24].w[10]"  1;
	setAttr ".wl[25].w[10]"  1;
	setAttr -s 2 ".wl[26].w[10:11]"  0.095576860010623932 0.90442313998937607;
	setAttr -s 2 ".wl[27].w[10:11]"  0.077299214899539948 0.92270078510046005;
	setAttr -s 2 ".wl[28].w[11:12]"  0.75231251120567322 0.24768748879432678;
	setAttr -s 2 ".wl[29].w[10:11]"  0.097077161073684692 0.90292283892631531;
	setAttr ".wl[30].w[10]"  1;
	setAttr ".wl[31].w[10]"  1;
	setAttr ".wl[32].w[10]"  1;
	setAttr -s 2 ".wl[33].w[10:11]"  0.096374265849590302 0.9036257341504097;
	setAttr ".wl[34].w[11]"  1;
	setAttr ".wl[35].w[11]"  1;
	setAttr ".wl[36].w[11]"  1;
	setAttr ".wl[37].w[11]"  1;
	setAttr -s 2 ".wl[38].w[10:11]"  0.096987999975681305 0.9030120000243187;
	setAttr ".wl[39].w[11]"  1;
	setAttr ".wl[40].w[11]"  1;
	setAttr ".wl[41].w[11]"  1;
	setAttr ".wl[42].w[11]"  1;
	setAttr ".wl[43].w[11]"  1;
	setAttr -s 2 ".wl[44].w[10:11]"  0.09706415981054306 0.90293584018945694;
	setAttr ".wl[45].w[11]"  1;
	setAttr -s 2 ".wl[46].w[10:11]"  0.095877006649971008 0.90412299335002899;
	setAttr ".wl[47].w[11]"  1;
	setAttr ".wl[48].w[11]"  1;
	setAttr ".wl[49].w[11]"  1;
	setAttr ".wl[50].w[11]"  1;
	setAttr ".wl[51].w[11]"  1;
	setAttr ".wl[52].w[11]"  1;
	setAttr ".wl[53].w[11]"  1;
	setAttr ".wl[54].w[11]"  1;
	setAttr ".wl[55].w[11]"  1;
	setAttr ".wl[56].w[11]"  1;
	setAttr ".wl[57].w[11]"  1;
	setAttr ".wl[58].w[11]"  1;
	setAttr ".wl[59].w[11]"  1;
	setAttr -s 2 ".wl[60].w";
	setAttr ".wl[60].w[11]" 0.72611653804779053;
	setAttr ".wl[60].w[18]" 0.27388346195220947;
	setAttr -s 2 ".wl[61].w";
	setAttr ".wl[61].w[11]" 0.6921532154083252;
	setAttr ".wl[61].w[18]" 0.3078467845916748;
	setAttr -s 2 ".wl[62].w";
	setAttr ".wl[62].w[11]" 0.9036615714430809;
	setAttr ".wl[62].w[18]" 0.096338428556919098;
	setAttr -s 2 ".wl[63].w";
	setAttr ".wl[63].w[11]" 0.9036615714430809;
	setAttr ".wl[63].w[18]" 0.096338428556919098;
	setAttr -s 2 ".wl[64].w[10:11]"  0.09673377126455307 0.90326622873544693;
	setAttr -s 2 ".wl[65].w[10:11]"  0.087695375084877014 0.91230462491512299;
	setAttr -s 2 ".wl[66].w[10:11]"  0.097099997103214264 0.90290000289678574;
	setAttr -s 2 ".wl[67].w[10:11]"  0.085225500166416168 0.91477449983358383;
	setAttr ".wl[68].w[10]"  1;
	setAttr ".wl[69].w[10]"  1;
	setAttr ".wl[70].w[11]"  1;
	setAttr ".wl[71].w[11]"  1;
	setAttr ".wl[72].w[11]"  1;
	setAttr ".wl[73].w[11]"  1;
	setAttr ".wl[74].w[11]"  1;
	setAttr ".wl[75].w[11]"  1;
	setAttr -s 2 ".wl[76].w[10:11]"  0.097054935991764069 0.90294506400823593;
	setAttr -s 2 ".wl[77].w[10:11]"  0.096814416348934174 0.90318558365106583;
	setAttr ".wl[78].w[10]"  1;
	setAttr ".wl[79].w[10]"  1;
	setAttr ".wl[80].w[10]"  1;
	setAttr -s 2 ".wl[81].w[10:11]"  0.088985562324523926 0.91101443767547607;
	setAttr -s 2 ".wl[82].w";
	setAttr ".wl[82].w[11]" 0.90670784562826157;
	setAttr ".wl[82].w[18]" 0.093292154371738434;
	setAttr ".wl[83].w[11]"  1;
	setAttr -s 2 ".wl[84].w[10:11]"  0.096048429608345032 0.90395157039165497;
	setAttr ".wl[85].w[10]"  1;
	setAttr -s 2 ".wl[86].w[10:11]"  0.097095079720020294 0.90290492027997971;
	setAttr -s 2 ".wl[87].w";
	setAttr ".wl[87].w[11]" 0.90381830930709839;
	setAttr ".wl[87].w[18]" 0.096181690692901611;
	setAttr ".wl[88].w[11]"  1;
	setAttr ".wl[89].w[11]"  1;
	setAttr ".wl[90].w[11]"  1;
	setAttr ".wl[91].w[11]"  1;
	setAttr -s 2 ".wl[92].w[10:11]"  0.095016881823539734 0.90498311817646027;
	setAttr ".wl[93].w[11]"  1;
	setAttr ".wl[94].w[11]"  1;
	setAttr ".wl[95].w[11]"  1;
	setAttr ".wl[96].w[11]"  1;
	setAttr ".wl[97].w[11]"  1;
	setAttr ".wl[98].w[11]"  1;
	setAttr ".wl[99].w[11]"  1;
	setAttr ".wl[100].w[1]"  1;
	setAttr ".wl[101].w[1]"  1;
	setAttr ".wl[102].w[10]"  1;
	setAttr ".wl[103].w[10]"  1;
	setAttr ".wl[104].w[10]"  1;
	setAttr ".wl[105].w[10]"  1;
	setAttr ".wl[106].w[1]"  1;
	setAttr ".wl[107].w[1]"  1;
	setAttr -s 2 ".wl[108].w";
	setAttr ".wl[108].w[0]" 0.073110587894916534;
	setAttr ".wl[108].w[10]" 0.92688941210508347;
	setAttr -s 2 ".wl[109].w";
	setAttr ".wl[109].w[0]" 0.084914900362491608;
	setAttr ".wl[109].w[10]" 0.91508509963750839;
	setAttr -s 2 ".wl[110].w";
	setAttr ".wl[110].w[0]" 0.094434507191181183;
	setAttr ".wl[110].w[10]" 0.90556549280881882;
	setAttr -s 2 ".wl[111].w";
	setAttr ".wl[111].w[0]" 0.086818821728229523;
	setAttr ".wl[111].w[10]" 0.91318117827177048;
	setAttr -s 2 ".wl[112].w";
	setAttr ".wl[112].w[0]" 0.9036615714430809;
	setAttr ".wl[112].w[10]" 0.096338428556919098;
	setAttr -s 2 ".wl[113].w";
	setAttr ".wl[113].w[0]" 0.92346235364675522;
	setAttr ".wl[113].w[10]" 0.076537646353244781;
	setAttr -s 2 ".wl[114].w";
	setAttr ".wl[114].w[0]" 0.90785019844770432;
	setAttr ".wl[114].w[10]" 0.092149801552295685;
	setAttr -s 2 ".wl[115].w";
	setAttr ".wl[115].w[0]" 0.9036615714430809;
	setAttr ".wl[115].w[10]" 0.096338428556919098;
	setAttr -s 25 ".pm";
	setAttr ".pm[0]" -type "matrix" -0.99999999999999978 0 1.2246467991473532e-16 0 0 0.99999999999999978 0 0
		 -1.224646799147353e-16 0 -1 0 2.2297685994254849e-16 -8.1810495983390208 -0.018175814976949076 1;
	setAttr ".pm[1]" -type "matrix" -0.99999999999999978 0 1.2246467991473532e-16 0 0 0.99999999999999978 0 0
		 -1.224646799147353e-16 0 -1 0 5.76678188948999e-16 -7.3913983732815707 -0.04505209900027525 1;
	setAttr ".pm[2]" -type "matrix" 2.2233824921020015e-16 1.2008006791653473e-15 -0.99999999999999978 0
		 -0.99892875515336343 0.046274638061808461 -1.6015653842738348e-16 0 0.046274638061808419 0.99892875515336355 1.2186507985294387e-15 0
		 6.8627971761990008 -0.2743308309090966 1.4719800000000012 1;
	setAttr ".pm[3]" -type "matrix" 1.1051183634516639e-16 1.2162005189003319e-15 -0.99999999999999978 0
		 -0.99893407432844661 -0.046159670119807289 -1.6015653842738348e-16 0 -0.046159670119807344 0.99893407432844672 1.2186507985294389e-15 0
		 3.9435905135198701 0.090188271185205879 1.4719799999999994 1;
	setAttr ".pm[4]" -type "matrix" 1.0785648899886018e-15 5.7276028688247279e-16 -0.99999999999999978 0
		 -0.58506747434111761 0.81098461789858001 -1.6015653842738346e-16 0 0.81098461789858012 0.58506747434111772 1.2186507985294389e-15 0
		 0.52934008704748814 -0.64521116757982289 1.4719799999999976 1;
	setAttr ".pm[5]" -type "matrix" 1.0781306403195856e-15 -0.99994728840146285 -0.010267444597432913 0
		 -0.58506747434111761 0.0083267396336433441 -0.81094186960298154 0 0.81098461789858001 0.006007147878558312 -0.58503663449929322 0
		 -0.90879239103371312 1.4652777171703177 0.66029282126785005 1;
	setAttr ".pm[6]" -type "matrix" 9.5454417424243514e-16 1.4120738000692413e-15 -1 0
		 0.99892875515336343 -0.046274638061808405 8.4098931137595398e-16 0 -0.046274638061808211 -0.99892875515336366 -1.161695148358936e-15 0
		 -6.8627971761990008 0.27433083090909727 -1.4719800000000056 1;
	setAttr ".pm[7]" -type "matrix" 8.2008172400412049e-16 1.4941796958119166e-15 -1 0
		 0.99893407432844683 0.046159670119807365 8.4098931137595428e-16 0 0.046159670119807567 -0.99893407432844705 -1.1616951483589364e-15 0
		 -3.9435905135198723 -0.09018827118520488 -1.4719800000000032 1;
	setAttr ".pm[8]" -type "matrix" 1.6994098309143669e-15 1.3081752181479404e-16 -1 0
		 0.58506747434111772 -0.8109846178985799 8.4098931137595398e-16 0 -0.8109846178985799 -0.58506747434111805 -1.1616951483589358e-15 0
		 -0.5293400870474867 0.64521116757982355 -1.4719799999999992 1;
	setAttr ".pm[9]" -type "matrix" 1.6991616447192829e-15 -0.99994728840146296 -0.01026744459743247 0
		 0.58506747434111772 -0.008326739633642664 0.81094186960298154 0 -0.81098461789857978 -0.00600714787855826 0.58503663449929355 0
		 0.90879239103371423 -1.4652777171703193 -0.6602928212678516 1;
	setAttr ".pm[10]" -type "matrix" -0.99999867169251433 -0.0016000963820615437 0.0003103301059571242 0
		 -0.0015987384955497566 0.99998935793862931 0.0043275910978187657 0 -0.00031725136626375278 0.0043270892127603945 -0.99999058778096239 0
		 0.01574241583281696 -9.1372440405236244 -0.060804061872838482 1;
	setAttr ".pm[11]" -type "matrix" 1.6922108923541118e-16 -0.99999999999999978 -5.3348167897149196e-16 0
		 0.99999999999999956 7.2056521075683894e-16 -1.8474805019152936e-16 0 1.8561541192951826e-16 -5.3310220821112194e-16 0.99999999999999933 0
		 -10.449564173868314 -7.6249339499871446e-15 0.018175814976951456 1;
	setAttr ".pm[12]" -type "matrix" -0.99995325883512542 0.0096685129379941465 1.6061271054727637e-06 0
		 0.0096685130713994229 0.99995324503795102 0.00016611158518679364 0 -5.3124275913366184e-16 0.00016611934979871744 -0.99999998620218045 0
		 1.327293856560458 -12.992157420640067 -0.02033406400071484 1;
	setAttr ".pm[13]" -type "matrix" -0.99980566703278728 -0.017117319501743077 -0.0097788313308603304 0
		 0.0096670860114210933 0.0065988191016370301 -0.99993149917107327 0 0.017180675690145981 -0.99983171231939727 -0.0064320621336325986 0
		 4.229024027530973 -0.078948143237020901 12.991921574209609 1;
	setAttr ".pm[14]" -type "matrix" -0.99998877981646994 0.0046916448112533137 -0.00065475959839655061 0
		 0.00016216523014245417 -0.10423414028522665 -0.99455277270813325 0 -0.0047343366594260836 -0.99454171982273487 0.10423220993738204 0
		 6.9166466637092112 1.2618188547679996 12.890066410257321 1;
	setAttr ".pm[15]" -type "matrix" -0.999906505121547 0.013661299068293779 0.00059154321868100021 0
		 -0.00088173540775279954 -0.021245673631520454 -0.99977389638588376 0 -0.013645642465037891 -0.9996809442315624 0.021255732920951023 0
		 8.0904316577531663 0.12474808127928352 12.944421044782368 1;
	setAttr ".pm[16]" -type "matrix" 0.95658675438649243 -0.291447491299753 0.00037569588120632801 0
		 -0.29044352618105895 -0.95339688079932661 -0.081712580314326044 0 0.024173113821511178 0.07805605355891726 -0.99665586491575819 0
		 -7.5365383647062583 14.705820506727163 1.0153447687013655 1;
	setAttr ".pm[17]" -type "matrix" 0.95162329983167748 0.30726691201394191 0.00037416424918670856 0
		 0.30627477251083535 -0.94845139154443192 -0.081459938625467465 0 -0.024675067191485312 0.077633772669154652 -0.99667654652863602 0
		 -15.221620976693085 9.8039529146183213 1.0120842839572992 1;
	setAttr ".pm[18]" -type "matrix" -0.99995325883512542 0.00966851293799636 1.6061271007147859e-06 0
		 -0.0096685130714002018 -0.99995324503795113 -0.0001661115848050173 0 -5.3491528223471987e-16 -0.00016611934941691297 0.99999998620218089 0
		 -1.3272973614988295 12.99213706104395 0.02033404563668044 1;
	setAttr ".pm[19]" -type "matrix" -0.99980566703278739 -0.017117319501743895 -0.0097788313308640341 0
		 -0.0096670860114233537 -0.0065988191016369772 0.99993149917107349 0 -0.017180675690146831 0.99983171231939783 0.0064320621336325318 0
		 -4.2290271213014243 0.078948280970735946 -12.991951362939478 1;
	setAttr ".pm[20]" -type "matrix" -0.99998877981647005 0.0047294247656056131 -0.00026978241813658101 0
		 -0.00016216523014131503 0.022740448206862631 0.99974138941917789 0 0.0047343366594267931 0.99973021588663491 -0.022739426106604625 0
		 -6.916647709698335 -0.20590448713050571 -12.950088309301849 1;
	setAttr ".pm[21]" -type "matrix" -0.99990612408113122 0.013666963790084505 0.00097832806844419138 0
		 0.00015115248526316688 -0.060394096631829014 0.99817459907821271 0 0.013701101341687319 0.99808104239725248 0.060386361284970679 0
		 -8.0809612877871011 0.93245560997347166 -12.916441412464922 1;
	setAttr ".pm[22]" -type "matrix" 0.95669909334599634 -0.29107847904145767 0.00040475901380052206 0
		 0.29107845299057844 0.95669917896845236 0.00012314909504050495 0 -0.00042307866746272579 -4.1365023385753173e-16 0.99999991050221648 0
		 7.5303749307173238 -14.741661040490092 0.041647044718496673 1;
	setAttr ".pm[23]" -type "matrix" 0.95150469301091567 0.30763396539512061 0.00040312960271653939 0
		 -0.30763393778478193 0.951504778409059 -0.00013033708402396127 0 -0.0004236758572992832 8.4066325949094761e-16 0.99999991024937995 0
		 15.236979467244538 -9.8366107712992203 0.044916644369744969 1;
	setAttr ".pm[24]" -type "matrix" -0.99999999999999956 -5.2823515689620098e-17 5.3348167897149226e-16 0
		 4.9852060583180763e-16 0.99999999999999956 3.0721273010626476e-16 0 -5.3310220821112174e-16 3.0808009184425341e-16 -1 0
		 -4.646535500024902e-15 -14.132338326454137 -0.018175814976953156 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 8 ".ma";
	setAttr -s 25 ".dpf[0:24]"  1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 
		1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2;
	setAttr -s 8 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
	setAttr -s 22 ".ifcl";
createNode objectSet -n "skinCluster6Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster6GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster6GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "tweak6";
createNode objectSet -n "tweakSet6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId40";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts30";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transformGeometry -n "transformGeometry3";
	setAttr ".txf" -type "matrix" -1 0 -1.2246467991473532e-16 0 0 1 0 0 1.2246467991473532e-16 0 -1 0
		 0 0 0 1;
createNode skinCluster -n "skinCluster7";
	setAttr -s 120 ".wl";
	setAttr -s 2 ".wl[0].w[1:2]"  0.99730208912608742 0.0026979108739125287;
	setAttr -s 2 ".wl[1].w[1:2]"  0.10346806623642379 0.89653193376357609;
	setAttr -s 2 ".wl[2].w[1:2]"  0.9969198047824227 0.0030801952175772557;
	setAttr -s 2 ".wl[3].w[1:2]"  0.050178290585531478 0.94982170941446853;
	setAttr -s 3 ".wl[4].w";
	setAttr ".wl[4].w[1]" 0.99991687937767915;
	setAttr ".wl[4].w[2]" 2.8428510846327712e-05;
	setAttr ".wl[4].w[5]" 5.4692111474630129e-05;
	setAttr -s 3 ".wl[5].w";
	setAttr ".wl[5].w[1]" 0.99994781837890823;
	setAttr ".wl[5].w[2]" 1.7553227468816514e-05;
	setAttr ".wl[5].w[5]" 3.4628393622828648e-05;
	setAttr -s 3 ".wl[6].w";
	setAttr ".wl[6].w[1]" 0.74473287389798715;
	setAttr ".wl[6].w[2]" 0.19482355292744008;
	setAttr ".wl[6].w[5]" 0.060443573174572669;
	setAttr -s 3 ".wl[7].w";
	setAttr ".wl[7].w[1]" 0.79694169867398323;
	setAttr ".wl[7].w[2]" 0.18008638431522461;
	setAttr ".wl[7].w[5]" 0.022971917010792233;
	setAttr -s 3 ".wl[8].w";
	setAttr ".wl[8].w[1]" 0.98472136865321813;
	setAttr ".wl[8].w[2]" 0.0078362861325905718;
	setAttr ".wl[8].w[5]" 0.0074423452141914054;
	setAttr -s 3 ".wl[9].w";
	setAttr ".wl[9].w[1]" 0.98008324057488894;
	setAttr ".wl[9].w[2]" 0.010130907717304273;
	setAttr ".wl[9].w[5]" 0.009785851707806676;
	setAttr -s 2 ".wl[10].w[1:2]"  0.48040592961570111 0.51959407038429883;
	setAttr -s 2 ".wl[11].w[1:2]"  0.43835655353791508 0.56164344646208508;
	setAttr -s 2 ".wl[12].w[1:2]"  0.18362297850450174 0.81637702149549818;
	setAttr -s 2 ".wl[13].w[1:2]"  0.052761965880841866 0.94723803411915808;
	setAttr -s 2 ".wl[14].w[1:2]"  0.66952042127654232 0.33047957872345773;
	setAttr -s 2 ".wl[15].w[1:2]"  0.63703011899788275 0.36296988100211736;
	setAttr -s 2 ".wl[16].w[1:2]"  0.94161294174750776 0.058387058252492241;
	setAttr -s 2 ".wl[17].w[1:2]"  0.94183737811226065 0.058162621887739276;
	setAttr -s 2 ".wl[18].w[1:2]"  0.0045403635547235184 0.99545963644527646;
	setAttr -s 3 ".wl[19].w[1:3]"  0.0020887623863735843 0.99788947894174207 
		2.1758671884379314e-05;
	setAttr -s 2 ".wl[20].w[1:2]"  0.0014572745713902144 0.99854272542860978;
	setAttr -s 2 ".wl[21].w[1:2]"  0.011913908364247558 0.98808609163575234;
	setAttr -s 2 ".wl[22].w[2:3]"  0.029167691592904839 0.97083230840709511;
	setAttr -s 2 ".wl[23].w[2:3]"  0.0054949164543384426 0.99450508354566158;
	setAttr -s 2 ".wl[24].w[2:3]"  0.0061712496304123293 0.99382875036958762;
	setAttr -s 2 ".wl[25].w[2:3]"  0.034791487222282591 0.96520851277771735;
	setAttr -s 2 ".wl[26].w[2:3]"  0.4932715962454941 0.50672840375450601;
	setAttr -s 2 ".wl[27].w[2:3]"  0.49581794184865807 0.50418205815134187;
	setAttr -s 2 ".wl[28].w[2:3]"  0.20279900008524934 0.79720099991475069;
	setAttr -s 2 ".wl[29].w[2:3]"  0.24054391965630764 0.75945608034369239;
	setAttr -s 2 ".wl[30].w[2:3]"  0.75615951820365368 0.24384048179634626;
	setAttr -s 3 ".wl[31].w[1:3]"  5.6785573522639664e-06 0.78317948689582717 
		0.21681483454682049;
	setAttr -s 2 ".wl[32].w";
	setAttr ".wl[32].w[1]" 0.44137988025657132;
	setAttr ".wl[32].w[5]" 0.55862011974342873;
	setAttr -s 2 ".wl[33].w";
	setAttr ".wl[33].w[1]" 0.093303903158724333;
	setAttr ".wl[33].w[5]" 0.90669609684127561;
	setAttr -s 2 ".wl[34].w";
	setAttr ".wl[34].w[1]" 0.036396405099461807;
	setAttr ".wl[34].w[5]" 0.96360359490053815;
	setAttr -s 2 ".wl[35].w";
	setAttr ".wl[35].w[1]" 0.48615769404198944;
	setAttr ".wl[35].w[5]" 0.5138423059580105;
	setAttr ".wl[36].w[1]"  1;
	setAttr ".wl[37].w[1]"  1;
	setAttr -s 2 ".wl[38].w";
	setAttr ".wl[38].w[1]" 0.049872869450501525;
	setAttr ".wl[38].w[5]" 0.95012713054949838;
	setAttr -s 2 ".wl[39].w";
	setAttr ".wl[39].w[1]" 0.64291303091895069;
	setAttr ".wl[39].w[5]" 0.35708696908104942;
	setAttr -s 2 ".wl[40].w[5:6]"  0.029279178474474695 0.9707208215255253;
	setAttr -s 2 ".wl[41].w[5:6]"  0.005688989573683135 0.99431101042631687;
	setAttr -s 3 ".wl[42].w";
	setAttr ".wl[42].w[5]" 0.0011431578381934631;
	setAttr ".wl[42].w[6]" 0.99885684216180648;
	setAttr ".wl[42].w[47]" 1.1102230246251565e-16;
	setAttr -s 2 ".wl[43].w[5:6]"  0.028544783096640318 0.97145521690335968;
	setAttr -s 2 ".wl[44].w";
	setAttr ".wl[44].w[1]" 0.1821787084655484;
	setAttr ".wl[44].w[5]" 0.8178212915344516;
	setAttr -s 2 ".wl[45].w";
	setAttr ".wl[45].w[1]" 0.67822441977167625;
	setAttr ".wl[45].w[5]" 0.32177558022832387;
	setAttr -s 2 ".wl[46].w";
	setAttr ".wl[46].w[1]" 0.94119304484322219;
	setAttr ".wl[46].w[5]" 0.058806955156777821;
	setAttr -s 2 ".wl[47].w";
	setAttr ".wl[47].w[1]" 0.94201409449595319;
	setAttr ".wl[47].w[5]" 0.057985905504046864;
	setAttr -s 2 ".wl[48].w";
	setAttr ".wl[48].w[1]" 0.0022296719262037694;
	setAttr ".wl[48].w[5]" 0.99777032807379618;
	setAttr -s 2 ".wl[49].w";
	setAttr ".wl[49].w[1]" 0.0039404074838613017;
	setAttr ".wl[49].w[5]" 0.99605959251613874;
	setAttr ".wl[50].w[5]"  1;
	setAttr -s 2 ".wl[51].w";
	setAttr ".wl[51].w[1]" 0.0092277644246651479;
	setAttr ".wl[51].w[5]" 0.99077223557533478;
	setAttr -s 2 ".wl[52].w[5:6]"  0.49321966249954846 0.50678033750045159;
	setAttr -s 2 ".wl[53].w[5:6]"  0.75458388747118543 0.24541611252881454;
	setAttr -s 2 ".wl[54].w[5:6]"  0.24432338757610117 0.75567661242389883;
	setAttr -s 2 ".wl[55].w[5:6]"  0.4938567085397082 0.5061432914602918;
	setAttr -s 2 ".wl[56].w[5:6]"  0.18626100071284249 0.81373899928715754;
	setAttr -s 2 ".wl[57].w[5:6]"  0.80028334514934307 0.1997166548506569;
	setAttr -s 2 ".wl[58].w";
	setAttr ".wl[58].w[1]" 0.95830450590099936;
	setAttr ".wl[58].w[5]" 0.041695494099000634;
	setAttr ".wl[59].w[1]"  1;
	setAttr ".wl[60].w[1]"  1;
	setAttr -s 2 ".wl[61].w";
	setAttr ".wl[61].w[1]" 0.95615471766637594;
	setAttr ".wl[61].w[5]" 0.043845282333623996;
	setAttr -s 2 ".wl[62].w[1:2]"  0.95079002978654448 0.049209970213455606;
	setAttr -s 2 ".wl[63].w[1:2]"  0.99837452850894803 0.0016254714910518184;
	setAttr -s 2 ".wl[64].w[1:2]"  0.99874181005374219 0.0012581899462577606;
	setAttr -s 2 ".wl[65].w[1:2]"  0.95296782279635384 0.047032177203646067;
	setAttr -s 3 ".wl[66].w";
	setAttr ".wl[66].w[1]" 0.99759504775793595;
	setAttr ".wl[66].w[2]" 0.0012261126470831979;
	setAttr ".wl[66].w[5]" 0.0011788395949808902;
	setAttr -s 3 ".wl[67].w";
	setAttr ".wl[67].w[1]" 0.99760950175423591;
	setAttr ".wl[67].w[2]" 0.0012155234426898896;
	setAttr ".wl[67].w[5]" 0.001174974803074348;
	setAttr -s 2 ".wl[68].w";
	setAttr ".wl[68].w[3]" 0.053777699637262859;
	setAttr ".wl[68].w[45]" 0.94622230036273713;
	setAttr -s 2 ".wl[69].w";
	setAttr ".wl[69].w[3]" 0.051728247818912512;
	setAttr ".wl[69].w[45]" 0.9482717521810875;
	setAttr ".wl[70].w[44]"  1;
	setAttr ".wl[71].w[44]"  1;
	setAttr -s 2 ".wl[72].w";
	setAttr ".wl[72].w[3]" 0.98857894063066454;
	setAttr ".wl[72].w[45]" 0.011421059369335462;
	setAttr -s 2 ".wl[73].w";
	setAttr ".wl[73].w[3]" 0.98897694313816498;
	setAttr ".wl[73].w[45]" 0.011023056861835023;
	setAttr ".wl[74].w[3]"  1;
	setAttr -s 2 ".wl[75].w";
	setAttr ".wl[75].w[3]" 0.99999999967557063;
	setAttr ".wl[75].w[45]" 3.2442937225596324e-10;
	setAttr -s 2 ".wl[76].w";
	setAttr ".wl[76].w[3]" 0.30928873254768358;
	setAttr ".wl[76].w[45]" 0.69071126745231637;
	setAttr -s 2 ".wl[77].w";
	setAttr ".wl[77].w[3]" 0.31746634711047755;
	setAttr ".wl[77].w[45]" 0.6825336528895225;
	setAttr -s 3 ".wl[78].w";
	setAttr ".wl[78].w[3]" 0.21491289489027138;
	setAttr ".wl[78].w[44]" 0.11728876478914141;
	setAttr ".wl[78].w[45]" 0.66779834032058716;
	setAttr -s 3 ".wl[79].w";
	setAttr ".wl[79].w[3]" 0.21222382293315928;
	setAttr ".wl[79].w[44]" 0.11796862377551998;
	setAttr ".wl[79].w[45]" 0.6698075532913208;
	setAttr -s 2 ".wl[80].w[44:45]"  0.9086119681596756 0.091388031840324402;
	setAttr -s 2 ".wl[81].w[44:45]"  0.89828427135944366 0.10171572864055634;
	setAttr -s 3 ".wl[82].w";
	setAttr ".wl[82].w[3]" 0.0010859200527835737;
	setAttr ".wl[82].w[44]" 0.40902991799805866;
	setAttr ".wl[82].w[45]" 0.58988416194915771;
	setAttr -s 3 ".wl[83].w";
	setAttr ".wl[83].w[3]" 0.0018959470412548427;
	setAttr ".wl[83].w[44]" 0.5098401479103748;
	setAttr ".wl[83].w[45]" 0.48826390504837036;
	setAttr -s 3 ".wl[84].w";
	setAttr ".wl[84].w[3]" 0.0058285221896661518;
	setAttr ".wl[84].w[44]" 0.32440517093319765;
	setAttr ".wl[84].w[45]" 0.66976630687713623;
	setAttr -s 3 ".wl[85].w";
	setAttr ".wl[85].w[3]" 0.0038219774197145568;
	setAttr ".wl[85].w[44]" 0.326278022484918;
	setAttr ".wl[85].w[45]" 0.66990000009536743;
	setAttr ".wl[86].w[3]"  1;
	setAttr ".wl[87].w[3]"  1.0000000002981029;
	setAttr ".wl[88].w[3]"  1;
	setAttr ".wl[89].w[3]"  1;
	setAttr -s 2 ".wl[90].w[44:45]"  0.94893097877502441 0.051069021224975586;
	setAttr -s 2 ".wl[91].w[44:45]"  0.91260000318288803 0.087399996817111969;
	setAttr -s 2 ".wl[92].w";
	setAttr ".wl[92].w[3]" 0.81483350012635303;
	setAttr ".wl[92].w[45]" 0.18516649987364697;
	setAttr -s 2 ".wl[93].w";
	setAttr ".wl[93].w[3]" 0.82333445763426483;
	setAttr ".wl[93].w[45]" 0.17666554236573517;
	setAttr -s 2 ".wl[94].w";
	setAttr ".wl[94].w[6]" 0.056364958629574365;
	setAttr ".wl[94].w[47]" 0.94363504137042564;
	setAttr -s 2 ".wl[95].w";
	setAttr ".wl[95].w[6]" 0.054237002601573915;
	setAttr ".wl[95].w[47]" 0.94576299739842606;
	setAttr -s 2 ".wl[96].w[46:47]"  0.99999457597732544 5.4240226745605469e-06;
	setAttr -s 2 ".wl[97].w[46:47]"  0.99181753396987915 0.0081824660301208496;
	setAttr -s 2 ".wl[98].w";
	setAttr ".wl[98].w[6]" 0.98847154694447059;
	setAttr ".wl[98].w[47]" 0.011528453055529408;
	setAttr -s 2 ".wl[99].w";
	setAttr ".wl[99].w[6]" 0.98893890260398742;
	setAttr ".wl[99].w[47]" 0.011061097396012576;
	setAttr ".wl[100].w[6]"  1;
	setAttr ".wl[101].w[6]"  1;
	setAttr -s 2 ".wl[102].w";
	setAttr ".wl[102].w[6]" 0.31444222453381471;
	setAttr ".wl[102].w[47]" 0.68555777546618524;
	setAttr -s 2 ".wl[103].w";
	setAttr ".wl[103].w[6]" 0.32276312414348235;
	setAttr ".wl[103].w[47]" 0.67723687585651771;
	setAttr -s 3 ".wl[104].w";
	setAttr ".wl[104].w[6]" 0.18221528828144073;
	setAttr ".wl[104].w[46]" 0.11204568197955711;
	setAttr ".wl[104].w[47]" 0.70573902973900215;
	setAttr -s 3 ".wl[105].w";
	setAttr ".wl[105].w[6]" 0.18449999392032623;
	setAttr ".wl[105].w[46]" 0.087559782698164002;
	setAttr ".wl[105].w[47]" 0.72794022338150977;
	setAttr -s 2 ".wl[106].w[46:47]"  0.9160563000322588 0.083943699967741203;
	setAttr -s 2 ".wl[107].w[46:47]"  0.9940122501131764 0.0059877498868236012;
	setAttr -s 2 ".wl[108].w[46:47]"  0.47029496554427053 0.52970503445572947;
	setAttr -s 2 ".wl[109].w[46:47]"  0.48484038935240603 0.51515961064759397;
	setAttr -s 2 ".wl[110].w[46:47]"  0.21066756086704119 0.78933243913295881;
	setAttr -s 2 ".wl[111].w[46:47]"  0.24770473420833627 0.75229526579166373;
	setAttr ".wl[112].w[6]"  1;
	setAttr ".wl[113].w[6]"  1;
	setAttr ".wl[114].w[6]"  1;
	setAttr ".wl[115].w[6]"  1;
	setAttr -s 2 ".wl[116].w[46:47]"  0.9999949336051942 5.0663948057971808e-06;
	setAttr -s 2 ".wl[117].w[46:47]"  0.99992239475250233 7.7605247497669616e-05;
	setAttr -s 2 ".wl[118].w";
	setAttr ".wl[118].w[6]" 0.81551344692707062;
	setAttr ".wl[118].w[47]" 0.18448655307292938;
	setAttr -s 2 ".wl[119].w";
	setAttr ".wl[119].w[6]" 0.82464738190174103;
	setAttr ".wl[119].w[47]" 0.17535261809825897;
	setAttr -s 47 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.274286506692317e-16 -8.1810495983390261 -0.018175814976949076 1;
	setAttr ".pm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 5.8112997967568226e-16 -7.3913983732815742 -0.045052099000275257 1;
	setAttr ".pm[2]" -type "matrix" -5.6092466462732912e-05 -0.0011760508776854004 0.99999930687874417 0
		 -0.99892875510817991 0.046274639009146384 -1.6110489899596136e-06 0 -0.04627460504053494 -0.99892806281979429 -0.0011773866978270309 0
		 6.8627146074622596 -0.27606199092825989 1.4720413039453535 1;
	setAttr ".pm[3]" -type "matrix" 5.273844984367786e-05 -0.001176206056610218 0.99999930687874417 0
		 -0.99893407437092885 -0.046159669172344396 -1.6110489899596136e-06 0 0.046159639073022063 -0.99893338190352443 -0.0011773866978270309 0
		 3.9436681451067153 0.08845688274093344 1.4720413039453519 1;
	setAttr ".pm[4]" -type "matrix" 0.99999930687874417 0.001176206055021494 5.273848527161389e-05 0
		 -1.6110489948393973e-06 0.04615969926481088 -0.99893407298038772 0 -0.0011773866978268056 0.99893338051298441 0.046159669165467695 0
		 1.4720413039453544 -0.088457001542268585 0.82975493808845124 1;
	setAttr ".pm[5]" -type "matrix" -7.2707042471774441e-16 -1.3000153435382423e-15 1 0
		 0.99892875515336332 -0.046274638061808294 8.2043924392298774e-16 0 0.046274638061808628 0.99892875515336332 1.4828439500167648e-15 0
		 -6.8627971761990025 0.2743308309090966 -1.471980000000005 1;
	setAttr ".pm[6]" -type "matrix" -6.0392673134990128e-16 -1.3615960484281378e-15 1 0
		 0.9989340743284465 0.046159670119807407 8.2043924392298784e-16 0 -0.046159670119807081 0.99893407432844661 1.482843950016765e-15 0
		 -3.9435905135198732 -0.090188271185206087 -1.4719800000000027 1;
	setAttr ".pm[7]" -type "matrix" 3.7233569991109216e-16 -1.4422334840468144e-15 1 0
		 0.75424222955284259 0.6565962680058095 8.2043924392298784e-16 0 -0.65659626800580928 0.75424222955284281 1.482843950016765e-15 0
		 -0.59424244949656457 -0.58598147559584279 -1.4719800000000003 1;
	setAttr ".pm[8]" -type "matrix" 0.99999867169251455 0.0016000963820614763 -0.00031033010595712496 0
		 -0.0015987384955499658 0.99998935793862975 0.0043275910978187691 0 0.00031725136626375365 -0.0043270892127603971 0.99999058778096284 0
		 0.015742415832818876 -9.1372440405236315 -0.060804061872838523 1;
	setAttr ".pm[9]" -type "matrix" -4.5774655733335414e-16 1 2.1163626406917039e-16 0
		 1 7.340891505509383e-16 7.4593109467002853e-17 0 7.6327832942979401e-17 2.1066048211393351e-16 -0.99999999999999978 0
		 -10.449564173868321 -8.0325273308885864e-15 0.01817581497694876 1;
	setAttr ".pm[10]" -type "matrix" 0.99995325883512587 -0.0096685129379941066 -1.606127105150912e-06 0
		 0.0096685130713989979 0.99995324503795147 0.00016611158518653441 0 2.1138194242675726e-16 -0.00016611934979845238 0.99999998620218045 0
		 1.3272938565604626 -12.992157420640076 -0.020334064000711007 1;
	setAttr ".pm[11]" -type "matrix" 0.99980566703278773 0.017117319501743094 0.0097788313308602888 0
		 0.0096670860114206579 0.0065988191016373198 -0.99993149917107382 0 -0.017180675690145992 0.99983171231939738 0.0064320621336328892 0
		 4.2290240275309792 -0.078948143237024274 12.991921574209618 1;
	setAttr ".pm[12]" -type "matrix" 0.9999887798164705 -0.0046916448112533796 0.00065475959839717858 0
		 0.00016216523014268521 -0.10423414028522632 -0.99455277270813403 0 0.0047343366594262155 0.9945417198227352 -0.10423220993738169 0
		 6.9166466637092103 1.2618188547679967 12.89006641025734 1;
	setAttr ".pm[13]" -type "matrix" 0.99990650512154755 -0.013661299068293822 -0.00059154321868020463 0
		 -0.00088173540775239297 -0.021245673631520367 -0.99977389638588443 0 0.013645642465037954 0.99968094423156273 -0.021255732920950961 0
		 8.0904316577531592 0.12474808127928379 12.944421044782382 1;
	setAttr ".pm[14]" -type "matrix" -0.95658675438649265 0.29144749129975406 -0.0003756958812062036 0
		 -0.29044352618105967 -0.95339688079932694 -0.081712580314325947 0 -0.024173113821511119 -0.078056053558917232 0.99665586491575853 0
		 -7.536538364706252 14.70582050672718 1.0153447687013692 1;
	setAttr ".pm[15]" -type "matrix" -0.95162329983167804 -0.3072669120139413 -0.00037416424918659791 0
		 0.30627477251083512 -0.94845139154443259 -0.08145993862546673 0 0.02467506719148509 -0.07763377266915393 0.99667654652863613 0
		 -15.221620976693082 9.8039529146183355 1.0120842839572932 1;
	setAttr ".pm[16]" -type "matrix" 0.99995325883512587 -0.0096685129379960773 -1.6061271010383421e-06 0
		 -0.0096685130714001932 -0.99995324503795158 -0.00016611158480493986 0 2.0995215081179205e-16 0.00016611934941683593 -0.99999998620218067 0
		 -1.3272973614988308 12.992137061043957 0.020334045636679884 1;
	setAttr ".pm[17]" -type "matrix" 0.99980566703278784 0.017117319501743902 0.0097788313308627174 0
		 -0.0096670860114223007 -0.0065988191016372244 0.99993149917107427 0 0.017180675690146825 -0.99983171231939794 -0.0064320621336328085 0
		 -4.2290271213014394 0.078948280970739498 -12.991951362939492 1;
	setAttr ".pm[18]" -type "matrix" 0.99998877981647039 -0.0047294247656056703 0.00026978241813555178 0
		 -0.00016216523014055435 0.022740448206862284 0.99974138941917867 0 -0.0047343366594268304 -0.99973021588663491 0.022739426106604246 0
		 -6.9166477096983456 -0.20590448713049994 -12.95008830930186 1;
	setAttr ".pm[19]" -type "matrix" 0.99990612408113144 -0.01366696379008454 -0.00097832806844499304 0
		 0.00015115248526370294 -0.060394096631828667 0.99817459907821338 0 -0.013701101341687403 -0.99808104239725237 -0.060386361284970297 0
		 -8.0809612877871064 0.93245560997346977 -12.916441412464934 1;
	setAttr ".pm[20]" -type "matrix" -0.95669909334599701 0.29107847904145645 -0.00040475901380065271 0
		 0.29107845299057761 0.95669917896845336 0.00012314909504045722 0 0.00042307866746286267 1.7679271675091752e-16 -0.99999991050221637 0
		 7.5303749307173327 -14.741661040490099 0.041647044718501426 1;
	setAttr ".pm[21]" -type "matrix" -0.95150469301091523 -0.30763396539512172 -0.00040312960271820695 0
		 -0.30763393778478293 0.95150477840905945 -0.00013033708402337057 0 0.00042367585730073825 -9.9936335248851371e-17 -0.99999991024938018 0
		 15.236979467244545 -9.8366107712992257 0.044916644369758459 1;
	setAttr ".pm[22]" -type "matrix" 1 -2.3570195240832283e-16 -1.222279363684031e-15 0
		 5.120445456259069e-16 1 -7.4593109467003371e-17 0 1.2213035817287939e-15 7.6327832942979488e-17 0.99999999999999978 0
		 -5.8892649886829956e-15 -14.132338326454146 -0.018175814976947761 1;
	setAttr ".pm[23]" -type "matrix" -0.99999999999999978 -1.2580023462156421e-31 5.6655388976479767e-16 0
		 5.6655388976479776e-16 -2.2204460492503116e-16 0.99999999999999956 0 1.0368904951418883e-31 0.99999999999999978 4.4408920985006242e-16 0
		 1.4719799999999996 -0.86400299999999974 0.030815599999995603 1;
	setAttr ".pm[24]" -type "matrix" 2.3442429851391195e-17 0.99999999999999978 6.3400157704830994e-16 0
		 0.38436220319192954 -6.0932562723396068e-16 0.92318237459206542 0 0.92318237459206565 2.5832863661246398e-16 -0.38436220319192943 0
		 1.7720854173671177 -1.4719799999999992 -0.70441883766560698 1;
	setAttr ".pm[25]" -type "matrix" -1.6473871849269507e-16 5.1310379004435633e-15 0.99999999999999978 0
		 0.13470272551672138 -0.99088605588047585 5.1112178456623117e-15 0 0.99088605588047607 0.13470272551672122 -5.1933171359935369e-16 0
		 1.0965409408536926 0.43780013937948048 -1.4719800000000018 1;
	setAttr ".pm[26]" -type "matrix" 0.99999999999999978 3.4681873542590428e-15 -5.4606650732335122e-15 0
		 5.7290753995561755e-15 -0.046159700212273058 0.99893407293790504 0 3.2309039283245058e-15 -0.99893407293790526 -0.046159700212272836 0
		 -1.4719800000000041 0.090188389984198314 -0.82967730644944482 1;
	setAttr ".pm[27]" -type "matrix" -1.6473871849269507e-16 5.1310379004435633e-15 0.99999999999999978 0
		 0.13470272551672138 -0.99088605588047585 5.1112178456623117e-15 0 0.99088605588047607 0.13470272551672122 -5.1933171359935369e-16 0
		 1.0965409408536926 0.43780013937948048 -1.4719800000000018 1;
	setAttr ".pm[28]" -type "matrix" -0.99999999999999978 2.7192621468937816e-32 -1.224646799147353e-16 0
		 1.224646799147353e-16 2.2204460492503126e-16 -0.99999999999999978 0 2.5407181807812012e-33 -1 -2.2204460492503131e-16 0
		 -1.4719800000000005 0.86400340431995304 -0.030815594505924065 1;
	setAttr ".pm[29]" -type "matrix" -2.3072207143630292e-16 0.99999999999999978 2.3535235958535913e-17 0
		 -0.38436220319192954 -5.4069484240566186e-17 -0.92318237459206576 0 -0.92318237459206587 -2.6899683080694753e-16 0.38436220319192965 0
		 -1.7720844747306195 1.471979999999997 0.70441845115500901 1;
	setAttr ".pm[30]" -type "matrix" -2.5339686096056408e-16 3.9483185364587629e-15 0.99999999999999978 0
		 -0.13470272551672136 0.99088605588047618 -3.9044352833053667e-15 0 -0.9908860558804764 -0.13470272551672133 2.5442840491254556e-16 0
		 -1.0965373791413606 -0.4377996498307492 1.4719799999999994 1;
	setAttr ".pm[31]" -type "matrix" 0.99999999999999978 3.8876419117107268e-15 -4.2549251011488363e-15 0
		 -4.5351047276955991e-15 0.046159700212274273 -0.99893407293790515 0 -3.7730671389758749e-15 0.99893407293790537 0.046159700212274231 0
		 1.4719800000000023 -0.090188389984198813 0.82967730644944937 1;
	setAttr ".pm[32]" -type "matrix" -2.1831640582581438e-16 4.5133354427665069e-15 0.99999999999999978 0
		 -0.13470272551672124 0.99088605588047618 -4.454487540314623e-15 0 -0.9908860558804764 -0.13470272551672133 3.2920343858675887e-16 0
		 -1.0965373791413606 -0.43779964983074843 1.4719799999999996 1;
	setAttr ".pm[33]" -type "matrix" -1.6473871849269507e-16 5.1310379004435633e-15 0.99999999999999978 0
		 0.13470272551672138 -0.99088605588047585 5.1112178456623117e-15 0 0.99088605588047607 0.13470272551672122 -5.1933171359935369e-16 0
		 1.0965409408536926 0.43780013937948048 -1.4719800000000018 1;
	setAttr ".pm[34]" -type "matrix" -2.1831640582581438e-16 4.5133354427665069e-15 0.99999999999999978 0
		 -0.13470272551672124 0.99088605588047618 -4.454487540314623e-15 0 -0.9908860558804764 -0.13470272551672133 3.2920343858675887e-16 0
		 -1.0965373791413606 -0.43779964983074843 1.4719799999999996 1;
	setAttr ".pm[36]" -type "matrix" 0.99999930687874417 0.001176206055021494 5.273848527161389e-05 0
		 -1.6110489948393973e-06 0.04615969926481088 -0.99893407298038772 0 -0.0011773866978268056 0.99893338051298441 0.046159669165467695 0
		 1.4720413039453544 -0.088457001542268585 0.82975493808845124 1;
	setAttr ".pm[37]" -type "matrix" -1.0499376199234976e-16 4.376792516232537e-15 1.0000000000000002 0
		 -0.1347027255167213 0.9908860558804764 -4.4853209632459409e-15 0 -0.99088605588047662 -0.13470272551672136 3.4852164924845063e-16 0
		 -1.0965373791413611 -0.4377996498307487 1.4719800000000012 1;
	setAttr ".pm[38]" -type "matrix" 5.3831645435116633e-16 -1.8865295639979364e-15 1.0000000000000002 0
		 0.75424222955284292 0.65659626800580972 8.1787048549136758e-16 0 -0.65659626800580984 0.75424222955284292 1.5382956352133354e-15 0
		 -0.59424244949656702 -0.58598147559584368 -1.4719800000000003 1;
	setAttr ".pm[39]" -type "matrix" -1.8723297729409443e-15 5.8579827775640394e-16 1.0000000000000002 0
		 0.13470272551672108 -0.99088605588047707 8.1787048549136778e-16 0 0.99088605588047707 0.13470272551672108 1.5382956352133358e-15 0
		 1.0965409408536961 0.4378001393794872 -1.4719799999999987 1;
	setAttr ".pm[40]" -type "matrix" -1.8873791418627661e-15 6.106226635438361e-16 1.0000000000000002 0
		 0.097330276443998123 -0.99525213754472086 8.1787048549136788e-16 0 0.99525213754472042 0.097330276443998345 1.5382956352133354e-15 0
		 1.127446078945852 0.4433627334937989 -1.4719799999999978 1;
	setAttr ".pm[41]" -type "matrix" -2.2204460492503131e-16 4.5519144009631418e-15 0.99999999999999989 0
		 -0.13470272551672136 0.9908860558804764 -4.4852892891735965e-15 0 -0.99088605588047685 -0.13470272551672141 3.4895586801206648e-16 0
		 -1.0965373791413613 -0.43779964983074876 1.471980000000001 1;
	setAttr ".pm[42]" -type "matrix" -7.2536808019320951e-17 4.4968419088231011e-15 1 0
		 -0.13470272551672122 0.99088605588047662 -4.4892916130456095e-15 0 -0.99088605588047685 -0.13470272551672111 3.577464355293193e-16 0
		 -1.1920440310016853 -0.43666667811835452 1.4719800000000003 1;
	setAttr ".pm[43]" -type "matrix" -1.8723297729409443e-15 5.8579827775640246e-16 1.0000000000000002 0
		 0.13470272551672163 -0.99088605588047673 8.1787048549136768e-16 0 0.99088605588047673 0.13470272551672174 1.5382956352133354e-15 0
		 1.1920595679512456 0.43655238684022385 -1.4719799999999981 1;
	setAttr ".pm[44]" -type "matrix" 0.99999999999999989 5.5511151231257827e-17 -2.2204460492503131e-16 0
		 2.5089357904154871e-16 0.99999999997823041 6.5984478037628456e-06 0 3.6676191659501642e-16 -6.5984478040404013e-06 0.99999999997823086 0
		 1.4719799999999978 -0.2914271187616807 1.1480145899346692 1;
	setAttr ".pm[45]" -type "matrix" 2.0539125955565396e-15 1.1102230246251565e-16 1 0
		 -0.41138875975320399 0.91145997627362696 9.4483245275937802e-16 0 -0.9114599762736274 -0.41138875975320449 1.9211790291284073e-15 0
		 0.38987744065609864 -0.73789833974106722 1.4719799999999954 1;
	setAttr ".pm[46]" -type "matrix" 0.99999999999999956 2.7755575615628914e-17 2.2204460492503131e-16 0
		 1.9329729192423592e-16 0.99999999997823374 -6.5979582848721416e-06 0 -7.7794098437880507e-17 6.597958285108064e-06 0.9999999999782333 0
		 -1.4719799999999978 -0.29142685374737926 1.148046107181186 1;
	setAttr ".pm[47]" -type "matrix" 1.4988010832439613e-15 -2.2204460492503131e-16 0.99999999999999989 0
		 -0.41137673172140321 0.91146540504739781 8.8717642701257054e-16 0 -0.91146540504739781 -0.41137673172140293 1.4765227142567586e-15 0
		 0.38984860483946615 -0.73791106384182226 -1.471980000000001 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 18 ".ma";
	setAttr -s 47 ".dpf";
	setAttr ".dpf[0]" 1.2;
	setAttr ".dpf[1]" 1.2;
	setAttr ".dpf[2]" 1.2;
	setAttr ".dpf[3]" 1.2;
	setAttr ".dpf[4]" 1.2;
	setAttr ".dpf[5]" 1.2;
	setAttr ".dpf[6]" 1.2;
	setAttr ".dpf[7]" 1.2;
	setAttr ".dpf[8]" 1.2;
	setAttr ".dpf[9]" 1.2;
	setAttr ".dpf[10]" 1.2;
	setAttr ".dpf[11]" 1.2;
	setAttr ".dpf[12]" 1.2;
	setAttr ".dpf[13]" 1.2;
	setAttr ".dpf[14]" 1.2;
	setAttr ".dpf[15]" 1.2;
	setAttr ".dpf[16]" 1.2;
	setAttr ".dpf[17]" 1.2;
	setAttr ".dpf[18]" 1.2;
	setAttr ".dpf[19]" 1.2;
	setAttr ".dpf[20]" 1.2;
	setAttr ".dpf[21]" 1.2;
	setAttr ".dpf[22]" 1.2;
	setAttr ".dpf[23]" 1.2;
	setAttr ".dpf[24]" 1.2;
	setAttr ".dpf[25]" 1.2;
	setAttr ".dpf[26]" 1.2;
	setAttr ".dpf[27]" 1.2;
	setAttr ".dpf[28]" 1.2;
	setAttr ".dpf[29]" 1.2;
	setAttr ".dpf[30]" 1.2;
	setAttr ".dpf[31]" 1.2;
	setAttr ".dpf[32]" 1.2;
	setAttr ".dpf[33]" 1.2;
	setAttr ".dpf[34]" 1.2;
	setAttr ".dpf[36]" 1.2;
	setAttr ".dpf[37]" 1.2;
	setAttr ".dpf[38]" 1.2;
	setAttr ".dpf[39]" 1.2;
	setAttr ".dpf[40]" 1.2;
	setAttr ".dpf[41]" 1.2;
	setAttr ".dpf[42]" 1.2;
	setAttr ".dpf[43]" 1.2;
	setAttr ".dpf[44]" 1.2;
	setAttr ".dpf[45]" 1.2;
	setAttr ".dpf[46]" 1.2;
	setAttr ".dpf[47]" 1.2;
	setAttr -s 18 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
	setAttr -s 41 ".ifcl";
createNode tweak -n "tweak7";
createNode objectSet -n "skinCluster7Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster7GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster7GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet7";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId42";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts32";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster9";
	setAttr -s 26 ".wl";
	setAttr ".wl[0].w[11]"  1;
	setAttr ".wl[1].w[11]"  1;
	setAttr ".wl[2].w[11]"  1;
	setAttr ".wl[3].w[11]"  1;
	setAttr ".wl[4].w[11]"  1;
	setAttr ".wl[5].w[11]"  1;
	setAttr ".wl[6].w[11]"  1;
	setAttr ".wl[7].w[11]"  1;
	setAttr ".wl[8].w[11]"  1;
	setAttr ".wl[9].w[11]"  1;
	setAttr ".wl[10].w[11]"  1;
	setAttr ".wl[11].w[11]"  1;
	setAttr ".wl[12].w[11]"  1;
	setAttr ".wl[13].w[11]"  1;
	setAttr ".wl[14].w[11]"  1;
	setAttr ".wl[15].w[11]"  1;
	setAttr ".wl[16].w[11]"  1;
	setAttr ".wl[17].w[11]"  1;
	setAttr ".wl[18].w[11]"  1;
	setAttr ".wl[19].w[11]"  1;
	setAttr ".wl[20].w[11]"  1;
	setAttr ".wl[21].w[11]"  1;
	setAttr ".wl[22].w[11]"  1;
	setAttr ".wl[23].w[11]"  1;
	setAttr ".wl[24].w[11]"  1;
	setAttr ".wl[25].w[11]"  1;
	setAttr -s 23 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.274286506692317e-16 -8.1810495983390261 -0.018175814976949076 1;
	setAttr ".pm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 5.8112997967568226e-16 -7.3913983732815742 -0.045052099000275257 1;
	setAttr ".pm[2]" -type "matrix" -5.6092466462732912e-05 -0.0011760508776854004 0.99999930687874417 0
		 -0.99892875510817991 0.046274639009146384 -1.6110489899596136e-06 0 -0.04627460504053494 -0.99892806281979429 -0.0011773866978270309 0
		 6.8627146074622596 -0.27606199092825989 1.4720413039453535 1;
	setAttr ".pm[3]" -type "matrix" 5.273844984367786e-05 -0.001176206056610218 0.99999930687874417 0
		 -0.99893407437092885 -0.046159669172344396 -1.6110489899596136e-06 0 0.046159639073022063 -0.99893338190352443 -0.0011773866978270309 0
		 3.9436681451067153 0.08845688274093344 1.4720413039453519 1;
	setAttr ".pm[4]" -type "matrix" 0.99999930687874417 0.001176206055021494 5.273848527161389e-05 0
		 -1.6110489948393973e-06 0.04615969926481088 -0.99893407298038772 0 -0.0011773866978268056 0.99893338051298441 0.046159669165467695 0
		 1.4720413039453544 -0.088457001542268585 0.82975493808845124 1;
	setAttr ".pm[5]" -type "matrix" -9.1397554776042165e-16 -1.7359225498159451e-15 1.0000000000000002 0
		 0.99892875515336388 -0.046274638061808371 8.1787048549136768e-16 0 0.046274638061808225 0.99892875515336388 1.5382956352133354e-15 0
		 -6.8627971761990052 0.27433083090909771 -1.4719800000000054 1;
	setAttr ".pm[6]" -type "matrix" -7.4978366132976494e-16 -1.8128990214753794e-15 1.0000000000000002 0
		 0.99893407432844705 0.046159670119807393 8.1787048549136778e-16 0 -0.046159670119807532 0.99893407432844705 1.5382956352133356e-15 0
		 -3.9435905135198763 -0.090188271185205254 -1.4719800000000032 1;
	setAttr ".pm[7]" -type "matrix" 5.3831645435116633e-16 -1.8865295639979364e-15 1.0000000000000002 0
		 0.75424222955284292 0.65659626800580972 8.1787048549136758e-16 0 -0.65659626800580984 0.75424222955284292 1.5382956352133354e-15 0
		 -0.59424244949656702 -0.58598147559584368 -1.4719800000000003 1;
	setAttr ".pm[8]" -type "matrix" 0.99999867169251455 0.0016000963820614763 -0.00031033010595712496 0
		 -0.0015987384955499658 0.99998935793862975 0.0043275910978187691 0 0.00031725136626375365 -0.0043270892127603971 0.99999058778096284 0
		 0.015742415832818876 -9.1372440405236315 -0.060804061872838523 1;
	setAttr ".pm[9]" -type "matrix" -4.5774655733335414e-16 1 2.1163626406917039e-16 0
		 1 7.340891505509383e-16 7.4593109467002853e-17 0 7.6327832942979401e-17 2.1066048211393351e-16 -0.99999999999999978 0
		 -10.449564173868321 -8.0325273308885864e-15 0.01817581497694876 1;
	setAttr ".pm[10]" -type "matrix" 0.99995325883512587 -0.0096685129379941066 -1.606127105150912e-06 0
		 0.0096685130713989979 0.99995324503795147 0.00016611158518653441 0 2.1138194242675726e-16 -0.00016611934979845238 0.99999998620218045 0
		 1.3272938565604626 -12.992157420640076 -0.020334064000711007 1;
	setAttr ".pm[11]" -type "matrix" 0.99980566703278773 0.017117319501743094 0.0097788313308602888 0
		 0.0096670860114206579 0.0065988191016373198 -0.99993149917107382 0 -0.017180675690145992 0.99983171231939738 0.0064320621336328892 0
		 4.2290240275309792 -0.078948143237024274 12.991921574209618 1;
	setAttr ".pm[12]" -type "matrix" 0.9999887798164705 -0.0046916448112533796 0.00065475959839717858 0
		 0.00016216523014268521 -0.10423414028522632 -0.99455277270813403 0 0.0047343366594262155 0.9945417198227352 -0.10423220993738169 0
		 6.9166466637092103 1.2618188547679967 12.89006641025734 1;
	setAttr ".pm[13]" -type "matrix" 0.99990650512154755 -0.013661299068293822 -0.00059154321868020463 0
		 -0.00088173540775239297 -0.021245673631520367 -0.99977389638588443 0 0.013645642465037954 0.99968094423156273 -0.021255732920950961 0
		 8.0904316577531592 0.12474808127928379 12.944421044782382 1;
	setAttr ".pm[14]" -type "matrix" -0.95658675438649265 0.29144749129975406 -0.0003756958812062036 0
		 -0.29044352618105967 -0.95339688079932694 -0.081712580314325947 0 -0.024173113821511119 -0.078056053558917232 0.99665586491575853 0
		 -7.536538364706252 14.70582050672718 1.0153447687013692 1;
	setAttr ".pm[15]" -type "matrix" -0.95162329983167804 -0.3072669120139413 -0.00037416424918659791 0
		 0.30627477251083512 -0.94845139154443259 -0.08145993862546673 0 0.02467506719148509 -0.07763377266915393 0.99667654652863613 0
		 -15.221620976693082 9.8039529146183355 1.0120842839572932 1;
	setAttr ".pm[16]" -type "matrix" 0.99995325883512587 -0.0096685129379960773 -1.6061271010383421e-06 0
		 -0.0096685130714001932 -0.99995324503795158 -0.00016611158480493986 0 2.0995215081179205e-16 0.00016611934941683593 -0.99999998620218067 0
		 -1.3272973614988308 12.992137061043957 0.020334045636679884 1;
	setAttr ".pm[17]" -type "matrix" 0.99980566703278784 0.017117319501743902 0.0097788313308627174 0
		 -0.0096670860114223007 -0.0065988191016372244 0.99993149917107427 0 0.017180675690146825 -0.99983171231939794 -0.0064320621336328085 0
		 -4.2290271213014394 0.078948280970739498 -12.991951362939492 1;
	setAttr ".pm[18]" -type "matrix" 0.99998877981647039 -0.0047294247656056703 0.00026978241813555178 0
		 -0.00016216523014055435 0.022740448206862284 0.99974138941917867 0 -0.0047343366594268304 -0.99973021588663491 0.022739426106604246 0
		 -6.9166477096983456 -0.20590448713049994 -12.95008830930186 1;
	setAttr ".pm[19]" -type "matrix" 0.99990612408113144 -0.01366696379008454 -0.00097832806844499304 0
		 0.00015115248526370294 -0.060394096631828667 0.99817459907821338 0 -0.013701101341687403 -0.99808104239725237 -0.060386361284970297 0
		 -8.0809612877871064 0.93245560997346977 -12.916441412464934 1;
	setAttr ".pm[20]" -type "matrix" -0.95669909334599701 0.29107847904145645 -0.00040475901380065271 0
		 0.29107845299057761 0.95669917896845336 0.00012314909504045722 0 0.00042307866746286267 1.7679271675091752e-16 -0.99999991050221637 0
		 7.5303749307173327 -14.741661040490099 0.041647044718501426 1;
	setAttr ".pm[21]" -type "matrix" -0.95150469301091523 -0.30763396539512172 -0.00040312960271820695 0
		 -0.30763393778478293 0.95150477840905945 -0.00013033708402337057 0 0.00042367585730073825 -9.9936335248851371e-17 -0.99999991024938018 0
		 15.236979467244545 -9.8366107712992257 0.044916644369758459 1;
	setAttr ".pm[22]" -type "matrix" 1 -2.3570195240832283e-16 -1.222279363684031e-15 0
		 5.120445456259069e-16 1 -7.4593109467003371e-17 0 1.2213035817287939e-15 7.6327832942979488e-17 0.99999999999999978 0
		 -5.8892649886829956e-15 -14.132338326454146 -0.018175814976947761 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 2 ".ma";
	setAttr -s 23 ".dpf[0:22]"  1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 
		1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2;
	setAttr -s 2 ".lw";
	setAttr -s 2 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
	setAttr -s 23 ".ifcl";
	setAttr -s 23 ".ifcl";
createNode tweak -n "tweak9";
createNode objectSet -n "skinCluster9Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster9GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster9GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet9";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId46";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts36";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster10";
	setAttr -s 30 ".wl";
	setAttr ".wl[0].w[23]"  1;
	setAttr ".wl[1].w[23]"  1;
	setAttr ".wl[2].w[23]"  1;
	setAttr ".wl[3].w[23]"  1;
	setAttr ".wl[4].w[23]"  1;
	setAttr ".wl[5].w[23]"  1;
	setAttr ".wl[6].w[23]"  1;
	setAttr ".wl[7].w[23]"  1;
	setAttr ".wl[8].w[23]"  1;
	setAttr ".wl[9].w[23]"  1;
	setAttr ".wl[10].w[23]"  1;
	setAttr ".wl[11].w[23]"  1;
	setAttr ".wl[12].w[23]"  1;
	setAttr ".wl[13].w[23]"  1;
	setAttr ".wl[14].w[23]"  1;
	setAttr ".wl[15].w[23]"  1;
	setAttr ".wl[16].w[23]"  1;
	setAttr ".wl[17].w[23]"  1;
	setAttr ".wl[18].w[23]"  1;
	setAttr ".wl[19].w[23]"  1;
	setAttr ".wl[20].w[23]"  1;
	setAttr ".wl[21].w[23]"  1;
	setAttr ".wl[22].w[23]"  1;
	setAttr ".wl[23].w[23]"  1;
	setAttr ".wl[24].w[23]"  1;
	setAttr ".wl[25].w[23]"  1;
	setAttr ".wl[26].w[23]"  1;
	setAttr ".wl[27].w[23]"  1;
	setAttr ".wl[28].w[23]"  1;
	setAttr ".wl[29].w[23]"  1;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.274286506692317e-16 -8.1810495983390261 -0.018175814976949076 1;
	setAttr ".pm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 5.8112997967568226e-16 -7.3913983732815742 -0.045052099000275257 1;
	setAttr ".pm[2]" -type "matrix" -5.6092466462732912e-05 -0.0011760508776854004 0.99999930687874417 0
		 -0.99892875510817991 0.046274639009146384 -1.6110489899596136e-06 0 -0.04627460504053494 -0.99892806281979429 -0.0011773866978270309 0
		 6.8627146074622596 -0.27606199092825989 1.4720413039453535 1;
	setAttr ".pm[3]" -type "matrix" 5.273844984367786e-05 -0.001176206056610218 0.99999930687874417 0
		 -0.99893407437092885 -0.046159669172344396 -1.6110489899596136e-06 0 0.046159639073022063 -0.99893338190352443 -0.0011773866978270309 0
		 3.9436681451067153 0.08845688274093344 1.4720413039453519 1;
	setAttr ".pm[4]" -type "matrix" 0.99999930687874417 0.001176206055021494 5.273848527161389e-05 0
		 -1.6110489948393973e-06 0.04615969926481088 -0.99893407298038772 0 -0.0011773866978268056 0.99893338051298441 0.046159669165467695 0
		 1.4720413039453544 -0.088457001542268585 0.82975493808845124 1;
	setAttr ".pm[5]" -type "matrix" -9.1397554776042165e-16 -1.7359225498159451e-15 1.0000000000000002 0
		 0.99892875515336388 -0.046274638061808371 8.1787048549136768e-16 0 0.046274638061808225 0.99892875515336388 1.5382956352133354e-15 0
		 -6.8627971761990052 0.27433083090909771 -1.4719800000000054 1;
	setAttr ".pm[6]" -type "matrix" -7.4978366132976494e-16 -1.8128990214753794e-15 1.0000000000000002 0
		 0.99893407432844705 0.046159670119807393 8.1787048549136778e-16 0 -0.046159670119807532 0.99893407432844705 1.5382956352133356e-15 0
		 -3.9435905135198763 -0.090188271185205254 -1.4719800000000032 1;
	setAttr ".pm[7]" -type "matrix" 5.3831645435116633e-16 -1.8865295639979364e-15 1.0000000000000002 0
		 0.75424222955284292 0.65659626800580972 8.1787048549136758e-16 0 -0.65659626800580984 0.75424222955284292 1.5382956352133354e-15 0
		 -0.59424244949656702 -0.58598147559584368 -1.4719800000000003 1;
	setAttr ".pm[8]" -type "matrix" 0.99999867169251455 0.0016000963820614763 -0.00031033010595712496 0
		 -0.0015987384955499658 0.99998935793862975 0.0043275910978187691 0 0.00031725136626375365 -0.0043270892127603971 0.99999058778096284 0
		 0.015742415832818876 -9.1372440405236315 -0.060804061872838523 1;
	setAttr ".pm[9]" -type "matrix" -4.5774655733335414e-16 1 2.1163626406917039e-16 0
		 1 7.340891505509383e-16 7.4593109467002853e-17 0 7.6327832942979401e-17 2.1066048211393351e-16 -0.99999999999999978 0
		 -10.449564173868321 -8.0325273308885864e-15 0.01817581497694876 1;
	setAttr ".pm[10]" -type "matrix" 0.99995325883512587 -0.0096685129379941066 -1.606127105150912e-06 0
		 0.0096685130713989979 0.99995324503795147 0.00016611158518653441 0 2.1138194242675726e-16 -0.00016611934979845238 0.99999998620218045 0
		 1.3272938565604626 -12.992157420640076 -0.020334064000711007 1;
	setAttr ".pm[11]" -type "matrix" 0.99980566703278773 0.017117319501743094 0.0097788313308602888 0
		 0.0096670860114206579 0.0065988191016373198 -0.99993149917107382 0 -0.017180675690145992 0.99983171231939738 0.0064320621336328892 0
		 4.2290240275309792 -0.078948143237024274 12.991921574209618 1;
	setAttr ".pm[12]" -type "matrix" 0.9999887798164705 -0.0046916448112533796 0.00065475959839717858 0
		 0.00016216523014268521 -0.10423414028522632 -0.99455277270813403 0 0.0047343366594262155 0.9945417198227352 -0.10423220993738169 0
		 6.9166466637092103 1.2618188547679967 12.89006641025734 1;
	setAttr ".pm[13]" -type "matrix" 0.99990650512154755 -0.013661299068293822 -0.00059154321868020463 0
		 -0.00088173540775239297 -0.021245673631520367 -0.99977389638588443 0 0.013645642465037954 0.99968094423156273 -0.021255732920950961 0
		 8.0904316577531592 0.12474808127928379 12.944421044782382 1;
	setAttr ".pm[14]" -type "matrix" -0.95658675438649265 0.29144749129975406 -0.0003756958812062036 0
		 -0.29044352618105967 -0.95339688079932694 -0.081712580314325947 0 -0.024173113821511119 -0.078056053558917232 0.99665586491575853 0
		 -7.536538364706252 14.70582050672718 1.0153447687013692 1;
	setAttr ".pm[15]" -type "matrix" -0.95162329983167804 -0.3072669120139413 -0.00037416424918659791 0
		 0.30627477251083512 -0.94845139154443259 -0.08145993862546673 0 0.02467506719148509 -0.07763377266915393 0.99667654652863613 0
		 -15.221620976693082 9.8039529146183355 1.0120842839572932 1;
	setAttr ".pm[16]" -type "matrix" 0.99995325883512587 -0.0096685129379960773 -1.6061271010383421e-06 0
		 -0.0096685130714001932 -0.99995324503795158 -0.00016611158480493986 0 2.0995215081179205e-16 0.00016611934941683593 -0.99999998620218067 0
		 -1.3272973614988308 12.992137061043957 0.020334045636679884 1;
	setAttr ".pm[17]" -type "matrix" 0.99980566703278784 0.017117319501743902 0.0097788313308627174 0
		 -0.0096670860114223007 -0.0065988191016372244 0.99993149917107427 0 0.017180675690146825 -0.99983171231939794 -0.0064320621336328085 0
		 -4.2290271213014394 0.078948280970739498 -12.991951362939492 1;
	setAttr ".pm[18]" -type "matrix" 0.99998877981647039 -0.0047294247656056703 0.00026978241813555178 0
		 -0.00016216523014055435 0.022740448206862284 0.99974138941917867 0 -0.0047343366594268304 -0.99973021588663491 0.022739426106604246 0
		 -6.9166477096983456 -0.20590448713049994 -12.95008830930186 1;
	setAttr ".pm[19]" -type "matrix" 0.99990612408113144 -0.01366696379008454 -0.00097832806844499304 0
		 0.00015115248526370294 -0.060394096631828667 0.99817459907821338 0 -0.013701101341687403 -0.99808104239725237 -0.060386361284970297 0
		 -8.0809612877871064 0.93245560997346977 -12.916441412464934 1;
	setAttr ".pm[20]" -type "matrix" -0.95669909334599701 0.29107847904145645 -0.00040475901380065271 0
		 0.29107845299057761 0.95669917896845336 0.00012314909504045722 0 0.00042307866746286267 1.7679271675091752e-16 -0.99999991050221637 0
		 7.5303749307173327 -14.741661040490099 0.041647044718501426 1;
	setAttr ".pm[21]" -type "matrix" -0.95150469301091523 -0.30763396539512172 -0.00040312960271820695 0
		 -0.30763393778478293 0.95150477840905945 -0.00013033708402337057 0 0.00042367585730073825 -9.9936335248851371e-17 -0.99999991024938018 0
		 15.236979467244545 -9.8366107712992257 0.044916644369758459 1;
	setAttr ".pm[22]" -type "matrix" 1 -2.3570195240832283e-16 -1.222279363684031e-15 0
		 5.120445456259069e-16 1 -7.4593109467003371e-17 0 1.2213035817287939e-15 7.6327832942979488e-17 0.99999999999999978 0
		 -5.8892649886829956e-15 -14.132338326454146 -0.018175814976947761 1;
	setAttr ".pm[23]" -type "matrix" 1 -2.3570195240832293e-16 -1.2222793636840308e-15 6.1629758220391547e-33
		 5.120445456259069e-16 1.0000000000000002 -7.4376269032505604e-17 0 1.2213035817287939e-15 7.6327832942979524e-17 0.99999999999999978 -3.0814879110195774e-33
		 -5.8892649886829948e-15 -14.13233832645415 -0.018175814976947764 1.0000000000000002;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 2 ".ma";
	setAttr -s 24 ".dpf[0:23]"  1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 
		1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2;
	setAttr -s 2 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
	setAttr -s 24 ".ifcl";
	setAttr -s 24 ".ifcl";
createNode tweak -n "tweak10";
createNode objectSet -n "skinCluster10Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster10GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster10GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet10";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId48";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts38";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster11";
	setAttr -s 26 ".wl";
	setAttr ".wl[0].w[17]"  1;
	setAttr ".wl[1].w[17]"  1;
	setAttr ".wl[2].w[17]"  1;
	setAttr ".wl[3].w[17]"  1;
	setAttr ".wl[4].w[17]"  1;
	setAttr ".wl[5].w[17]"  1;
	setAttr ".wl[6].w[17]"  1;
	setAttr ".wl[7].w[17]"  1;
	setAttr ".wl[8].w[17]"  1;
	setAttr ".wl[9].w[17]"  1;
	setAttr ".wl[10].w[17]"  1;
	setAttr ".wl[11].w[17]"  1;
	setAttr ".wl[12].w[17]"  1;
	setAttr ".wl[13].w[17]"  1;
	setAttr ".wl[14].w[17]"  1;
	setAttr ".wl[15].w[17]"  1;
	setAttr ".wl[16].w[17]"  1;
	setAttr ".wl[17].w[17]"  1;
	setAttr ".wl[18].w[17]"  1;
	setAttr ".wl[19].w[17]"  1;
	setAttr ".wl[20].w[17]"  1;
	setAttr ".wl[21].w[17]"  1;
	setAttr ".wl[22].w[17]"  1;
	setAttr ".wl[23].w[17]"  1;
	setAttr ".wl[24].w[17]"  1;
	setAttr ".wl[25].w[17]"  1;
	setAttr -s 23 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.274286506692317e-16 -8.1810495983390261 -0.018175814976949076 1;
	setAttr ".pm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 5.8112997967568226e-16 -7.3913983732815742 -0.045052099000275257 1;
	setAttr ".pm[2]" -type "matrix" -5.6092466462732912e-05 -0.0011760508776854004 0.99999930687874417 0
		 -0.99892875510817991 0.046274639009146384 -1.6110489899596136e-06 0 -0.04627460504053494 -0.99892806281979429 -0.0011773866978270309 0
		 6.8627146074622596 -0.27606199092825989 1.4720413039453535 1;
	setAttr ".pm[3]" -type "matrix" 5.273844984367786e-05 -0.001176206056610218 0.99999930687874417 0
		 -0.99893407437092885 -0.046159669172344396 -1.6110489899596136e-06 0 0.046159639073022063 -0.99893338190352443 -0.0011773866978270309 0
		 3.9436681451067153 0.08845688274093344 1.4720413039453519 1;
	setAttr ".pm[4]" -type "matrix" 0.99999930687874417 0.001176206055021494 5.273848527161389e-05 0
		 -1.6110489948393973e-06 0.04615969926481088 -0.99893407298038772 0 -0.0011773866978268056 0.99893338051298441 0.046159669165467695 0
		 1.4720413039453544 -0.088457001542268585 0.82975493808845124 1;
	setAttr ".pm[5]" -type "matrix" -9.1397554776042165e-16 -1.7359225498159451e-15 1.0000000000000002 0
		 0.99892875515336388 -0.046274638061808371 8.1787048549136768e-16 0 0.046274638061808225 0.99892875515336388 1.5382956352133354e-15 0
		 -6.8627971761990052 0.27433083090909771 -1.4719800000000054 1;
	setAttr ".pm[6]" -type "matrix" -7.4978366132976494e-16 -1.8128990214753794e-15 1.0000000000000002 0
		 0.99893407432844705 0.046159670119807393 8.1787048549136778e-16 0 -0.046159670119807532 0.99893407432844705 1.5382956352133356e-15 0
		 -3.9435905135198763 -0.090188271185205254 -1.4719800000000032 1;
	setAttr ".pm[7]" -type "matrix" 5.3831645435116633e-16 -1.8865295639979364e-15 1.0000000000000002 0
		 0.75424222955284292 0.65659626800580972 8.1787048549136758e-16 0 -0.65659626800580984 0.75424222955284292 1.5382956352133354e-15 0
		 -0.59424244949656702 -0.58598147559584368 -1.4719800000000003 1;
	setAttr ".pm[8]" -type "matrix" 0.99999867169251455 0.0016000963820614763 -0.00031033010595712496 0
		 -0.0015987384955499658 0.99998935793862975 0.0043275910978187691 0 0.00031725136626375365 -0.0043270892127603971 0.99999058778096284 0
		 0.015742415832818876 -9.1372440405236315 -0.060804061872838523 1;
	setAttr ".pm[9]" -type "matrix" -4.5774655733335414e-16 1 2.1163626406917039e-16 0
		 1 7.340891505509383e-16 7.4593109467002853e-17 0 7.6327832942979401e-17 2.1066048211393351e-16 -0.99999999999999978 0
		 -10.449564173868321 -8.0325273308885864e-15 0.01817581497694876 1;
	setAttr ".pm[10]" -type "matrix" 0.99995325883512587 -0.0096685129379941066 -1.606127105150912e-06 0
		 0.0096685130713989979 0.99995324503795147 0.00016611158518653441 0 2.1138194242675726e-16 -0.00016611934979845238 0.99999998620218045 0
		 1.3272938565604626 -12.992157420640076 -0.020334064000711007 1;
	setAttr ".pm[11]" -type "matrix" 0.99980566703278773 0.017117319501743094 0.0097788313308602888 0
		 0.0096670860114206579 0.0065988191016373198 -0.99993149917107382 0 -0.017180675690145992 0.99983171231939738 0.0064320621336328892 0
		 4.2290240275309792 -0.078948143237024274 12.991921574209618 1;
	setAttr ".pm[12]" -type "matrix" 0.9999887798164705 -0.0046916448112533796 0.00065475959839717858 0
		 0.00016216523014268521 -0.10423414028522632 -0.99455277270813403 0 0.0047343366594262155 0.9945417198227352 -0.10423220993738169 0
		 6.9166466637092103 1.2618188547679967 12.89006641025734 1;
	setAttr ".pm[13]" -type "matrix" 0.99990650512154755 -0.013661299068293822 -0.00059154321868020463 0
		 -0.00088173540775239297 -0.021245673631520367 -0.99977389638588443 0 0.013645642465037954 0.99968094423156273 -0.021255732920950961 0
		 8.0904316577531592 0.12474808127928379 12.944421044782382 1;
	setAttr ".pm[14]" -type "matrix" -0.95658675438649265 0.29144749129975406 -0.0003756958812062036 0
		 -0.29044352618105967 -0.95339688079932694 -0.081712580314325947 0 -0.024173113821511119 -0.078056053558917232 0.99665586491575853 0
		 -7.536538364706252 14.70582050672718 1.0153447687013692 1;
	setAttr ".pm[15]" -type "matrix" -0.95162329983167804 -0.3072669120139413 -0.00037416424918659791 0
		 0.30627477251083512 -0.94845139154443259 -0.08145993862546673 0 0.02467506719148509 -0.07763377266915393 0.99667654652863613 0
		 -15.221620976693082 9.8039529146183355 1.0120842839572932 1;
	setAttr ".pm[16]" -type "matrix" 0.99995325883512587 -0.0096685129379960773 -1.6061271010383421e-06 0
		 -0.0096685130714001932 -0.99995324503795158 -0.00016611158480493986 0 2.0995215081179205e-16 0.00016611934941683593 -0.99999998620218067 0
		 -1.3272973614988308 12.992137061043957 0.020334045636679884 1;
	setAttr ".pm[17]" -type "matrix" 0.99980566703278784 0.017117319501743902 0.0097788313308627174 0
		 -0.0096670860114223007 -0.0065988191016372244 0.99993149917107427 0 0.017180675690146825 -0.99983171231939794 -0.0064320621336328085 0
		 -4.2290271213014394 0.078948280970739498 -12.991951362939492 1;
	setAttr ".pm[18]" -type "matrix" 0.99998877981647039 -0.0047294247656056703 0.00026978241813555178 0
		 -0.00016216523014055435 0.022740448206862284 0.99974138941917867 0 -0.0047343366594268304 -0.99973021588663491 0.022739426106604246 0
		 -6.9166477096983456 -0.20590448713049994 -12.95008830930186 1;
	setAttr ".pm[19]" -type "matrix" 0.99990612408113144 -0.01366696379008454 -0.00097832806844499304 0
		 0.00015115248526370294 -0.060394096631828667 0.99817459907821338 0 -0.013701101341687403 -0.99808104239725237 -0.060386361284970297 0
		 -8.0809612877871064 0.93245560997346977 -12.916441412464934 1;
	setAttr ".pm[20]" -type "matrix" -0.95669909334599701 0.29107847904145645 -0.00040475901380065271 0
		 0.29107845299057761 0.95669917896845336 0.00012314909504045722 0 0.00042307866746286267 1.7679271675091752e-16 -0.99999991050221637 0
		 7.5303749307173327 -14.741661040490099 0.041647044718501426 1;
	setAttr ".pm[21]" -type "matrix" -0.95150469301091523 -0.30763396539512172 -0.00040312960271820695 0
		 -0.30763393778478293 0.95150477840905945 -0.00013033708402337057 0 0.00042367585730073825 -9.9936335248851371e-17 -0.99999991024938018 0
		 15.236979467244545 -9.8366107712992257 0.044916644369758459 1;
	setAttr ".pm[22]" -type "matrix" 1 -2.3570195240832283e-16 -1.222279363684031e-15 0
		 5.120445456259069e-16 1 -7.4593109467003371e-17 0 1.2213035817287939e-15 7.6327832942979488e-17 0.99999999999999978 0
		 -5.8892649886829956e-15 -14.132338326454146 -0.018175814976947761 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 2 ".ma";
	setAttr -s 23 ".dpf[0:22]"  1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 
		1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2 1.2;
	setAttr -s 2 ".lw";
	setAttr -s 2 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
	setAttr -s 23 ".ifcl";
	setAttr -s 23 ".ifcl";
createNode tweak -n "tweak11";
createNode objectSet -n "skinCluster11Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster11GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster11GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet11";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId50";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts40";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode animCurveUA -n "L_toe_joint_rotateZ1";
	setAttr ".tan" 2;
	setAttr -s 3 ".ktv[0:2]"  -10 -90 0 0 10 90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 3 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
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
connectAttr "L_foot_joint_group_parentConstraint1.ctx" "L_foot_joint_group.tx";
connectAttr "L_foot_joint_group_parentConstraint1.cty" "L_foot_joint_group.ty";
connectAttr "L_foot_joint_group_parentConstraint1.ctz" "L_foot_joint_group.tz";
connectAttr "L_foot_joint_group_parentConstraint1.crx" "L_foot_joint_group.rx";
connectAttr "L_foot_joint_group_parentConstraint1.cry" "L_foot_joint_group.ry";
connectAttr "L_foot_joint_group_parentConstraint1.crz" "L_foot_joint_group.rz";
connectAttr "L_heel_joint_rotateX.o" "L_heel_joint.rx";
connectAttr "Joint_Layer.di" "L_heel_joint.do";
connectAttr "L_heel_joint.s" "L_ball_joint.is";
connectAttr "L_ball_2_joint_rotateZ.o" "L_ball_2_joint.rz";
connectAttr "L_knee_joint.s" "L_ankle_Move_joint.is";
connectAttr "L_hip_joint.msg" "L_ikHandle_ankle.hsj";
connectAttr "effector7.hp" "L_ikHandle_ankle.hee";
connectAttr "ikRPsolver.msg" "L_ikHandle_ankle.hsv";
connectAttr "L_ikHandle_ankle_poleVectorConstraint1.ctx" "L_ikHandle_ankle.pvx";
connectAttr "L_ikHandle_ankle_poleVectorConstraint1.cty" "L_ikHandle_ankle.pvy";
connectAttr "L_ikHandle_ankle_poleVectorConstraint1.ctz" "L_ikHandle_ankle.pvz";
connectAttr "L_ikHandle_ankle.pim" "L_ikHandle_ankle_poleVectorConstraint1.cpim"
		;
connectAttr "L_hip_joint.pm" "L_ikHandle_ankle_poleVectorConstraint1.ps";
connectAttr "L_hip_joint.t" "L_ikHandle_ankle_poleVectorConstraint1.crp";
connectAttr "L_knee_anim.t" "L_ikHandle_ankle_poleVectorConstraint1.tg[0].tt";
connectAttr "L_knee_anim.rp" "L_ikHandle_ankle_poleVectorConstraint1.tg[0].trp";
connectAttr "L_knee_anim.rpt" "L_ikHandle_ankle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "L_knee_anim.pm" "L_ikHandle_ankle_poleVectorConstraint1.tg[0].tpm";
connectAttr "L_ikHandle_ankle_poleVectorConstraint1.w0" "L_ikHandle_ankle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "L_toe_joint_rotateZ1.o" "L_toe_joint.rz";
connectAttr "L_foot_joint_group.ro" "L_foot_joint_group_parentConstraint1.cro";
connectAttr "L_foot_joint_group.pim" "L_foot_joint_group_parentConstraint1.cpim"
		;
connectAttr "L_foot_joint_group.rp" "L_foot_joint_group_parentConstraint1.crp";
connectAttr "L_foot_joint_group.rpt" "L_foot_joint_group_parentConstraint1.crt";
connectAttr "L_foot_out.t" "L_foot_joint_group_parentConstraint1.tg[0].tt";
connectAttr "L_foot_out.rp" "L_foot_joint_group_parentConstraint1.tg[0].trp";
connectAttr "L_foot_out.rpt" "L_foot_joint_group_parentConstraint1.tg[0].trt";
connectAttr "L_foot_out.r" "L_foot_joint_group_parentConstraint1.tg[0].tr";
connectAttr "L_foot_out.ro" "L_foot_joint_group_parentConstraint1.tg[0].tro";
connectAttr "L_foot_out.s" "L_foot_joint_group_parentConstraint1.tg[0].ts";
connectAttr "L_foot_out.pm" "L_foot_joint_group_parentConstraint1.tg[0].tpm";
connectAttr "L_foot_joint_group_parentConstraint1.w0" "L_foot_joint_group_parentConstraint1.tg[0].tw"
		;
connectAttr "R_foot_joint_group_parentConstraint1.ctx" "R_foot_joint_group.tx";
connectAttr "R_foot_joint_group_parentConstraint1.cty" "R_foot_joint_group.ty";
connectAttr "R_foot_joint_group_parentConstraint1.ctz" "R_foot_joint_group.tz";
connectAttr "R_foot_joint_group_parentConstraint1.crx" "R_foot_joint_group.rx";
connectAttr "R_foot_joint_group_parentConstraint1.cry" "R_foot_joint_group.ry";
connectAttr "R_foot_joint_group_parentConstraint1.crz" "R_foot_joint_group.rz";
connectAttr "R_heel_joint_rotateX.o" "R_heel_joint.rx";
connectAttr "Joint_Layer.di" "R_heel_joint.do";
connectAttr "R_heel_joint.s" "R_ball_joint.is";
connectAttr "R_ball_2_joint_rotateZ.o" "R_ball_2_joint.rz";
connectAttr "R_ball_2_joint.s" "R_ankle_Move_joint.is";
connectAttr "R_hip_joint.msg" "R_ikHandle_ankle.hsj";
connectAttr "effector8.hp" "R_ikHandle_ankle.hee";
connectAttr "ikRPsolver.msg" "R_ikHandle_ankle.hsv";
connectAttr "R_ikHandle_ankle_poleVectorConstraint1.ctx" "R_ikHandle_ankle.pvx";
connectAttr "R_ikHandle_ankle_poleVectorConstraint1.cty" "R_ikHandle_ankle.pvy";
connectAttr "R_ikHandle_ankle_poleVectorConstraint1.ctz" "R_ikHandle_ankle.pvz";
connectAttr "R_ikHandle_ankle.pim" "R_ikHandle_ankle_poleVectorConstraint1.cpim"
		;
connectAttr "R_hip_joint.pm" "R_ikHandle_ankle_poleVectorConstraint1.ps";
connectAttr "R_hip_joint.t" "R_ikHandle_ankle_poleVectorConstraint1.crp";
connectAttr "R_knee_anim.t" "R_ikHandle_ankle_poleVectorConstraint1.tg[0].tt";
connectAttr "R_knee_anim.rp" "R_ikHandle_ankle_poleVectorConstraint1.tg[0].trp";
connectAttr "R_knee_anim.rpt" "R_ikHandle_ankle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "R_knee_anim.pm" "R_ikHandle_ankle_poleVectorConstraint1.tg[0].tpm";
connectAttr "R_ikHandle_ankle_poleVectorConstraint1.w0" "R_ikHandle_ankle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "R_toe_joint_rotateZ.o" "R_toe_joint.rz";
connectAttr "R_foot_joint_group.ro" "R_foot_joint_group_parentConstraint1.cro";
connectAttr "R_foot_joint_group.pim" "R_foot_joint_group_parentConstraint1.cpim"
		;
connectAttr "R_foot_joint_group.rp" "R_foot_joint_group_parentConstraint1.crp";
connectAttr "R_foot_joint_group.rpt" "R_foot_joint_group_parentConstraint1.crt";
connectAttr "R_foot_out.t" "R_foot_joint_group_parentConstraint1.tg[0].tt";
connectAttr "R_foot_out.rp" "R_foot_joint_group_parentConstraint1.tg[0].trp";
connectAttr "R_foot_out.rpt" "R_foot_joint_group_parentConstraint1.tg[0].trt";
connectAttr "R_foot_out.r" "R_foot_joint_group_parentConstraint1.tg[0].tr";
connectAttr "R_foot_out.ro" "R_foot_joint_group_parentConstraint1.tg[0].tro";
connectAttr "R_foot_out.s" "R_foot_joint_group_parentConstraint1.tg[0].ts";
connectAttr "R_foot_out.pm" "R_foot_joint_group_parentConstraint1.tg[0].tpm";
connectAttr "R_foot_joint_group_parentConstraint1.w0" "R_foot_joint_group_parentConstraint1.tg[0].tw"
		;
connectAttr "Joint_Layer.di" "root_joint.do";
connectAttr "root_joint_parentConstraint1.ctx" "root_joint.tx";
connectAttr "root_joint_parentConstraint1.cty" "root_joint.ty";
connectAttr "root_joint_parentConstraint1.ctz" "root_joint.tz";
connectAttr "root_joint_parentConstraint1.crx" "root_joint.rx";
connectAttr "root_joint_parentConstraint1.cry" "root_joint.ry";
connectAttr "root_joint_parentConstraint1.crz" "root_joint.rz";
connectAttr "root_joint.s" "waist_joint.is";
connectAttr "waist_joint_parentConstraint1.ctx" "waist_joint.tx";
connectAttr "waist_joint_parentConstraint1.cty" "waist_joint.ty";
connectAttr "waist_joint_parentConstraint1.ctz" "waist_joint.tz";
connectAttr "waist_joint_parentConstraint1.crx" "waist_joint.rx";
connectAttr "waist_joint_parentConstraint1.cry" "waist_joint.ry";
connectAttr "waist_joint_parentConstraint1.crz" "waist_joint.rz";
connectAttr "waist_joint.s" "L_hip_joint.is";
connectAttr "L_hip_joint.s" "L_knee_joint.is";
connectAttr "L_knee_joint.s" "L_ankle_joint.is";
connectAttr "L_ankle_joint.s" "L_foot_shadow.is";
connectAttr "L_foot_parentConstraint1.ctx" "L_foot_shadow.tx";
connectAttr "L_foot_parentConstraint1.cty" "L_foot_shadow.ty";
connectAttr "L_foot_parentConstraint1.ctz" "L_foot_shadow.tz";
connectAttr "L_foot_parentConstraint1.crx" "L_foot_shadow.rx";
connectAttr "L_foot_parentConstraint1.cry" "L_foot_shadow.ry";
connectAttr "L_foot_parentConstraint1.crz" "L_foot_shadow.rz";
connectAttr "L_foot_shadow.s" "L_toe_shadow.is";
connectAttr "L_foot_shadow.ro" "L_foot_parentConstraint1.cro";
connectAttr "L_foot_shadow.pim" "L_foot_parentConstraint1.cpim";
connectAttr "L_foot_shadow.rp" "L_foot_parentConstraint1.crp";
connectAttr "L_foot_shadow.rpt" "L_foot_parentConstraint1.crt";
connectAttr "L_foot_shadow.jo" "L_foot_parentConstraint1.cjo";
connectAttr "L_ball_2_joint.t" "L_foot_parentConstraint1.tg[0].tt";
connectAttr "L_ball_2_joint.rp" "L_foot_parentConstraint1.tg[0].trp";
connectAttr "L_ball_2_joint.rpt" "L_foot_parentConstraint1.tg[0].trt";
connectAttr "L_ball_2_joint.r" "L_foot_parentConstraint1.tg[0].tr";
connectAttr "L_ball_2_joint.ro" "L_foot_parentConstraint1.tg[0].tro";
connectAttr "L_ball_2_joint.s" "L_foot_parentConstraint1.tg[0].ts";
connectAttr "L_ball_2_joint.pm" "L_foot_parentConstraint1.tg[0].tpm";
connectAttr "L_ball_2_joint.jo" "L_foot_parentConstraint1.tg[0].tjo";
connectAttr "L_ball_2_joint.ssc" "L_foot_parentConstraint1.tg[0].tsc";
connectAttr "L_ball_2_joint.is" "L_foot_parentConstraint1.tg[0].tis";
connectAttr "L_foot_parentConstraint1.w0" "L_foot_parentConstraint1.tg[0].tw";
connectAttr "L_ankle_joint.tx" "effector7.tx";
connectAttr "L_ankle_joint.ty" "effector7.ty";
connectAttr "L_ankle_joint.tz" "effector7.tz";
connectAttr "waist_joint.s" "R_hip_joint.is";
connectAttr "R_hip_joint.s" "R_knee_joint.is";
connectAttr "R_knee_joint.s" "R_ankle_joint.is";
connectAttr "R_ankle_joint.tx" "effector8.tx";
connectAttr "R_ankle_joint.ty" "effector8.ty";
connectAttr "R_ankle_joint.tz" "effector8.tz";
connectAttr "R_knee_joint.s" "R_foot_shadow.is";
connectAttr "R_foot_parentConstraint1.ctx" "R_foot_shadow.tx";
connectAttr "R_foot_parentConstraint1.cty" "R_foot_shadow.ty";
connectAttr "R_foot_parentConstraint1.ctz" "R_foot_shadow.tz";
connectAttr "R_foot_parentConstraint1.crx" "R_foot_shadow.rx";
connectAttr "R_foot_parentConstraint1.cry" "R_foot_shadow.ry";
connectAttr "R_foot_parentConstraint1.crz" "R_foot_shadow.rz";
connectAttr "R_foot_shadow.s" "R_toe_shadow.is";
connectAttr "R_toe_parentConstraint1.ctx" "R_toe_shadow.tx";
connectAttr "R_toe_parentConstraint1.cty" "R_toe_shadow.ty";
connectAttr "R_toe_parentConstraint1.ctz" "R_toe_shadow.tz";
connectAttr "R_toe_parentConstraint1.crx" "R_toe_shadow.rx";
connectAttr "R_toe_parentConstraint1.cry" "R_toe_shadow.ry";
connectAttr "R_toe_parentConstraint1.crz" "R_toe_shadow.rz";
connectAttr "R_toe_shadow.ro" "R_toe_parentConstraint1.cro";
connectAttr "R_toe_shadow.pim" "R_toe_parentConstraint1.cpim";
connectAttr "R_toe_shadow.rp" "R_toe_parentConstraint1.crp";
connectAttr "R_toe_shadow.rpt" "R_toe_parentConstraint1.crt";
connectAttr "R_toe_shadow.jo" "R_toe_parentConstraint1.cjo";
connectAttr "R_toe_joint.t" "R_toe_parentConstraint1.tg[0].tt";
connectAttr "R_toe_joint.rp" "R_toe_parentConstraint1.tg[0].trp";
connectAttr "R_toe_joint.rpt" "R_toe_parentConstraint1.tg[0].trt";
connectAttr "R_toe_joint.r" "R_toe_parentConstraint1.tg[0].tr";
connectAttr "R_toe_joint.ro" "R_toe_parentConstraint1.tg[0].tro";
connectAttr "R_toe_joint.s" "R_toe_parentConstraint1.tg[0].ts";
connectAttr "R_toe_joint.pm" "R_toe_parentConstraint1.tg[0].tpm";
connectAttr "R_toe_joint.jo" "R_toe_parentConstraint1.tg[0].tjo";
connectAttr "R_toe_joint.ssc" "R_toe_parentConstraint1.tg[0].tsc";
connectAttr "R_toe_joint.is" "R_toe_parentConstraint1.tg[0].tis";
connectAttr "R_toe_parentConstraint1.w0" "R_toe_parentConstraint1.tg[0].tw";
connectAttr "R_foot_shadow.ro" "R_foot_parentConstraint1.cro";
connectAttr "R_foot_shadow.pim" "R_foot_parentConstraint1.cpim";
connectAttr "R_foot_shadow.rp" "R_foot_parentConstraint1.crp";
connectAttr "R_foot_shadow.rpt" "R_foot_parentConstraint1.crt";
connectAttr "R_foot_shadow.jo" "R_foot_parentConstraint1.cjo";
connectAttr "R_ball_2_joint.t" "R_foot_parentConstraint1.tg[0].tt";
connectAttr "R_ball_2_joint.rp" "R_foot_parentConstraint1.tg[0].trp";
connectAttr "R_ball_2_joint.rpt" "R_foot_parentConstraint1.tg[0].trt";
connectAttr "R_ball_2_joint.r" "R_foot_parentConstraint1.tg[0].tr";
connectAttr "R_ball_2_joint.ro" "R_foot_parentConstraint1.tg[0].tro";
connectAttr "R_ball_2_joint.s" "R_foot_parentConstraint1.tg[0].ts";
connectAttr "R_ball_2_joint.pm" "R_foot_parentConstraint1.tg[0].tpm";
connectAttr "R_ball_2_joint.jo" "R_foot_parentConstraint1.tg[0].tjo";
connectAttr "R_ball_2_joint.ssc" "R_foot_parentConstraint1.tg[0].tsc";
connectAttr "R_ball_2_joint.is" "R_foot_parentConstraint1.tg[0].tis";
connectAttr "R_foot_parentConstraint1.w0" "R_foot_parentConstraint1.tg[0].tw";
connectAttr "waist_anim.t" "waist_joint_group_parentConstraint1.tg[0].tt";
connectAttr "waist_anim.rp" "waist_joint_group_parentConstraint1.tg[0].trp";
connectAttr "waist_anim.rpt" "waist_joint_group_parentConstraint1.tg[0].trt";
connectAttr "waist_anim.r" "waist_joint_group_parentConstraint1.tg[0].tr";
connectAttr "waist_anim.ro" "waist_joint_group_parentConstraint1.tg[0].tro";
connectAttr "waist_anim.s" "waist_joint_group_parentConstraint1.tg[0].ts";
connectAttr "waist_anim.pm" "waist_joint_group_parentConstraint1.tg[0].tpm";
connectAttr "waist_joint_group_parentConstraint1.w0" "waist_joint_group_parentConstraint1.tg[0].tw"
		;
connectAttr "waist_joint.ro" "waist_joint_parentConstraint1.cro";
connectAttr "waist_joint.pim" "waist_joint_parentConstraint1.cpim";
connectAttr "waist_joint.rp" "waist_joint_parentConstraint1.crp";
connectAttr "waist_joint.rpt" "waist_joint_parentConstraint1.crt";
connectAttr "waist_joint.jo" "waist_joint_parentConstraint1.cjo";
connectAttr "waist_anim.t" "waist_joint_parentConstraint1.tg[0].tt";
connectAttr "waist_anim.rp" "waist_joint_parentConstraint1.tg[0].trp";
connectAttr "waist_anim.rpt" "waist_joint_parentConstraint1.tg[0].trt";
connectAttr "waist_anim.r" "waist_joint_parentConstraint1.tg[0].tr";
connectAttr "waist_anim.ro" "waist_joint_parentConstraint1.tg[0].tro";
connectAttr "waist_anim.s" "waist_joint_parentConstraint1.tg[0].ts";
connectAttr "waist_anim.pm" "waist_joint_parentConstraint1.tg[0].tpm";
connectAttr "waist_joint_parentConstraint1.w0" "waist_joint_parentConstraint1.tg[0].tw"
		;
connectAttr "chest_joint.s" "torso_joint.is";
connectAttr "torso_joint_parentConstraint1.ctx" "torso_joint.tx";
connectAttr "torso_joint_parentConstraint1.cty" "torso_joint.ty";
connectAttr "torso_joint_parentConstraint1.ctz" "torso_joint.tz";
connectAttr "torso_joint_parentConstraint1.crx" "torso_joint.rx";
connectAttr "torso_joint_parentConstraint1.cry" "torso_joint.ry";
connectAttr "torso_joint_parentConstraint1.crz" "torso_joint.rz";
connectAttr "torso_joint.s" "chest_joint.is";
connectAttr "chest_joint_parentConstraint1.ctx" "chest_joint.tx";
connectAttr "chest_joint_parentConstraint1.cty" "chest_joint.ty";
connectAttr "chest_joint_parentConstraint1.ctz" "chest_joint.tz";
connectAttr "chest_joint_parentConstraint1.crx" "chest_joint.rx";
connectAttr "chest_joint_parentConstraint1.cry" "chest_joint.ry";
connectAttr "chest_joint_parentConstraint1.crz" "chest_joint.rz";
connectAttr "chest_joint.s" "L_clavicle_joint.is";
connectAttr "L_clavicle_joint_parentConstraint1.ctx" "L_clavicle_joint.tx";
connectAttr "L_clavicle_joint_parentConstraint1.cty" "L_clavicle_joint.ty";
connectAttr "L_clavicle_joint_parentConstraint1.ctz" "L_clavicle_joint.tz";
connectAttr "L_clavicle_joint_parentConstraint1.crx" "L_clavicle_joint.rx";
connectAttr "L_clavicle_joint_parentConstraint1.cry" "L_clavicle_joint.ry";
connectAttr "L_clavicle_joint_parentConstraint1.crz" "L_clavicle_joint.rz";
connectAttr "L_clavicle_joint.s" "L_shoulder_joint.is";
connectAttr "L_shoulder_joint_parentConstraint1.ctx" "L_shoulder_joint.tx";
connectAttr "L_shoulder_joint_parentConstraint1.cty" "L_shoulder_joint.ty";
connectAttr "L_shoulder_joint_parentConstraint1.ctz" "L_shoulder_joint.tz";
connectAttr "L_shoulder_joint_parentConstraint1.crx" "L_shoulder_joint.rx";
connectAttr "L_shoulder_joint_parentConstraint1.cry" "L_shoulder_joint.ry";
connectAttr "L_shoulder_joint_parentConstraint1.crz" "L_shoulder_joint.rz";
connectAttr "L_shoulder_joint.s" "L_elbow_joint.is";
connectAttr "L_elbow_joint_parentConstraint1.ctx" "L_elbow_joint.tx";
connectAttr "L_elbow_joint_parentConstraint1.cty" "L_elbow_joint.ty";
connectAttr "L_elbow_joint_parentConstraint1.ctz" "L_elbow_joint.tz";
connectAttr "L_elbow_joint_parentConstraint1.crx" "L_elbow_joint.rx";
connectAttr "L_elbow_joint_parentConstraint1.cry" "L_elbow_joint.ry";
connectAttr "L_elbow_joint_parentConstraint1.crz" "L_elbow_joint.rz";
connectAttr "L_elbow_joint.s" "L_hand_joint.is";
connectAttr "L_hand_joint_parentConstraint1.ctx" "L_hand_joint.tx";
connectAttr "L_hand_joint_parentConstraint1.cty" "L_hand_joint.ty";
connectAttr "L_hand_joint_parentConstraint1.ctz" "L_hand_joint.tz";
connectAttr "L_hand_joint_parentConstraint1.crx" "L_hand_joint.rx";
connectAttr "L_hand_joint_parentConstraint1.cry" "L_hand_joint.ry";
connectAttr "L_hand_joint_parentConstraint1.crz" "L_hand_joint.rz";
connectAttr "L_hand_joint.s" "L_claw_2_joint.is";
connectAttr "L_claw_2_joint_parentConstraint1.ctx" "L_claw_2_joint.tx";
connectAttr "L_claw_2_joint_parentConstraint1.cty" "L_claw_2_joint.ty";
connectAttr "L_claw_2_joint_parentConstraint1.ctz" "L_claw_2_joint.tz";
connectAttr "L_claw_2_joint_parentConstraint1.crx" "L_claw_2_joint.rx";
connectAttr "L_claw_2_joint_parentConstraint1.cry" "L_claw_2_joint.ry";
connectAttr "L_claw_2_joint_parentConstraint1.crz" "L_claw_2_joint.rz";
connectAttr "L_claw_2_joint.ro" "L_claw_2_joint_parentConstraint1.cro";
connectAttr "L_claw_2_joint.pim" "L_claw_2_joint_parentConstraint1.cpim";
connectAttr "L_claw_2_joint.rp" "L_claw_2_joint_parentConstraint1.crp";
connectAttr "L_claw_2_joint.rpt" "L_claw_2_joint_parentConstraint1.crt";
connectAttr "L_claw_2_joint.jo" "L_claw_2_joint_parentConstraint1.cjo";
connectAttr "L_claw_2_anim.t" "L_claw_2_joint_parentConstraint1.tg[0].tt";
connectAttr "L_claw_2_anim.rp" "L_claw_2_joint_parentConstraint1.tg[0].trp";
connectAttr "L_claw_2_anim.rpt" "L_claw_2_joint_parentConstraint1.tg[0].trt";
connectAttr "L_claw_2_anim.r" "L_claw_2_joint_parentConstraint1.tg[0].tr";
connectAttr "L_claw_2_anim.ro" "L_claw_2_joint_parentConstraint1.tg[0].tro";
connectAttr "L_claw_2_anim.s" "L_claw_2_joint_parentConstraint1.tg[0].ts";
connectAttr "L_claw_2_anim.pm" "L_claw_2_joint_parentConstraint1.tg[0].tpm";
connectAttr "L_claw_2_joint_parentConstraint1.w0" "L_claw_2_joint_parentConstraint1.tg[0].tw"
		;
connectAttr "L_hand_joint.s" "L_claw_1_joint.is";
connectAttr "L_claw_1_joint_parentConstraint1.ctx" "L_claw_1_joint.tx";
connectAttr "L_claw_1_joint_parentConstraint1.cty" "L_claw_1_joint.ty";
connectAttr "L_claw_1_joint_parentConstraint1.ctz" "L_claw_1_joint.tz";
connectAttr "L_claw_1_joint_parentConstraint1.crx" "L_claw_1_joint.rx";
connectAttr "L_claw_1_joint_parentConstraint1.cry" "L_claw_1_joint.ry";
connectAttr "L_claw_1_joint_parentConstraint1.crz" "L_claw_1_joint.rz";
connectAttr "L_claw_1_joint.ro" "L_claw_1_joint_parentConstraint1.cro";
connectAttr "L_claw_1_joint.pim" "L_claw_1_joint_parentConstraint1.cpim";
connectAttr "L_claw_1_joint.rp" "L_claw_1_joint_parentConstraint1.crp";
connectAttr "L_claw_1_joint.rpt" "L_claw_1_joint_parentConstraint1.crt";
connectAttr "L_claw_1_joint.jo" "L_claw_1_joint_parentConstraint1.cjo";
connectAttr "L_claw_1_anim.t" "L_claw_1_joint_parentConstraint1.tg[0].tt";
connectAttr "L_claw_1_anim.rp" "L_claw_1_joint_parentConstraint1.tg[0].trp";
connectAttr "L_claw_1_anim.rpt" "L_claw_1_joint_parentConstraint1.tg[0].trt";
connectAttr "L_claw_1_anim.r" "L_claw_1_joint_parentConstraint1.tg[0].tr";
connectAttr "L_claw_1_anim.ro" "L_claw_1_joint_parentConstraint1.tg[0].tro";
connectAttr "L_claw_1_anim.s" "L_claw_1_joint_parentConstraint1.tg[0].ts";
connectAttr "L_claw_1_anim.pm" "L_claw_1_joint_parentConstraint1.tg[0].tpm";
connectAttr "L_claw_1_joint_parentConstraint1.w0" "L_claw_1_joint_parentConstraint1.tg[0].tw"
		;
connectAttr "L_hand_joint.ro" "L_hand_joint_parentConstraint1.cro";
connectAttr "L_hand_joint.pim" "L_hand_joint_parentConstraint1.cpim";
connectAttr "L_hand_joint.rp" "L_hand_joint_parentConstraint1.crp";
connectAttr "L_hand_joint.rpt" "L_hand_joint_parentConstraint1.crt";
connectAttr "L_hand_joint.jo" "L_hand_joint_parentConstraint1.cjo";
connectAttr "L_hand_anim.t" "L_hand_joint_parentConstraint1.tg[0].tt";
connectAttr "L_hand_anim.rp" "L_hand_joint_parentConstraint1.tg[0].trp";
connectAttr "L_hand_anim.rpt" "L_hand_joint_parentConstraint1.tg[0].trt";
connectAttr "L_hand_anim.r" "L_hand_joint_parentConstraint1.tg[0].tr";
connectAttr "L_hand_anim.ro" "L_hand_joint_parentConstraint1.tg[0].tro";
connectAttr "L_hand_anim.s" "L_hand_joint_parentConstraint1.tg[0].ts";
connectAttr "L_hand_anim.pm" "L_hand_joint_parentConstraint1.tg[0].tpm";
connectAttr "L_hand_joint_parentConstraint1.w0" "L_hand_joint_parentConstraint1.tg[0].tw"
		;
connectAttr "L_elbow_joint.ro" "L_elbow_joint_parentConstraint1.cro";
connectAttr "L_elbow_joint.pim" "L_elbow_joint_parentConstraint1.cpim";
connectAttr "L_elbow_joint.rp" "L_elbow_joint_parentConstraint1.crp";
connectAttr "L_elbow_joint.rpt" "L_elbow_joint_parentConstraint1.crt";
connectAttr "L_elbow_joint.jo" "L_elbow_joint_parentConstraint1.cjo";
connectAttr "L_elbow_anim.t" "L_elbow_joint_parentConstraint1.tg[0].tt";
connectAttr "L_elbow_anim.rp" "L_elbow_joint_parentConstraint1.tg[0].trp";
connectAttr "L_elbow_anim.rpt" "L_elbow_joint_parentConstraint1.tg[0].trt";
connectAttr "L_elbow_anim.r" "L_elbow_joint_parentConstraint1.tg[0].tr";
connectAttr "L_elbow_anim.ro" "L_elbow_joint_parentConstraint1.tg[0].tro";
connectAttr "L_elbow_anim.s" "L_elbow_joint_parentConstraint1.tg[0].ts";
connectAttr "L_elbow_anim.pm" "L_elbow_joint_parentConstraint1.tg[0].tpm";
connectAttr "L_elbow_joint_parentConstraint1.w0" "L_elbow_joint_parentConstraint1.tg[0].tw"
		;
connectAttr "L_shoulder_joint.ro" "L_shoulder_joint_parentConstraint1.cro";
connectAttr "L_shoulder_joint.pim" "L_shoulder_joint_parentConstraint1.cpim";
connectAttr "L_shoulder_joint.rp" "L_shoulder_joint_parentConstraint1.crp";
connectAttr "L_shoulder_joint.rpt" "L_shoulder_joint_parentConstraint1.crt";
connectAttr "L_shoulder_joint.jo" "L_shoulder_joint_parentConstraint1.cjo";
connectAttr "L_shoulder_anim.t" "L_shoulder_joint_parentConstraint1.tg[0].tt";
connectAttr "L_shoulder_anim.rp" "L_shoulder_joint_parentConstraint1.tg[0].trp";
connectAttr "L_shoulder_anim.rpt" "L_shoulder_joint_parentConstraint1.tg[0].trt"
		;
connectAttr "L_shoulder_anim.r" "L_shoulder_joint_parentConstraint1.tg[0].tr";
connectAttr "L_shoulder_anim.ro" "L_shoulder_joint_parentConstraint1.tg[0].tro";
connectAttr "L_shoulder_anim.s" "L_shoulder_joint_parentConstraint1.tg[0].ts";
connectAttr "L_shoulder_anim.pm" "L_shoulder_joint_parentConstraint1.tg[0].tpm";
connectAttr "L_shoulder_joint_parentConstraint1.w0" "L_shoulder_joint_parentConstraint1.tg[0].tw"
		;
connectAttr "L_clavicle_joint.ro" "L_clavicle_joint_parentConstraint1.cro";
connectAttr "L_clavicle_joint.pim" "L_clavicle_joint_parentConstraint1.cpim";
connectAttr "L_clavicle_joint.rp" "L_clavicle_joint_parentConstraint1.crp";
connectAttr "L_clavicle_joint.rpt" "L_clavicle_joint_parentConstraint1.crt";
connectAttr "L_clavicle_joint.jo" "L_clavicle_joint_parentConstraint1.cjo";
connectAttr "L_clavicle_anim.t" "L_clavicle_joint_parentConstraint1.tg[0].tt";
connectAttr "L_clavicle_anim.rp" "L_clavicle_joint_parentConstraint1.tg[0].trp";
connectAttr "L_clavicle_anim.rpt" "L_clavicle_joint_parentConstraint1.tg[0].trt"
		;
connectAttr "L_clavicle_anim.r" "L_clavicle_joint_parentConstraint1.tg[0].tr";
connectAttr "L_clavicle_anim.ro" "L_clavicle_joint_parentConstraint1.tg[0].tro";
connectAttr "L_clavicle_anim.s" "L_clavicle_joint_parentConstraint1.tg[0].ts";
connectAttr "L_clavicle_anim.pm" "L_clavicle_joint_parentConstraint1.tg[0].tpm";
connectAttr "L_clavicle_joint_parentConstraint1.w0" "L_clavicle_joint_parentConstraint1.tg[0].tw"
		;
connectAttr "chest_joint.s" "R_clavicle_joint.is";
connectAttr "R_clavicle_joint_parentConstraint1.ctx" "R_clavicle_joint.tx";
connectAttr "R_clavicle_joint_parentConstraint1.cty" "R_clavicle_joint.ty";
connectAttr "R_clavicle_joint_parentConstraint1.ctz" "R_clavicle_joint.tz";
connectAttr "R_clavicle_joint_parentConstraint1.crx" "R_clavicle_joint.rx";
connectAttr "R_clavicle_joint_parentConstraint1.cry" "R_clavicle_joint.ry";
connectAttr "R_clavicle_joint_parentConstraint1.crz" "R_clavicle_joint.rz";
connectAttr "R_clavicle_joint.s" "R_shoulder_joint.is";
connectAttr "R_shoulder_joint_parentConstraint1.ctx" "R_shoulder_joint.tx";
connectAttr "R_shoulder_joint_parentConstraint1.cty" "R_shoulder_joint.ty";
connectAttr "R_shoulder_joint_parentConstraint1.ctz" "R_shoulder_joint.tz";
connectAttr "R_shoulder_joint_parentConstraint1.crx" "R_shoulder_joint.rx";
connectAttr "R_shoulder_joint_parentConstraint1.cry" "R_shoulder_joint.ry";
connectAttr "R_shoulder_joint_parentConstraint1.crz" "R_shoulder_joint.rz";
connectAttr "R_shoulder_joint.s" "R_elbow_joint.is";
connectAttr "R_elbow_joint_parentConstraint1.ctx" "R_elbow_joint.tx";
connectAttr "R_elbow_joint_parentConstraint1.cty" "R_elbow_joint.ty";
connectAttr "R_elbow_joint_parentConstraint1.ctz" "R_elbow_joint.tz";
connectAttr "R_elbow_joint_parentConstraint1.crx" "R_elbow_joint.rx";
connectAttr "R_elbow_joint_parentConstraint1.cry" "R_elbow_joint.ry";
connectAttr "R_elbow_joint_parentConstraint1.crz" "R_elbow_joint.rz";
connectAttr "R_elbow_joint.s" "R_hand_joint.is";
connectAttr "R_hand_joint_parentConstraint1.ctx" "R_hand_joint.tx";
connectAttr "R_hand_joint_parentConstraint1.cty" "R_hand_joint.ty";
connectAttr "R_hand_joint_parentConstraint1.ctz" "R_hand_joint.tz";
connectAttr "R_hand_joint_parentConstraint1.crx" "R_hand_joint.rx";
connectAttr "R_hand_joint_parentConstraint1.cry" "R_hand_joint.ry";
connectAttr "R_hand_joint_parentConstraint1.crz" "R_hand_joint.rz";
connectAttr "R_hand_joint.s" "R_claw_2_joint.is";
connectAttr "R_claw_2_joint_parentConstraint1.ctx" "R_claw_2_joint.tx";
connectAttr "R_claw_2_joint_parentConstraint1.cty" "R_claw_2_joint.ty";
connectAttr "R_claw_2_joint_parentConstraint1.ctz" "R_claw_2_joint.tz";
connectAttr "R_claw_2_joint_parentConstraint1.crx" "R_claw_2_joint.rx";
connectAttr "R_claw_2_joint_parentConstraint1.cry" "R_claw_2_joint.ry";
connectAttr "R_claw_2_joint_parentConstraint1.crz" "R_claw_2_joint.rz";
connectAttr "R_claw_2_joint.ro" "R_claw_2_joint_parentConstraint1.cro";
connectAttr "R_claw_2_joint.pim" "R_claw_2_joint_parentConstraint1.cpim";
connectAttr "R_claw_2_joint.rp" "R_claw_2_joint_parentConstraint1.crp";
connectAttr "R_claw_2_joint.rpt" "R_claw_2_joint_parentConstraint1.crt";
connectAttr "R_claw_2_joint.jo" "R_claw_2_joint_parentConstraint1.cjo";
connectAttr "R_claw_2_anim.t" "R_claw_2_joint_parentConstraint1.tg[0].tt";
connectAttr "R_claw_2_anim.rp" "R_claw_2_joint_parentConstraint1.tg[0].trp";
connectAttr "R_claw_2_anim.rpt" "R_claw_2_joint_parentConstraint1.tg[0].trt";
connectAttr "R_claw_2_anim.r" "R_claw_2_joint_parentConstraint1.tg[0].tr";
connectAttr "R_claw_2_anim.ro" "R_claw_2_joint_parentConstraint1.tg[0].tro";
connectAttr "R_claw_2_anim.s" "R_claw_2_joint_parentConstraint1.tg[0].ts";
connectAttr "R_claw_2_anim.pm" "R_claw_2_joint_parentConstraint1.tg[0].tpm";
connectAttr "R_claw_2_joint_parentConstraint1.w0" "R_claw_2_joint_parentConstraint1.tg[0].tw"
		;
connectAttr "R_hand_joint.s" "R_claw_1_joint.is";
connectAttr "R_claw_1_joint_parentConstraint1.ctx" "R_claw_1_joint.tx";
connectAttr "R_claw_1_joint_parentConstraint1.cty" "R_claw_1_joint.ty";
connectAttr "R_claw_1_joint_parentConstraint1.ctz" "R_claw_1_joint.tz";
connectAttr "R_claw_1_joint_parentConstraint1.crx" "R_claw_1_joint.rx";
connectAttr "R_claw_1_joint_parentConstraint1.cry" "R_claw_1_joint.ry";
connectAttr "R_claw_1_joint_parentConstraint1.crz" "R_claw_1_joint.rz";
connectAttr "R_claw_1_joint.ro" "R_claw_1_joint_parentConstraint1.cro";
connectAttr "R_claw_1_joint.pim" "R_claw_1_joint_parentConstraint1.cpim";
connectAttr "R_claw_1_joint.rp" "R_claw_1_joint_parentConstraint1.crp";
connectAttr "R_claw_1_joint.rpt" "R_claw_1_joint_parentConstraint1.crt";
connectAttr "R_claw_1_joint.jo" "R_claw_1_joint_parentConstraint1.cjo";
connectAttr "R_claw_1_anim.t" "R_claw_1_joint_parentConstraint1.tg[0].tt";
connectAttr "R_claw_1_anim.rp" "R_claw_1_joint_parentConstraint1.tg[0].trp";
connectAttr "R_claw_1_anim.rpt" "R_claw_1_joint_parentConstraint1.tg[0].trt";
connectAttr "R_claw_1_anim.r" "R_claw_1_joint_parentConstraint1.tg[0].tr";
connectAttr "R_claw_1_anim.ro" "R_claw_1_joint_parentConstraint1.tg[0].tro";
connectAttr "R_claw_1_anim.s" "R_claw_1_joint_parentConstraint1.tg[0].ts";
connectAttr "R_claw_1_anim.pm" "R_claw_1_joint_parentConstraint1.tg[0].tpm";
connectAttr "R_claw_1_joint_parentConstraint1.w0" "R_claw_1_joint_parentConstraint1.tg[0].tw"
		;
connectAttr "R_hand_joint.ro" "R_hand_joint_parentConstraint1.cro";
connectAttr "R_hand_joint.pim" "R_hand_joint_parentConstraint1.cpim";
connectAttr "R_hand_joint.rp" "R_hand_joint_parentConstraint1.crp";
connectAttr "R_hand_joint.rpt" "R_hand_joint_parentConstraint1.crt";
connectAttr "R_hand_joint.jo" "R_hand_joint_parentConstraint1.cjo";
connectAttr "R_hand_anim.t" "R_hand_joint_parentConstraint1.tg[0].tt";
connectAttr "R_hand_anim.rp" "R_hand_joint_parentConstraint1.tg[0].trp";
connectAttr "R_hand_anim.rpt" "R_hand_joint_parentConstraint1.tg[0].trt";
connectAttr "R_hand_anim.r" "R_hand_joint_parentConstraint1.tg[0].tr";
connectAttr "R_hand_anim.ro" "R_hand_joint_parentConstraint1.tg[0].tro";
connectAttr "R_hand_anim.s" "R_hand_joint_parentConstraint1.tg[0].ts";
connectAttr "R_hand_anim.pm" "R_hand_joint_parentConstraint1.tg[0].tpm";
connectAttr "R_hand_joint_parentConstraint1.w0" "R_hand_joint_parentConstraint1.tg[0].tw"
		;
connectAttr "R_elbow_joint.ro" "R_elbow_joint_parentConstraint1.cro";
connectAttr "R_elbow_joint.pim" "R_elbow_joint_parentConstraint1.cpim";
connectAttr "R_elbow_joint.rp" "R_elbow_joint_parentConstraint1.crp";
connectAttr "R_elbow_joint.rpt" "R_elbow_joint_parentConstraint1.crt";
connectAttr "R_elbow_joint.jo" "R_elbow_joint_parentConstraint1.cjo";
connectAttr "R_elbow_anim.t" "R_elbow_joint_parentConstraint1.tg[0].tt";
connectAttr "R_elbow_anim.rp" "R_elbow_joint_parentConstraint1.tg[0].trp";
connectAttr "R_elbow_anim.rpt" "R_elbow_joint_parentConstraint1.tg[0].trt";
connectAttr "R_elbow_anim.r" "R_elbow_joint_parentConstraint1.tg[0].tr";
connectAttr "R_elbow_anim.ro" "R_elbow_joint_parentConstraint1.tg[0].tro";
connectAttr "R_elbow_anim.s" "R_elbow_joint_parentConstraint1.tg[0].ts";
connectAttr "R_elbow_anim.pm" "R_elbow_joint_parentConstraint1.tg[0].tpm";
connectAttr "R_elbow_joint_parentConstraint1.w0" "R_elbow_joint_parentConstraint1.tg[0].tw"
		;
connectAttr "R_shoulder_joint.ro" "R_shoulder_joint_parentConstraint1.cro";
connectAttr "R_shoulder_joint.pim" "R_shoulder_joint_parentConstraint1.cpim";
connectAttr "R_shoulder_joint.rp" "R_shoulder_joint_parentConstraint1.crp";
connectAttr "R_shoulder_joint.rpt" "R_shoulder_joint_parentConstraint1.crt";
connectAttr "R_shoulder_joint.jo" "R_shoulder_joint_parentConstraint1.cjo";
connectAttr "R_shoulder_anim.t" "R_shoulder_joint_parentConstraint1.tg[0].tt";
connectAttr "R_shoulder_anim.rp" "R_shoulder_joint_parentConstraint1.tg[0].trp";
connectAttr "R_shoulder_anim.rpt" "R_shoulder_joint_parentConstraint1.tg[0].trt"
		;
connectAttr "R_shoulder_anim.r" "R_shoulder_joint_parentConstraint1.tg[0].tr";
connectAttr "R_shoulder_anim.ro" "R_shoulder_joint_parentConstraint1.tg[0].tro";
connectAttr "R_shoulder_anim.s" "R_shoulder_joint_parentConstraint1.tg[0].ts";
connectAttr "R_shoulder_anim.pm" "R_shoulder_joint_parentConstraint1.tg[0].tpm";
connectAttr "R_shoulder_joint_parentConstraint1.w0" "R_shoulder_joint_parentConstraint1.tg[0].tw"
		;
connectAttr "R_clavicle_joint.ro" "R_clavicle_joint_parentConstraint1.cro";
connectAttr "R_clavicle_joint.pim" "R_clavicle_joint_parentConstraint1.cpim";
connectAttr "R_clavicle_joint.rp" "R_clavicle_joint_parentConstraint1.crp";
connectAttr "R_clavicle_joint.rpt" "R_clavicle_joint_parentConstraint1.crt";
connectAttr "R_clavicle_joint.jo" "R_clavicle_joint_parentConstraint1.cjo";
connectAttr "R_clavicle_anim.t" "R_clavicle_joint_parentConstraint1.tg[0].tt";
connectAttr "R_clavicle_anim.rp" "R_clavicle_joint_parentConstraint1.tg[0].trp";
connectAttr "R_clavicle_anim.rpt" "R_clavicle_joint_parentConstraint1.tg[0].trt"
		;
connectAttr "R_clavicle_anim.r" "R_clavicle_joint_parentConstraint1.tg[0].tr";
connectAttr "R_clavicle_anim.ro" "R_clavicle_joint_parentConstraint1.tg[0].tro";
connectAttr "R_clavicle_anim.s" "R_clavicle_joint_parentConstraint1.tg[0].ts";
connectAttr "R_clavicle_anim.pm" "R_clavicle_joint_parentConstraint1.tg[0].tpm";
connectAttr "R_clavicle_joint_parentConstraint1.w0" "R_clavicle_joint_parentConstraint1.tg[0].tw"
		;
connectAttr "chest_joint.s" "head_joint.is";
connectAttr "head_joint_parentConstraint1.ctx" "head_joint.tx";
connectAttr "head_joint_parentConstraint1.cty" "head_joint.ty";
connectAttr "head_joint_parentConstraint1.ctz" "head_joint.tz";
connectAttr "head_joint_parentConstraint1.crx" "head_joint.rx";
connectAttr "head_joint_parentConstraint1.cry" "head_joint.ry";
connectAttr "head_joint_parentConstraint1.crz" "head_joint.rz";
connectAttr "head_joint.ro" "head_joint_parentConstraint1.cro";
connectAttr "head_joint.pim" "head_joint_parentConstraint1.cpim";
connectAttr "head_joint.rp" "head_joint_parentConstraint1.crp";
connectAttr "head_joint.rpt" "head_joint_parentConstraint1.crt";
connectAttr "head_joint.jo" "head_joint_parentConstraint1.cjo";
connectAttr "head_anim.t" "head_joint_parentConstraint1.tg[0].tt";
connectAttr "head_anim.rp" "head_joint_parentConstraint1.tg[0].trp";
connectAttr "head_anim.rpt" "head_joint_parentConstraint1.tg[0].trt";
connectAttr "head_anim.r" "head_joint_parentConstraint1.tg[0].tr";
connectAttr "head_anim.ro" "head_joint_parentConstraint1.tg[0].tro";
connectAttr "head_anim.s" "head_joint_parentConstraint1.tg[0].ts";
connectAttr "head_anim.pm" "head_joint_parentConstraint1.tg[0].tpm";
connectAttr "head_joint_parentConstraint1.w0" "head_joint_parentConstraint1.tg[0].tw"
		;
connectAttr "chest_joint.ro" "chest_joint_parentConstraint1.cro";
connectAttr "chest_joint.pim" "chest_joint_parentConstraint1.cpim";
connectAttr "chest_joint.rp" "chest_joint_parentConstraint1.crp";
connectAttr "chest_joint.rpt" "chest_joint_parentConstraint1.crt";
connectAttr "chest_joint.jo" "chest_joint_parentConstraint1.cjo";
connectAttr "chest_anim.t" "chest_joint_parentConstraint1.tg[0].tt";
connectAttr "chest_anim.rp" "chest_joint_parentConstraint1.tg[0].trp";
connectAttr "chest_anim.rpt" "chest_joint_parentConstraint1.tg[0].trt";
connectAttr "chest_anim.r" "chest_joint_parentConstraint1.tg[0].tr";
connectAttr "chest_anim.ro" "chest_joint_parentConstraint1.tg[0].tro";
connectAttr "chest_anim.s" "chest_joint_parentConstraint1.tg[0].ts";
connectAttr "chest_anim.pm" "chest_joint_parentConstraint1.tg[0].tpm";
connectAttr "chest_joint_parentConstraint1.w0" "chest_joint_parentConstraint1.tg[0].tw"
		;
connectAttr "torso_joint.ro" "torso_joint_parentConstraint1.cro";
connectAttr "torso_joint.pim" "torso_joint_parentConstraint1.cpim";
connectAttr "torso_joint.rp" "torso_joint_parentConstraint1.crp";
connectAttr "torso_joint.rpt" "torso_joint_parentConstraint1.crt";
connectAttr "torso_joint.jo" "torso_joint_parentConstraint1.cjo";
connectAttr "torso_anim.t" "torso_joint_parentConstraint1.tg[0].tt";
connectAttr "torso_anim.rp" "torso_joint_parentConstraint1.tg[0].trp";
connectAttr "torso_anim.rpt" "torso_joint_parentConstraint1.tg[0].trt";
connectAttr "torso_anim.r" "torso_joint_parentConstraint1.tg[0].tr";
connectAttr "torso_anim.ro" "torso_joint_parentConstraint1.tg[0].tro";
connectAttr "torso_anim.s" "torso_joint_parentConstraint1.tg[0].ts";
connectAttr "torso_anim.pm" "torso_joint_parentConstraint1.tg[0].tpm";
connectAttr "torso_joint_parentConstraint1.w0" "torso_joint_parentConstraint1.tg[0].tw"
		;
connectAttr "root_joint.ro" "root_joint_parentConstraint1.cro";
connectAttr "root_joint.pim" "root_joint_parentConstraint1.cpim";
connectAttr "root_joint.rp" "root_joint_parentConstraint1.crp";
connectAttr "root_joint.rpt" "root_joint_parentConstraint1.crt";
connectAttr "root_joint.jo" "root_joint_parentConstraint1.cjo";
connectAttr "root_anim.t" "root_joint_parentConstraint1.tg[0].tt";
connectAttr "root_anim.rp" "root_joint_parentConstraint1.tg[0].trp";
connectAttr "root_anim.rpt" "root_joint_parentConstraint1.tg[0].trt";
connectAttr "root_anim.r" "root_joint_parentConstraint1.tg[0].tr";
connectAttr "root_anim.ro" "root_joint_parentConstraint1.tg[0].tro";
connectAttr "root_anim.s" "root_joint_parentConstraint1.tg[0].ts";
connectAttr "root_anim.pm" "root_joint_parentConstraint1.tg[0].tpm";
connectAttr "root_joint_parentConstraint1.w0" "root_joint_parentConstraint1.tg[0].tw"
		;
connectAttr "Geo_Layer.di" "C_Robot_Geo.do";
connectAttr "skinCluster1.og[0]" "R_hand_geoShape.i";
connectAttr "skinCluster1GroupId.id" "R_hand_geoShape.iog.og[3].gid";
connectAttr "skinCluster1Set.mwc" "R_hand_geoShape.iog.og[3].gco";
connectAttr "groupId30.id" "R_hand_geoShape.iog.og[4].gid";
connectAttr "tweakSet1.mwc" "R_hand_geoShape.iog.og[4].gco";
connectAttr "tweak1.vl[0].vt[0]" "R_hand_geoShape.twl";
connectAttr "skinCluster11.og[0]" "R_shoulder_geoShape.i";
connectAttr "skinCluster11GroupId.id" "R_shoulder_geoShape.iog.og[5].gid";
connectAttr "skinCluster11Set.mwc" "R_shoulder_geoShape.iog.og[5].gco";
connectAttr "groupId50.id" "R_shoulder_geoShape.iog.og[6].gid";
connectAttr "tweakSet11.mwc" "R_shoulder_geoShape.iog.og[6].gco";
connectAttr "tweak11.vl[0].vt[0]" "R_shoulder_geoShape.twl";
connectAttr "skinCluster3GroupId.id" "L_hand_geoShape.iog.og[3].gid";
connectAttr "skinCluster3Set.mwc" "L_hand_geoShape.iog.og[3].gco";
connectAttr "groupId34.id" "L_hand_geoShape.iog.og[4].gid";
connectAttr "tweakSet3.mwc" "L_hand_geoShape.iog.og[4].gco";
connectAttr "skinCluster3.og[0]" "L_hand_geoShape.i";
connectAttr "tweak3.vl[0].vt[0]" "L_hand_geoShape.twl";
connectAttr "skinCluster9GroupId.id" "L_shoulder_geoShape.iog.og[7].gid";
connectAttr "skinCluster9Set.mwc" "L_shoulder_geoShape.iog.og[7].gco";
connectAttr "groupId46.id" "L_shoulder_geoShape.iog.og[8].gid";
connectAttr "tweakSet9.mwc" "L_shoulder_geoShape.iog.og[8].gco";
connectAttr "skinCluster9.og[0]" "L_shoulder_geoShape.i";
connectAttr "tweak9.vl[0].vt[0]" "L_shoulder_geoShape.twl";
connectAttr "skinCluster10GroupId.id" "head_geoShape.iog.og[6].gid";
connectAttr "skinCluster10Set.mwc" "head_geoShape.iog.og[6].gco";
connectAttr "groupId48.id" "head_geoShape.iog.og[7].gid";
connectAttr "tweakSet10.mwc" "head_geoShape.iog.og[7].gco";
connectAttr "skinCluster10.og[0]" "head_geoShape.i";
connectAttr "tweak10.vl[0].vt[0]" "head_geoShape.twl";
connectAttr "Geo_Layer.di" "chest_geo.do";
connectAttr "skinCluster6GroupId.id" "chest_geoShape.iog.og[11].gid";
connectAttr "skinCluster6Set.mwc" "chest_geoShape.iog.og[11].gco";
connectAttr "groupId40.id" "chest_geoShape.iog.og[12].gid";
connectAttr "tweakSet6.mwc" "chest_geoShape.iog.og[12].gco";
connectAttr "skinCluster6.og[0]" "chest_geoShape.i";
connectAttr "tweak6.vl[0].vt[0]" "chest_geoShape.twl";
connectAttr "skinCluster7.og[0]" "bottom_geoShape.i";
connectAttr "skinCluster7GroupId.id" "bottom_geoShape.iog.og[5].gid";
connectAttr "skinCluster7Set.mwc" "bottom_geoShape.iog.og[5].gco";
connectAttr "groupId42.id" "bottom_geoShape.iog.og[6].gid";
connectAttr "tweakSet7.mwc" "bottom_geoShape.iog.og[6].gco";
connectAttr "tweak7.vl[0].vt[0]" "bottom_geoShape.twl";
connectAttr "Contrl_Layer.di" "C_Robot_Anim.do";
connectAttr "transformGeometry1.og" "world_animShape.cr";
connectAttr "L_foot_toe_rotateX.o" "L_foot_toe.rx";
connectAttr "L_foot_toe_rotateY.o" "L_foot_toe.ry";
connectAttr "L_foot_ball_rotateY.o" "L_foot_ball.ry";
connectAttr "L_foot_in_rotateZ.o" "L_foot_in.rz";
connectAttr "L_foot_out_rotateZ.o" "L_foot_out.rz";
connectAttr "R_foot_toe_rotateX.o" "R_foot_toe.rx";
connectAttr "R_foot_toe_rotateY.o" "R_foot_toe.ry";
connectAttr "R_foot_ball_rotateY.o" "R_foot_ball.ry";
connectAttr "R_foot_in_rotateZ1.o" "R_foot_in.rz";
connectAttr "R_foot_out_rotateZ.o" "R_foot_out.rz";
connectAttr "transformGeometry2.og" "L_knee_animShape.cr";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miContourPreset.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "layerManager.dli[1]" "Geo_Layer.id";
connectAttr "C_Robot_Model:hyperView1.msg" "C_Robot_Model:nodeEditorPanel1Info.b[0]"
		;
connectAttr "C_Robot_Model:hyperLayout1.msg" "C_Robot_Model:hyperView1.hl";
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
connectAttr "chest_joint.obcc" "skinCluster1.ifcl[0]";
connectAttr "head_joint.obcc" "skinCluster1.ifcl[1]";
connectAttr "root_joint.obcc" "skinCluster1.ifcl[2]";
connectAttr "waist_joint.obcc" "skinCluster1.ifcl[3]";
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
connectAttr "R_hand_geoShapeOrig.w" "groupParts20.ig";
connectAttr "groupId30.id" "groupParts20.gi";
connectAttr "chest_joint.msg" "bindPose1.m[0]";
connectAttr "root_joint.msg" "bindPose1.m[2]";
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
connectAttr "R_claw_1_joint.msg" "bindPose1.m[72]";
connectAttr "R_claw_2_joint.msg" "bindPose1.m[73]";
connectAttr "C_Robot_Joint.msg" "bindPose1.m[74]";
connectAttr "R_foot_joint_group.msg" "bindPose1.m[100]";
connectAttr "R_heel_joint.msg" "bindPose1.m[101]";
connectAttr "R_ball_joint.msg" "bindPose1.m[102]";
connectAttr "R_toe_joint.msg" "bindPose1.m[103]";
connectAttr "L_foot_joint_group.msg" "bindPose1.m[104]";
connectAttr "L_heel_joint.msg" "bindPose1.m[105]";
connectAttr "L_ball_joint.msg" "bindPose1.m[106]";
connectAttr "L_toe_joint.msg" "bindPose1.m[107]";
connectAttr "head_joint.msg" "bindPose1.m[108]";
connectAttr "root_joint_group.msg" "bindPose1.m[111]";
connectAttr "waist_joint.msg" "bindPose1.m[112]";
connectAttr "L_hip_joint.msg" "bindPose1.m[113]";
connectAttr "L_knee_joint.msg" "bindPose1.m[114]";
connectAttr "L_ankle_joint.msg" "bindPose1.m[115]";
connectAttr "R_hip_joint.msg" "bindPose1.m[117]";
connectAttr "R_knee_joint.msg" "bindPose1.m[118]";
connectAttr "R_ankle_joint.msg" "bindPose1.m[119]";
connectAttr "L_toe_shadow.msg" "bindPose1.m[125]";
connectAttr "L_foot_shadow.msg" "bindPose1.m[126]";
connectAttr "R_toe_shadow.msg" "bindPose1.m[127]";
connectAttr "R_foot_shadow.msg" "bindPose1.m[128]";
connectAttr "bindPose1.m[74]" "bindPose1.p[0]";
connectAttr "bindPose1.m[111]" "bindPose1.p[2]";
connectAttr "bindPose1.m[84]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[3]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[9]" "bindPose1.p[10]";
connectAttr "bindPose1.m[76]" "bindPose1.p[12]";
connectAttr "bindPose1.m[77]" "bindPose1.p[13]";
connectAttr "bindPose1.m[78]" "bindPose1.p[14]";
connectAttr "bindPose1.m[79]" "bindPose1.p[15]";
connectAttr "bindPose1.m[94]" "bindPose1.p[18]";
connectAttr "bindPose1.m[95]" "bindPose1.p[19]";
connectAttr "bindPose1.m[96]" "bindPose1.p[20]";
connectAttr "bindPose1.m[97]" "bindPose1.p[21]";
connectAttr "bindPose1.m[81]" "bindPose1.p[66]";
connectAttr "bindPose1.m[80]" "bindPose1.p[67]";
connectAttr "bindPose1.m[75]" "bindPose1.p[68]";
connectAttr "bindPose1.m[6]" "bindPose1.p[69]";
connectAttr "bindPose1.m[82]" "bindPose1.p[70]";
connectAttr "bindPose1.m[10]" "bindPose1.p[71]";
connectAttr "bindPose1.m[99]" "bindPose1.p[72]";
connectAttr "bindPose1.m[98]" "bindPose1.p[73]";
connectAttr "bindPose1.w" "bindPose1.p[74]";
connectAttr "bindPose1.m[0]" "bindPose1.p[75]";
connectAttr "bindPose1.m[0]" "bindPose1.p[76]";
connectAttr "bindPose1.m[12]" "bindPose1.p[77]";
connectAttr "bindPose1.m[13]" "bindPose1.p[78]";
connectAttr "bindPose1.m[14]" "bindPose1.p[79]";
connectAttr "bindPose1.m[15]" "bindPose1.p[80]";
connectAttr "bindPose1.m[15]" "bindPose1.p[81]";
connectAttr "bindPose1.m[0]" "bindPose1.p[82]";
connectAttr "bindPose1.m[70]" "bindPose1.p[83]";
connectAttr "bindPose1.m[2]" "bindPose1.p[84]";
connectAttr "bindPose1.m[3]" "bindPose1.p[85]";
connectAttr "bindPose1.m[85]" "bindPose1.p[90]";
connectAttr "R_hip_joint.msg" "bindPose1.p[91]";
connectAttr "R_knee_joint.msg" "bindPose1.p[92]";
connectAttr "bindPose1.m[0]" "bindPose1.p[94]";
connectAttr "bindPose1.m[18]" "bindPose1.p[95]";
connectAttr "bindPose1.m[19]" "bindPose1.p[96]";
connectAttr "bindPose1.m[20]" "bindPose1.p[97]";
connectAttr "bindPose1.m[21]" "bindPose1.p[98]";
connectAttr "bindPose1.m[21]" "bindPose1.p[99]";
connectAttr "bindPose1.m[74]" "bindPose1.p[100]";
connectAttr "R_foot_joint_group.msg" "bindPose1.p[101]";
connectAttr "R_heel_joint.msg" "bindPose1.p[102]";
connectAttr "R_ball_joint.msg" "bindPose1.p[103]";
connectAttr "bindPose1.m[74]" "bindPose1.p[104]";
connectAttr "L_foot_joint_group.msg" "bindPose1.p[105]";
connectAttr "L_heel_joint.msg" "bindPose1.p[106]";
connectAttr "L_ball_joint.msg" "bindPose1.p[107]";
connectAttr "bindPose1.m[0]" "bindPose1.p[108]";
connectAttr "bindPose1.m[74]" "bindPose1.p[111]";
connectAttr "bindPose1.m[2]" "bindPose1.p[112]";
connectAttr "waist_joint.msg" "bindPose1.p[113]";
connectAttr "L_hip_joint.msg" "bindPose1.p[114]";
connectAttr "L_knee_joint.msg" "bindPose1.p[115]";
connectAttr "bindPose1.m[112]" "bindPose1.p[117]";
connectAttr "R_hip_joint.msg" "bindPose1.p[118]";
connectAttr "R_knee_joint.msg" "bindPose1.p[119]";
connectAttr "bindPose1.m[115]" "bindPose1.p[122]";
connectAttr "bindPose1.m[126]" "bindPose1.p[125]";
connectAttr "bindPose1.m[115]" "bindPose1.p[126]";
connectAttr "bindPose1.m[128]" "bindPose1.p[127]";
connectAttr "bindPose1.m[118]" "bindPose1.p[128]";
connectAttr "chest_joint.bps" "bindPose1.wm[0]";
connectAttr "root_joint.bps" "bindPose1.wm[2]";
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
connectAttr "R_claw_1_joint.bps" "bindPose1.wm[72]";
connectAttr "R_claw_2_joint.bps" "bindPose1.wm[73]";
connectAttr "R_heel_joint.bps" "bindPose1.wm[101]";
connectAttr "R_ball_joint.bps" "bindPose1.wm[102]";
connectAttr "R_toe_joint.bps" "bindPose1.wm[103]";
connectAttr "L_heel_joint.bps" "bindPose1.wm[105]";
connectAttr "L_ball_joint.bps" "bindPose1.wm[106]";
connectAttr "L_toe_joint.bps" "bindPose1.wm[107]";
connectAttr "head_joint.bps" "bindPose1.wm[108]";
connectAttr "waist_joint.bps" "bindPose1.wm[112]";
connectAttr "L_hip_joint.bps" "bindPose1.wm[113]";
connectAttr "L_knee_joint.bps" "bindPose1.wm[114]";
connectAttr "L_ankle_joint.bps" "bindPose1.wm[115]";
connectAttr "R_hip_joint.bps" "bindPose1.wm[117]";
connectAttr "R_knee_joint.bps" "bindPose1.wm[118]";
connectAttr "R_ankle_joint.bps" "bindPose1.wm[119]";
connectAttr "L_toe_shadow.bps" "bindPose1.wm[125]";
connectAttr "L_foot_shadow.bps" "bindPose1.wm[126]";
connectAttr "R_toe_shadow.bps" "bindPose1.wm[127]";
connectAttr "R_foot_shadow.bps" "bindPose1.wm[128]";
connectAttr "chest_joint.msg" "bindPose2.m[0]";
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
connectAttr "root_joint.msg" "bindPose2.m[15]";
connectAttr "C_Robot_Joint.msg" "bindPose2.m[62]";
connectAttr "waist_joint.msg" "bindPose2.m[65]";
connectAttr "torso_joint.msg" "bindPose2.m[79]";
connectAttr "R_claw_2_joint.msg" "bindPose2.m[92]";
connectAttr "R_claw_1_joint.msg" "bindPose2.m[94]";
connectAttr "root_joint_group.msg" "bindPose2.m[96]";
connectAttr "L_hip_joint.msg" "bindPose2.m[97]";
connectAttr "L_knee_joint.msg" "bindPose2.m[98]";
connectAttr "R_hip_joint.msg" "bindPose2.m[100]";
connectAttr "R_knee_joint.msg" "bindPose2.m[101]";
connectAttr "R_foot_joint_group.msg" "bindPose2.m[103]";
connectAttr "R_heel_joint.msg" "bindPose2.m[104]";
connectAttr "R_ball_joint.msg" "bindPose2.m[105]";
connectAttr "R_ball_2_joint.msg" "bindPose2.m[106]";
connectAttr "L_foot_joint_group.msg" "bindPose2.m[109]";
connectAttr "L_heel_joint.msg" "bindPose2.m[110]";
connectAttr "L_ball_joint.msg" "bindPose2.m[111]";
connectAttr "L_ball_2_joint.msg" "bindPose2.m[112]";
connectAttr "bindPose2.m[80]" "bindPose2.p[0]";
connectAttr "bindPose2.m[95]" "bindPose2.p[1]";
connectAttr "bindPose2.m[81]" "bindPose2.p[2]";
connectAttr "bindPose2.m[82]" "bindPose2.p[3]";
connectAttr "bindPose2.m[83]" "bindPose2.p[4]";
connectAttr "bindPose2.m[84]" "bindPose2.p[5]";
connectAttr "bindPose2.m[85]" "bindPose2.p[6]";
connectAttr "bindPose2.m[86]" "bindPose2.p[7]";
connectAttr "bindPose2.m[87]" "bindPose2.p[8]";
connectAttr "bindPose2.m[88]" "bindPose2.p[9]";
connectAttr "bindPose2.m[89]" "bindPose2.p[10]";
connectAttr "bindPose2.m[90]" "bindPose2.p[11]";
connectAttr "bindPose2.m[96]" "bindPose2.p[15]";
connectAttr "bindPose2.m[15]" "bindPose2.p[16]";
connectAttr "bindPose2.m[16]" "bindPose2.p[17]";
connectAttr "bindPose2.m[17]" "bindPose2.p[18]";
connectAttr "bindPose2.m[18]" "bindPose2.p[19]";
connectAttr "bindPose2.m[16]" "bindPose2.p[21]";
connectAttr "bindPose2.m[21]" "bindPose2.p[22]";
connectAttr "bindPose2.m[22]" "bindPose2.p[23]";
connectAttr "bindPose2.m[0]" "bindPose2.p[27]";
connectAttr "bindPose2.w" "bindPose2.p[62]";
connectAttr "C_Robot_Joint.msg" "bindPose2.p[63]";
connectAttr "bindPose2.m[15]" "bindPose2.p[64]";
connectAttr "waist_joint.msg" "bindPose2.p[66]";
connectAttr "L_hip_joint.msg" "bindPose2.p[68]";
connectAttr "bindPose2.m[65]" "bindPose2.p[72]";
connectAttr "R_hip_joint.msg" "bindPose2.p[74]";
connectAttr "bindPose2.m[15]" "bindPose2.p[78]";
connectAttr "torso_joint.msg" "bindPose2.p[80]";
connectAttr "bindPose2.m[0]" "bindPose2.p[81]";
connectAttr "bindPose2.m[2]" "bindPose2.p[82]";
connectAttr "bindPose2.m[3]" "bindPose2.p[83]";
connectAttr "bindPose2.m[4]" "bindPose2.p[84]";
connectAttr "bindPose2.m[5]" "bindPose2.p[85]";
connectAttr "bindPose2.m[5]" "bindPose2.p[86]";
connectAttr "bindPose2.m[0]" "bindPose2.p[87]";
connectAttr "bindPose2.m[8]" "bindPose2.p[88]";
connectAttr "bindPose2.m[9]" "bindPose2.p[89]";
connectAttr "bindPose2.m[10]" "bindPose2.p[90]";
connectAttr "bindPose2.m[11]" "bindPose2.p[91]";
connectAttr "bindPose2.m[11]" "bindPose2.p[93]";
connectAttr "bindPose2.m[0]" "bindPose2.p[95]";
connectAttr "bindPose2.m[62]" "bindPose2.p[96]";
connectAttr "bindPose2.m[65]" "bindPose2.p[97]";
connectAttr "L_hip_joint.msg" "bindPose2.p[98]";
connectAttr "bindPose2.m[65]" "bindPose2.p[100]";
connectAttr "R_hip_joint.msg" "bindPose2.p[101]";
connectAttr "bindPose2.m[62]" "bindPose2.p[103]";
connectAttr "R_foot_joint_group.msg" "bindPose2.p[104]";
connectAttr "R_heel_joint.msg" "bindPose2.p[105]";
connectAttr "R_ball_joint.msg" "bindPose2.p[106]";
connectAttr "bindPose2.m[62]" "bindPose2.p[109]";
connectAttr "L_foot_joint_group.msg" "bindPose2.p[110]";
connectAttr "L_heel_joint.msg" "bindPose2.p[111]";
connectAttr "L_ball_joint.msg" "bindPose2.p[112]";
connectAttr "waist_joint.bps" "bindPose2.wm[65]";
connectAttr "torso_joint.bps" "bindPose2.wm[79]";
connectAttr "R_claw_2_joint.bps" "bindPose2.wm[92]";
connectAttr "R_claw_1_joint.bps" "bindPose2.wm[94]";
connectAttr "L_hip_joint.bps" "bindPose2.wm[97]";
connectAttr "L_knee_joint.bps" "bindPose2.wm[98]";
connectAttr "R_hip_joint.bps" "bindPose2.wm[100]";
connectAttr "R_knee_joint.bps" "bindPose2.wm[101]";
connectAttr "R_heel_joint.bps" "bindPose2.wm[104]";
connectAttr "R_ball_joint.bps" "bindPose2.wm[105]";
connectAttr "R_ball_2_joint.bps" "bindPose2.wm[106]";
connectAttr "L_heel_joint.bps" "bindPose2.wm[110]";
connectAttr "L_ball_joint.bps" "bindPose2.wm[111]";
connectAttr "L_ball_2_joint.bps" "bindPose2.wm[112]";
connectAttr "makeNurbCircle1.oc" "transformGeometry1.ig";
connectAttr "makeNurbCircle2.oc" "transformGeometry2.ig";
connectAttr "hyperView1.msg" "nodeEditorPanel1Info.b[0]";
connectAttr "hyperLayout1.msg" "hyperView1.hl";
connectAttr "L_foot_anim.ToeRoll" "L_foot_toe_rotateX.i";
connectAttr "L_foot_anim.PivotToe" "L_foot_toe_rotateY.i";
connectAttr "L_foot_anim.BallPivot" "L_foot_ball_rotateY.i";
connectAttr "L_foot_anim.Bank" "L_foot_in_rotateZ.i";
connectAttr "L_foot_anim.Bank" "L_foot_out_rotateZ.i";
connectAttr "L_foot_anim.FootRoll" "L_ball_2_joint_rotateZ.i";
connectAttr "L_foot_anim.FootRoll" "L_heel_joint_rotateX.i";
connectAttr "R_foot_anim.ToeRoll" "R_foot_toe_rotateX.i";
connectAttr "R_foot_anim.PivotToe" "R_foot_toe_rotateY.i";
connectAttr "R_foot_anim.BallPivot" "R_foot_ball_rotateY.i";
connectAttr "R_foot_anim.Bank" "R_foot_out_rotateZ.i";
connectAttr "R_foot_anim.toe" "R_toe_joint_rotateZ.i";
connectAttr "R_foot_anim.FootRoll" "R_heel_joint_rotateX.i";
connectAttr "R_foot_anim.FootRoll" "R_ball_2_joint_rotateZ.i";
connectAttr "R_foot_anim.Bank" "R_foot_in_rotateZ1.i";
connectAttr "C_Robot_Joint.msg" "bindPose3.m[0]";
connectAttr "root_joint.msg" "bindPose3.m[3]";
connectAttr "waist_joint.msg" "bindPose3.m[5]";
connectAttr "torso_joint.msg" "bindPose3.m[19]";
connectAttr "chest_joint.msg" "bindPose3.m[21]";
connectAttr "L_clavicle_joint.msg" "bindPose3.m[23]";
connectAttr "L_shoulder_joint.msg" "bindPose3.m[25]";
connectAttr "L_elbow_joint.msg" "bindPose3.m[27]";
connectAttr "L_hand_joint.msg" "bindPose3.m[29]";
connectAttr "L_claw_2_joint.msg" "bindPose3.m[31]";
connectAttr "L_claw_1_joint.msg" "bindPose3.m[33]";
connectAttr "R_clavicle_joint.msg" "bindPose3.m[35]";
connectAttr "R_shoulder_joint.msg" "bindPose3.m[37]";
connectAttr "R_elbow_joint.msg" "bindPose3.m[39]";
connectAttr "R_hand_joint.msg" "bindPose3.m[41]";
connectAttr "R_claw_2_joint.msg" "bindPose3.m[43]";
connectAttr "R_claw_1_joint.msg" "bindPose3.m[45]";
connectAttr "L_foot_joint_group.msg" "bindPose3.m[48]";
connectAttr "L_ball_joint.msg" "bindPose3.m[50]";
connectAttr "R_foot_joint_group.msg" "bindPose3.m[54]";
connectAttr "R_ball_joint.msg" "bindPose3.m[56]";
connectAttr "root_joint_group.msg" "bindPose3.m[71]";
connectAttr "L_hip_joint.msg" "bindPose3.m[72]";
connectAttr "L_knee_joint.msg" "bindPose3.m[73]";
connectAttr "R_hip_joint.msg" "bindPose3.m[75]";
connectAttr "R_knee_joint.msg" "bindPose3.m[76]";
connectAttr "head_joint.msg" "bindPose3.m[90]";
connectAttr "bindPose3.w" "bindPose3.p[0]";
connectAttr "bindPose3.m[0]" "bindPose3.p[1]";
connectAttr "bindPose3.m[1]" "bindPose3.p[2]";
connectAttr "bindPose3.m[71]" "bindPose3.p[3]";
connectAttr "bindPose3.m[3]" "bindPose3.p[4]";
connectAttr "bindPose3.m[4]" "bindPose3.p[5]";
connectAttr "bindPose3.m[5]" "bindPose3.p[6]";
connectAttr "bindPose3.m[6]" "bindPose3.p[7]";
connectAttr "bindPose3.m[60]" "bindPose3.p[8]";
connectAttr "bindPose3.m[8]" "bindPose3.p[9]";
connectAttr "bindPose3.m[61]" "bindPose3.p[10]";
connectAttr "bindPose3.m[5]" "bindPose3.p[12]";
connectAttr "bindPose3.m[12]" "bindPose3.p[13]";
connectAttr "bindPose3.m[63]" "bindPose3.p[14]";
connectAttr "bindPose3.m[14]" "bindPose3.p[15]";
connectAttr "bindPose3.m[64]" "bindPose3.p[16]";
connectAttr "bindPose3.m[3]" "bindPose3.p[18]";
connectAttr "bindPose3.m[18]" "bindPose3.p[19]";
connectAttr "bindPose3.m[19]" "bindPose3.p[20]";
connectAttr "bindPose3.m[20]" "bindPose3.p[21]";
connectAttr "bindPose3.m[21]" "bindPose3.p[22]";
connectAttr "bindPose3.m[22]" "bindPose3.p[23]";
connectAttr "bindPose3.m[23]" "bindPose3.p[24]";
connectAttr "bindPose3.m[24]" "bindPose3.p[25]";
connectAttr "bindPose3.m[25]" "bindPose3.p[26]";
connectAttr "bindPose3.m[26]" "bindPose3.p[27]";
connectAttr "bindPose3.m[27]" "bindPose3.p[28]";
connectAttr "bindPose3.m[28]" "bindPose3.p[29]";
connectAttr "bindPose3.m[29]" "bindPose3.p[30]";
connectAttr "bindPose3.m[30]" "bindPose3.p[31]";
connectAttr "bindPose3.m[29]" "bindPose3.p[32]";
connectAttr "bindPose3.m[32]" "bindPose3.p[33]";
connectAttr "bindPose3.m[21]" "bindPose3.p[34]";
connectAttr "bindPose3.m[34]" "bindPose3.p[35]";
connectAttr "bindPose3.m[35]" "bindPose3.p[36]";
connectAttr "bindPose3.m[36]" "bindPose3.p[37]";
connectAttr "bindPose3.m[37]" "bindPose3.p[38]";
connectAttr "bindPose3.m[38]" "bindPose3.p[39]";
connectAttr "bindPose3.m[39]" "bindPose3.p[40]";
connectAttr "bindPose3.m[40]" "bindPose3.p[41]";
connectAttr "bindPose3.m[41]" "bindPose3.p[42]";
connectAttr "bindPose3.m[42]" "bindPose3.p[43]";
connectAttr "bindPose3.m[41]" "bindPose3.p[44]";
connectAttr "bindPose3.m[44]" "bindPose3.p[45]";
connectAttr "bindPose3.m[21]" "bindPose3.p[46]";
connectAttr "bindPose3.m[46]" "bindPose3.p[47]";
connectAttr "bindPose3.m[1]" "bindPose3.p[48]";
connectAttr "L_foot_joint_group.msg" "bindPose3.p[49]";
connectAttr "L_heel_joint.msg" "bindPose3.p[50]";
connectAttr "L_ball_joint.msg" "bindPose3.p[51]";
connectAttr "bindPose3.m[1]" "bindPose3.p[54]";
connectAttr "R_foot_joint_group.msg" "bindPose3.p[55]";
connectAttr "R_heel_joint.msg" "bindPose3.p[56]";
connectAttr "R_ball_joint.msg" "bindPose3.p[57]";
connectAttr "bindPose3.m[6]" "bindPose3.p[60]";
connectAttr "bindPose3.m[8]" "bindPose3.p[61]";
connectAttr "bindPose3.m[12]" "bindPose3.p[63]";
connectAttr "bindPose3.m[14]" "bindPose3.p[64]";
connectAttr "bindPose3.m[50]" "bindPose3.p[66]";
connectAttr "bindPose3.m[56]" "bindPose3.p[67]";
connectAttr "world_anim.msg" "bindPose3.p[68]";
connectAttr "bindPose3.m[10]" "bindPose3.p[69]";
connectAttr "bindPose3.m[16]" "bindPose3.p[70]";
connectAttr "bindPose3.m[0]" "bindPose3.p[71]";
connectAttr "bindPose3.m[5]" "bindPose3.p[72]";
connectAttr "L_hip_joint.msg" "bindPose3.p[73]";
connectAttr "bindPose3.m[5]" "bindPose3.p[75]";
connectAttr "R_hip_joint.msg" "bindPose3.p[76]";
connectAttr "bindPose3.m[21]" "bindPose3.p[90]";
connectAttr "L_ball_joint.bps" "bindPose3.wm[50]";
connectAttr "R_ball_joint.bps" "bindPose3.wm[56]";
connectAttr "L_hip_joint.bps" "bindPose3.wm[72]";
connectAttr "L_knee_joint.bps" "bindPose3.wm[73]";
connectAttr "R_hip_joint.bps" "bindPose3.wm[75]";
connectAttr "R_knee_joint.bps" "bindPose3.wm[76]";
connectAttr "head_joint.bps" "bindPose3.wm[90]";
connectAttr "layerManager.dli[2]" "Contrl_Layer.id";
connectAttr "layerManager.dli[3]" "Joint_Layer.id";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "bottom_geoShape.iog" "lambert2SG.dsm" -na;
connectAttr "head_geoShape.iog" "lambert2SG.dsm" -na;
connectAttr "L_shoulder_geoShape.iog" "lambert2SG.dsm" -na;
connectAttr "L_hand_geoShape.iog" "lambert2SG.dsm" -na;
connectAttr "R_shoulder_geoShape.iog" "lambert2SG.dsm" -na;
connectAttr "R_hand_geoShape.iog" "lambert2SG.dsm" -na;
connectAttr "chest_geoShape.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
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
connectAttr "chest_joint.obcc" "skinCluster3.ifcl[0]";
connectAttr "head_joint.obcc" "skinCluster3.ifcl[1]";
connectAttr "root_joint.obcc" "skinCluster3.ifcl[2]";
connectAttr "waist_joint.obcc" "skinCluster3.ifcl[3]";
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
connectAttr "groupId34.msg" "tweakSet3.gn" -na;
connectAttr "L_hand_geoShape.iog.og[4]" "tweakSet3.dsm" -na;
connectAttr "tweak3.msg" "tweakSet3.ub[0]";
connectAttr "L_hand_geoShapeOrig.w" "groupParts24.ig";
connectAttr "groupId34.id" "groupParts24.gi";
connectAttr "skinCluster3GroupId.msg" "skinCluster3Set.gn" -na;
connectAttr "L_hand_geoShape.iog.og[3]" "skinCluster3Set.dsm" -na;
connectAttr "skinCluster3.msg" "skinCluster3Set.ub[0]";
connectAttr "tweak3.og[0]" "skinCluster3GroupParts.ig";
connectAttr "skinCluster3GroupId.id" "skinCluster3GroupParts.gi";
connectAttr "skinCluster6GroupParts.og" "skinCluster6.ip[0].ig";
connectAttr "skinCluster6GroupId.id" "skinCluster6.ip[0].gi";
connectAttr "root_joint.wm" "skinCluster6.ma[0]";
connectAttr "waist_joint.wm" "skinCluster6.ma[1]";
connectAttr "torso_joint.wm" "skinCluster6.ma[10]";
connectAttr "chest_joint.wm" "skinCluster6.ma[11]";
connectAttr "L_clavicle_joint.wm" "skinCluster6.ma[12]";
connectAttr "L_shoulder_joint.wm" "skinCluster6.ma[13]";
connectAttr "R_clavicle_joint.wm" "skinCluster6.ma[18]";
connectAttr "R_shoulder_joint.wm" "skinCluster6.ma[19]";
connectAttr "root_joint.liw" "skinCluster6.lw[0]";
connectAttr "waist_joint.liw" "skinCluster6.lw[1]";
connectAttr "torso_joint.liw" "skinCluster6.lw[10]";
connectAttr "chest_joint.liw" "skinCluster6.lw[11]";
connectAttr "L_clavicle_joint.liw" "skinCluster6.lw[12]";
connectAttr "L_shoulder_joint.liw" "skinCluster6.lw[13]";
connectAttr "R_clavicle_joint.liw" "skinCluster6.lw[18]";
connectAttr "R_shoulder_joint.liw" "skinCluster6.lw[19]";
connectAttr "root_joint.obcc" "skinCluster6.ifcl[0]";
connectAttr "waist_joint.obcc" "skinCluster6.ifcl[1]";
connectAttr "L_hip_joint.obcc" "skinCluster6.ifcl[2]";
connectAttr "L_knee_joint.obcc" "skinCluster6.ifcl[3]";
connectAttr "L_ball_2_joint.obcc" "skinCluster6.ifcl[5]";
connectAttr "R_hip_joint.obcc" "skinCluster6.ifcl[6]";
connectAttr "R_knee_joint.obcc" "skinCluster6.ifcl[7]";
connectAttr "torso_joint.obcc" "skinCluster6.ifcl[10]";
connectAttr "chest_joint.obcc" "skinCluster6.ifcl[11]";
connectAttr "L_clavicle_joint.obcc" "skinCluster6.ifcl[12]";
connectAttr "L_shoulder_joint.obcc" "skinCluster6.ifcl[13]";
connectAttr "L_elbow_joint.obcc" "skinCluster6.ifcl[14]";
connectAttr "L_hand_joint.obcc" "skinCluster6.ifcl[15]";
connectAttr "L_claw_2_joint.obcc" "skinCluster6.ifcl[16]";
connectAttr "L_claw_1_joint.obcc" "skinCluster6.ifcl[17]";
connectAttr "R_clavicle_joint.obcc" "skinCluster6.ifcl[18]";
connectAttr "R_shoulder_joint.obcc" "skinCluster6.ifcl[19]";
connectAttr "R_elbow_joint.obcc" "skinCluster6.ifcl[20]";
connectAttr "R_hand_joint.obcc" "skinCluster6.ifcl[21]";
connectAttr "R_claw_2_joint.obcc" "skinCluster6.ifcl[22]";
connectAttr "R_claw_1_joint.obcc" "skinCluster6.ifcl[23]";
connectAttr "head_joint.obcc" "skinCluster6.ifcl[24]";
connectAttr "bindPose2.msg" "skinCluster6.bp";
connectAttr "R_clavicle_joint.msg" "skinCluster6.ptt";
connectAttr "skinCluster6GroupId.msg" "skinCluster6Set.gn" -na;
connectAttr "chest_geoShape.iog.og[11]" "skinCluster6Set.dsm" -na;
connectAttr "skinCluster6.msg" "skinCluster6Set.ub[0]";
connectAttr "tweak6.og[0]" "skinCluster6GroupParts.ig";
connectAttr "skinCluster6GroupId.id" "skinCluster6GroupParts.gi";
connectAttr "groupParts30.og" "tweak6.ip[0].ig";
connectAttr "groupId40.id" "tweak6.ip[0].gi";
connectAttr "groupId40.msg" "tweakSet6.gn" -na;
connectAttr "chest_geoShape.iog.og[12]" "tweakSet6.dsm" -na;
connectAttr "tweak6.msg" "tweakSet6.ub[0]";
connectAttr "chest_geoShapeOrig.w" "groupParts30.ig";
connectAttr "groupId40.id" "groupParts30.gi";
connectAttr "bottom_geoShapeOrig.w" "transformGeometry3.ig";
connectAttr "skinCluster7GroupParts.og" "skinCluster7.ip[0].ig";
connectAttr "skinCluster7GroupId.id" "skinCluster7.ip[0].gi";
connectAttr "root_joint.wm" "skinCluster7.ma[0]";
connectAttr "waist_joint.wm" "skinCluster7.ma[1]";
connectAttr "L_hip_joint.wm" "skinCluster7.ma[2]";
connectAttr "L_knee_joint.wm" "skinCluster7.ma[3]";
connectAttr "R_hip_joint.wm" "skinCluster7.ma[5]";
connectAttr "R_knee_joint.wm" "skinCluster7.ma[6]";
connectAttr "R_heel_joint.wm" "skinCluster7.ma[23]";
connectAttr "R_ball_2_joint.wm" "skinCluster7.ma[25]";
connectAttr "L_heel_joint.wm" "skinCluster7.ma[28]";
connectAttr "L_ball_2_joint.wm" "skinCluster7.ma[30]";
connectAttr "R_toe_joint.wm" "skinCluster7.ma[33]";
connectAttr "L_toe_joint.wm" "skinCluster7.ma[34]";
connectAttr "L_ankle_joint.wm" "skinCluster7.ma[36]";
connectAttr "R_ankle_joint.wm" "skinCluster7.ma[38]";
connectAttr "L_toe_shadow.wm" "skinCluster7.ma[44]";
connectAttr "L_foot_shadow.wm" "skinCluster7.ma[45]";
connectAttr "R_toe_shadow.wm" "skinCluster7.ma[46]";
connectAttr "R_foot_shadow.wm" "skinCluster7.ma[47]";
connectAttr "root_joint.liw" "skinCluster7.lw[0]";
connectAttr "waist_joint.liw" "skinCluster7.lw[1]";
connectAttr "L_hip_joint.liw" "skinCluster7.lw[2]";
connectAttr "L_knee_joint.liw" "skinCluster7.lw[3]";
connectAttr "R_hip_joint.liw" "skinCluster7.lw[5]";
connectAttr "R_knee_joint.liw" "skinCluster7.lw[6]";
connectAttr "R_heel_joint.liw" "skinCluster7.lw[23]";
connectAttr "R_ball_2_joint.liw" "skinCluster7.lw[25]";
connectAttr "L_heel_joint.liw" "skinCluster7.lw[28]";
connectAttr "L_ball_2_joint.liw" "skinCluster7.lw[30]";
connectAttr "R_toe_joint.liw" "skinCluster7.lw[33]";
connectAttr "L_toe_joint.liw" "skinCluster7.lw[34]";
connectAttr "L_ankle_joint.liw" "skinCluster7.lw[36]";
connectAttr "R_ankle_joint.liw" "skinCluster7.lw[38]";
connectAttr "L_toe_shadow.liw" "skinCluster7.lw[44]";
connectAttr "L_foot_shadow.liw" "skinCluster7.lw[45]";
connectAttr "R_toe_shadow.liw" "skinCluster7.lw[46]";
connectAttr "R_foot_shadow.liw" "skinCluster7.lw[47]";
connectAttr "root_joint.obcc" "skinCluster7.ifcl[0]";
connectAttr "waist_joint.obcc" "skinCluster7.ifcl[1]";
connectAttr "L_hip_joint.obcc" "skinCluster7.ifcl[2]";
connectAttr "L_knee_joint.obcc" "skinCluster7.ifcl[3]";
connectAttr "L_ankle_joint.obcc" "skinCluster7.ifcl[4]";
connectAttr "R_hip_joint.obcc" "skinCluster7.ifcl[5]";
connectAttr "R_knee_joint.obcc" "skinCluster7.ifcl[6]";
connectAttr "R_ankle_joint.obcc" "skinCluster7.ifcl[7]";
connectAttr "torso_joint.obcc" "skinCluster7.ifcl[8]";
connectAttr "chest_joint.obcc" "skinCluster7.ifcl[9]";
connectAttr "L_clavicle_joint.obcc" "skinCluster7.ifcl[10]";
connectAttr "L_shoulder_joint.obcc" "skinCluster7.ifcl[11]";
connectAttr "L_elbow_joint.obcc" "skinCluster7.ifcl[12]";
connectAttr "L_hand_joint.obcc" "skinCluster7.ifcl[13]";
connectAttr "L_claw_2_joint.obcc" "skinCluster7.ifcl[14]";
connectAttr "L_claw_1_joint.obcc" "skinCluster7.ifcl[15]";
connectAttr "R_clavicle_joint.obcc" "skinCluster7.ifcl[16]";
connectAttr "R_shoulder_joint.obcc" "skinCluster7.ifcl[17]";
connectAttr "R_elbow_joint.obcc" "skinCluster7.ifcl[18]";
connectAttr "R_hand_joint.obcc" "skinCluster7.ifcl[19]";
connectAttr "R_claw_2_joint.obcc" "skinCluster7.ifcl[20]";
connectAttr "R_claw_1_joint.obcc" "skinCluster7.ifcl[21]";
connectAttr "head_joint.obcc" "skinCluster7.ifcl[22]";
connectAttr "R_heel_joint.obcc" "skinCluster7.ifcl[23]";
connectAttr "R_ball_joint.obcc" "skinCluster7.ifcl[24]";
connectAttr "R_ball_2_joint.obcc" "skinCluster7.ifcl[25]";
connectAttr "R_ankle_Move_joint.obcc" "skinCluster7.ifcl[26]";
connectAttr "R_toe_joint.obcc" "skinCluster7.ifcl[27]";
connectAttr "L_heel_joint.obcc" "skinCluster7.ifcl[28]";
connectAttr "L_ball_joint.obcc" "skinCluster7.ifcl[29]";
connectAttr "L_ball_2_joint.obcc" "skinCluster7.ifcl[30]";
connectAttr "L_ankle_Move_joint.obcc" "skinCluster7.ifcl[31]";
connectAttr "L_toe_joint.obcc" "skinCluster7.ifcl[32]";
connectAttr "R_toe_joint.obcc" "skinCluster7.ifcl[33]";
connectAttr "L_toe_joint.obcc" "skinCluster7.ifcl[34]";
connectAttr "L_ankle_joint.obcc" "skinCluster7.ifcl[36]";
connectAttr "R_ankle_joint.obcc" "skinCluster7.ifcl[38]";
connectAttr "L_toe_shadow.obcc" "skinCluster7.ifcl[44]";
connectAttr "L_foot_shadow.obcc" "skinCluster7.ifcl[45]";
connectAttr "R_toe_shadow.obcc" "skinCluster7.ifcl[46]";
connectAttr "R_foot_shadow.obcc" "skinCluster7.ifcl[47]";
connectAttr "bindPose2.msg" "skinCluster7.bp";
connectAttr "R_toe_shadow.msg" "skinCluster7.ptt";
connectAttr "groupParts32.og" "tweak7.ip[0].ig";
connectAttr "groupId42.id" "tweak7.ip[0].gi";
connectAttr "skinCluster7GroupId.msg" "skinCluster7Set.gn" -na;
connectAttr "bottom_geoShape.iog.og[5]" "skinCluster7Set.dsm" -na;
connectAttr "skinCluster7.msg" "skinCluster7Set.ub[0]";
connectAttr "tweak7.og[0]" "skinCluster7GroupParts.ig";
connectAttr "skinCluster7GroupId.id" "skinCluster7GroupParts.gi";
connectAttr "groupId42.msg" "tweakSet7.gn" -na;
connectAttr "bottom_geoShape.iog.og[6]" "tweakSet7.dsm" -na;
connectAttr "tweak7.msg" "tweakSet7.ub[0]";
connectAttr "transformGeometry3.og" "groupParts32.ig";
connectAttr "groupId42.id" "groupParts32.gi";
connectAttr "skinCluster9GroupParts.og" "skinCluster9.ip[0].ig";
connectAttr "skinCluster9GroupId.id" "skinCluster9.ip[0].gi";
connectAttr "L_clavicle_joint.wm" "skinCluster9.ma[10]";
connectAttr "L_shoulder_joint.wm" "skinCluster9.ma[11]";
connectAttr "L_clavicle_joint.liw" "skinCluster9.lw[10]";
connectAttr "L_shoulder_joint.liw" "skinCluster9.lw[11]";
connectAttr "root_joint.obcc" "skinCluster9.ifcl[0]";
connectAttr "waist_joint.obcc" "skinCluster9.ifcl[1]";
connectAttr "L_hip_joint.obcc" "skinCluster9.ifcl[2]";
connectAttr "L_knee_joint.obcc" "skinCluster9.ifcl[3]";
connectAttr "L_ankle_joint.obcc" "skinCluster9.ifcl[4]";
connectAttr "R_hip_joint.obcc" "skinCluster9.ifcl[5]";
connectAttr "R_knee_joint.obcc" "skinCluster9.ifcl[6]";
connectAttr "R_ankle_joint.obcc" "skinCluster9.ifcl[7]";
connectAttr "torso_joint.obcc" "skinCluster9.ifcl[8]";
connectAttr "chest_joint.obcc" "skinCluster9.ifcl[9]";
connectAttr "L_clavicle_joint.obcc" "skinCluster9.ifcl[10]";
connectAttr "L_shoulder_joint.obcc" "skinCluster9.ifcl[11]";
connectAttr "L_elbow_joint.obcc" "skinCluster9.ifcl[12]";
connectAttr "L_hand_joint.obcc" "skinCluster9.ifcl[13]";
connectAttr "L_claw_2_joint.obcc" "skinCluster9.ifcl[14]";
connectAttr "L_claw_1_joint.obcc" "skinCluster9.ifcl[15]";
connectAttr "R_clavicle_joint.obcc" "skinCluster9.ifcl[16]";
connectAttr "R_shoulder_joint.obcc" "skinCluster9.ifcl[17]";
connectAttr "R_elbow_joint.obcc" "skinCluster9.ifcl[18]";
connectAttr "R_hand_joint.obcc" "skinCluster9.ifcl[19]";
connectAttr "R_claw_2_joint.obcc" "skinCluster9.ifcl[20]";
connectAttr "R_claw_1_joint.obcc" "skinCluster9.ifcl[21]";
connectAttr "head_joint.obcc" "skinCluster9.ifcl[22]";
connectAttr "bindPose3.msg" "skinCluster9.bp";
connectAttr "L_shoulder_joint.msg" "skinCluster9.ptt";
connectAttr "groupParts36.og" "tweak9.ip[0].ig";
connectAttr "groupId46.id" "tweak9.ip[0].gi";
connectAttr "skinCluster9GroupId.msg" "skinCluster9Set.gn" -na;
connectAttr "L_shoulder_geoShape.iog.og[7]" "skinCluster9Set.dsm" -na;
connectAttr "skinCluster9.msg" "skinCluster9Set.ub[0]";
connectAttr "tweak9.og[0]" "skinCluster9GroupParts.ig";
connectAttr "skinCluster9GroupId.id" "skinCluster9GroupParts.gi";
connectAttr "groupId46.msg" "tweakSet9.gn" -na;
connectAttr "L_shoulder_geoShape.iog.og[8]" "tweakSet9.dsm" -na;
connectAttr "tweak9.msg" "tweakSet9.ub[0]";
connectAttr "L_shoulder_geoShapeOrig.w" "groupParts36.ig";
connectAttr "groupId46.id" "groupParts36.gi";
connectAttr "skinCluster10GroupParts.og" "skinCluster10.ip[0].ig";
connectAttr "skinCluster10GroupId.id" "skinCluster10.ip[0].gi";
connectAttr "chest_joint.wm" "skinCluster10.ma[9]";
connectAttr "head_joint.wm" "skinCluster10.ma[23]";
connectAttr "chest_joint.liw" "skinCluster10.lw[9]";
connectAttr "head_joint.liw" "skinCluster10.lw[23]";
connectAttr "root_joint.obcc" "skinCluster10.ifcl[0]";
connectAttr "waist_joint.obcc" "skinCluster10.ifcl[1]";
connectAttr "L_hip_joint.obcc" "skinCluster10.ifcl[2]";
connectAttr "L_knee_joint.obcc" "skinCluster10.ifcl[3]";
connectAttr "L_ankle_joint.obcc" "skinCluster10.ifcl[4]";
connectAttr "R_hip_joint.obcc" "skinCluster10.ifcl[5]";
connectAttr "R_knee_joint.obcc" "skinCluster10.ifcl[6]";
connectAttr "R_ankle_joint.obcc" "skinCluster10.ifcl[7]";
connectAttr "torso_joint.obcc" "skinCluster10.ifcl[8]";
connectAttr "chest_joint.obcc" "skinCluster10.ifcl[9]";
connectAttr "L_clavicle_joint.obcc" "skinCluster10.ifcl[10]";
connectAttr "L_shoulder_joint.obcc" "skinCluster10.ifcl[11]";
connectAttr "L_elbow_joint.obcc" "skinCluster10.ifcl[12]";
connectAttr "L_hand_joint.obcc" "skinCluster10.ifcl[13]";
connectAttr "L_claw_2_joint.obcc" "skinCluster10.ifcl[14]";
connectAttr "L_claw_1_joint.obcc" "skinCluster10.ifcl[15]";
connectAttr "R_clavicle_joint.obcc" "skinCluster10.ifcl[16]";
connectAttr "R_shoulder_joint.obcc" "skinCluster10.ifcl[17]";
connectAttr "R_elbow_joint.obcc" "skinCluster10.ifcl[18]";
connectAttr "R_hand_joint.obcc" "skinCluster10.ifcl[19]";
connectAttr "R_claw_2_joint.obcc" "skinCluster10.ifcl[20]";
connectAttr "R_claw_1_joint.obcc" "skinCluster10.ifcl[21]";
connectAttr "head_joint.obcc" "skinCluster10.ifcl[22]";
connectAttr "head_joint.obcc" "skinCluster10.ifcl[23]";
connectAttr "bindPose3.msg" "skinCluster10.bp";
connectAttr "head_joint.msg" "skinCluster10.ptt";
connectAttr "groupParts38.og" "tweak10.ip[0].ig";
connectAttr "groupId48.id" "tweak10.ip[0].gi";
connectAttr "skinCluster10GroupId.msg" "skinCluster10Set.gn" -na;
connectAttr "head_geoShape.iog.og[6]" "skinCluster10Set.dsm" -na;
connectAttr "skinCluster10.msg" "skinCluster10Set.ub[0]";
connectAttr "tweak10.og[0]" "skinCluster10GroupParts.ig";
connectAttr "skinCluster10GroupId.id" "skinCluster10GroupParts.gi";
connectAttr "groupId48.msg" "tweakSet10.gn" -na;
connectAttr "head_geoShape.iog.og[7]" "tweakSet10.dsm" -na;
connectAttr "tweak10.msg" "tweakSet10.ub[0]";
connectAttr "head_geoShapeOrig.w" "groupParts38.ig";
connectAttr "groupId48.id" "groupParts38.gi";
connectAttr "skinCluster11GroupParts.og" "skinCluster11.ip[0].ig";
connectAttr "skinCluster11GroupId.id" "skinCluster11.ip[0].gi";
connectAttr "R_clavicle_joint.wm" "skinCluster11.ma[16]";
connectAttr "R_shoulder_joint.wm" "skinCluster11.ma[17]";
connectAttr "R_clavicle_joint.liw" "skinCluster11.lw[16]";
connectAttr "R_shoulder_joint.liw" "skinCluster11.lw[17]";
connectAttr "root_joint.obcc" "skinCluster11.ifcl[0]";
connectAttr "waist_joint.obcc" "skinCluster11.ifcl[1]";
connectAttr "L_hip_joint.obcc" "skinCluster11.ifcl[2]";
connectAttr "L_knee_joint.obcc" "skinCluster11.ifcl[3]";
connectAttr "L_ankle_joint.obcc" "skinCluster11.ifcl[4]";
connectAttr "R_hip_joint.obcc" "skinCluster11.ifcl[5]";
connectAttr "R_knee_joint.obcc" "skinCluster11.ifcl[6]";
connectAttr "R_ankle_joint.obcc" "skinCluster11.ifcl[7]";
connectAttr "torso_joint.obcc" "skinCluster11.ifcl[8]";
connectAttr "chest_joint.obcc" "skinCluster11.ifcl[9]";
connectAttr "L_clavicle_joint.obcc" "skinCluster11.ifcl[10]";
connectAttr "L_shoulder_joint.obcc" "skinCluster11.ifcl[11]";
connectAttr "L_elbow_joint.obcc" "skinCluster11.ifcl[12]";
connectAttr "L_hand_joint.obcc" "skinCluster11.ifcl[13]";
connectAttr "L_claw_2_joint.obcc" "skinCluster11.ifcl[14]";
connectAttr "L_claw_1_joint.obcc" "skinCluster11.ifcl[15]";
connectAttr "R_clavicle_joint.obcc" "skinCluster11.ifcl[16]";
connectAttr "R_shoulder_joint.obcc" "skinCluster11.ifcl[17]";
connectAttr "R_elbow_joint.obcc" "skinCluster11.ifcl[18]";
connectAttr "R_hand_joint.obcc" "skinCluster11.ifcl[19]";
connectAttr "R_claw_2_joint.obcc" "skinCluster11.ifcl[20]";
connectAttr "R_claw_1_joint.obcc" "skinCluster11.ifcl[21]";
connectAttr "head_joint.obcc" "skinCluster11.ifcl[22]";
connectAttr "bindPose3.msg" "skinCluster11.bp";
connectAttr "R_shoulder_joint.msg" "skinCluster11.ptt";
connectAttr "groupParts40.og" "tweak11.ip[0].ig";
connectAttr "groupId50.id" "tweak11.ip[0].gi";
connectAttr "skinCluster11GroupId.msg" "skinCluster11Set.gn" -na;
connectAttr "R_shoulder_geoShape.iog.og[5]" "skinCluster11Set.dsm" -na;
connectAttr "skinCluster11.msg" "skinCluster11Set.ub[0]";
connectAttr "tweak11.og[0]" "skinCluster11GroupParts.ig";
connectAttr "skinCluster11GroupId.id" "skinCluster11GroupParts.gi";
connectAttr "groupId50.msg" "tweakSet11.gn" -na;
connectAttr "R_shoulder_geoShape.iog.og[6]" "tweakSet11.dsm" -na;
connectAttr "tweak11.msg" "tweakSet11.ub[0]";
connectAttr "R_shoulder_geoShapeOrig.w" "groupParts40.ig";
connectAttr "groupId50.id" "groupParts40.gi";
connectAttr "L_foot_anim.toe" "L_toe_joint_rotateZ1.i";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of C_Robot_Rig.ma
