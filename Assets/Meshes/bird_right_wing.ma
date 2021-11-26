//Maya ASCII 2022 scene
//Name: bird_right_wing.ma
//Last modified: Fri, Nov 26, 2021 08:06:36 AM
//Codeset: 1252
requires maya "2022";
requires "mtoa" "4.2.4";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202108111415-612a77abf4";
fileInfo "osv" "Windows 10 Home v2009 (Build: 19043)";
fileInfo "UUID" "631F3D64-427F-64FB-AE34-DBB1748F8D40";
createNode transform -s -n "persp";
	rename -uid "14B4171E-4FA1-B798-2366-9680D9C958FD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.775100504493226 4.7915850956638408 7.2619629527866056 ;
	setAttr ".r" -type "double3" -29.738352729637946 -32.599999999983275 3.775352403010539e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "66AB132D-4BED-E5E5-C3DC-FFA59B6641E1";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 9.5107584212016452;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "E7D2C938-45A3-A140-6E44-F98AEB6679F4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "0C27E7FC-4D49-19A3-7455-F9A3758F225F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "042018E7-419F-10C8-9CBF-D0B469B022EC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "DF58FF65-46F4-6FF4-F2A2-078CA7CEADDF";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "2066636D-4EBD-3C5D-AC94-2ABE8F475721";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "5EA7AEF7-4DBC-1592-FC62-5E9BD8743C1C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "group2";
	rename -uid "2AFC2802-4F09-8C72-CB65-BEB73455BA14";
	setAttr ".rp" -type "double3" -2.2474504719019843 -0.0062102381432127818 0.25278154767827882 ;
	setAttr ".sp" -type "double3" -2.2474504719019843 -0.0062102381432127818 0.25278154767827882 ;
createNode mesh -n "group2Shape" -p "group2";
	rename -uid "583CCF16-48C0-E38B-746A-9D802C541C90";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "e[5]" "e[7]" "e[9]" "e[11]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:8]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[2]" "f[7]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[3]" "f[8]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[0]" "f[5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 2 "f[5]" "f[10]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 2 "f[4]" "f[9]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "f[1]" "f[6]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.375 0 0.62499505
		 0.0010827666 0.375 0.25 0.62499726 0.24938662 0.375 0.5 0.62499779 0.50046003 0.375
		 0.75 0.62499774 0.74938375 0.375 1 0.62499452 0.99998605 0.125 0 0.125 0.25 0.37362328
		 -0.024385666 0.75 0 0.70833331 0.33333334 0.35497686 0.25927591 0.37429598 0.4573676
		 0.625 0.875 0.35138983 0.80569458 0.36559272 1.0065830946;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".vt[0:9]"  -2.2552619 -0.050000001 0.76159 -0.55786538 -0.050000001 0.5
		 -2.2552619 0.050000001 0.76159 -0.55786538 0.050000001 0.5 -2.2552619 0.050000001 -0.23841
		 -0.55786538 0.050000001 -0.5 -2.2552619 -0.050000001 -0.23841 -0.55786538 -0.050000001 -0.5
		 1.035541058 -0.050000001 0.70258552 1.035541058 0.050000001 0.70258552;
	setAttr -s 17 ".ed[0:16]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 1 8 0 3 9 0 5 9 0 7 8 0 8 9 0;
	setAttr -s 9 -ch 34 ".fc[0:8]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 10 4 6 8
		mu 0 4 10 0 2 11
		f 4 12 16 -14 -6
		mu 0 4 12 13 14 15
		f 3 13 -15 -8
		mu 0 3 15 14 16
		f 4 14 -17 -16 -10
		mu 0 4 16 14 17 18
		f 3 15 -13 -12
		mu 0 3 18 17 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "8BAA212D-4E72-AF88-87E1-0FA896B8C234";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "6C1B6D2A-41CE-8B11-EE67-ABB929AFE57E";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "4AB516DA-457F-81C4-1B9F-49B6B8312AD8";
createNode displayLayerManager -n "layerManager";
	rename -uid "EDA83387-4136-CC8B-3407-7C96E5C01BA2";
createNode displayLayer -n "defaultLayer";
	rename -uid "42675A28-43C3-4F6D-46E7-6C9C5F75D51C";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "FE2C09BE-42AF-76BE-2CC0-D1B41C0B4B3D";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "B32DEB5F-4A51-CB84-8057-CDB7CE614270";
	setAttr ".g" yes;
createNode objectSet -n "set1";
	rename -uid "905276A1-4944-4290-1549-33A520B69F72";
	setAttr ".ihi" 0;
createNode objectSet -n "set2";
	rename -uid "96CFDDCD-4564-0A63-4FAC-E6B0A4A5C78C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1";
	rename -uid "91BAF007-4BBA-DF20-C13F-BC9042288B68";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2";
	rename -uid "7D389306-410E-0ACD-F6DE-60ABAF7D0872";
	setAttr ".ihi" 0;
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
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "groupId1.id" "group2Shape.iog.og[0].gid";
connectAttr "set1.mwc" "group2Shape.iog.og[0].gco";
connectAttr "groupId2.id" "group2Shape.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "group2Shape.iog.og[1].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "groupId1.msg" "set1.gn" -na;
connectAttr "group2Shape.iog.og[0]" "set1.dsm" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "group2Shape.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
// End of bird_right_wing.ma
