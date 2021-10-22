//Maya ASCII 2022 scene
//Name: Clean_Up_Chair_2.ma
//Last modified: Fri, Oct 22, 2021 01:42:10 PM
//Codeset: 1252
requires maya "2022";
requires "mtoa" "4.2.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202102181415-29bfc1879c";
fileInfo "osv" "Windows 10 Home v2009 (Build: 19042)";
fileInfo "UUID" "FC1B4A45-415F-74EA-2678-78B5E123AD4C";
createNode transform -s -n "persp";
	rename -uid "E98CAB2F-4A9A-D28E-98E4-6092FA4ED51D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.20675095852998648 85.516120093259701 155.29807544533901 ;
	setAttr ".r" -type "double3" 351.86164726726207 722.60000000008233 -9.9494756703957918e-17 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "F34B1720-41C4-96EF-B35F-158ECB6F9322";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 178.15032438597919;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.066790007213814562 26.5161016027673 -13.073349045812643 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "EF06D58B-4F5B-9F51-40BB-95AFAE53CDC8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.066790007213814562 1000.1877732326509 -13.073349045812643 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "16560D1E-4AD1-CFA1-908B-6495DFA3FCFA";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 973.67167162988358;
	setAttr ".ow" 114.25167465076895;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 0.066790007213814562 26.5161016027673 -13.073349045812643 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "98D17C86-4479-6E17-FE0F-E58AFB3B5FEC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.066790007213814562 26.5161016027673 1000.2535638069785 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "A7506CE2-466D-DA6F-8969-DFA682DB6205";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1013.3269128527911;
	setAttr ".ow" 67.233169127471783;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 0.066790007213814562 26.5161016027673 -13.073349045812643 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "E6ADD97F-4C79-D26C-96D0-0DBA8C0E8E9E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.3617618933961 26.5161016027673 -13.073349045812643 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "C5082D77-4485-0BFD-37AD-02B4FC234628";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.2949718861822;
	setAttr ".ow" 67.148811324300553;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 0.066790007213814562 26.5161016027673 -13.073349045812643 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pCylinder1";
	rename -uid "E07A2482-4734-1180-4356-DEA8F7498247";
	setAttr ".t" -type "double3" 0 13.790910683267272 0 ;
	setAttr ".r" -type "double3" 0 -45.000000000000014 0 ;
createNode transform -n "transform2" -p "pCylinder1";
	rename -uid "71B7EC61-4E80-06E4-796E-EC99353FC399";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape1" -p "transform2";
	rename -uid "12D99B79-4A4C-36D9-D885-1294A0FB1045";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.68843984603881836 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[21]" -type "float3" 0 -1.1920929e-07 0 ;
	setAttr ".pt[22]" -type "float3" 0 -1.1920929e-07 0 ;
	setAttr ".pt[39]" -type "float3" 0 -1.1920929e-07 0 ;
	setAttr ".pt[40]" -type "float3" 0 -1.1920929e-07 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube2";
	rename -uid "039A3033-450A-B354-B8FB-858B53743E09";
	setAttr ".t" -type "double3" 0.091165701539233979 18.432467614089084 0 ;
	setAttr ".s" -type "double3" 10.920728796749859 1.9981515255797282 10.920728796749859 ;
createNode transform -n "transform1" -p "pCube2";
	rename -uid "0788D157-4A05-553D-B756-27A1CA2B8D56";
	setAttr ".v" no;
createNode mesh -n "pCubeShape2" -p "transform1";
	rename -uid "6DC5DB7A-48A5-4BE3-1C56-9FBC1319D0C9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[13]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".pt[14]" -type "float3" 3.7252903e-09 0 -1.4901161e-08 ;
	setAttr ".pt[17]" -type "float3" -3.7252903e-09 0 1.4901161e-08 ;
	setAttr ".pt[18]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder2";
	rename -uid "C7B78033-4A8A-070A-D258-D79ADA1AA9AF";
	setAttr ".t" -type "double3" -13.122364181886262 -0.6398017240490681 -0.0043248650851523962 ;
	setAttr ".s" -type "double3" 3.288702229262892 4.1851256164463928 3.3042892634414684 ;
	setAttr ".rp" -type "double3" 2.384185791015625e-07 20.856943130493164 0 ;
	setAttr ".sp" -type "double3" 2.384185791015625e-07 20.856943130493164 0 ;
	setAttr ".spt" -type "double3" 13.189154734769209 -2.2836572969073075 -13.06902339292354 ;
createNode mesh -n "pCylinder2Shape" -p "pCylinder2";
	rename -uid "D637DC59-481A-2E30-5888-A1B97F11361A";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.67235809564590454 0.42630517482757568 ;
	setAttr -s 4 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".uvst[1].uvsn" -type "string" "uvSet";
	setAttr ".uvst[2].uvsn" -type "string" "uvSet1";
	setAttr ".uvst[3].uvsn" -type "string" "uvSet2";
	setAttr ".cuvs" -type "string" "uvSet";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dfgi" 6;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "1496616C-481C-0263-CA08-3185E2D06147";
	setAttr -s 6 ".lnk";
	setAttr -s 6 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "FA970FBF-40C8-981F-52E7-FEB3E1415B94";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "9836BBF5-4718-AEAF-3E13-BA80AA6BC284";
createNode displayLayerManager -n "layerManager";
	rename -uid "A99516CC-4D6D-7CE0-AA1F-2BBD2A833DCF";
createNode displayLayer -n "defaultLayer";
	rename -uid "C35617D2-4DF1-77A6-99BB-F89BA3282B37";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "94823A82-42BB-66C7-D78D-E6884315CC21";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "B72B3955-4E77-F248-B948-619072245826";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "74289185-40CF-807E-2E84-69A22BF58448";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 797\n            -height 374\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 796\n            -height 373\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 797\n            -height 373\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1380\n            -height 791\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n"
		+ "                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n"
		+ "                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1380\\n    -height 791\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1380\\n    -height 791\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "9D13B972-4694-0E71-5441-ED8BBFA27E50";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "DF923331-44E4-CF45-CB5F-C1AC10ABFFB0";
	setAttr ".h" 7;
	setAttr ".sa" 4;
	setAttr ".sh" 2;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "5C70D328-428A-8599-6857-E680F12CF5EB";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5.6465681152809841 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.49999997 2.7881026 0.5 ;
	setAttr ".rs" 43072;
	setAttr ".lt" -type "double3" 1.7763568394002505e-15 -1.3322676295501878e-15 7 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.3711388286737929e-08 2.1465681152809841 0 ;
	setAttr ".cbx" -type "double3" 1 3.429637249039529 1 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "BEC54540-424A-56F3-ECB8-C5A99FBAF354";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk[4:14]" -type "float3"  0 -2.21693158 0 0 -2.21693087
		 0 0 -2.21693087 0 0 -2.21693087 0 0 5.9604645e-07 0 0 5.9604645e-07 0 0 -2.3841858e-07
		 0 0 -2.3841858e-07 0 0 -2.3841858e-07 0 0 -2.3841858e-07 0 0 -2.3841858e-07 0;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "752EB97A-4372-4773-C376-9882D70E61C6";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5.6465681152809841 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.49999994 2.7881026 -0.50000006 ;
	setAttr ".rs" 34515;
	setAttr ".lt" -type "double3" 1.3322676295501878e-15 1.6621755766557664e-16 7 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 2.1465681152809841 -1 ;
	setAttr ".cbx" -type "double3" 1.3113415775478643e-07 3.429637249039529 -8.7422776573475858e-08 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "CD390D6C-43FE-C9CB-2E92-5E84689AB8E6";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5.6465681152809841 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.5 2.7881026 0.49999997 ;
	setAttr ".rs" 54195;
	setAttr ".lt" -type "double3" 0 0 7 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 2.1465681152809841 -8.7422776573475858e-08 ;
	setAttr ".cbx" -type "double3" -4.3711388286737929e-08 3.429637249039529 1 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "D3153E0C-4808-A086-8FCC-F7B9BA83AB29";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5.6465681152809841 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.50000006 2.7881026 -0.5 ;
	setAttr ".rs" 47608;
	setAttr ".lt" -type "double3" 0 0 7 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.3113415775478643e-07 2.1465681152809841 -1 ;
	setAttr ".cbx" -type "double3" 1 3.429637249039529 0 ;
createNode polyCut -n "polyCut1";
	rename -uid "DB6DAB1E-45C2-9B73-B56F-E99EAD86E447";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[28:31]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 12.803590340613479 0 1;
	setAttr ".pc" -type "double3" 5.3897651 -0.78533808000000005 -4.50084602 ;
	setAttr ".ro" -type "double3" -44.989498609999998 -1.1121884799999999 90 ;
createNode polyDelEdge -n "polyDelEdge1";
	rename -uid "F672BF0B-4C55-5097-4A40-F88E2FE6937B";
	setAttr ".ics" -type "componentList" 1 "e[65:67]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge2";
	rename -uid "64825695-4B13-61DB-13F4-30BDE48AA56C";
	setAttr ".ics" -type "componentList" 1 "e[20:23]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge3";
	rename -uid "A862709E-4FD4-5822-3D07-E990CE25C35B";
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".cv" yes;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "FA6AC1A1-4B9D-9D79-D044-0BBC851AD562";
	setAttr ".ics" -type "componentList" 1 "f[25]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 12.803590340613479 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.1485147 9.3035908 -5.1485577 ;
	setAttr ".rs" 51234;
	setAttr ".lt" -type "double3" -2.6645352591003757e-15 0 1.1806044362452166 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 4.3472814559936523 9.3035903406134786 -5.9497466087341309 ;
	setAttr ".cbx" -type "double3" 5.9497485160827637 9.3035903406134786 -4.3473682403564453 ;
createNode polyCut -n "polyCut2";
	rename -uid "C63A5EDC-4EBA-8F5C-BB72-0FAE45D4BF1B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[25]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 12.803590340613479 0 1;
	setAttr ".pc" -type "double3" -4.7512206299999997 -0.027893049999999999 -4.7264784999999998 ;
	setAttr ".ro" -type "double3" 44.175034150000002 0.25871232 90 ;
createNode polyCut -n "polyCut3";
	rename -uid "79E9A235-4465-1098-A27E-9D867F720107";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[18:21]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 12.803590340613479 0 1;
	setAttr ".pc" -type "double3" -5.0490634500000002 -1.1757363199999999 4.9044327399999998 ;
	setAttr ".ro" -type "double3" -134.76132379000001 -4.4544403499999996 -90 ;
createNode polyCut -n "polyCut4";
	rename -uid "A41AC5D6-4505-902F-8262-63B15CC5767E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[15:17]" "f[21]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 12.803590340613479 0 1;
	setAttr ".pc" -type "double3" -4.9290049199999997 1.54592189 -5.0583826199999997 ;
	setAttr ".ro" -type "double3" 44.697407290000001 -5.7680062400000001 90 ;
createNode polyCut -n "polyCut5";
	rename -uid "093B1E2D-45FE-C5E0-4330-92BBBBA73128";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[12:14]" "f[21]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 12.803590340613479 0 1;
	setAttr ".pc" -type "double3" 4.9617132399999999 1.88034784 4.3595356199999999 ;
	setAttr ".ro" -type "double3" 135.75189365 -1.7371132800000002 -90 ;
createNode polyDelEdge -n "polyDelEdge4";
	rename -uid "193FA6EA-49D0-3418-A642-1195D17EC355";
	setAttr ".ics" -type "componentList" 1 "e[67:69]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge5";
	rename -uid "921F5DBE-49C8-D038-94CB-97AFA34572FB";
	setAttr ".ics" -type "componentList" 1 "e[78:80]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge6";
	rename -uid "97E5443A-4BF9-4007-9DD4-C48FFBF05652";
	setAttr ".ics" -type "componentList" 1 "e[70:72]";
	setAttr ".cv" yes;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "96CFF918-4A9B-FAEC-6B71-CFAC91AB48EC";
	setAttr ".ics" -type "componentList" 1 "f[30]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 12.803590340613479 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -5.0119419 9.3035908 5.0091028 ;
	setAttr ".rs" 51216;
	setAttr ".lt" -type "double3" 0 1.7763568394002505e-15 1.2376840723116374 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -5.9497475624084473 9.3035903406134786 4.0684585571289062 ;
	setAttr ".cbx" -type "double3" -4.0741367340087891 9.3035903406134786 5.9497470855712891 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "D1DF1120-46C9-D231-470A-179F1FE05B73";
	setAttr ".ics" -type "componentList" 1 "f[31]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 12.803590340613479 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -5.0246801 9.3035908 -5.0260534 ;
	setAttr ".rs" 49054;
	setAttr ".lt" -type "double3" 0 -1.9370179724893875e-16 1.1808521918469908 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -5.9497466087341309 9.3035903406134786 -5.9497480392456055 ;
	setAttr ".cbx" -type "double3" -4.099614143371582 9.3035903406134786 -4.1023592948913574 ;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "B0B7062D-4616-045E-4A51-1CA689D70B67";
	setAttr ".ics" -type "componentList" 1 "f[32]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 12.803590340613479 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 4.9930134 9.3035908 4.9994602 ;
	setAttr ".rs" 50016;
	setAttr ".lt" -type "double3" 0 -8.8817841970012523e-16 1.2819686350858319 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 4.0362792015075684 9.3035903406134786 4.0491728782653809 ;
	setAttr ".cbx" -type "double3" 5.9497475624084473 9.3035903406134786 5.9497475624084473 ;
createNode polyDelEdge -n "polyDelEdge7";
	rename -uid "A233DFD5-4FCC-96A6-0D2F-14A563B4A534";
	setAttr ".ics" -type "componentList" 1 "e[16:19]";
	setAttr ".cv" yes;
createNode polyCube -n "polyCube2";
	rename -uid "09961420-4199-58D1-EACB-37AB4457EB62";
	setAttr ".sw" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode polyDelEdge -n "polyDelEdge9";
	rename -uid "5658B060-4217-AA47-9D2C-B1B0DBDAAEBE";
	setAttr ".ics" -type "componentList" 1 "e[41:42]";
	setAttr ".cv" yes;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	rename -uid "1DEE2AF2-45D7-B91B-234F-048CA245D225";
	setAttr ".ics" -type "componentList" 1 "f[12]";
	setAttr ".ix" -type "matrix" 10.920728796749859 0 0 0 0 1.9981515255797282 0 0 0 0 10.920728796749859 0
		 13.763049342521541 18.432467614089084 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 13.763049 18.432468 -3.5825927 ;
	setAttr ".rs" 62723;
	setAttr ".lt" -type "double3" 1.7763568394002505e-15 -2.4656891419786639e-16 2.0133879774114241 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 8.3026849441466108 17.43339185129922 -3.5825927889332143 ;
	setAttr ".cbx" -type "double3" 19.223413740896468 19.431543376878949 -3.5825927889332143 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "467B9250-440E-99AB-2406-B99F701A52A4";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[16:23]" -type "float3"  0 0 0.17194562 0 0 0.17194562
		 0 0 0.17194562 0 0 0.17194562 0 0 0.17194562 0 0 0.17194562 0 0 0.17194562 0 0 0.17194562;
createNode polyDelEdge -n "polyDelEdge10";
	rename -uid "9627C50E-4801-FBEF-D9EE-8990CF6214A8";
	setAttr ".ics" -type "componentList" 2 "e[65]" "e[67]";
	setAttr ".cv" yes;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	rename -uid "5C6D9E22-4083-BE92-A210-EE994C17A8DE";
	setAttr ".ics" -type "componentList" 1 "f[31]";
	setAttr ".ix" -type "matrix" 10.920728796749859 0 0 0 0 1.9981515255797282 0 0 0 0 10.920728796749859 0
		 13.763049342521541 18.432467614089084 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 13.763048 19.43154 -4.5892863 ;
	setAttr ".rs" 59304;
	setAttr ".lt" -type "double3" 5.3290705182007514e-15 8.8817841970012523e-16 13.273402230153479 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 8.3026836422942907 19.431538851112698 -5.5959803074567018 ;
	setAttr ".cbx" -type "double3" 19.22341243904415 19.431538851112698 -3.5825924634701343 ;
createNode polyDelEdge -n "polyDelEdge11";
	rename -uid "B91B277C-4349-4513-46D2-DBACE9545448";
	setAttr ".ics" -type "componentList" 2 "e[73]" "e[75]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge12";
	rename -uid "BD0DECFD-45CD-2E80-B9C8-CCA5E1826B46";
	setAttr ".ics" -type "componentList" 4 "e[6:11]" "e[29:30]" "e[33]" "e[37:38]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge13";
	rename -uid "4F0CB3D9-478F-63B6-947F-8ABCD8B819C3";
	setAttr ".ics" -type "componentList" 4 "e[26:27]" "e[40:43]" "e[49]" "e[51:52]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge14";
	rename -uid "D0A4B754-4D34-B308-9622-728A486C5D38";
	setAttr ".ics" -type "componentList" 1 "e[17:18]";
	setAttr ".cv" yes;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "DE7C82AD-4D37-006B-2AAC-75B94ED3E6AA";
	setAttr ".dc" -type "componentList" 1 "f[8]";
createNode polyTweak -n "polyTweak3";
	rename -uid "53D57D35-4D27-AF1A-6668-89A6D8CFAC6D";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[13]" -type "float3" 0.012286397 0 0.061750069 ;
	setAttr ".tk[14]" -type "float3" -0.06504181 0 0.061750069 ;
	setAttr ".tk[16]" -type "float3" 0 -1.3150275e-06 0 ;
	setAttr ".tk[17]" -type "float3" 0.012286397 -1.3150275e-06 -0.071734779 ;
	setAttr ".tk[18]" -type "float3" -0.06504181 -1.3150275e-06 -0.071734779 ;
	setAttr ".tk[19]" -type "float3" 0 -1.3150275e-06 0 ;
	setAttr ".tk[35]" -type "float3" 0 -1.3150275e-06 0 ;
	setAttr ".tk[36]" -type "float3" 0 -1.3150275e-06 0 ;
createNode deleteComponent -n "deleteComponent2";
	rename -uid "4F13ED3D-455E-8A6B-43AC-88B2A8713004";
	setAttr ".dc" -type "componentList" 1 "f[7]";
createNode polyCBoolOp -n "polyCBoolOp1";
	rename -uid "CB9B102B-4E76-3B2F-9168-2092AEB5CA66";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".mg" -type "Int32Array" 2 92 -94 ;
createNode groupId -n "groupId1";
	rename -uid "8C50580C-4AC4-CAFE-5033-569BF04A1855";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "E7A8BB5E-4B7E-DADA-55AC-949BE3414675";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:40]";
createNode groupId -n "groupId2";
	rename -uid "2A051C3D-4130-94DF-6420-CFAE9D25619D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "60D6A86F-463D-2DCD-07EF-A28C47343DFE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "F5EC783A-4520-CECC-24B7-F3872D5D120E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:17]";
createNode groupId -n "groupId4";
	rename -uid "2F011FD8-4B69-A8DB-F0CD-35AC852D32CF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "4D8F83C2-4F01-4995-69C2-82A340586C10";
	setAttr ".ihi" 0;
createNode polyBridgeEdge -n "polyBridgeEdge1";
	rename -uid "9B6084E6-4201-1A2D-2017-DEB446973A3F";
	setAttr ".ics" -type "componentList" 8 "e[44]" "e[61]" "e[70]" "e[73]" "e[75]" "e[77]" "e[80]" "e[120]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 28;
	setAttr ".sv2" 50;
	setAttr ".d" 1;
createNode polyDelEdge -n "polyDelEdge15";
	rename -uid "C44EE990-49AA-FBB8-B844-2E964538D171";
	setAttr ".ics" -type "componentList" 12 "e[42]" "e[45]" "e[53]" "e[56]" "e[60]" "e[62]" "e[65:66]" "e[68]" "e[74]" "e[102]" "e[107]" "e[121]";
	setAttr ".cv" yes;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "FC8CC9DE-4712-A46B-EB6B-F2AFDAC1BFFB";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk";
	setAttr ".uvtk[36]" -type "float2" 0.056250151 0 ;
	setAttr ".uvtk[60]" -type "float2" 0.056250136 0 ;
	setAttr ".uvtk[61]" -type "float2" 0.056250151 0 ;
	setAttr ".uvtk[67]" -type "float2" 0.056250136 0 ;
	setAttr ".uvtk[70]" -type "float2" 0.056250136 0 ;
	setAttr ".uvtk[73]" -type "float2" 0.056250151 0 ;
	setAttr ".uvtk[74]" -type "float2" 0.056250136 0 ;
	setAttr ".uvtk[75]" -type "float2" 0.056250136 0 ;
createNode polyMapCut -n "polyMapCut1";
	rename -uid "02119454-42AE-6BCB-9881-E9870E7C7D21";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[54]" "e[100]" "e[105:106]";
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "0BA63376-4249-E0F7-919F-8D9191827B4C";
	setAttr ".uopa" yes;
	setAttr -s 73 ".uvtk[4:76]" -type "float2" 0.072267413 0 0.050798357
		 0 0 0 0 0 0 0 0 0 0 0 0.11329839 0.22760659 0 0 0 0 0.050798357 0.039636672 0.050798357
		 0.039636672 0.09182927 0.22760659 0 0 0 0.039636672 0 0.039636672 0 0.039636672 -0.011701643
		 0.039636672 0.050798357 0 -0.011701643 0 0.12243003 0.22760659 0.12243004 0.26724327
		 0 0 0.11329839 0.26724327 0.029965013 0 0.029965013 0 -0.010416627 0 -0.01041661
		 0.039636672 0 0 0 0 0 0.039636672 0 0 -0.4314549 0 0 0.039636672 0.11329839 0.22760659
		 0.16409674 0.22760659 0.20576334 0.26724321 0.010416687 0 0.050798357 0 0.11329839
		 0.26724327 -0.011701643 0 0.12243004 0.26724327 -0.01041661 0 0 0.039636672 0 0.039636672
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.43145487 0 -0.4314549 0 0 0 0.56574297
		 0 0 0 0 -0.125 0.56574297 -0.125 -0.43145487 0 0 0 0.56574297 0 -0.43145487 0 0 0
		 0 0 -0.4314549 0.125 -0.43145487 0.125 -0.43145487 0.125 0.56574297 -0.125;
createNode polySoftEdge -n "polySoftEdge1";
	rename -uid "4FCB3EF3-4787-18D6-9C5B-DFA31523DBA7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[105]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.63980172407257285 0 1;
	setAttr ".a" 180;
createNode shadingEngine -n "standardSurface2SG";
	rename -uid "CBBEC9A5-48A8-3A4A-9339-FB9594C6E5D1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "64E39D56-4E8A-C51F-D365-8C8588F7B514";
createNode layeredShader -n "layeredShader1";
	rename -uid "6A0876BC-484C-C91B-1615-888462E3C70F";
createNode standardSurface -n "standardSurface2";
	rename -uid "945FEE86-4CDD-0F90-EFC2-B2ACDC699779";
createNode polyMapCut -n "polyMapCut2";
	rename -uid "D3A9939B-48F6-0A8F-C8BE-1AA27CAC4ACF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[87]" "e[110:112]";
createNode polyMapCut -n "polyMapCut3";
	rename -uid "D66902A2-4FF1-4D2F-8A13-78AAA8FF57CD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:118]";
createNode polyMapCut -n "polyMapCut4";
	rename -uid "AD4C12DA-457D-AF2B-2A4F-DB88C7197989";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[87]" "e[110:112]";
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "298ABA4D-4B49-9AC2-71BE-C3B5564AA321";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[60]" -type "float2" 1.3777697 0 ;
	setAttr ".uvtk[71]" -type "float2" 1.3777697 0 ;
	setAttr ".uvtk[77]" -type "float2" 1.3777699 0 ;
	setAttr ".uvtk[81]" -type "float2" 1.3777697 0 ;
createNode polyMapCut -n "polyMapCut5";
	rename -uid "CCFD64D7-4394-95C6-1365-CA892CACEB46";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[54]" "e[96]" "e[101]" "e[108]" "e[111]" "e[113]";
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "6ED58BA4-449E-029D-4D0D-348F36830C58";
	setAttr ".uopa" yes;
	setAttr -s 6 ".uvtk";
	setAttr ".uvtk[36]" -type "float2" 1.6046913 0 ;
	setAttr ".uvtk[65]" -type "float2" 1.6046911 0 ;
	setAttr ".uvtk[107]" -type "float2" 1.6046913 0 ;
	setAttr ".uvtk[109]" -type "float2" 1.6046911 0 ;
	setAttr ".uvtk[113]" -type "float2" 1.6046911 0 ;
	setAttr ".uvtk[126]" -type "float2" 1.6046911 0 ;
createNode polyMapCut -n "polyMapCut6";
	rename -uid "4F38730A-4F31-06EA-A6F3-819CD25E7227";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[95:98]";
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "E7117851-4A62-35B4-4CBA-308BA969480B";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[63]" -type "float2" 1.2291251 0 ;
	setAttr ".uvtk[103]" -type "float2" 1.2291251 0 ;
	setAttr ".uvtk[105]" -type "float2" 1.2291251 0 ;
	setAttr ".uvtk[125]" -type "float2" 1.2291251 0 ;
createNode polyMapCut -n "polyMapCut7";
	rename -uid "8C192E38-454B-6FCA-BD52-63B526BC6A87";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[98]" "e[102]" "e[105]" "e[109]" "e[112]" "e[114]";
createNode polyTweakUV -n "polyTweakUV6";
	rename -uid "3AC777FB-4CF3-1A38-3D29-CD90ACDB200F";
	setAttr ".uopa" yes;
	setAttr -s 153 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[1]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[4]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[5]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[6]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[11]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[12]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[13]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[14]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[15]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[16]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[17]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[18]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[19]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[20]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[21]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[22]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[23]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[24]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[25]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[27]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[28]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[29]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[30]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[31]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[33]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[34]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[37]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[38]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[39]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[40]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[41]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[42]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[43]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[44]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[45]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[46]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[47]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[48]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[49]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[50]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[59]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[61]" -type "float2" 1.2279544 0 ;
	setAttr ".uvtk[62]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[63]" -type "float2" 0 -0.072232589 ;
	setAttr ".uvtk[64]" -type "float2" -0.27966982 -0.072232589 ;
	setAttr ".uvtk[67]" -type "float2" 1.2279543 0 ;
	setAttr ".uvtk[68]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[69]" -type "float2" 1.2632675 0 ;
	setAttr ".uvtk[70]" -type "float2" 1.2279543 0 ;
	setAttr ".uvtk[72]" -type "float2" 1.2632675 0 ;
	setAttr ".uvtk[75]" -type "float2" 1.2632675 0 ;
	setAttr ".uvtk[76]" -type "float2" 1.2632675 0 ;
	setAttr ".uvtk[78]" -type "float2" 1.2279543 0 ;
	setAttr ".uvtk[79]" -type "float2" 1.2632675 0 ;
	setAttr ".uvtk[80]" -type "float2" 1.2279544 0 ;
	setAttr ".uvtk[82]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[83]" -type "float2" 1.2279543 0 ;
	setAttr ".uvtk[84]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[85]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[86]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[87]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[88]" -type "float2" 1.2279541 0 ;
	setAttr ".uvtk[89]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[90]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[91]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[92]" -type "float2" 1.2279541 0 ;
	setAttr ".uvtk[93]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[94]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[95]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[96]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[97]" -type "float2" 1.2279541 0 ;
	setAttr ".uvtk[98]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[99]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[100]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[101]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[104]" -type "float2" 1.2632675 0 ;
	setAttr ".uvtk[108]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[110]" -type "float2" -0.27966979 0 ;
	setAttr ".uvtk[111]" -type "float2" -0.27966979 0 ;
	setAttr ".uvtk[112]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[114]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[115]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[118]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[119]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[120]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[123]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[124]" -type "float2" -0.27966979 -0.072232589 ;
	setAttr ".uvtk[125]" -type "float2" 0 -0.072232589 ;
	setAttr ".uvtk[127]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[128]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[131]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[132]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[133]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[136]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[139]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[144]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[145]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[150]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[151]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[162]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[163]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[165]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[166]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[167]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[168]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[169]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[170]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[171]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[172]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[173]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[174]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[175]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[176]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[177]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[178]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[179]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[180]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[181]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[182]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[183]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[184]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[185]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[186]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[187]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[188]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[189]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[190]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[191]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[192]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[195]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[196]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[197]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[198]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[199]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[202]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[203]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[205]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[206]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[207]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[208]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[209]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[210]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[212]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[213]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[214]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[215]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[218]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[222]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[224]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[225]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[226]" -type "float2" -0.27966982 0 ;
	setAttr ".uvtk[229]" -type "float2" -0.27966982 0 ;
createNode polyMapCut -n "polyMapCut8";
	rename -uid "39ECEBEC-419C-5DA7-F764-30A2F15806D2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[0:41]" "e[43:52]" "e[55]" "e[57:58]" "e[61]" "e[63:64]" "e[66:86]" "e[88:94]" "e[104]" "e[107]";
createNode polyTweakUV -n "polyTweakUV7";
	rename -uid "4200BEE6-4C0C-23FD-990C-A5BE73361E2A";
	setAttr ".uopa" yes;
	setAttr -s 180 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[1]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[2]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[3]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[4]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[5]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[6]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[7]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[8]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[9]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[10]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[11]" -type "float2" 0.27833629 0.87782985 ;
	setAttr ".uvtk[12]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[13]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[14]" -type "float2" 0.27833629 0.87782985 ;
	setAttr ".uvtk[15]" -type "float2" 0.27833629 0.87782985 ;
	setAttr ".uvtk[16]" -type "float2" 0.27833629 0.87782985 ;
	setAttr ".uvtk[17]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[18]" -type "float2" 0.27833629 0.87782985 ;
	setAttr ".uvtk[19]" -type "float2" 0.27833629 0.87782985 ;
	setAttr ".uvtk[20]" -type "float2" 0.27833629 0.87782985 ;
	setAttr ".uvtk[21]" -type "float2" 0.27833629 0.87782985 ;
	setAttr ".uvtk[22]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[23]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[24]" -type "float2" 0.27833626 0.87782985 ;
	setAttr ".uvtk[25]" -type "float2" 0.27833626 0.87782979 ;
	setAttr ".uvtk[26]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[27]" -type "float2" 0.27833629 0.87782979 ;
	setAttr ".uvtk[30]" -type "float2" 0.27833626 0.87782991 ;
	setAttr ".uvtk[31]" -type "float2" 0.27833626 0.87782985 ;
	setAttr ".uvtk[32]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[33]" -type "float2" 0.27833626 0.87782991 ;
	setAttr ".uvtk[34]" -type "float2" 0.27833626 0.87782985 ;
	setAttr ".uvtk[35]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[37]" -type "float2" 0.27833629 0.87782985 ;
	setAttr ".uvtk[38]" -type "float2" 0.27833629 0.87782985 ;
	setAttr ".uvtk[39]" -type "float2" 0.27833626 0.87782985 ;
	setAttr ".uvtk[45]" -type "float2" 0.27833626 0.87782979 ;
	setAttr ".uvtk[47]" -type "float2" 0.27833629 0.87782985 ;
	setAttr ".uvtk[48]" -type "float2" 0.27833629 0.87782985 ;
	setAttr ".uvtk[49]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[50]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[51]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[52]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[53]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[54]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[55]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[56]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[57]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[58]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[59]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[62]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[85]" -type "float2" 0.27833626 0.87782991 ;
	setAttr ".uvtk[86]" -type "float2" 0.27833626 0.87782991 ;
	setAttr ".uvtk[90]" -type "float2" 0.27833629 0.87782979 ;
	setAttr ".uvtk[94]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[95]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[99]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[100]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[114]" -type "float2" 0.27833626 0.87782991 ;
	setAttr ".uvtk[115]" -type "float2" 0.27833626 0.87782991 ;
	setAttr ".uvtk[116]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[117]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[118]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[119]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[120]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[121]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[122]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[123]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[127]" -type "float2" 0.27833629 0.87782985 ;
	setAttr ".uvtk[128]" -type "float2" 0.27833629 0.87782985 ;
	setAttr ".uvtk[129]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[130]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[131]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[132]" -type "float2" 0.27833629 0.87782985 ;
	setAttr ".uvtk[133]" -type "float2" 0.27833629 0.87782985 ;
	setAttr ".uvtk[134]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[135]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[136]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[137]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[138]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[139]" -type "float2" 0.27833626 0.87782991 ;
	setAttr ".uvtk[140]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[141]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[142]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[143]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[144]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[145]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[146]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[147]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[148]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[149]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[150]" -type "float2" 0.27833626 0.87782991 ;
	setAttr ".uvtk[151]" -type "float2" 0.27833626 0.87782991 ;
	setAttr ".uvtk[152]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[153]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[154]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[155]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[156]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[157]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[158]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[159]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[160]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[161]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[162]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[163]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[164]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[165]" -type "float2" 0.27833626 0.87782985 ;
	setAttr ".uvtk[166]" -type "float2" 0.27833626 0.87782985 ;
	setAttr ".uvtk[167]" -type "float2" 0.27833626 0.87782985 ;
	setAttr ".uvtk[168]" -type "float2" 0.27833626 0.87782985 ;
	setAttr ".uvtk[169]" -type "float2" 0.27833626 0.87782985 ;
	setAttr ".uvtk[170]" -type "float2" 0.27833626 0.87782985 ;
	setAttr ".uvtk[171]" -type "float2" 0.27833626 0.87782985 ;
	setAttr ".uvtk[172]" -type "float2" 0.27833629 0.87782985 ;
	setAttr ".uvtk[173]" -type "float2" 0.27833629 0.87782985 ;
	setAttr ".uvtk[174]" -type "float2" 0.27833629 0.87782985 ;
	setAttr ".uvtk[175]" -type "float2" 0.27833629 0.87782985 ;
	setAttr ".uvtk[176]" -type "float2" 0.27833629 0.87782985 ;
	setAttr ".uvtk[177]" -type "float2" 0.27833629 0.87782985 ;
	setAttr ".uvtk[178]" -type "float2" 0.27833629 0.87782985 ;
	setAttr ".uvtk[179]" -type "float2" 0.27833629 0.87782979 ;
	setAttr ".uvtk[180]" -type "float2" 0.27833629 0.87782979 ;
	setAttr ".uvtk[181]" -type "float2" 0.27833626 0.87782979 ;
	setAttr ".uvtk[182]" -type "float2" 0.27833626 0.87782979 ;
	setAttr ".uvtk[183]" -type "float2" 0.27833629 0.87782985 ;
	setAttr ".uvtk[184]" -type "float2" 0.27833629 0.87782985 ;
	setAttr ".uvtk[185]" -type "float2" 0.27833629 0.87782985 ;
	setAttr ".uvtk[186]" -type "float2" 0.27833629 0.87782985 ;
	setAttr ".uvtk[187]" -type "float2" 0.27833629 0.87782985 ;
	setAttr ".uvtk[188]" -type "float2" 0.27833626 0.87782985 ;
	setAttr ".uvtk[189]" -type "float2" 0.27833629 0.87782985 ;
	setAttr ".uvtk[190]" -type "float2" 0.27833629 0.87782985 ;
	setAttr ".uvtk[191]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[192]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[193]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[194]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[195]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[196]" -type "float2" 0.27833629 0.87782985 ;
	setAttr ".uvtk[197]" -type "float2" 0.27833629 0.87782985 ;
	setAttr ".uvtk[198]" -type "float2" 0.27833629 0.87782985 ;
	setAttr ".uvtk[199]" -type "float2" 0.27833629 0.87782985 ;
	setAttr ".uvtk[200]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[201]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[202]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[203]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[204]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[205]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[206]" -type "float2" 0.27833629 0.87782985 ;
	setAttr ".uvtk[207]" -type "float2" 0.27833629 0.87782985 ;
	setAttr ".uvtk[208]" -type "float2" 0.27833629 0.87782985 ;
	setAttr ".uvtk[209]" -type "float2" 0.27833629 0.87782985 ;
	setAttr ".uvtk[210]" -type "float2" 0.27833629 0.87782985 ;
	setAttr ".uvtk[211]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[212]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[213]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[214]" -type "float2" 0.27833629 0.87782985 ;
	setAttr ".uvtk[215]" -type "float2" 0.27833629 0.87782985 ;
	setAttr ".uvtk[216]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[217]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[218]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[219]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[220]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[221]" -type "float2" 0.27833632 0.87782991 ;
	setAttr ".uvtk[222]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[223]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[224]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[225]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[226]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[227]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[228]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[229]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[230]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[231]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[232]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[233]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[234]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[235]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[236]" -type "float2" 0.27833629 0.87782991 ;
	setAttr ".uvtk[237]" -type "float2" 0.27833629 0.87782991 ;
createNode polyMapCut -n "polyMapCut9";
	rename -uid "80E85309-4CB5-C4A7-8D8F-A8B713BBDE08";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[95]" "e[102:103]" "e[109]";
createNode polyTweakUV -n "polyTweakUV8";
	rename -uid "9390F3F5-4748-AB44-E2C9-BFB589371E35";
	setAttr ".uopa" yes;
	setAttr -s 12 ".uvtk";
	setAttr ".uvtk[63]" -type "float2" -0.088961512 0 ;
	setAttr ".uvtk[64]" -type "float2" -0.088961542 0 ;
	setAttr ".uvtk[68]" -type "float2" -0.088961542 0 ;
	setAttr ".uvtk[69]" -type "float2" -0.088961512 0 ;
	setAttr ".uvtk[72]" -type "float2" -0.088961571 0 ;
	setAttr ".uvtk[76]" -type "float2" -0.088961631 0 ;
	setAttr ".uvtk[108]" -type "float2" -0.088961557 0 ;
	setAttr ".uvtk[110]" -type "float2" -0.088961512 0 ;
	setAttr ".uvtk[111]" -type "float2" -0.088961512 0 ;
	setAttr ".uvtk[112]" -type "float2" -0.088961542 0 ;
	setAttr ".uvtk[124]" -type "float2" -0.088961512 0 ;
	setAttr ".uvtk[125]" -type "float2" -0.088961512 0 ;
createNode polyMapCut -n "polyMapCut10";
	rename -uid "C7C16CA6-44A2-F05E-C3C2-3BAC8C6BB137";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[95]" "e[102:103]" "e[109]";
createNode polyTweakUV -n "polyTweakUV9";
	rename -uid "57954C61-423F-C1F4-2283-A1AEF5020753";
	setAttr ".uopa" yes;
	setAttr -s 238 ".uvtk[0:237]" -type "float2" -0.094185203 0 0.34014714
		 0 0.03125 0 0.031350255 0 0.89680678 0 -0.53492135 0 0.030408531 0 -0.020515442 0
		 0 0 -0.031148255 0 -0.03125 0 0.24805203 0 0.18861812 0 -0.086054295 0 -0.018346816
		 0 -0.29847723 0 -0.17788357 0 -0.022047341 0 -0.54531157 0 0.041024089 0 -0.20817061
		 0 -0.69219643 0 -0.0021037459 0 -0.018289745 0 -0.28876752 0 0.42322993 0 -0.03125
		 0 -0.52090335 0 0.21186867 0 0.64523876 0 -0.0983558 0 -0.70857954 0 0 0 0.094185293
		 0 0.28989804 0 -0.03125 0 0.068034887 0 -0.031463981 0 -0.37480912 0 0.09438622 0
		 0.26116562 0 0.79397613 0 -0.13161591 0 -0.26122418 0 -0.35494637 0 -0.57698047 0
		 -0.12685452 0 0.53785199 0 0.52275997 0 -0.094185174 0 0.30868894 0 0.03125 0 0.03146857
		 0 0 0 0 0 -0.03125 0 -0.031247735 0 0 0 0.03125 0 0.37163949 0 0.15199018 0 0.20158911
		 0 -0.094185293 0 -0.098282695 0 0.54273564 0 -0.52547598 0 -0.79438341 0 0.22077024
		 0 0.4121103 0 -1.71023226 0 0.22589684 0 -0.15199018 0 -1.12672436 0 0.39656371 0
		 0.22989744 0 1.81710565 0 -0.25975454 0 -0.22321463 0 0.19942868 0 0.94253814 0 0.16431439
		 0 0.22321475 0 0.32314882 0 -0.17281199 0 -0.30657861 0 -0.42322978 0 -0.013545632
		 0 0.48008901 0 -0.39830613 0 -0.64372057 0 0.47930703 0 0.17226756 0 -0.23293078
		 0 -0.24408887 0 -0.018346816 0 0.52090311 0 0.25970593 0 -0.20795047 0 -0.91911864
		 0 0.013545632 0 0.018346846 0 0.16383609 0 0.1465632 0 -0.18724418 0 0.83080387 0
		 0.26286149 0 0.021359026 0 -0.25275612 0 0.16211037 0 0.48422039 0 -0.21357793 0
		 -0.40363297 0 0.54273564 0 0.46788871 0 0.70611167 0 -0.70857948 0 0 0 0.03125 0
		 -0.58830327 0 0.70813501 0 -0.69219637 0 0 0 0.03125 0 -0.038052499 0 -0.21357793
		 0 0.35182297 0 -0.24191201 0 0.3294062 0 -0.094185293 0 0.03125 0 0 0 0.52275962
		 0 0.031012595 0 -0.094185174 0 0.03125 0 0 0 0.53785199 0 0.031247675 0 0 0 -0.49765036
		 0 0 0 -0.03125 0 -0.031024456 0 -0.03125 0 0.094185174 0 -0.54605019 0 0 0 0.031252265
		 0 0.03125 0 0 0 -0.33161381 0 -0.6761694 0 0 0 -0.031252265 0 0 0 -0.03125 0 0 0
		 0.03125 0 -0.03125 0 -0.03146857 0 0 0 0.031024396 0 -0.32012284 0 -0.10101193 0
		 -0.03125 0 -0.53142971 0 0.094185293 0 0.70611167 0 -0.031681299 0 -0.013545632 0
		 0.57698035 0 -0.22347462 0 -0.54605025 0 0.094185174 0 0.70813501 0 -0.0097742081
		 0 0.018346846 0 0.013545632 0 0.032132685 0 0.24182811 0 -0.34990573 0 0.65803599
		 0 -0.39582956 0 -0.0097741485 0 -0.73130846 0 0.70682418 0 0.26481986 0 -0.47930688
		 0 0.70265806 0 -0.020389378 0 0.89538354 0 0.70682418 0 -0.73130822 0 0 0 0.03125
		 0 0.040910751 0 0.07388106 0 0.38227677 0 -0.094185203 0 0.56123531 0 -0.03125 0
		 0 0 -0.32564676 0 -0.15668306 0 -0.041436553 0 -0.34380549 0 0.094185174 0 -0.021475703
		 0 -0.14266723 0 -0.061658531 0 0.075319737 0 -0.03125 0 0.094185174 0 -0.54531163
		 0 -0.53492135 0 0.086018085 0 0.03125 0 0 0 0.56123418 0 -0.031350255 0 0 0 -0.00095361471
		 0 0.166464 0 -0.02012229 0 0.074634612 0 -0.017231911 0 -0.043384612 0 0.041984499
		 0 0.030855775 0 0.010608494 0 0.030703187 0 -0.020515442 0 -0.03125 0 0 0 0 0 0.031148255
		 0 0 0 0.03125 0;
createNode polyMapDel -n "polyMapDel1";
	rename -uid "CBE3A881-4E7F-F6C2-1616-72B023892E84";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:52]";
createNode polyPlanarProj -n "polyPlanarProj1";
	rename -uid "08D8DF90-43AE-6593-A1E5-ED90CC68240F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:52]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.63980172407257285 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0.62417757511138916 18.146785736083984 -3.0955748558044434 ;
	setAttr ".ro" -type "double3" -29.138352832253254 -11.400000280583694 -7.7652688685053663e-09 ;
	setAttr ".ps" -type "double2" 15.389638845224766 27.649293083434898 ;
	setAttr ".per" yes;
	setAttr ".cam" -type "matrix" 1.9060828685760498 0.20653991401195526 0.17264656722545624 0.17264311015605927
		 2.4275501047165218e-17 1.8744316101074219 -0.48692989349365234 -0.48692014813423157
		 0.38433372974395752 -1.0243238210678101 -0.85623151063919067 -0.85621440410614014
		 4.5567436218261719 -38.848899841308594 43.229999542236328 43.429134368896484;
	setAttr ".prgt" 873;
	setAttr ".ptop" 791;
createNode polyMapCut -n "polyMapCut11";
	rename -uid "EDD5E6DD-4429-F36C-E8A0-039185AA3B3A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[54]" "e[96]" "e[101]" "e[108]" "e[111]" "e[113]";
createNode polyTweakUV -n "polyTweakUV10";
	rename -uid "EFC75C2F-4872-E1C0-1C14-51A5E494F662";
	setAttr ".uopa" yes;
	setAttr -s 12 ".uvtk";
	setAttr ".uvtk[34]" -type "float2" 0.0060774488 0 ;
	setAttr ".uvtk[35]" -type "float2" 0.0060774488 0 ;
	setAttr ".uvtk[62]" -type "float2" 0.0060774488 0 ;
	setAttr ".uvtk[63]" -type "float2" 0.0060774488 0 ;
	setAttr ".uvtk[65]" -type "float2" 0.0060774507 0 ;
	setAttr ".uvtk[67]" -type "float2" 0.0060774507 0 ;
	setAttr ".uvtk[69]" -type "float2" 0.0060774488 0 ;
	setAttr ".uvtk[70]" -type "float2" 0.0060774488 0 ;
	setAttr ".uvtk[71]" -type "float2" 0.0060774488 0 ;
	setAttr ".uvtk[72]" -type "float2" 0.0060774507 0 ;
	setAttr ".uvtk[73]" -type "float2" 0.0060774507 0 ;
	setAttr ".uvtk[74]" -type "float2" 0.0060774488 0 ;
createNode polyMapCut -n "polyMapCut12";
	rename -uid "03FC8EE7-4931-C813-9AE6-BAB821C2C1DB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[54]" "e[96]" "e[101]" "e[108]" "e[111]" "e[113]";
createNode polyTweakUV -n "polyTweakUV11";
	rename -uid "AF6C50C2-4FC1-51D2-5E89-6188A8F3724E";
	setAttr ".uopa" yes;
	setAttr -s 75 ".uvtk[0:74]" -type "float2" 0.23499475 0 0.23499475 0
		 0.23499474 0 0.23499475 0 0.23499475 0 0.23499475 0 0.23499475 0 0.23499475 0 0.23499475
		 0 0.23499474 0 0.23499475 0 0.23499477 0 0.23499475 0 0.23499477 0 0.23499477 0 0.23499475
		 0 0.23499475 0 0.23499474 0 0.23499475 0 0.23499475 0 0.23499475 0 0.23499474 0 0.23499477
		 0 0.23499477 0 0.23499475 0 0.23499475 0 0.23499475 0 0.23499475 0 0.23499475 0 0.23499478
		 0 0.23499475 0 0.23499475 0 0.23499478 0 0.23499478 0 0.26943362 0 0.034438882 0
		 0.23499478 0 0.23499475 0 0.23499475 0 0.23499478 0 0.23499475 0 0.23499475 0 0.23499475
		 0 0.23499477 0 0.23499475 0 0.23499474 0 0.23499475 0 0.23499475 0 0.23499475 0 0.23499478
		 0 0.23499478 0 0.23499472 0 0.23499472 0 0.23499475 0 0.23499475 0 0.23499472 0 0.23499475
		 0 0.23499478 0 0.23499472 0 0.23499478 0 0.23499475 0 0.23499475 0 0.26943365 0 0.034438882
		 0 0.23499475 0 0.26943365 0 0.23499478 0 0.26943365 0 0.23499475 0 0.26943362 0 0.034438882
		 0 0.26943365 0 0.034438886 0 0.034438882 0 0.034438886 0;
createNode polyMapCut -n "polyMapCut13";
	rename -uid "357B07C4-48FF-21AE-FA65-AF8A470732CF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[54]" "e[100]" "e[113]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "086C1B3B-4830-2E02-E7C6-9AB54C3AC938";
	setAttr ".dc" -type "componentList" 1 "vtx[63]";
createNode polyMapDel -n "polyMapDel2";
	rename -uid "32FCB906-4055-119E-3DE0-F0B997FCD4E0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:52]";
createNode polyPlanarProj -n "polyPlanarProj2";
	rename -uid "E66E7C08-4AA1-E604-A448-E9874CE14CDA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:52]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.63980172407257285 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 1.0324621200561523 19.999954223632812 -1.0772335529327393 ;
	setAttr ".ro" -type "double3" -19.538352582751607 -42.999999244507187 1.4850549067022207e-07 ;
	setAttr ".ps" -type "double2" 15.527329667031996 27.012876996344517 ;
	setAttr ".per" yes;
	setAttr ".cam" -type "matrix" 1.4220765829086304 0.48947662115097046 0.64274024963378906 0.64272743463516235
		 1.0793834814579135e-16 2.0224454402923584 -0.33444446325302124 -0.33443775773048401
		 1.3261079788208008 -0.52489942312240601 -0.68925458192825317 -0.68924075365066528
		 6.2720236778259277 -50.071609497070312 52.371448516845703 52.570396423339844;
	setAttr ".prgt" 873;
	setAttr ".ptop" 791;
createNode polyMapCut -n "polyMapCut14";
	rename -uid "AD0E367A-4453-71D5-CD76-C3A84AC5FD9D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[54]" "e[96]" "e[100]" "e[107]" "e[110]" "e[112]";
createNode polyTweakUV -n "polyTweakUV12";
	rename -uid "5B1B96BD-4C83-511E-0ECC-929C6293E101";
	setAttr ".uopa" yes;
	setAttr -s 74 ".uvtk[0:73]" -type "float2" 0.2092776 0 0.20927761 0
		 0.20927759 0 0.2092776 0 0.2092776 0 0.20927759 0 0.20927761 0 0.20927761 0 0.20927761
		 0 0.20927761 0 0.20927761 0 0.20927759 0 0.20927759 0 0.20927759 0 0.2092776 0 0.2092776
		 0 0.20927759 0 0.20927761 0 0.20927759 0 0.2092776 0 0.2092776 0 0.20927759 0 0.2092776
		 0 0.2092776 0 0.2092776 0 0.2092776 0 0.2092776 0 0.2092776 0 0.2092776 0 0.20927757
		 0 0.2092776 0 0.20927757 0 0.20927763 0 0.20927757 0 0.20927757 0 -0.46850452 0 0.2092776
		 0 0.20927763 0 0.2092776 0 0.20927763 0 0.20927761 0 0.2092776 0 0.2092776 0 0.20927757
		 0 0.20927757 0 0.20927763 0 0.2092776 0 0.20927763 0 0.20927763 0 0.2092776 0 0.20927757
		 0 0.2092776 0 0.2092776 0 0.20927757 0 0.2092776 0 0.20927763 0 0.2092776 0 0.20927757
		 0 0.20927763 0 0.20927763 0 0.20927763 0 0.2092776 0 -0.46850452 0 0.20927763 0 0.2092776
		 0 0.2092776 0 0.2092776 0 0.20927763 0 0.20927757 0 -0.46850452 0 0.2092776 0 -0.46850452
		 0 -0.46850452 0 -0.46850452 0;
createNode polyMapCut -n "polyMapCut15";
	rename -uid "F2794B9E-48BA-5CFF-DA4C-3286C120F61F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[54]" "e[105]" "e[112]";
createNode polyTweakUV -n "polyTweakUV13";
	rename -uid "D19E49D3-470F-E302-76BE-CFA09345F801";
	setAttr ".uopa" yes;
	setAttr -s 6 ".uvtk";
	setAttr ".uvtk[35]" -type "float2" -0.24645309 0 ;
	setAttr ".uvtk[62]" -type "float2" -0.12036008 0 ;
	setAttr ".uvtk[69]" -type "float2" -0.14739151 0 ;
	setAttr ".uvtk[71]" -type "float2" -0.053002849 0 ;
	setAttr ".uvtk[72]" -type "float2" -0.030597225 0 ;
	setAttr ".uvtk[73]" -type "float2" -0.19238402 0 ;
createNode polyMapCut -n "polyMapCut16";
	rename -uid "708F430C-4CF3-FEA6-B5F4-EF876C21FA07";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[98]" "e[101]" "e[104]" "e[108]" "e[111]" "e[113]";
createNode polyTweakUV -n "polyTweakUV14";
	rename -uid "CDA89A0F-417E-5CAD-F792-648D77C92A4C";
	setAttr ".uopa" yes;
	setAttr -s 6 ".uvtk";
	setAttr ".uvtk[37]" -type "float2" -1.2789261 0.081447892 ;
	setAttr ".uvtk[60]" -type "float2" -0.77655041 0.081447922 ;
	setAttr ".uvtk[65]" -type "float2" -0.90215713 0.081447922 ;
	setAttr ".uvtk[67]" -type "float2" -0.78601962 0.081447922 ;
	setAttr ".uvtk[77]" -type "float2" -1.3066361 0.081447892 ;
	setAttr ".uvtk[79]" -type "float2" -0.6454469 0.081447922 ;
createNode polyMapCut -n "polyMapCut17";
	rename -uid "85E0A9CD-4EBE-C3E7-C378-7BA94E333AE3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[42]" "e[53:54]" "e[60]" "e[87]" "e[95:102]" "e[104:105]" "e[107:113]";
createNode polyTweakUV -n "polyTweakUV15";
	rename -uid "47DD6EC8-4AE0-A340-DDBD-65B82EB54637";
	setAttr ".uopa" yes;
	setAttr -s 44 ".uvtk";
	setAttr ".uvtk[34]" -type "float2" 0.63405412 0 ;
	setAttr ".uvtk[35]" -type "float2" -0.014042754 0 ;
	setAttr ".uvtk[36]" -type "float2" 0.92965657 0 ;
	setAttr ".uvtk[37]" -type "float2" -0.014042754 0 ;
	setAttr ".uvtk[38]" -type "float2" -0.014042724 0 ;
	setAttr ".uvtk[39]" -type "float2" -0.014042754 0 ;
	setAttr ".uvtk[40]" -type "float2" -0.014042739 0 ;
	setAttr ".uvtk[41]" -type "float2" -0.014042754 0 ;
	setAttr ".uvtk[60]" -type "float2" -0.014042739 0 ;
	setAttr ".uvtk[61]" -type "float2" 1.2685617 0 ;
	setAttr ".uvtk[62]" -type "float2" -0.014042739 0 ;
	setAttr ".uvtk[63]" -type "float2" 0.7120536 0 ;
	setAttr ".uvtk[64]" -type "float2" 0.77992696 0 ;
	setAttr ".uvtk[65]" -type "float2" -0.014042754 0 ;
	setAttr ".uvtk[66]" -type "float2" 1.6943675 0 ;
	setAttr ".uvtk[67]" -type "float2" -0.014042739 0 ;
	setAttr ".uvtk[68]" -type "float2" 0.67097968 0 ;
	setAttr ".uvtk[69]" -type "float2" -0.014042754 0 ;
	setAttr ".uvtk[70]" -type "float2" 1.0863968 0 ;
	setAttr ".uvtk[71]" -type "float2" -0.014042754 0 ;
	setAttr ".uvtk[72]" -type "float2" -0.014042754 0 ;
	setAttr ".uvtk[73]" -type "float2" -0.014042754 0 ;
	setAttr ".uvtk[74]" -type "float2" 0.66132826 0 ;
	setAttr ".uvtk[75]" -type "float2" 0.24903244 0 ;
	setAttr ".uvtk[76]" -type "float2" 0.74527973 0 ;
	setAttr ".uvtk[77]" -type "float2" -0.014042754 0 ;
	setAttr ".uvtk[78]" -type "float2" 0.57271487 0 ;
	setAttr ".uvtk[79]" -type "float2" -0.014042746 0 ;
	setAttr ".uvtk[80]" -type "float2" 1.2641501 0 ;
	setAttr ".uvtk[81]" -type "float2" 0.67691606 0 ;
	setAttr ".uvtk[82]" -type "float2" 0.53481489 0 ;
	setAttr ".uvtk[83]" -type "float2" 0.60440463 0 ;
	setAttr ".uvtk[84]" -type "float2" 1.0282059 0 ;
	setAttr ".uvtk[85]" -type "float2" 0.67442626 0 ;
	setAttr ".uvtk[86]" -type "float2" 1.5651045 0 ;
	setAttr ".uvtk[87]" -type "float2" 0.82201451 0 ;
	setAttr ".uvtk[88]" -type "float2" 0.52936488 0 ;
	setAttr ".uvtk[89]" -type "float2" 1.1847746 0 ;
	setAttr ".uvtk[90]" -type "float2" 1.3752246 0 ;
	setAttr ".uvtk[91]" -type "float2" 0.81308144 0 ;
	setAttr ".uvtk[92]" -type "float2" 0.69121617 0 ;
	setAttr ".uvtk[93]" -type "float2" 0.58499938 0 ;
	setAttr ".uvtk[94]" -type "float2" 0.66900307 0 ;
	setAttr ".uvtk[95]" -type "float2" 0.77518207 0 ;
createNode polyMapCut -n "polyMapCut18";
	rename -uid "0DBCC21D-4EC6-3A65-3583-05A27AAE7334";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[56]" "e[59]" "e[62]" "e[65]";
createNode polyMapCut -n "polyMapCut19";
	rename -uid "FA8F59F7-4939-1CDE-8855-9794DCC84C06";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[56]" "e[59]" "e[62]" "e[65]";
createNode polyMapCut -n "polyMapCut20";
	rename -uid "70EBCB0B-4D67-989E-69F1-D8957783DD62";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[56]" "e[59]" "e[62]" "e[65]";
createNode polyTweakUV -n "polyTweakUV16";
	rename -uid "F1D4CDAC-4818-2650-9C0C-DF80A171FEBC";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk";
	setAttr ".uvtk[42]" -type "float2" -0.0063190265 -0.063522883 ;
	setAttr ".uvtk[43]" -type "float2" -0.0063190265 -0.063522883 ;
	setAttr ".uvtk[44]" -type "float2" -0.0063190265 -0.063522883 ;
	setAttr ".uvtk[45]" -type "float2" -0.0063190265 -0.063522883 ;
	setAttr ".uvtk[96]" -type "float2" -0.0063190265 -0.063522883 ;
	setAttr ".uvtk[97]" -type "float2" -0.0063190265 -0.063522883 ;
	setAttr ".uvtk[98]" -type "float2" -0.0063190265 -0.063522883 ;
	setAttr ".uvtk[99]" -type "float2" -0.0063190265 -0.063522883 ;
createNode polyMapCut -n "polyMapCut21";
	rename -uid "DA79E9DF-434A-E151-C411-90A683522BDC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[114:117]";
createNode polyTweakUV -n "polyTweakUV17";
	rename -uid "BE8DB749-4A30-EAD1-97CD-92A9D33279BD";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk";
	setAttr ".uvtk[38]" -type "float2" 0.42148876 0.27386558 ;
	setAttr ".uvtk[39]" -type "float2" 0.42148882 0.27386552 ;
	setAttr ".uvtk[40]" -type "float2" 0.42148876 0.27386558 ;
	setAttr ".uvtk[41]" -type "float2" 0.42148876 0.27386552 ;
	setAttr ".uvtk[42]" -type "float2" 0.42148858 0.27386555 ;
	setAttr ".uvtk[43]" -type "float2" 0.42148882 0.27386555 ;
	setAttr ".uvtk[44]" -type "float2" 0.42148876 0.27386555 ;
	setAttr ".uvtk[45]" -type "float2" 0.42148876 0.27386555 ;
	setAttr ".uvtk[100]" -type "float2" 0.42148876 0.27386558 ;
	setAttr ".uvtk[101]" -type "float2" 0.42148876 0.27386555 ;
	setAttr ".uvtk[102]" -type "float2" 0.42148882 0.27386552 ;
	setAttr ".uvtk[103]" -type "float2" 0.42148882 0.27386555 ;
	setAttr ".uvtk[104]" -type "float2" 0.42148876 0.27386558 ;
	setAttr ".uvtk[105]" -type "float2" 0.42148858 0.27386555 ;
	setAttr ".uvtk[106]" -type "float2" 0.42148876 0.27386552 ;
	setAttr ".uvtk[107]" -type "float2" 0.42148876 0.27386555 ;
createNode polyMapCut -n "polyMapCut22";
	rename -uid "49C50DF4-43AA-8035-5639-0481432129D8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[42]" "e[53]" "e[56]" "e[59:60]" "e[62]" "e[65]" "e[99]" "e[114:117]";
createNode polyMapCut -n "polyMapCut23";
	rename -uid "814FDB5D-4574-170C-8C7A-91A1F8C55C31";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[56]";
	setAttr ".uic" yes;
	setAttr ".mr" 0.10000000149011612;
createNode polyMapCut -n "polyMapCut24";
	rename -uid "3A059CD5-4030-9AA9-F51C-2E979E571BF6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[65]";
	setAttr ".uic" yes;
	setAttr ".mr" 0.10000000149011612;
createNode polyMapCut -n "polyMapCut25";
	rename -uid "1B750082-4CC5-9A0C-1076-9F8C65C782D7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[62]";
	setAttr ".uic" yes;
	setAttr ".mr" 0.10000000149011612;
createNode polyMapCut -n "polyMapCut26";
	rename -uid "E0ABB6AD-4F4D-6166-6A35-5DAFCFEFB7DC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[59]";
	setAttr ".uic" yes;
	setAttr ".mr" 0.10000000149011612;
createNode polyMapCut -n "polyMapCut27";
	rename -uid "10AE7C47-49A8-5801-0568-1AA08DA3F3EF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[62]";
	setAttr ".uic" yes;
	setAttr ".mr" 0.10000000149011612;
createNode polyMapCut -n "polyMapCut28";
	rename -uid "558668D2-4AAC-B9F9-2232-79AE3DBFBA15";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[65]";
	setAttr ".uic" yes;
	setAttr ".mr" 0.10000000149011612;
createNode polyMapCut -n "polyMapCut29";
	rename -uid "4711E3CB-4D7E-01A4-6A2C-B7AA8EA1E44D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[65]";
createNode polyTweakUV -n "polyTweakUV18";
	rename -uid "F9A5FF44-4C1F-2B2E-F462-0E88118424C9";
	setAttr ".uopa" yes;
	setAttr -s 24 ".uvtk";
	setAttr ".uvtk[38]" -type "float2" -0.011271252 0.077757388 ;
	setAttr ".uvtk[39]" -type "float2" -0.011271252 0.077757388 ;
	setAttr ".uvtk[40]" -type "float2" -0.011271252 0.077757388 ;
	setAttr ".uvtk[41]" -type "float2" -0.011271252 0.077757388 ;
	setAttr ".uvtk[42]" -type "float2" -0.011271252 0.077757388 ;
	setAttr ".uvtk[43]" -type "float2" -0.011271252 0.077757388 ;
	setAttr ".uvtk[44]" -type "float2" -0.011271252 0.077757388 ;
	setAttr ".uvtk[45]" -type "float2" -0.011271252 0.077757388 ;
	setAttr ".uvtk[92]" -type "float2" -0.011271252 0.077757388 ;
	setAttr ".uvtk[93]" -type "float2" -0.011271252 0.077757418 ;
	setAttr ".uvtk[94]" -type "float2" -0.011271252 0.077757418 ;
	setAttr ".uvtk[95]" -type "float2" -0.011271252 0.077757418 ;
	setAttr ".uvtk[96]" -type "float2" -0.011271252 0.077757329 ;
	setAttr ".uvtk[97]" -type "float2" -0.011271282 0.077757359 ;
	setAttr ".uvtk[98]" -type "float2" -0.011271282 0.077757359 ;
	setAttr ".uvtk[99]" -type "float2" -0.011271282 0.077757359 ;
	setAttr ".uvtk[100]" -type "float2" -0.011271252 0.077757388 ;
	setAttr ".uvtk[101]" -type "float2" -0.011271252 0.077757388 ;
	setAttr ".uvtk[102]" -type "float2" -0.011271252 0.077757388 ;
	setAttr ".uvtk[103]" -type "float2" -0.011271252 0.077757388 ;
	setAttr ".uvtk[104]" -type "float2" -0.011271252 0.077757388 ;
	setAttr ".uvtk[105]" -type "float2" -0.011271252 0.077757388 ;
	setAttr ".uvtk[106]" -type "float2" -0.011271252 0.077757388 ;
	setAttr ".uvtk[107]" -type "float2" -0.011271252 0.077757388 ;
createNode polyMapCut -n "polyMapCut30";
	rename -uid "58FEB731-4DAC-3470-26AF-1B83F4149C76";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[0:3]" "e[8:11]" "e[22:23]" "e[29]";
createNode polyMapCut -n "polyMapCut31";
	rename -uid "24642E38-40DA-A59E-F7C2-4DB2D61287A9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[0:3]" "e[8:12]" "e[22:23]" "e[29]";
createNode polyMapCut -n "polyMapCut32";
	rename -uid "1262C2D9-4482-B884-4A8D-E3A276B80D5A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[0]" "e[8]" "e[22]" "e[29]";
createNode polyTweakUV -n "polyTweakUV19";
	rename -uid "BF3FEDA7-4047-20FD-6D0B-0FA78F47AE18";
	setAttr ".uopa" yes;
	setAttr -s 20 ".uvtk";
	setAttr ".uvtk[2]" -type "float2" -0.22397543 0 ;
	setAttr ".uvtk[3]" -type "float2" -0.1957638 0 ;
	setAttr ".uvtk[8]" -type "float2" -0.26710096 0 ;
	setAttr ".uvtk[9]" -type "float2" -0.25542301 0 ;
	setAttr ".uvtk[10]" -type "float2" -0.30188629 0 ;
	setAttr ".uvtk[108]" -type "float2" -0.32422101 0 ;
	setAttr ".uvtk[109]" -type "float2" -0.2643865 0 ;
	setAttr ".uvtk[110]" -type "float2" -0.23817262 0 ;
	setAttr ".uvtk[112]" -type "float2" -0.31379265 0 ;
	setAttr ".uvtk[113]" -type "float2" -0.2808682 0 ;
	setAttr ".uvtk[114]" -type "float2" -0.24630859 0 ;
	setAttr ".uvtk[115]" -type "float2" -0.30272925 0 ;
	setAttr ".uvtk[116]" -type "float2" -0.25499931 0 ;
	setAttr ".uvtk[117]" -type "float2" -0.26255351 0 ;
	setAttr ".uvtk[118]" -type "float2" -0.22946104 0 ;
	setAttr ".uvtk[119]" -type "float2" -0.27182239 0 ;
	setAttr ".uvtk[120]" -type "float2" -0.24743024 0 ;
	setAttr ".uvtk[121]" -type "float2" -0.20692025 0 ;
	setAttr ".uvtk[122]" -type "float2" -0.24254963 0 ;
	setAttr ".uvtk[123]" -type "float2" -0.24594167 0 ;
createNode polyMapCut -n "polyMapCut33";
	rename -uid "183F326D-4631-E6AF-3626-EA9E36D60459";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[49]" "e[70]" "e[74]" "e[88]";
createNode polyTweakUV -n "polyTweakUV20";
	rename -uid "E04AC34B-40D9-B778-4E8D-6B8AB91F9D9E";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk";
	setAttr ".uvtk[29]" -type "float2" -0.62825948 0.12033229 ;
	setAttr ".uvtk[30]" -type "float2" -0.62825948 0.12033229 ;
	setAttr ".uvtk[50]" -type "float2" -0.62825948 0.12033229 ;
	setAttr ".uvtk[51]" -type "float2" -0.62825948 0.12033229 ;
	setAttr ".uvtk[52]" -type "float2" -0.62825948 0.12033229 ;
	setAttr ".uvtk[53]" -type "float2" -0.62825948 0.12033229 ;
	setAttr ".uvtk[125]" -type "float2" -0.62825948 0.12033229 ;
	setAttr ".uvtk[126]" -type "float2" -0.62825948 0.12033229 ;
createNode polyMapCut -n "polyMapCut34";
	rename -uid "9D96BE53-4D36-BEA2-B47B-5AB792456174";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[45]" "e[85]" "e[90]" "e[92]";
createNode polyTweakUV -n "polyTweakUV21";
	rename -uid "C7304B76-4E9C-AB5F-B4AB-E69BE08CC929";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk";
	setAttr ".uvtk[25]" -type "float2" -0.59202737 0 ;
	setAttr ".uvtk[54]" -type "float2" -0.59202737 0 ;
	setAttr ".uvtk[55]" -type "float2" -0.59202737 0 ;
	setAttr ".uvtk[56]" -type "float2" -0.59202737 0 ;
	setAttr ".uvtk[57]" -type "float2" -0.59202737 0 ;
	setAttr ".uvtk[128]" -type "float2" -0.59202737 0 ;
	setAttr ".uvtk[129]" -type "float2" -0.59202737 0 ;
	setAttr ".uvtk[130]" -type "float2" -0.59202737 0 ;
createNode polyMapCut -n "polyMapCut35";
	rename -uid "7F2AD7D0-4798-868D-3C52-85B0B5E0B316";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[4]" "e[13]" "e[20]" "e[30]";
createNode polyTweakUV -n "polyTweakUV22";
	rename -uid "F13C7A0D-4CC5-D80D-36B8-03BF6A03D4AD";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk";
	setAttr ".uvtk[6]" -type "float2" -0.28088036 0.073054105 ;
	setAttr ".uvtk[7]" -type "float2" -0.28088036 0.073054105 ;
	setAttr ".uvtk[12]" -type "float2" -0.28088036 0.073054105 ;
	setAttr ".uvtk[13]" -type "float2" -0.28088036 0.073054105 ;
	setAttr ".uvtk[132]" -type "float2" -0.28088036 0.073054105 ;
	setAttr ".uvtk[133]" -type "float2" -0.28088036 0.073054105 ;
	setAttr ".uvtk[134]" -type "float2" -0.28088036 0.073054105 ;
	setAttr ".uvtk[135]" -type "float2" -0.28088036 0.073054105 ;
createNode polyMapCut -n "polyMapCut36";
	rename -uid "21E85C4C-4040-8648-D2C5-728533CEAD73";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[0]" "e[4]" "e[8]" "e[13]" "e[20]" "e[22]" "e[29:30]" "e[45]" "e[49]" "e[56]" "e[59]" "e[62]" "e[65]" "e[70]" "e[74]" "e[85]" "e[88]" "e[90]" "e[92]";
createNode polyMapCut -n "polyMapCut37";
	rename -uid "7750D829-4B7C-4ABB-A671-4081AFAA7A81";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[0]" "e[4]" "e[8]" "e[13]" "e[20]" "e[22]" "e[29:30]" "e[45]" "e[49]" "e[56]" "e[59]" "e[62]" "e[65]" "e[70]" "e[74]" "e[85]" "e[88]" "e[90]" "e[92]";
createNode polyMapCut -n "polyMapCut38";
	rename -uid "3CDFD8E3-4886-74FC-A22F-4FB9B3A8992C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 17 "e[0]" "e[4]" "e[8]" "e[13]" "e[18:20]" "e[22]" "e[24:41]" "e[43:52]" "e[55:59]" "e[61:70]" "e[74]" "e[85]" "e[88]" "e[90]" "e[92:94]" "e[103]" "e[106]";
createNode polyTweakUV -n "polyTweakUV23";
	rename -uid "CE810CE5-4EC7-004D-99B1-5D9BE86B93ED";
	setAttr ".uopa" yes;
	setAttr -s 156 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[1]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[4]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[5]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[11]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[14]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[15]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[16]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[17]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[18]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[19]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[20]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[21]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[22]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[23]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[24]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[26]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[27]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[28]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[31]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[32]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[33]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[34]" -type "float2" -1.9385048 0 ;
	setAttr ".uvtk[35]" -type "float2" -0.33454299 0 ;
	setAttr ".uvtk[36]" -type "float2" -2.420517 0 ;
	setAttr ".uvtk[37]" -type "float2" -0.33454299 0 ;
	setAttr ".uvtk[38]" -type "float2" -1.1864858 0 ;
	setAttr ".uvtk[39]" -type "float2" -1.1864858 0 ;
	setAttr ".uvtk[40]" -type "float2" -1.1864858 0 ;
	setAttr ".uvtk[41]" -type "float2" -1.1864858 0 ;
	setAttr ".uvtk[42]" -type "float2" -1.1864858 0 ;
	setAttr ".uvtk[43]" -type "float2" -1.1864858 0 ;
	setAttr ".uvtk[44]" -type "float2" -1.1864858 0 ;
	setAttr ".uvtk[45]" -type "float2" -1.1864858 0 ;
	setAttr ".uvtk[46]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[47]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[48]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[49]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[58]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[59]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[60]" -type "float2" -0.33454299 0 ;
	setAttr ".uvtk[61]" -type "float2" -2.3100047 0 ;
	setAttr ".uvtk[62]" -type "float2" -0.33454299 0 ;
	setAttr ".uvtk[63]" -type "float2" -1.9385048 0 ;
	setAttr ".uvtk[64]" -type "float2" -1.6776347 0 ;
	setAttr ".uvtk[65]" -type "float2" -0.33454296 0 ;
	setAttr ".uvtk[66]" -type "float2" -2.420517 0 ;
	setAttr ".uvtk[67]" -type "float2" -0.33454299 0 ;
	setAttr ".uvtk[68]" -type "float2" -1.8349925 0 ;
	setAttr ".uvtk[69]" -type "float2" -0.33454299 0 ;
	setAttr ".uvtk[70]" -type "float2" -1.8349925 0 ;
	setAttr ".uvtk[71]" -type "float2" -0.33454299 0 ;
	setAttr ".uvtk[72]" -type "float2" -0.33454302 0 ;
	setAttr ".uvtk[73]" -type "float2" -0.33454299 0 ;
	setAttr ".uvtk[74]" -type "float2" -1.8349925 0 ;
	setAttr ".uvtk[75]" -type "float2" -1.8349925 0 ;
	setAttr ".uvtk[76]" -type "float2" -1.9385048 0 ;
	setAttr ".uvtk[77]" -type "float2" -0.33454299 0 ;
	setAttr ".uvtk[78]" -type "float2" -1.6776347 0 ;
	setAttr ".uvtk[79]" -type "float2" -0.33454299 0 ;
	setAttr ".uvtk[80]" -type "float2" -2.3100047 0 ;
	setAttr ".uvtk[81]" -type "float2" -1.8349925 0 ;
	setAttr ".uvtk[82]" -type "float2" -1.8349925 0 ;
	setAttr ".uvtk[83]" -type "float2" -1.9385048 0 ;
	setAttr ".uvtk[84]" -type "float2" -2.420517 0 ;
	setAttr ".uvtk[85]" -type "float2" -1.8349925 0 ;
	setAttr ".uvtk[86]" -type "float2" -2.420517 0 ;
	setAttr ".uvtk[87]" -type "float2" -1.6776347 0 ;
	setAttr ".uvtk[88]" -type "float2" -1.6776347 0 ;
	setAttr ".uvtk[89]" -type "float2" -2.3100047 0 ;
	setAttr ".uvtk[90]" -type "float2" -2.3100047 0 ;
	setAttr ".uvtk[91]" -type "float2" -1.8349925 0 ;
	setAttr ".uvtk[92]" -type "float2" -1.8349925 0 ;
	setAttr ".uvtk[93]" -type "float2" -1.8349925 0 ;
	setAttr ".uvtk[94]" -type "float2" -1.8349925 0 ;
	setAttr ".uvtk[95]" -type "float2" -1.8349925 0 ;
	setAttr ".uvtk[96]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[97]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[98]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[99]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[100]" -type "float2" -1.1864858 0 ;
	setAttr ".uvtk[101]" -type "float2" -1.1864858 0 ;
	setAttr ".uvtk[102]" -type "float2" -1.1864858 0 ;
	setAttr ".uvtk[103]" -type "float2" -1.1864858 0 ;
	setAttr ".uvtk[104]" -type "float2" -1.1864858 0 ;
	setAttr ".uvtk[105]" -type "float2" -1.1864858 0 ;
	setAttr ".uvtk[106]" -type "float2" -1.1864858 0 ;
	setAttr ".uvtk[107]" -type "float2" -1.1864858 0 ;
	setAttr ".uvtk[111]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[124]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[127]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[131]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[136]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[137]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[138]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[139]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[140]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[141]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[142]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[143]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[144]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[145]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[146]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[147]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[148]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[149]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[150]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[151]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[152]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[153]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[154]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[155]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[156]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[157]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[158]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[159]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[160]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[161]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[162]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[163]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[164]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[165]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[166]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[167]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[168]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[169]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[170]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[171]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[172]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[173]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[174]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[175]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[176]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[177]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[178]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[179]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[180]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[181]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[182]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[183]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[184]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[185]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[186]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[187]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[188]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[189]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[190]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[191]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[192]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[193]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[194]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[195]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[196]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[197]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[198]" -type "float2" 0 0.0099992799 ;
	setAttr ".uvtk[199]" -type "float2" 0 0.0099992799 ;
createNode createUVSet -n "createUVSet1";
	rename -uid "A5EBB3EF-4F2B-87B7-5B0A-8B83E2C8B4AC";
	setAttr ".uvs" -type "string" "uvSet";
createNode polyMapCut -n "polyMapCut39";
	rename -uid "854DE86D-4D29-C5F9-7C27-D69F2B15D2B2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[54]" "e[96:98]" "e[100:101]" "e[104:105]" "e[107:108]" "e[110:111]";
createNode polyTweak -n "polyTweak4";
	rename -uid "41F162CC-4AF8-A1CE-2EBE-79AE09D9FAE2";
	setAttr ".uopa" yes;
	setAttr -s 69 ".tk[0:68]" -type "float3"  0 9.045535088 0 0 9.045535088
		 0 0 9.045535088 0 0 9.045535088 0 0 9.045535088 0 0 9.045535088 0 0 9.045535088 0
		 0 9.045535088 0 0 9.045535088 0 0 9.045535088 0 0 9.045535088 0 0 9.045535088 0 0
		 9.045535088 0 0 9.045535088 0 0 9.045535088 0 0 9.045535088 0 0 9.045535088 0 0 9.045535088
		 0 0 9.045535088 0 0 9.045535088 0 0 9.045535088 0 0 9.045535088 0 0 9.045535088 0
		 0 9.045535088 0 0 9.045535088 0 0 9.045535088 0 0 9.045535088 0 0 9.045535088 0 0
		 9.045535088 0 0 9.045535088 0 0 9.045535088 0 0 9.045535088 0 0 9.045535088 0 0 9.045535088
		 0 0 9.045535088 0 0 9.045535088 0 0 9.045535088 0 0 9.045535088 0 0 9.045535088 0
		 0 9.045535088 0 0 9.045535088 0 0 9.045535088 0 0 9.045535088 0 0 9.045535088 0 0
		 9.045535088 0 0 9.045535088 0 0 9.045535088 0 0 9.045535088 0 0 9.045535088 0 0 9.045535088
		 0 0 9.045535088 0 0 9.045535088 0 0 9.045535088 0 0 9.045535088 0 0 9.045535088 0
		 0 9.045535088 0 0 9.045535088 0 0 9.045535088 0 0 9.045535088 0 0 9.045535088 2.9802322e-08
		 0 9.045535088 2.9802322e-08 2.9802322e-08 9.045535088 3.9115548e-08 2.9802322e-08
		 9.045535088 3.9115548e-08 0 9.045535088 0 0 9.045535088 0 0 9.045535088 0 0 9.045535088
		 0 0 9.045535088 0 0 0 0;
createNode createUVSet -n "createUVSet2";
	rename -uid "9E6FCA23-479D-201B-B7F3-5596259F507C";
	setAttr ".uvs" -type "string" "uvSet1";
createNode polyMapCut -n "polyMapCut40";
	rename -uid "BA06C102-4E28-D8FB-4CCE-9DBAC057E481";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[54]" "e[96:98]" "e[100:101]" "e[104:105]" "e[107:108]" "e[110:113]";
	setAttr ".uvs" -type "string" "uvSet";
createNode polyMapCut -n "polyMapCut41";
	rename -uid "6299BE61-4F0E-5D6B-35F2-388999F91B66";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[54]" "e[96:98]" "e[100:101]" "e[104:105]" "e[107:108]" "e[110:111]";
	setAttr ".uvs" -type "string" "uvSet";
createNode polyMapCut -n "polyMapCut42";
	rename -uid "EF83F182-443E-93C6-1E5B-328803C59982";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[101]";
	setAttr ".uic" yes;
	setAttr ".uvs" -type "string" "uvSet";
createNode polyMapDel -n "polyMapDel3";
	rename -uid "6B1823CE-4C9A-3AE5-5CD6-F493D18D8E1C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".uvs" -type "string" "uvSet";
createNode polyPlanarProj -n "polyPlanarProj3";
	rename -uid "894941A9-4FF2-69AF-5758-B0A3DD037923";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:52]";
	setAttr ".ix" -type "matrix" 3.288702229262892 0 0 0 0 4.1851256164463928 0 0 0 0 3.3042892634414684 0
		 0.066790007213814562 -69.355442866655764 -13.073348258008693 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 3.6030998229980469 54.176456451416016 -18.770051956176758 ;
	setAttr ".ro" -type "double3" -15.938352791645643 -30.599999320929996 -2.1154988398290109e-07 ;
	setAttr ".ps" -type "double2" 49.510577676338102 108.62538868584224 ;
	setAttr ".uvs" -type "string" "uvSet";
	setAttr ".per" yes;
	setAttr ".cam" -type "matrix" 1.6736650466918945 0.14225831627845764 0.48948249220848083 0.48947268724441528
		 4.9238875565562183e-17 0.9785764217376709 -0.27460843324661255 -0.27460291981697083
		 0.9898027777671814 -0.24054569005966187 -0.82766968011856079 -0.82765311002731323
		 21.575490951538086 -54.697910308837891 121.54214477539062 121.73970794677734;
	setAttr ".prgt" 414;
	setAttr ".ptop" 791;
createNode polyMapCut -n "polyMapCut43";
	rename -uid "3BD5B4A6-4B97-083F-FBCA-CD866EE18F67";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[95:98]" "e[100:102]" "e[105]" "e[112:113]";
	setAttr ".uvs" -type "string" "uvSet";
createNode polyTweakUV -n "polyTweakUV24";
	rename -uid "AFB4A949-4412-F7C1-BC39-AB8A8CCE8F26";
	setAttr ".uopa" yes;
	setAttr -s 80 ".uvtk[0:79]" -type "float2" 0.71122348 0 0.71122348 0
		 0.71122348 0 0.71122348 0 0.71122348 0 0.71122348 0 0.71122348 0 0.71122348 0 0.71122348
		 0 0.71122348 0 0.71122348 0 0.71122348 0 0.71122348 0 0.71122348 0 0.71122348 0 0.71122348
		 0 0.71122348 0 0.71122348 0 0.71122348 0 0.71122348 0 0.71122348 0 0.71122348 0 0.71122348
		 0 0.71122348 0 0.71122342 0 0.71122348 0 0.71122348 0 0.71122348 0 0.71122348 0 0.71122348
		 0 0.71122348 0 0.71122348 0 0.71122348 0 0.71122348 0 -0.00019553304 0.037097454
		 0.71122348 0 0.71122348 0 0.71122348 0 0.71122348 0 0.71122348 0 0.71122348 0 0.71122348
		 0 0.71122348 0 0.71122348 0 0.71122348 0 0.71122348 0 0.71122348 0 0.71122342 0 0.71122348
		 0 0.71122348 0 0.71122348 0 0.71122348 0 0.71122342 0 0.71122348 0 0.71122348 0 0.71122342
		 0 0.71122348 0 0.71122342 0 0.71122348 0 0.71122342 0 0.71122348 0 -0.01060221 0.02041167
		 0.71122348 0 -0.0027135909 -0.031337053 0.71122348 0 0.71122342 0 0.71122348 0 0.71122348
		 0 0.0027135909 -0.037097454 0 -0.000803262 0.71122348 0 0 0.061870813 0.00019554794
		 0.031337023 0.71122348 0 -0.0067175925 0.015102506 0.010602212 -0.015102446 0 -0.061870813
		 0.0067175925 -0.02041167 0 -0.021047473 0.71122348 0;
	setAttr ".uvs" -type "string" "uvSet";
createNode polyMapCut -n "polyMapCut44";
	rename -uid "258C716B-4B55-3040-6F73-24911455C420";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[54]" "e[96]" "e[100]" "e[107]" "e[110]" "e[112]";
	setAttr ".uvs" -type "string" "uvSet";
createNode polyTweakUV -n "polyTweakUV25";
	rename -uid "21363717-48D7-5D24-BAAD-928663652CA4";
	setAttr ".uopa" yes;
	setAttr -s 6 ".uvtk";
	setAttr ".uvtk[35]" -type "float2" -0.63042551 0.76496488 ;
	setAttr ".uvtk[62]" -type "float2" -0.61714453 0.76496476 ;
	setAttr ".uvtk[79]" -type "float2" -0.62794226 0.76496488 ;
	setAttr ".uvtk[80]" -type "float2" -0.61753565 0.76496488 ;
	setAttr ".uvtk[82]" -type "float2" -0.60425454 0.77021295 ;
	setAttr ".uvtk[83]" -type "float2" -0.60673779 0.75971681 ;
	setAttr ".uvs" -type "string" "uvSet";
createNode polyMapCut -n "polyMapCut45";
	rename -uid "4D0A8C4E-425C-7104-0FD9-E881AC7568DB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[98]" "e[101]" "e[104]" "e[108]" "e[111]" "e[113]";
	setAttr ".uvs" -type "string" "uvSet";
createNode polyTweakUV -n "polyTweakUV26";
	rename -uid "39F76695-484E-83A1-88C1-74AAFFB570CE";
	setAttr ".uopa" yes;
	setAttr -s 10 ".uvtk";
	setAttr ".uvtk[37]" -type "float2" -0.54556096 0.72678977 ;
	setAttr ".uvtk[60]" -type "float2" -0.54155701 0.65342498 ;
	setAttr ".uvtk[62]" -type "float2" -2.9802322e-08 0 ;
	setAttr ".uvtk[65]" -type "float2" -0.55499214 0.68008208 ;
	setAttr ".uvtk[67]" -type "float2" -0.55360317 0.6878351 ;
	setAttr ".uvtk[70]" -type "float2" -0.5509882 0.7144925 ;
	setAttr ".uvtk[79]" -type "float2" 2.9802322e-08 0 ;
	setAttr ".uvtk[80]" -type "float2" 2.9802322e-08 0 ;
	setAttr ".uvtk[83]" -type "float2" -2.9802322e-08 0 ;
	setAttr ".uvtk[86]" -type "float2" -0.54294598 0.64112753 ;
	setAttr ".uvs" -type "string" "uvSet";
createNode polyMapCut -n "polyMapCut46";
	rename -uid "D7FBD344-42B9-609E-8FE0-089FD75BF0ED";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[102]" "e[107:109]";
	setAttr ".uvs" -type "string" "uvSet";
createNode polyTweakUV -n "polyTweakUV27";
	rename -uid "C12B59D5-4B81-A95F-19CB-C3BFAD7762E3";
	setAttr ".uopa" yes;
	setAttr -s 10 ".uvtk";
	setAttr ".uvtk[34]" -type "float2" 0.027490882 -0.0031720307 ;
	setAttr ".uvtk[63]" -type "float2" 0.027490897 -0.0031720307 ;
	setAttr ".uvtk[64]" -type "float2" 0.0028197838 0.18679339 ;
	setAttr ".uvtk[68]" -type "float2" 0.027490897 -0.0031720307 ;
	setAttr ".uvtk[69]" -type "float2" -0.29394105 -0.21041103 ;
	setAttr ".uvtk[72]" -type "float2" 0.027490882 -0.0031720307 ;
	setAttr ".uvtk[76]" -type "float2" -0.29394105 -0.21041103 ;
	setAttr ".uvtk[85]" -type "float2" -0.28182092 0.048390754 ;
	setAttr ".uvtk[87]" -type "float2" -0.28182092 0.040637821 ;
	setAttr ".uvtk[89]" -type "float2" 0.0028197838 0.19728944 ;
	setAttr ".uvs" -type "string" "uvSet";
createNode polyMapCut -n "polyMapCut47";
	rename -uid "76772AD9-4350-F77A-B4B8-75BE09C27A47";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[87]" "e[109:111]";
	setAttr ".uvs" -type "string" "uvSet";
createNode polyTweakUV -n "polyTweakUV28";
	rename -uid "2B191EC8-41AE-5778-C04F-C2B52A1D59DC";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[36]" -type "float2" -0.079805188 0.76268613 ;
	setAttr ".uvtk[66]" -type "float2" -0.072048299 0.77139163 ;
	setAttr ".uvtk[88]" -type "float2" -0.090462379 0.79885352 ;
	setAttr ".uvtk[91]" -type "float2" -0.098219328 0.80755913 ;
	setAttr ".uvs" -type "string" "uvSet";
createNode polyMapCut -n "polyMapCut48";
	rename -uid "0261BCB6-4CBD-81DA-C77C-89A7AF63F386";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[42]" "e[53:54]" "e[60]" "e[87]" "e[99]" "e[104:105]";
	setAttr ".uvs" -type "string" "uvSet";
createNode polyTweakUV -n "polyTweakUV29";
	rename -uid "3DD2AC04-421A-5062-A5DE-F8A4B5410B13";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk";
	setAttr ".uvtk[73]" -type "float2" -0.41165853 0.49749133 ;
	setAttr ".uvtk[81]" -type "float2" -0.41165853 0.49749133 ;
	setAttr ".uvtk[84]" -type "float2" -0.41165853 0.49749139 ;
	setAttr ".uvtk[90]" -type "float2" -0.41165853 0.49749139 ;
	setAttr ".uvtk[92]" -type "float2" -0.41165853 0.49749133 ;
	setAttr ".uvtk[93]" -type "float2" -0.41165853 0.49749139 ;
	setAttr ".uvtk[94]" -type "float2" -0.41165853 0.49749133 ;
	setAttr ".uvtk[95]" -type "float2" -0.41165853 0.49749133 ;
	setAttr ".uvs" -type "string" "uvSet";
createNode polyMapCut -n "polyMapCut49";
	rename -uid "ABE7EC9D-468B-4C32-3888-8ABB1CCC4BB8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[42]" "e[53]" "e[56]" "e[59:60]" "e[62]" "e[65]" "e[99]";
	setAttr ".uvs" -type "string" "uvSet";
createNode polyTweakUV -n "polyTweakUV30";
	rename -uid "3E6E9E74-4DB3-D821-0E74-599B519A2AE1";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[38:45]" -type "float2" 0.13547349 0.49096918 0.1685369
		 0.52252966 0.16628253 0.53605568 0.13547337 0.50411922 0.16214967 0.52478397 0.15275657
		 0.51726955 0.14223647 0.51539093 0.1313405 0.50750083;
	setAttr ".uvs" -type "string" "uvSet";
createNode polyMapCut -n "polyMapCut50";
	rename -uid "0084E823-4AB4-35F5-5C53-A98D4E480F84";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[38]" "e[40]" "e[56:57]" "e[59]" "e[61:62]" "e[64:65]";
	setAttr ".uvs" -type "string" "uvSet";
createNode polyMapCut -n "polyMapCut51";
	rename -uid "3CDD00FE-401E-9CBD-B8D4-8BA47FE009EE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[38]" "e[40]" "e[56:57]" "e[59]" "e[64:65]";
	setAttr ".uvs" -type "string" "uvSet";
createNode polyTweakUV -n "polyTweakUV31";
	rename -uid "F0B79B4D-476B-388C-A9A9-F8AF860B7ACD";
	setAttr ".uopa" yes;
	setAttr -s 10 ".uvtk";
	setAttr ".uvtk[15]" -type "float2" 0.13813274 0.36583316 ;
	setAttr ".uvtk[27]" -type "float2" 0.18485579 0.35490775 ;
	setAttr ".uvtk[96]" -type "float2" 0.14141487 0.37694788 ;
	setAttr ".uvtk[97]" -type "float2" 0.13963534 0.38515711 ;
	setAttr ".uvtk[98]" -type "float2" 0.072486535 0.36251736 ;
	setAttr ".uvtk[99]" -type "float2" 0.13861965 0.36972332 ;
	setAttr ".uvtk[100]" -type "float2" 0.14135005 0.38043088 ;
	setAttr ".uvtk[101]" -type "float2" 0.14486133 0.36927027 ;
	setAttr ".uvtk[102]" -type "float2" 0.18423861 0.36454403 ;
	setAttr ".uvtk[103]" -type "float2" 0.078648597 0.3568837 ;
	setAttr ".uvs" -type "string" "uvSet";
createNode polyMapCut -n "polyMapCut52";
	rename -uid "EF6FF96D-4A61-BEEB-69B6-20A0560DF13E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[45]" "e[85]" "e[90]" "e[92]";
	setAttr ".uvs" -type "string" "uvSet";
createNode polyTweakUV -n "polyTweakUV32";
	rename -uid "FE44C887-4436-B0EC-595D-6A9443D3FF3A";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk";
	setAttr ".uvtk[25]" -type "float2" -0.025321741 0.23075004 ;
	setAttr ".uvtk[54]" -type "float2" 0.0035647489 0.27842149 ;
	setAttr ".uvtk[55]" -type "float2" 0.0012000538 0.28403407 ;
	setAttr ".uvtk[56]" -type "float2" -0.021157522 0.34725788 ;
	setAttr ".uvtk[57]" -type "float2" -0.01900645 0.34133306 ;
	setAttr ".uvtk[106]" -type "float2" 0.0068082958 0.33007455 ;
	setAttr ".uvtk[107]" -type "float2" -0.047942292 0.33573508 ;
	setAttr ".uvtk[108]" -type "float2" 0.029645773 0.22539057 ;
	setAttr ".uvs" -type "string" "uvSet";
createNode polyMapCut -n "polyMapCut53";
	rename -uid "8FFD7E2C-4C73-BA43-7043-66B33E689CB0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[4]" "e[13]" "e[20]" "e[30]";
	setAttr ".uvs" -type "string" "uvSet";
createNode polyTweakUV -n "polyTweakUV33";
	rename -uid "0632DF56-47CD-C634-AF23-F6896D54AD8A";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk";
	setAttr ".uvtk[6]" -type "float2" 0.3629916 0.30531031 ;
	setAttr ".uvtk[7]" -type "float2" 0.35096267 0.27260977 ;
	setAttr ".uvtk[12]" -type "float2" 0.29615006 0.29632717 ;
	setAttr ".uvtk[13]" -type "float2" 0.2836481 0.26329118 ;
	setAttr ".uvtk[110]" -type "float2" 0.27285656 0.29347849 ;
	setAttr ".uvtk[111]" -type "float2" 0.25912395 0.19833918 ;
	setAttr ".uvtk[112]" -type "float2" 0.37128046 0.20790277 ;
	setAttr ".uvtk[113]" -type "float2" 0.38453123 0.30271864 ;
	setAttr ".uvs" -type "string" "uvSet";
createNode polyMapCut -n "polyMapCut54";
	rename -uid "0A03DFB4-434F-1039-D552-A685284C1A7D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[0]" "e[8]" "e[22]" "e[29]";
	setAttr ".uvs" -type "string" "uvSet";
createNode polyTweakUV -n "polyTweakUV34";
	rename -uid "A94D12E6-4456-8280-AECA-5E9DCC2BFDC8";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk";
	setAttr ".uvtk[2]" -type "float2" 0.52197117 0.36986363 ;
	setAttr ".uvtk[3]" -type "float2" 0.50972468 0.38152564 ;
	setAttr ".uvtk[8]" -type "float2" 0.47879374 0.4709729 ;
	setAttr ".uvtk[9]" -type "float2" 0.49370903 0.48399854 ;
	setAttr ".uvtk[10]" -type "float2" 0.50536925 0.47163498 ;
	setAttr ".uvtk[114]" -type "float2" 0.54028875 0.46570063 ;
	setAttr ".uvtk[116]" -type "float2" 0.56002551 0.29566297 ;
	setAttr ".uvtk[117]" -type "float2" 0.49374968 0.30980054 ;
	setAttr ".uvs" -type "string" "uvSet";
createNode polyMapCut -n "polyMapCut55";
	rename -uid "00D7EED1-4260-73BB-9ADE-55AC36AABE8A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[49]" "e[70]" "e[74]" "e[88]";
	setAttr ".uvs" -type "string" "uvSet";
createNode polyTweakUV -n "polyTweakUV35";
	rename -uid "233F2F26-49CA-02F8-7D21-EB84FC39BD0B";
	setAttr ".uopa" yes;
	setAttr -s 24 ".uvtk";
	setAttr ".uvtk[2]" -type "float2" -0.050100043 0.016116479 ;
	setAttr ".uvtk[3]" -type "float2" -0.032969076 0.016116479 ;
	setAttr ".uvtk[6]" -type "float2" -0.0090574026 -0.011201024 ;
	setAttr ".uvtk[7]" -type "float2" -0.0093420744 0.0084886849 ;
	setAttr ".uvtk[8]" -type "float2" -0.026614625 -0.024093505 ;
	setAttr ".uvtk[9]" -type "float2" -0.032969195 -0.013880847 ;
	setAttr ".uvtk[10]" -type "float2" -0.050100043 -0.013880847 ;
	setAttr ".uvtk[12]" -type "float2" 0.0076344013 -0.010959625 ;
	setAttr ".uvtk[13]" -type "float2" 0.0073496103 0.0087300539 ;
	setAttr ".uvtk[29]" -type "float2" 0.26830113 0.48009261 ;
	setAttr ".uvtk[30]" -type "float2" 0.29386777 0.37629512 ;
	setAttr ".uvtk[50]" -type "float2" 0.28835958 0.45591319 ;
	setAttr ".uvtk[51]" -type "float2" 0.26342237 0.5258165 ;
	setAttr ".uvtk[52]" -type "float2" 0.28076041 0.44103077 ;
	setAttr ".uvtk[53]" -type "float2" 0.25559789 0.50961298 ;
	setAttr ".uvtk[110]" -type "float2" 0.017932892 -0.02296108 ;
	setAttr ".uvtk[111]" -type "float2" 0.018134594 0.02348271 ;
	setAttr ".uvtk[112]" -type "float2" -0.017932892 0.02296105 ;
	setAttr ".uvtk[113]" -type "float2" -0.018134594 -0.02348268 ;
	setAttr ".uvtk[114]" -type "float2" -0.062868312 -0.026589867 ;
	setAttr ".uvtk[116]" -type "float2" -0.064003184 0.029753521 ;
	setAttr ".uvtk[117]" -type "float2" -0.026160795 0.028618757 ;
	setAttr ".uvtk[119]" -type "float2" 0.23856086 0.49303642 ;
	setAttr ".uvtk[120]" -type "float2" 0.25849479 0.39079058 ;
	setAttr ".uvs" -type "string" "uvSet";
createNode polyMapCut -n "polyMapCut56";
	rename -uid "4CC5E7A7-4BF2-3E7F-DF2F-06B49E52830D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[34]" "e[43:44]" "e[49:50]" "e[64]" "e[70]" "e[74]" "e[88]" "e[93]" "e[103]";
	setAttr ".uvs" -type "string" "uvSet";
createNode polyTweakUV -n "polyTweakUV36";
	rename -uid "0CBA9316-4629-10D5-6997-4282666AB87D";
	setAttr ".uopa" yes;
	setAttr -s 12 ".uvtk";
	setAttr ".uvtk[23]" -type "float2" 0.3423394 0.22636561 ;
	setAttr ".uvtk[33]" -type "float2" 0.21827881 0.22099318 ;
	setAttr ".uvtk[46]" -type "float2" 0.22028117 0.23577531 ;
	setAttr ".uvtk[48]" -type "float2" 0.22238486 0.23989695 ;
	setAttr ".uvtk[49]" -type "float2" 0.2006873 0.27773553 ;
	setAttr ".uvtk[118]" -type "float2" 0.22081731 0.2243816 ;
	setAttr ".uvtk[121]" -type "float2" 0.28498018 0.25436962 ;
	setAttr ".uvtk[122]" -type "float2" 0.29566818 0.2656616 ;
	setAttr ".uvtk[124]" -type "float2" 0.17535321 0.28060988 ;
	setAttr ".uvtk[125]" -type "float2" 0.25941348 0.26509452 ;
	setAttr ".uvtk[128]" -type "float2" 0.34350282 0.21573411 ;
	setAttr ".uvtk[129]" -type "float2" 0.38282418 0.25445652 ;
	setAttr ".uvs" -type "string" "uvSet";
createNode polyMapCut -n "polyMapCut57";
	rename -uid "2300F0A7-4C12-E9E3-A58D-2AA463391348";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[36:37]" "e[43]" "e[45]" "e[47]" "e[61]" "e[85]" "e[90]" "e[92]" "e[94]" "e[106]";
	setAttr ".uvs" -type "string" "uvSet";
createNode polyTweakUV -n "polyTweakUV37";
	rename -uid "B581A871-4BEF-4417-0473-E2AF8A533F18";
	setAttr ".uopa" yes;
	setAttr -s 12 ".uvtk";
	setAttr ".uvtk[24]" -type "float2" 0.35163292 0.030876786 ;
	setAttr ".uvtk[28]" -type "float2" 0.34973851 0.027099699 ;
	setAttr ".uvtk[32]" -type "float2" 0.50751841 0.17357981 ;
	setAttr ".uvtk[47]" -type "float2" 0.36294988 0.041660838 ;
	setAttr ".uvtk[58]" -type "float2" 0.41519213 0.083462432 ;
	setAttr ".uvtk[59]" -type "float2" 0.36514047 0.046259858 ;
	setAttr ".uvtk[109]" -type "float2" 0.33389556 0.089763358 ;
	setAttr ".uvtk[130]" -type "float2" 0.54212421 0.21230219 ;
	setAttr ".uvtk[132]" -type "float2" 0.39438322 0.077764556 ;
	setAttr ".uvtk[133]" -type "float2" 0.31794143 0.06238145 ;
	setAttr ".uvtk[135]" -type "float2" 0.49202889 0.15636492 ;
	setAttr ".uvtk[136]" -type "float2" 0.45880932 0.19414851 ;
	setAttr ".uvs" -type "string" "uvSet";
createNode polyMapCut -n "polyMapCut58";
	rename -uid "A77F50B5-46FF-1474-619B-9B9107B7826B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[4]" "e[13]" "e[18]" "e[20]" "e[28]" "e[30]" "e[32:33]" "e[36]" "e[40]" "e[52]";
	setAttr ".uvs" -type "string" "uvSet";
createNode polyTweakUV -n "polyTweakUV38";
	rename -uid "3A8F8A70-4F73-4FEC-710A-B58AA3A89D7A";
	setAttr ".uopa" yes;
	setAttr -s 12 ".uvtk";
	setAttr ".uvtk[5]" -type "float2" 0.43033171 -0.067117937 ;
	setAttr ".uvtk[11]" -type "float2" 0.48106188 -0.075158186 ;
	setAttr ".uvtk[16]" -type "float2" 0.44575125 -0.10127182 ;
	setAttr ".uvtk[17]" -type "float2" 0.48897475 -0.063466467 ;
	setAttr ".uvtk[21]" -type "float2" 0.45751327 -0.10887317 ;
	setAttr ".uvtk[104]" -type "float2" 0.37010348 0.03907733 ;
	setAttr ".uvtk[137]" -type "float2" 0.41574323 0.07686089 ;
	setAttr ".uvtk[139]" -type "float2" 0.36110872 0.04908495 ;
	setAttr ".uvtk[140]" -type "float2" 0.39093769 -0.055102773 ;
	setAttr ".uvtk[141]" -type "float2" 0.31993306 0.087415792 ;
	setAttr ".uvtk[142]" -type "float2" 0.45707554 -0.10147463 ;
	setAttr ".uvtk[143]" -type "float2" 0.44502038 -0.093434371 ;
	setAttr ".uvs" -type "string" "uvSet";
createNode polyMapCut -n "polyMapCut59";
	rename -uid "268F078B-4149-2B74-3938-0F945BC5B185";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[0]" "e[8]" "e[22]" "e[24]" "e[26]" "e[29]" "e[32]" "e[34:35]" "e[38]" "e[46]";
	setAttr ".uvs" -type "string" "uvSet";
createNode polyTweakUV -n "polyTweakUV39";
	rename -uid "6E349FC6-49FC-B92E-4C87-AC94943B1E73";
	setAttr ".uopa" yes;
	setAttr -s 24 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0.70788252 0.0038834885 ;
	setAttr ".uvtk[1]" -type "float2" 0.62163508 0.016658023 ;
	setAttr ".uvtk[4]" -type "float2" 0.86837769 0.10488831 ;
	setAttr ".uvtk[14]" -type "float2" 0.79737306 0.10220358 ;
	setAttr ".uvtk[18]" -type "float2" 0.83107495 0.14748099 ;
	setAttr ".uvtk[19]" -type "float2" 0.73407495 0.0080244243 ;
	setAttr ".uvtk[20]" -type "float2" 0.70992517 -0.013464585 ;
	setAttr ".uvtk[22]" -type "float2" 0.77639943 0.097325563 ;
	setAttr ".uvtk[26]" -type "float2" 0.80084419 0.094586134 ;
	setAttr ".uvtk[31]" -type "float2" 0.77716708 0.087521866 ;
	setAttr ".uvtk[105]" -type "float2" 0.53453112 0.034644671 ;
	setAttr ".uvtk[115]" -type "float2" 0.73217225 0.026484549 ;
	setAttr ".uvtk[123]" -type "float2" 0.68141848 0.066118002 ;
	setAttr ".uvtk[126]" -type "float2" 0.67932302 0.051879697 ;
	setAttr ".uvtk[127]" -type "float2" 0.55471826 0.05248338 ;
	setAttr ".uvtk[131]" -type "float2" 0.76639682 0.043090306 ;
	setAttr ".uvtk[134]" -type "float2" 0.78901744 0.05262408 ;
	setAttr ".uvtk[138]" -type "float2" 0.87407577 0.096524566 ;
	setAttr ".uvtk[144]" -type "float2" 0.48160914 0.072975472 ;
	setAttr ".uvtk[145]" -type "float2" 0.84782863 0.14924219 ;
	setAttr ".uvtk[146]" -type "float2" 0.74593389 0.038578719 ;
	setAttr ".uvtk[147]" -type "float2" 0.60265005 0.091779359 ;
	setAttr ".uvtk[148]" -type "float2" 0.7477026 0.050413638 ;
	setAttr ".uvtk[149]" -type "float2" 0.68266129 0.027812578 ;
	setAttr ".uvs" -type "string" "uvSet";
createNode lambert -n "lambert2";
	rename -uid "F68D3A33-4320-F70A-7BA6-C5B1F42A1B8B";
	setAttr ".dc" 0.12048193067312241;
createNode shadingEngine -n "lambert2SG";
	rename -uid "984CAAE3-44D9-4253-50AE-50B45FF45831";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo2";
	rename -uid "2CCA93CA-483D-FF20-E118-CCAD26C7D353";
createNode file -n "file1";
	rename -uid "E284C2D5-4787-F99B-4DC9-09818779C984";
	setAttr ".ftn" -type "string" "C:/Users/kevin/Documents/maya//projects/default/sourceimages/leathergrain.png";
	setAttr ".pfr" 6.9790210723876953;
	setAttr ".exp" 5;
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "CB6F0A2F-4E74-2298-A22F-338951B748E7";
	setAttr ".re" -type "float2" 1 10 ;
createNode polyNormalizeUV -n "polyNormalizeUV1";
	rename -uid "2E72F595-4E39-65D4-3F3F-33BCDD18132C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:52]";
	setAttr ".ix" -type "matrix" 3.288702229262892 0 0 0 0 4.1851256164463928 0 0 0 0 3.3042892634414684 0
		 0.066790007213814562 -69.355442866655764 -13.073348258008693 1;
	setAttr ".uvs" -type "string" "uvSet";
	setAttr ".cot" yes;
createNode polyTweakUV -n "polyTweakUV40";
	rename -uid "F3BE007D-40C7-EA44-B2C7-CF9681D3C978";
	setAttr ".uopa" yes;
	setAttr -s 150 ".uvtk[0:149]" -type "float2" -1.0014566183 -0.008152917
		 -1.0014566183 -0.008152917 -1.36853719 0.066854276 -1.36853719 0.066854276 -1.0014566183
		 -0.0081529021 -1.0014566183 -0.008152917 -1.36853719 0.066854276 -1.36853719 0.066854276
		 -1.36853719 0.066854276 -1.36853719 0.066854246 -1.36853719 0.066854246 -1.0014566183
		 -0.008152917 -1.36853719 0.066854276 -1.36853719 0.066854276 -1.0014566183 -0.0081529021
		 -0.70672327 -0.067099579 -1.0014566183 -0.008152917 -1.0014566183 -0.008152917 -1.0014566183
		 -0.0081529319 -1.0014566183 -0.008152917 -1.0014566183 -0.008152917 -1.0014566183
		 -0.008152917 -1.0014566183 -0.0081529319 -1.0014566183 -0.0081529021 -1.0014566183
		 -0.0081529021 -1.36853719 0.066854246 -1.0014566183 -0.0081529319 -0.70672327 -0.067099608
		 -1.0014566183 -0.0081529021 -1.36853719 0.066854276 -1.36853719 0.066854276 -1.0014566183
		 -0.0081529021 -1.0014566183 -0.0081529021 -1.0014566183 -0.0081529021 -1.0014567375
		 -0.0081529021 -1.0014567375 -0.0081529319 -1.0014567375 -0.0081529319 -1.0014567375
		 -0.0081529319 -0.70672327 -0.067099564 -0.70672327 -0.067099594 -0.70672327 -0.067099594
		 -0.70672327 -0.067099594 -0.70672327 -0.067099653 -0.70672327 -0.067099653 -0.70672327
		 -0.067099653 -0.70672327 -0.067099623 -1.0014566183 -0.0081529021 -1.0014566183 -0.0081529021
		 -1.0014566183 -0.0081529021 -1.0014566183 -0.0081529319 -1.36853719 0.066854276 -1.36853719
		 0.066854276 -1.36853719 0.066854276 -1.36853719 0.066854276 -1.36853719 0.066854276
		 -1.36853719 0.066854276 -1.36853719 0.066854246 -1.36853719 0.066854246 -1.0014566183
		 -0.0081529319 -1.0014566183 -0.0081529021 -1.0014567375 -0.0081529319 -1.0014567375
		 -0.0081529319 -1.0014567375 -0.0081529319 -1.0014567375 -0.0081529319 -1.0014567375
		 -0.0081529319 -1.0014567375 -0.0081529319 -1.0014567375 -0.0081529915 -1.0014567375
		 -0.0081529319 -1.0014567375 -0.0081529021 -1.0014567375 -0.0081529021 -1.0014567375
		 -0.0081529319 -1.0014567375 -0.0081529021 -1.0014567375 -0.0081529319 -1.0014567375
		 -0.0081529319 -1.0014567375 -0.0081529319 -1.0014567375 -0.0081529319 -1.0014567375
		 -0.0081529021 -1.0014567375 -0.0081529319 -1.0014567375 -0.0081529021 -1.0014567375
		 -0.0081529319 -1.0014567375 -0.0081529319 -1.0014567375 -0.0081529319 -1.0014567375
		 -0.0081528127 -1.0014567375 -0.0081528127 -1.0014567375 -0.0081529021 -1.0014567375
		 -0.0081529319 -1.0014567375 -0.0081529319 -1.0014567375 -0.0081529319 -1.0014567375
		 -0.0081529915 -1.0014567375 -0.0081529319 -1.0014567375 -0.0081529319 -1.0014567375
		 -0.0081529319 -1.0014567375 -0.0081529319 -1.0014567375 -0.0081529319 -1.0014567375
		 -0.0081529021 -1.0014567375 -0.0081529021 -0.70672327 -0.067099594 -0.70672327 -0.067099594
		 -0.70672327 -0.067099594 -0.70672327 -0.067099564 -0.70672327 -0.067099579 -0.70672327
		 -0.067099579 -0.70672327 -0.067099594 -0.70672327 -0.067099579 -1.0014566183 -0.0081529021
		 -1.0014566183 -0.0081529021 -1.36853719 0.066854276 -1.36853719 0.066854276 -1.36853719
		 0.066854246 -1.0014566183 -0.0081529021 -1.36853719 0.066854276 -1.36853719 0.066854276
		 -1.36853719 0.066854276 -1.36853719 0.066854276 -1.36853719 0.066854276 -1.0014566183
		 -0.008152917 -1.36853719 0.066854291 -1.36853719 0.066854276 -1.0014566183 -0.0081529021
		 -1.36853719 0.066854276 -1.36853719 0.066854246 -1.0014566183 -0.0081529021 -1.0014566183
		 -0.0081529021 -1.0014566183 -0.008152917 -1.0014566183 -0.0081529021 -1.0014566183
		 -0.0081529021 -1.0014566183 -0.008152917 -1.0014566183 -0.0081529319 -1.0014566183
		 -0.0081529021 -1.0014566183 -0.0081529021 -1.0014566183 -0.0081529021 -1.0014566183
		 -0.0081529021 -1.0014566183 -0.0081529021 -1.0014566183 -0.0081529021 -1.0014566183
		 -0.0081529319 -1.0014566183 -0.0081529021 -1.0014566183 -0.0081529021 -1.0014566183
		 -0.0081529021 -1.0014566183 -0.0081529319 -1.0014566183 -0.0081529021 -1.0014566183
		 -0.008152917 -1.0014566183 -0.0081529021 -1.0014566183 -0.008152917 -1.0014566183
		 -0.008152917 -1.0014566183 -0.0081529319 -1.0014566183 -0.0081529021 -1.0014566183
		 -0.008152917 -1.0014566183 -0.0081529319 -1.0014566183 -0.008152917 -1.0014566183
		 -0.008152917;
	setAttr ".uvs" -type "string" "uvSet";
createNode polyCopyUV -n "polyCopyUV1";
	rename -uid "52D1DD19-4381-28EA-F3FB-D1AED0A8E120";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "f[6]" "f[9:10]" "f[13:18]" "f[20:26]" "f[37:38]" "f[41:42]" "f[47]" "f[49:52]";
	setAttr ".uvs" -type "string" "uvSet2";
	setAttr ".uvi" -type "string" "uvSet";
createNode polyTweakUV -n "polyTweakUV41";
	rename -uid "821C6F8A-4765-1B03-0082-AE99BDE98E0A";
	setAttr ".uopa" yes;
	setAttr -s 78 ".uvtk[0:77]" -type "float2" -0.247455 0.26453817 -0.31068486
		 0.26453817 -0.31068486 0.44466799 -0.21254891 0.44466799 -0.21254891 0.26453817 0.19957405
		 0.10787036 0.29567304 0.10787036 0.29567304 0.16473548 0.19957405 0.16473548 -0.11567172
		 0.20199947 -0.21254891 0.20199947 -0.11567172 0.26453817 0.33257952 0.16473548 0.40872225
		 0.16473548 0.40872225 0.41035169 0.29567304 0.41035169 0.094008759 0.52271414 0.094008759
		 0.57504845 0.094008759 0.72339118 0.17407325 0.72339118 0.17407325 0.52271414 0.19957405
		 0.41035193 -0.11567125 0.44466799 -0.037603244 0.59042799 -0.037603244 0.61847746
		 -0.037603244 0.82356709 -0.12932378 0.82356709 -0.12932378 0.59042799 0.073523805
		 0.41035169 0.073524311 0.16473548 0.13963808 0.16473548 -0.008333534 0.44466799 -0.00833413
		 0.26453817 -0.058669969 0.26453817 0.48972252 0.94030386 0.55557901 0.93778914 0.55809367
		 1.37962556 0.48039812 1.37962532 0.61135119 0.93008709 0.61135119 1.3856988 0.69663268
		 0.92882967 0.74211448 0.93560803 0.74596685 1.38444138 0.69663268 1.38444138 -0.20902562
		 0.82356709 -0.20902562 0.59042799 0.26044413 0.72339118 0.26044413 0.52271414 -0.20902562
		 0.49367747 -0.12932378 0.49367747 0.26044413 0.447846 0.17407325 0.447846 -0.32079214
		 0.82356709 -0.32079214 0.64016831 -0.32079214 0.59042799 0.34095851 0.72339118 0.34095803
		 0.52280259 0.32993719 0.52271414 0.90682322 0.48679027 1.17556405 0.48679027 1.17556405
		 0.42686206 0.8995164 0.42686206 0.8995164 0.13727857 0.82162184 0.13727857 0.82162184
		 0.42353183 0.61105233 0.42353183 0.61105233 0.47980985 0.82390791 0.47980985 0.82390791
		 0.64474237 0.90682322 0.64474207 -0.40892422 0.93337172 -0.41244853 1.057016015 -0.35601428
		 1.020594358 -0.35249257 0.96766859 -0.24991608 1.057891369 -0.29887235 1.019860983
		 -0.24682131 0.93856519 -0.297333 0.96717006;
	setAttr ".uvs" -type "string" "uvSet2";
createNode polyMapDel -n "polyMapDel4";
	rename -uid "E0CAC30C-40C4-A1A5-1B16-0BBA242C27BE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "f[6]" "f[9:10]" "f[13:18]" "f[20:26]" "f[37:38]" "f[41:42]" "f[47]" "f[49:52]";
	setAttr ".uvs" -type "string" "uvSet";
createNode polyTweakUV -n "polyTweakUV42";
	rename -uid "44E023F2-4F68-12D8-BFF1-C5968F8E38E8";
	setAttr ".uopa" yes;
	setAttr -s 72 ".uvtk[0:71]" -type "float2" 0.45502067 -0.22853848 0.4236064
		 -0.22853848 0.38460213 -0.18191627 0.38501894 -0.21073863 0.41195357 -0.15480223
		 0.4236064 -0.17353001 0.45502067 -0.17353001 0.36016822 -0.18226969 0.36058533 -0.21109197
		 0.22722191 -0.24804157 0.57929337 -0.15743122 0.57929313 -0.24892655 0.084131509
		 -0.068735003 0.078039467 -0.014345007 0.12900662 -0.01160671 0.11122678 -0.019421538
		 0.53197491 -0.22319159 0.53197491 -0.17248601 0.56221187 -0.22319159 0.56221187 -0.17248601
		 0.27578023 -0.22417349 0.25530776 -0.22417349 0.25530776 -0.17147952 0.27578023 -0.17147952
		 0.10125834 -0.015572449 0.073372632 -0.058892608 0.088399947 -0.016356844 0.10251844
		 -0.063724935 0.1185959 -0.014127331 0.10125834 0.015643816 0.11225443 0.022781003
		 0.099231809 0.015643816 0.10251844 -0.068735003 0.08202827 -0.075085044 0.11122678
		 -0.015572449 0.082351536 -0.061557978 0.084131509 -0.063724935 0.34313953 -0.045226265
		 0.090782464 -0.027106958 0.073372632 -0.027106958 0.071453333 -0.075085044 0.090782464
		 -0.058892608 0.074054271 -0.061557978 0.079408288 -0.011026161 0.088399947 -0.021737237
		 0.42862585 0.002398897 0.078039467 0.022705305 0.079408288 0.022705305 0.34507486
		 -0.085825212 0.11670439 -0.025465326 0.099231809 -0.019421538 0.11882025 -0.025465326
		 0.12900662 0.022781003 0.1170674 -0.014127331 0.44676223 -0.02039686 0.11225443 -0.01160671
		 0.38370731 -0.047168583 0.39579687 -0.057311013 0.4158439 -0.025294986 0.40388778
		 -0.017628007 0.30706739 -0.14750403 0.22722191 -0.14750403 0.30706739 -0.24804157
		 0.34509307 -0.16470188 0.34479761 -0.23268738 0.39759451 -0.2319237 0.39788985 -0.16393805
		 0.47843474 -0.15022451 0.48051566 -0.25354555 0.41112113 -0.25146502 0.50628728 -0.16032636
		 0.50020742 -0.24863702;
	setAttr ".uvs" -type "string" "uvSet";
createNode polyTweakUV -n "polyTweakUV43";
	rename -uid "CA338836-4B04-2779-440E-F99353B825DC";
	setAttr ".uopa" yes;
	setAttr -s 78 ".uvtk[0:77]" -type "float2" -0.31101397 -0.13393667 -0.27246195
		 -0.13393667 -0.27246195 -0.24376458 -0.33229694 -0.24376458 -0.33229694 -0.13393667
		 -0.5835743 -0.038414001 -0.64216727 -0.038414001 -0.64216727 -0.073085517 -0.5835743
		 -0.073085517 -0.39136434 -0.095805883 -0.33229694 -0.095805883 -0.39136434 -0.13393667
		 -0.66466963 -0.073085517 -0.71109498 -0.073085517 -0.71109498 -0.22284137 -0.64216727
		 -0.22284137 -0.51920968 -0.29135042 -0.51920968 -0.32325941 -0.51920968 -0.41370621
		 -0.56802607 -0.41370621 -0.56802607 -0.29135042 -0.5835743 -0.22284149 -0.39136463
		 -0.24376458 -0.4389638 -0.33263654 -0.4389638 -0.34973869 -0.4389638 -0.47478503
		 -0.38304034 -0.47478503 -0.38304034 -0.33263654 -0.50671959 -0.22284137 -0.50671995
		 -0.073085517 -0.54703051 -0.073085517 -0.45680985 -0.24376458 -0.4568097 -0.13393667
		 -0.42611909 -0.13393667 -0.76048201 -0.54596108 -0.80063587 -0.54442781 -0.80216902
		 -0.81382185 -0.75479686 -0.81382185 -0.83464086 -0.53973174 -0.83464086 -0.81752485
		 -0.88663828 -0.53896505 -0.91436923 -0.54309785 -0.91671807 -0.81675839 -0.88663828
		 -0.81675839 -0.33444515 -0.47478503 -0.33444515 -0.33263654 -0.62068772 -0.41370621
		 -0.62068772 -0.29135042 -0.33444515 -0.27364641 -0.38304034 -0.27364641 -0.62068772
		 -0.2457023 -0.56802607 -0.2457023 -0.26629937 -0.47478503 -0.26629937 -0.36296397
		 -0.26629937 -0.33263654 -0.66977859 -0.41370621 -0.66977823 -0.2914044 -0.66305864
		 -0.29135042 -1.014794827 -0.26944703 -1.17864966 -0.26944703 -1.17864966 -0.23290795
		 -1.01033926 -0.23290795 -1.01033926 -0.056344718 -0.96284628 -0.056344718 -0.96284628
		 -0.23087755 -0.83445865 -0.23087755 -0.83445865 -0.26519108 -0.96424001 -0.26519108
		 -0.96424001 -0.36575288 -1.014794827 -0.36575264 -0.32200828 -0.62381768 -0.31985939
		 -0.69920552 -0.35426819 -0.67699862 -0.3564153 -0.64472896 -0.41895768 -0.69973898
		 -0.38910839 -0.6765514 -0.4208447 -0.6269843 -0.39004698 -0.64442497;
	setAttr ".uvs" -type "string" "uvSet2";
createNode standardSurface -n "standardSurface3";
	rename -uid "D8905FC4-49E9-7E65-9CE2-D4A6AA47BA0B";
createNode shadingEngine -n "standardSurface3SG";
	rename -uid "D1D0C55A-43BB-BAA2-FDFB-5FBB08C4BB14";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "F87FE94C-40C8-FA2D-2A5C-D1B61C1493D5";
createNode file -n "file4";
	rename -uid "AA8C2709-424B-59E1-BF69-0094CE6078C7";
	setAttr ".ftn" -type "string" "C:/Users/kevin/Documents/maya//projects/default/sourceimages/silver-brushed-metal-texture-900x900.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture4";
	rename -uid "D522D6EA-4EB4-DCB6-B776-9398406BA59A";
createNode groupId -n "groupId6";
	rename -uid "F97ABD67-4B1F-CE24-6353-70AB81261DDD";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "6BF03065-4D6E-A246-112A-498F77FA7001";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 8 "f[0:5]" "f[7:8]" "f[11:12]" "f[19]" "f[27:36]" "f[39:40]" "f[43:46]" "f[48]";
	setAttr ".irc" -type "componentList" 8 "f[6]" "f[9:10]" "f[13:18]" "f[20:26]" "f[37:38]" "f[41:42]" "f[47]" "f[49:52]";
createNode groupId -n "groupId7";
	rename -uid "06FF47FE-4C24-DF1E-7922-46BE1830FF01";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	rename -uid "1C8FA7D7-402B-204B-78E1-06AF1E097BB5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "E8DE7124-46F0-A3F0-2BB7-E189B651E161";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 8 "f[6]" "f[9:10]" "f[13:18]" "f[20:26]" "f[37:38]" "f[41:42]" "f[47]" "f[49:52]";
createNode lambert -n "lambert3";
	rename -uid "52ED27DE-4DF8-229B-F039-69AE48783FEE";
	setAttr ".dc" 0.70967739820480347;
createNode shadingEngine -n "lambert3SG";
	rename -uid "7BFD92CC-4044-BF6F-EF63-52A1330B6F89";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "70AB3888-4844-3847-7408-FDA27D01DC5B";
createNode file -n "file5";
	rename -uid "F7C6D695-4A6A-DC0B-C9B5-9FAF76C3942F";
	setAttr ".ftn" -type "string" "C:/Users/kevin/Documents/maya//projects/default/sourceimages/silver-brushed-metal-texture-900x900.png";
	setAttr ".pfr" 1.5806452035903931;
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture5";
	rename -uid "77A31027-4D5B-175E-41E7-488666255A82";
	setAttr ".re" -type "float2" 1 5 ;
	setAttr ".of" -type "float2" 0 1 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "04334AE1-4D39-428D-A321-39B865609CD7";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -727.38092347743134 -788.1053087307547 ;
	setAttr ".tgi[0].vh" -type "double2" 485.71426641373483 242.86723515847402 ;
	setAttr -s 8 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -50;
	setAttr ".tgi[0].ni[0].y" -317.14285278320312;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" -1062.857177734375;
	setAttr ".tgi[0].ni[1].y" -375.71429443359375;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 425.96063232421875;
	setAttr ".tgi[0].ni[2].y" 21.008039474487305;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" -755.71429443359375;
	setAttr ".tgi[0].ni[3].y" -352.85714721679688;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" 118.81777191162109;
	setAttr ".tgi[0].ni[4].y" -1.849103569984436;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" 257.14285278320312;
	setAttr ".tgi[0].ni[5].y" -317.14285278320312;
	setAttr ".tgi[0].ni[5].nvs" 1923;
	setAttr ".tgi[0].ni[6].x" -527.14288330078125;
	setAttr ".tgi[0].ni[6].y" 27.142856597900391;
	setAttr ".tgi[0].ni[6].nvs" 2387;
	setAttr ".tgi[0].ni[7].x" -177.14285278320312;
	setAttr ".tgi[0].ni[7].y" 27.142856597900391;
	setAttr ".tgi[0].ni[7].nvs" 1923;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 6 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 9 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 3 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 3 ".tx";
select -ne :initialShadingGroup;
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 4 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".wsn" -type "string" "ACEScg";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "groupId1.id" "pCylinderShape1.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape1.iog.og[1].gco";
connectAttr "groupParts1.og" "pCylinderShape1.i";
connectAttr "groupId2.id" "pCylinderShape1.ciog.cog[0].cgid";
connectAttr "groupId3.id" "pCubeShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape2.iog.og[0].gco";
connectAttr "groupParts2.og" "pCubeShape2.i";
connectAttr "groupId4.id" "pCubeShape2.ciog.cog[0].cgid";
connectAttr "groupParts4.og" "pCylinder2Shape.i";
connectAttr "groupId7.id" "pCylinder2Shape.ciog.cog[1].cgid";
connectAttr "polyTweakUV23.uvtk[0]" "pCylinder2Shape.uvst[0].uvtw";
connectAttr "polyTweakUV42.uvtk[0]" "pCylinder2Shape.uvst[1].uvtw";
connectAttr "polyTweakUV43.uvtk[0]" "pCylinder2Shape.uvst[3].uvtw";
connectAttr "groupId6.id" "pCylinder2Shape.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pCylinder2Shape.iog.og[0].gco";
connectAttr "groupId8.id" "pCylinder2Shape.iog.og[1].gid";
connectAttr "lambert3SG.mwc" "pCylinder2Shape.iog.og[1].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "standardSurface2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "standardSurface3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "standardSurface2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "standardSurface3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTweak1.out" "polyExtrudeFace1.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyCylinder1.out" "polyTweak1.ip";
connectAttr "polyExtrudeFace1.out" "polyExtrudeFace2.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace2.out" "polyExtrudeFace3.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace3.out" "polyExtrudeFace4.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace4.out" "polyCut1.ip";
connectAttr "pCylinderShape1.wm" "polyCut1.mp";
connectAttr "polyCut1.out" "polyDelEdge1.ip";
connectAttr "polyDelEdge1.out" "polyDelEdge2.ip";
connectAttr "polyDelEdge2.out" "polyDelEdge3.ip";
connectAttr "polyDelEdge3.out" "polyExtrudeFace5.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace5.out" "polyCut2.ip";
connectAttr "pCylinderShape1.wm" "polyCut2.mp";
connectAttr "polyCut2.out" "polyCut3.ip";
connectAttr "pCylinderShape1.wm" "polyCut3.mp";
connectAttr "polyCut3.out" "polyCut4.ip";
connectAttr "pCylinderShape1.wm" "polyCut4.mp";
connectAttr "polyCut4.out" "polyCut5.ip";
connectAttr "pCylinderShape1.wm" "polyCut5.mp";
connectAttr "polyCut5.out" "polyDelEdge4.ip";
connectAttr "polyDelEdge4.out" "polyDelEdge5.ip";
connectAttr "polyDelEdge5.out" "polyDelEdge6.ip";
connectAttr "polyDelEdge6.out" "polyExtrudeFace6.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace6.out" "polyExtrudeFace7.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace7.out" "polyExtrudeFace8.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace8.out" "polyDelEdge7.ip";
connectAttr "polyCube2.out" "polyDelEdge9.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace11.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace11.mp";
connectAttr "polyDelEdge9.out" "polyTweak2.ip";
connectAttr "polyExtrudeFace11.out" "polyDelEdge10.ip";
connectAttr "polyDelEdge10.out" "polyExtrudeFace12.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace12.mp";
connectAttr "polyExtrudeFace12.out" "polyDelEdge11.ip";
connectAttr "polyDelEdge11.out" "polyDelEdge12.ip";
connectAttr "polyDelEdge12.out" "polyDelEdge13.ip";
connectAttr "polyDelEdge13.out" "polyDelEdge14.ip";
connectAttr "polyDelEdge7.out" "deleteComponent1.ig";
connectAttr "polyDelEdge14.out" "polyTweak3.ip";
connectAttr "polyTweak3.out" "deleteComponent2.ig";
connectAttr "pCylinderShape1.o" "polyCBoolOp1.ip[0]";
connectAttr "pCubeShape2.o" "polyCBoolOp1.ip[1]";
connectAttr "pCylinderShape1.wm" "polyCBoolOp1.im[0]";
connectAttr "pCubeShape2.wm" "polyCBoolOp1.im[1]";
connectAttr "deleteComponent1.og" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "deleteComponent2.og" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polyCBoolOp1.out" "polyBridgeEdge1.ip";
connectAttr "pCylinder2Shape.wm" "polyBridgeEdge1.mp";
connectAttr "polyBridgeEdge1.out" "polyDelEdge15.ip";
connectAttr "polyDelEdge15.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyTweakUV2.ip";
connectAttr "polyTweakUV2.out" "polySoftEdge1.ip";
connectAttr "pCylinder2Shape.wm" "polySoftEdge1.mp";
connectAttr "standardSurface2.oc" "standardSurface2SG.ss";
connectAttr "standardSurface2SG.msg" "materialInfo1.sg";
connectAttr "standardSurface2.msg" "materialInfo1.m";
connectAttr "standardSurface2.msg" "materialInfo1.t" -na;
connectAttr "polySoftEdge1.out" "polyMapCut2.ip";
connectAttr "polyMapCut2.out" "polyMapCut3.ip";
connectAttr "polyMapCut3.out" "polyMapCut4.ip";
connectAttr "polyMapCut4.out" "polyTweakUV3.ip";
connectAttr "polyTweakUV3.out" "polyMapCut5.ip";
connectAttr "polyMapCut5.out" "polyTweakUV4.ip";
connectAttr "polyTweakUV4.out" "polyMapCut6.ip";
connectAttr "polyMapCut6.out" "polyTweakUV5.ip";
connectAttr "polyTweakUV5.out" "polyMapCut7.ip";
connectAttr "polyMapCut7.out" "polyTweakUV6.ip";
connectAttr "polyTweakUV6.out" "polyMapCut8.ip";
connectAttr "polyMapCut8.out" "polyTweakUV7.ip";
connectAttr "polyTweakUV7.out" "polyMapCut9.ip";
connectAttr "polyMapCut9.out" "polyTweakUV8.ip";
connectAttr "polyTweakUV8.out" "polyMapCut10.ip";
connectAttr "polyMapCut10.out" "polyTweakUV9.ip";
connectAttr "polyTweakUV9.out" "polyMapDel1.ip";
connectAttr "polyMapDel1.out" "polyPlanarProj1.ip";
connectAttr "pCylinder2Shape.wm" "polyPlanarProj1.mp";
connectAttr "polyPlanarProj1.out" "polyMapCut11.ip";
connectAttr "polyMapCut11.out" "polyTweakUV10.ip";
connectAttr "polyTweakUV10.out" "polyMapCut12.ip";
connectAttr "polyMapCut12.out" "polyTweakUV11.ip";
connectAttr "polyTweakUV11.out" "polyMapCut13.ip";
connectAttr "polyMapCut13.out" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "polyMapDel2.ip";
connectAttr "polyMapDel2.out" "polyPlanarProj2.ip";
connectAttr "pCylinder2Shape.wm" "polyPlanarProj2.mp";
connectAttr "polyPlanarProj2.out" "polyMapCut14.ip";
connectAttr "polyMapCut14.out" "polyTweakUV12.ip";
connectAttr "polyTweakUV12.out" "polyMapCut15.ip";
connectAttr "polyMapCut15.out" "polyTweakUV13.ip";
connectAttr "polyTweakUV13.out" "polyMapCut16.ip";
connectAttr "polyMapCut16.out" "polyTweakUV14.ip";
connectAttr "polyTweakUV14.out" "polyMapCut17.ip";
connectAttr "polyMapCut17.out" "polyTweakUV15.ip";
connectAttr "polyTweakUV15.out" "polyMapCut18.ip";
connectAttr "polyMapCut18.out" "polyMapCut19.ip";
connectAttr "polyMapCut19.out" "polyMapCut20.ip";
connectAttr "polyMapCut20.out" "polyTweakUV16.ip";
connectAttr "polyTweakUV16.out" "polyMapCut21.ip";
connectAttr "polyMapCut21.out" "polyTweakUV17.ip";
connectAttr "polyTweakUV17.out" "polyMapCut22.ip";
connectAttr "polyMapCut22.out" "polyMapCut23.ip";
connectAttr "polyMapCut23.out" "polyMapCut24.ip";
connectAttr "polyMapCut24.out" "polyMapCut25.ip";
connectAttr "polyMapCut25.out" "polyMapCut26.ip";
connectAttr "polyMapCut26.out" "polyMapCut27.ip";
connectAttr "polyMapCut27.out" "polyMapCut28.ip";
connectAttr "polyMapCut28.out" "polyMapCut29.ip";
connectAttr "polyMapCut29.out" "polyTweakUV18.ip";
connectAttr "polyTweakUV18.out" "polyMapCut30.ip";
connectAttr "polyMapCut30.out" "polyMapCut31.ip";
connectAttr "polyMapCut31.out" "polyMapCut32.ip";
connectAttr "polyMapCut32.out" "polyTweakUV19.ip";
connectAttr "polyTweakUV19.out" "polyMapCut33.ip";
connectAttr "polyMapCut33.out" "polyTweakUV20.ip";
connectAttr "polyTweakUV20.out" "polyMapCut34.ip";
connectAttr "polyMapCut34.out" "polyTweakUV21.ip";
connectAttr "polyTweakUV21.out" "polyMapCut35.ip";
connectAttr "polyMapCut35.out" "polyTweakUV22.ip";
connectAttr "polyTweakUV22.out" "polyMapCut36.ip";
connectAttr "polyMapCut36.out" "polyMapCut37.ip";
connectAttr "polyMapCut37.out" "polyMapCut38.ip";
connectAttr "polyMapCut38.out" "polyTweakUV23.ip";
connectAttr "polyTweakUV23.out" "createUVSet1.ig";
connectAttr "polyTweak4.out" "polyMapCut39.ip";
connectAttr "createUVSet1.og" "polyTweak4.ip";
connectAttr "polyMapCut39.out" "createUVSet2.ig";
connectAttr "createUVSet2.og" "polyMapCut40.ip";
connectAttr "polyMapCut40.out" "polyMapCut41.ip";
connectAttr "polyMapCut41.out" "polyMapCut42.ip";
connectAttr "polyMapCut42.out" "polyMapDel3.ip";
connectAttr "polyMapDel3.out" "polyPlanarProj3.ip";
connectAttr "pCylinder2Shape.wm" "polyPlanarProj3.mp";
connectAttr "polyPlanarProj3.out" "polyMapCut43.ip";
connectAttr "polyMapCut43.out" "polyTweakUV24.ip";
connectAttr "polyTweakUV24.out" "polyMapCut44.ip";
connectAttr "polyMapCut44.out" "polyTweakUV25.ip";
connectAttr "polyTweakUV25.out" "polyMapCut45.ip";
connectAttr "polyMapCut45.out" "polyTweakUV26.ip";
connectAttr "polyTweakUV26.out" "polyMapCut46.ip";
connectAttr "polyMapCut46.out" "polyTweakUV27.ip";
connectAttr "polyTweakUV27.out" "polyMapCut47.ip";
connectAttr "polyMapCut47.out" "polyTweakUV28.ip";
connectAttr "polyTweakUV28.out" "polyMapCut48.ip";
connectAttr "polyMapCut48.out" "polyTweakUV29.ip";
connectAttr "polyTweakUV29.out" "polyMapCut49.ip";
connectAttr "polyMapCut49.out" "polyTweakUV30.ip";
connectAttr "polyTweakUV30.out" "polyMapCut50.ip";
connectAttr "polyMapCut50.out" "polyMapCut51.ip";
connectAttr "polyMapCut51.out" "polyTweakUV31.ip";
connectAttr "polyTweakUV31.out" "polyMapCut52.ip";
connectAttr "polyMapCut52.out" "polyTweakUV32.ip";
connectAttr "polyTweakUV32.out" "polyMapCut53.ip";
connectAttr "polyMapCut53.out" "polyTweakUV33.ip";
connectAttr "polyTweakUV33.out" "polyMapCut54.ip";
connectAttr "polyMapCut54.out" "polyTweakUV34.ip";
connectAttr "polyTweakUV34.out" "polyMapCut55.ip";
connectAttr "polyMapCut55.out" "polyTweakUV35.ip";
connectAttr "polyTweakUV35.out" "polyMapCut56.ip";
connectAttr "polyMapCut56.out" "polyTweakUV36.ip";
connectAttr "polyTweakUV36.out" "polyMapCut57.ip";
connectAttr "polyMapCut57.out" "polyTweakUV37.ip";
connectAttr "polyTweakUV37.out" "polyMapCut58.ip";
connectAttr "polyMapCut58.out" "polyTweakUV38.ip";
connectAttr "polyTweakUV38.out" "polyMapCut59.ip";
connectAttr "polyMapCut59.out" "polyTweakUV39.ip";
connectAttr "file1.oc" "lambert2.c";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "pCylinder2Shape.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "pCylinder2Shape.ciog.cog[1]" "lambert2SG.dsm" -na;
connectAttr "groupId6.msg" "lambert2SG.gn" -na;
connectAttr "groupId7.msg" "lambert2SG.gn" -na;
connectAttr "lambert2SG.msg" "materialInfo2.sg";
connectAttr "lambert2.msg" "materialInfo2.m";
connectAttr "file1.msg" "materialInfo2.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "polyTweakUV39.out" "polyNormalizeUV1.ip";
connectAttr "pCylinder2Shape.wm" "polyNormalizeUV1.mp";
connectAttr "polyNormalizeUV1.out" "polyTweakUV40.ip";
connectAttr "polyTweakUV40.out" "polyCopyUV1.ip";
connectAttr "polyCopyUV1.out" "polyTweakUV41.ip";
connectAttr "polyTweakUV41.out" "polyMapDel4.ip";
connectAttr "polyMapDel4.out" "polyTweakUV42.ip";
connectAttr "polyTweakUV42.out" "polyTweakUV43.ip";
connectAttr "standardSurface3.oc" "standardSurface3SG.ss";
connectAttr "standardSurface3SG.msg" "materialInfo3.sg";
connectAttr "standardSurface3.msg" "materialInfo3.m";
connectAttr "standardSurface3.msg" "materialInfo3.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file4.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file4.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file4.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file4.ws";
connectAttr "place2dTexture4.c" "file4.c";
connectAttr "place2dTexture4.tf" "file4.tf";
connectAttr "place2dTexture4.rf" "file4.rf";
connectAttr "place2dTexture4.mu" "file4.mu";
connectAttr "place2dTexture4.mv" "file4.mv";
connectAttr "place2dTexture4.s" "file4.s";
connectAttr "place2dTexture4.wu" "file4.wu";
connectAttr "place2dTexture4.wv" "file4.wv";
connectAttr "place2dTexture4.re" "file4.re";
connectAttr "place2dTexture4.of" "file4.of";
connectAttr "place2dTexture4.r" "file4.ro";
connectAttr "place2dTexture4.n" "file4.n";
connectAttr "place2dTexture4.vt1" "file4.vt1";
connectAttr "place2dTexture4.vt2" "file4.vt2";
connectAttr "place2dTexture4.vt3" "file4.vt3";
connectAttr "place2dTexture4.vc1" "file4.vc1";
connectAttr "place2dTexture4.o" "file4.uv";
connectAttr "place2dTexture4.ofs" "file4.fs";
connectAttr "polyTweakUV43.out" "groupParts3.ig";
connectAttr "groupId6.id" "groupParts3.gi";
connectAttr "groupParts3.og" "groupParts4.ig";
connectAttr "groupId8.id" "groupParts4.gi";
connectAttr "file5.oc" "lambert3.c";
connectAttr "lambert3.oc" "lambert3SG.ss";
connectAttr "pCylinder2Shape.iog.og[1]" "lambert3SG.dsm" -na;
connectAttr "groupId8.msg" "lambert3SG.gn" -na;
connectAttr "lambert3SG.msg" "materialInfo4.sg";
connectAttr "lambert3.msg" "materialInfo4.m";
connectAttr "file5.msg" "materialInfo4.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file5.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file5.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file5.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file5.ws";
connectAttr "place2dTexture5.c" "file5.c";
connectAttr "place2dTexture5.tf" "file5.tf";
connectAttr "place2dTexture5.rf" "file5.rf";
connectAttr "place2dTexture5.mu" "file5.mu";
connectAttr "place2dTexture5.mv" "file5.mv";
connectAttr "place2dTexture5.s" "file5.s";
connectAttr "place2dTexture5.wu" "file5.wu";
connectAttr "place2dTexture5.wv" "file5.wv";
connectAttr "place2dTexture5.re" "file5.re";
connectAttr "place2dTexture5.of" "file5.of";
connectAttr "place2dTexture5.r" "file5.ro";
connectAttr "place2dTexture5.n" "file5.n";
connectAttr "place2dTexture5.vt1" "file5.vt1";
connectAttr "place2dTexture5.vt2" "file5.vt2";
connectAttr "place2dTexture5.vt3" "file5.vt3";
connectAttr "place2dTexture5.vc1" "file5.vc1";
connectAttr "place2dTexture5.o" "file5.uv";
connectAttr "place2dTexture5.ofs" "file5.fs";
connectAttr "lambert3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "place2dTexture5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "file4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "file5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "place2dTexture4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "lambert3SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "standardSurface3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "standardSurface3SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "standardSurface2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "standardSurface3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "standardSurface2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "standardSurface3.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "file5.msg" ":defaultTextureList1.tx" -na;
connectAttr "pCylinderShape1.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
// End of Clean_Up_Chair_2.ma
