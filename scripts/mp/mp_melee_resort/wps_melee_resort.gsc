main()
{
	level.waypoints = mp_melee_resort();
}

mp_melee_resort()
{
/* 11:23 */waypoints = [];
/* 11:23 */waypoints[ 0 ] = spawnstruct();
/* 11:23 */waypoints[ 0 ].origin = (-730.2, -1061.3, 768.125);
/* 11:23 */waypoints[ 0 ].type = "stand";
/* 11:23 */waypoints[ 0 ].children[ 0 ] = 1;
/* 11:23 */waypoints[ 0 ].children[ 1 ] = 45;
/* 11:23 */waypoints[ 0 ].children[ 2 ] = 46;
/* 11:23 */waypoints[ 1 ] = spawnstruct();
/* 11:23 */waypoints[ 1 ].origin = (-434.033, -749.181, 760.125);
/* 11:23 */waypoints[ 1 ].type = "stand";
/* 11:23 */waypoints[ 1 ].children[ 0 ] = 0;
/* 11:23 */waypoints[ 1 ].children[ 1 ] = 2;
/* 11:23 */waypoints[ 2 ] = spawnstruct();
/* 11:23 */waypoints[ 2 ].origin = (-243.122, -436.599, 710.416);
/* 11:23 */waypoints[ 2 ].type = "stand";
/* 11:23 */waypoints[ 2 ].children[ 0 ] = 1;
/* 11:23 */waypoints[ 2 ].children[ 1 ] = 3;
/* 11:23 */waypoints[ 2 ].children[ 2 ] = 75;
/* 11:23 */waypoints[ 3 ] = spawnstruct();
/* 11:23 */waypoints[ 3 ].origin = (-181.821, -292.682, 760.125);
/* 11:23 */waypoints[ 3 ].type = "crouch";
/* 11:23 */waypoints[ 3 ].children[ 0 ] = 2;
/* 11:23 */waypoints[ 3 ].children[ 1 ] = 4;
/* 11:23 */waypoints[ 3 ].children[ 2 ] = 8;
/* 11:23 */waypoints[ 3 ].children[ 3 ] = 93;
/* 11:23 */waypoints[ 4 ] = spawnstruct();
/* 11:23 */waypoints[ 4 ].origin = (-339.741, 67.6819, 760.125);
/* 11:23 */waypoints[ 4 ].type = "crouch";
/* 11:23 */waypoints[ 4 ].children[ 0 ] = 3;
/* 11:23 */waypoints[ 4 ].children[ 1 ] = 5;
/* 11:23 */waypoints[ 4 ].children[ 2 ] = 69;
/* 11:23 */waypoints[ 4 ].children[ 3 ] = 95;
/* 11:23 */waypoints[ 5 ] = spawnstruct();
/* 11:23 */waypoints[ 5 ].origin = (-10.5104, 348.058, 760.125);
/* 11:23 */waypoints[ 5 ].type = "crouch";
/* 11:23 */waypoints[ 5 ].children[ 0 ] = 4;
/* 11:23 */waypoints[ 5 ].children[ 1 ] = 6;
/* 11:23 */waypoints[ 5 ].children[ 2 ] = 61;
/* 11:23 */waypoints[ 5 ].children[ 3 ] = 55;
/* 11:23 */waypoints[ 5 ].children[ 4 ] = 89;
/* 11:23 */waypoints[ 6 ] = spawnstruct();
/* 11:23 */waypoints[ 6 ].origin = (327.782, 107.907, 760.124);
/* 11:23 */waypoints[ 6 ].type = "crouch";
/* 11:23 */waypoints[ 6 ].children[ 0 ] = 5;
/* 11:23 */waypoints[ 6 ].children[ 1 ] = 7;
/* 11:23 */waypoints[ 6 ].children[ 2 ] = 60;
/* 11:23 */waypoints[ 7 ] = spawnstruct();
/* 11:23 */waypoints[ 7 ].origin = (307.993, -203.316, 760.125);
/* 11:23 */waypoints[ 7 ].type = "stand";
/* 11:23 */waypoints[ 7 ].children[ 0 ] = 6;
/* 11:23 */waypoints[ 7 ].children[ 1 ] = 8;
/* 11:23 */waypoints[ 7 ].children[ 2 ] = 51;
/* 11:23 */waypoints[ 7 ].children[ 3 ] = 92;
/* 11:23 */waypoints[ 8 ] = spawnstruct();
/* 11:23 */waypoints[ 8 ].origin = (1.48246, -366.782, 760.125);
/* 11:23 */waypoints[ 8 ].type = "stand";
/* 11:23 */waypoints[ 8 ].children[ 0 ] = 7;
/* 11:23 */waypoints[ 8 ].children[ 1 ] = 9;
/* 11:23 */waypoints[ 8 ].children[ 2 ] = 3;
/* 11:23 */waypoints[ 9 ] = spawnstruct();
/* 11:23 */waypoints[ 9 ].origin = (-5.57381, -677.211, 814.097);
/* 11:23 */waypoints[ 9 ].type = "stand";
/* 11:23 */waypoints[ 9 ].children[ 0 ] = 8;
/* 11:23 */waypoints[ 9 ].children[ 1 ] = 10;
/* 11:23 */waypoints[ 10 ] = spawnstruct();
/* 11:23 */waypoints[ 10 ].origin = (-2.77483, -1069.73, 760.125);
/* 11:23 */waypoints[ 10 ].type = "stand";
/* 11:23 */waypoints[ 10 ].children[ 0 ] = 9;
/* 11:23 */waypoints[ 10 ].children[ 1 ] = 11;
/* 11:23 */waypoints[ 10 ].children[ 2 ] = 47;
/* 11:23 */waypoints[ 10 ].children[ 3 ] = 46;
/* 11:23 */waypoints[ 11 ] = spawnstruct();
/* 11:23 */waypoints[ 11 ].origin = (292.272, -1264.59, 768.125);
/* 11:23 */waypoints[ 11 ].type = "stand";
/* 11:23 */waypoints[ 11 ].children[ 0 ] = 10;
/* 11:23 */waypoints[ 11 ].children[ 1 ] = 12;
/* 11:23 */waypoints[ 11 ].children[ 2 ] = 47;
/* 11:23 */waypoints[ 11 ].children[ 3 ] = 48;
/* 11:23 */waypoints[ 12 ] = spawnstruct();
/* 11:23 */waypoints[ 12 ].origin = (881.321, -1346.27, 768.625);
/* 11:23 */waypoints[ 12 ].type = "stand";
/* 11:23 */waypoints[ 12 ].children[ 0 ] = 11;
/* 11:23 */waypoints[ 12 ].children[ 1 ] = 13;
/* 11:23 */waypoints[ 13 ] = spawnstruct();
/* 11:23 */waypoints[ 13 ].origin = (1084.25, -1427.77, 769.125);
/* 11:23 */waypoints[ 13 ].type = "stand";
/* 11:23 */waypoints[ 13 ].children[ 0 ] = 12;
/* 11:23 */waypoints[ 13 ].children[ 1 ] = 14;
/* 11:23 */waypoints[ 13 ].children[ 2 ] = 82;
/* 11:23 */waypoints[ 14 ] = spawnstruct();
/* 11:23 */waypoints[ 14 ].origin = (1195.46, -1302.55, 768.625);
/* 11:23 */waypoints[ 14 ].type = "stand";
/* 11:23 */waypoints[ 14 ].children[ 0 ] = 13;
/* 11:23 */waypoints[ 14 ].children[ 1 ] = 15;
/* 11:23 */waypoints[ 15 ] = spawnstruct();
/* 11:23 */waypoints[ 15 ].origin = (1071.21, -1184.07, 769.05);
/* 11:23 */waypoints[ 15 ].type = "stand";
/* 11:23 */waypoints[ 15 ].children[ 0 ] = 14;
/* 11:23 */waypoints[ 15 ].children[ 1 ] = 16;
/* 11:23 */waypoints[ 16 ] = spawnstruct();
/* 11:23 */waypoints[ 16 ].origin = (1189.59, -1049.5, 768.971);
/* 11:23 */waypoints[ 16 ].type = "stand";
/* 11:23 */waypoints[ 16 ].children[ 0 ] = 15;
/* 11:23 */waypoints[ 16 ].children[ 1 ] = 17;
/* 11:23 */waypoints[ 17 ] = spawnstruct();
/* 11:23 */waypoints[ 17 ].origin = (1358.19, -1184.36, 768.625);
/* 11:23 */waypoints[ 17 ].type = "stand";
/* 11:23 */waypoints[ 17 ].children[ 0 ] = 16;
/* 11:23 */waypoints[ 17 ].children[ 1 ] = 18;
/* 11:23 */waypoints[ 18 ] = spawnstruct();
/* 11:23 */waypoints[ 18 ].origin = (1455.37, -1121.62, 768.625);
/* 11:23 */waypoints[ 18 ].type = "stand";
/* 11:23 */waypoints[ 18 ].children[ 0 ] = 17;
/* 11:23 */waypoints[ 18 ].children[ 1 ] = 19;
/* 11:23 */waypoints[ 18 ].children[ 2 ] = 82;
/* 11:23 */waypoints[ 19 ] = spawnstruct();
/* 11:23 */waypoints[ 19 ].origin = (1294.69, -967.966, 769.125);
/* 11:23 */waypoints[ 19 ].type = "stand";
/* 11:23 */waypoints[ 19 ].children[ 0 ] = 18;
/* 11:23 */waypoints[ 19 ].children[ 1 ] = 20;
/* 11:23 */waypoints[ 20 ] = spawnstruct();
/* 11:23 */waypoints[ 20 ].origin = (1387.03, -842.429, 768.125);
/* 11:23 */waypoints[ 20 ].type = "stand";
/* 11:23 */waypoints[ 20 ].children[ 0 ] = 19;
/* 11:23 */waypoints[ 20 ].children[ 1 ] = 21;
/* 11:23 */waypoints[ 21 ] = spawnstruct();
/* 11:23 */waypoints[ 21 ].origin = (1346.49, -95.6449, 768.125);
/* 11:23 */waypoints[ 21 ].type = "stand";
/* 11:23 */waypoints[ 21 ].children[ 0 ] = 20;
/* 11:23 */waypoints[ 21 ].children[ 1 ] = 22;
/* 11:23 */waypoints[ 21 ].children[ 2 ] = 49;
/* 11:23 */waypoints[ 21 ].children[ 3 ] = 66;
/* 11:23 */waypoints[ 22 ] = spawnstruct();
/* 11:23 */waypoints[ 22 ].origin = (1370.68, 448.344, 768.125);
/* 11:23 */waypoints[ 22 ].type = "stand";
/* 11:23 */waypoints[ 22 ].children[ 0 ] = 21;
/* 11:23 */waypoints[ 22 ].children[ 1 ] = 23;
/* 11:23 */waypoints[ 22 ].children[ 2 ] = 84;
/* 11:23 */waypoints[ 23 ] = spawnstruct();
/* 11:23 */waypoints[ 23 ].origin = (1358.85, 851.707, 768.125);
/* 11:23 */waypoints[ 23 ].type = "stand";
/* 11:23 */waypoints[ 23 ].children[ 0 ] = 22;
/* 11:23 */waypoints[ 23 ].children[ 1 ] = 24;
/* 11:23 */waypoints[ 23 ].children[ 2 ] = 83;
/* 11:23 */waypoints[ 23 ].children[ 3 ] = 28;
/* 11:23 */waypoints[ 24 ] = spawnstruct();
/* 11:23 */waypoints[ 24 ].origin = (1499.8, 1270.92, 768.125);
/* 11:23 */waypoints[ 24 ].type = "stand";
/* 11:23 */waypoints[ 24 ].children[ 0 ] = 23;
/* 11:23 */waypoints[ 24 ].children[ 1 ] = 25;
/* 11:23 */waypoints[ 25 ] = spawnstruct();
/* 11:23 */waypoints[ 25 ].origin = (1470.46, 1642.13, 768.125);
/* 11:23 */waypoints[ 25 ].type = "crouch";
/* 11:23 */waypoints[ 25 ].children[ 0 ] = 24;
/* 11:23 */waypoints[ 25 ].children[ 1 ] = 26;
/* 11:23 */waypoints[ 26 ] = spawnstruct();
/* 11:23 */waypoints[ 26 ].origin = (1242.78, 1775.8, 768.125);
/* 11:23 */waypoints[ 26 ].type = "stand";
/* 11:23 */waypoints[ 26 ].children[ 0 ] = 25;
/* 11:23 */waypoints[ 26 ].children[ 1 ] = 27;
/* 11:23 */waypoints[ 27 ] = spawnstruct();
/* 11:23 */waypoints[ 27 ].origin = (1073.85, 1572.15, 768.125);
/* 11:23 */waypoints[ 27 ].type = "stand";
/* 11:23 */waypoints[ 27 ].children[ 0 ] = 26;
/* 11:23 */waypoints[ 27 ].children[ 1 ] = 28;
/* 11:23 */waypoints[ 28 ] = spawnstruct();
/* 11:23 */waypoints[ 28 ].origin = (836.346, 1359.43, 768.125);
/* 11:23 */waypoints[ 28 ].type = "stand";
/* 11:23 */waypoints[ 28 ].children[ 0 ] = 27;
/* 11:23 */waypoints[ 28 ].children[ 1 ] = 29;
/* 11:23 */waypoints[ 28 ].children[ 2 ] = 23;
/* 11:23 */waypoints[ 29 ] = spawnstruct();
/* 11:23 */waypoints[ 29 ].origin = (393.469, 1248.79, 768.125);
/* 11:23 */waypoints[ 29 ].type = "stand";
/* 11:23 */waypoints[ 29 ].children[ 0 ] = 28;
/* 11:23 */waypoints[ 29 ].children[ 1 ] = 30;
/* 11:23 */waypoints[ 29 ].children[ 2 ] = 63;
/* 11:23 */waypoints[ 30 ] = spawnstruct();
/* 11:23 */waypoints[ 30 ].origin = (106.44, 1238.28, 768.125);
/* 11:23 */waypoints[ 30 ].type = "stand";
/* 11:23 */waypoints[ 30 ].children[ 0 ] = 29;
/* 11:23 */waypoints[ 30 ].children[ 1 ] = 31;
/* 11:23 */waypoints[ 30 ].children[ 2 ] = 62;
/* 11:23 */waypoints[ 31 ] = spawnstruct();
/* 11:23 */waypoints[ 31 ].origin = (-291.385, 1243.08, 768.125);
/* 11:23 */waypoints[ 31 ].type = "stand";
/* 11:23 */waypoints[ 31 ].children[ 0 ] = 30;
/* 11:23 */waypoints[ 31 ].children[ 1 ] = 32;
/* 11:23 */waypoints[ 31 ].children[ 2 ] = 62;
/* 11:23 */waypoints[ 31 ].children[ 3 ] = 76;
/* 11:23 */waypoints[ 32 ] = spawnstruct();
/* 11:23 */waypoints[ 32 ].origin = (-685.888, 1320.91, 768.125);
/* 11:23 */waypoints[ 32 ].type = "stand";
/* 11:23 */waypoints[ 32 ].children[ 0 ] = 31;
/* 11:23 */waypoints[ 32 ].children[ 1 ] = 33;
/* 11:23 */waypoints[ 33 ] = spawnstruct();
/* 11:23 */waypoints[ 33 ].origin = (-996.916, 1167.6, 768.125);
/* 11:23 */waypoints[ 33 ].type = "stand";
/* 11:23 */waypoints[ 33 ].children[ 0 ] = 32;
/* 11:23 */waypoints[ 33 ].children[ 1 ] = 34;
/* 11:23 */waypoints[ 34 ] = spawnstruct();
/* 11:23 */waypoints[ 34 ].origin = (-1263.69, 970.558, 768.125);
/* 11:23 */waypoints[ 34 ].type = "stand";
/* 11:23 */waypoints[ 34 ].children[ 0 ] = 33;
/* 11:23 */waypoints[ 34 ].children[ 1 ] = 35;
/* 11:23 */waypoints[ 34 ].children[ 2 ] = 39;
/* 11:23 */waypoints[ 34 ].children[ 3 ] = 40;
/* 11:23 */waypoints[ 34 ].children[ 4 ] = 81;
/* 11:23 */waypoints[ 35 ] = spawnstruct();
/* 11:23 */waypoints[ 35 ].origin = (-1406.42, 1030.07, 776.125);
/* 11:23 */waypoints[ 35 ].type = "stand";
/* 11:23 */waypoints[ 35 ].children[ 0 ] = 34;
/* 11:23 */waypoints[ 35 ].children[ 1 ] = 36;
/* 11:23 */waypoints[ 36 ] = spawnstruct();
/* 11:23 */waypoints[ 36 ].origin = (-1395.86, 1268.66, 776.125);
/* 11:23 */waypoints[ 36 ].type = "stand";
/* 11:23 */waypoints[ 36 ].children[ 0 ] = 35;
/* 11:23 */waypoints[ 36 ].children[ 1 ] = 37;
/* 11:23 */waypoints[ 37 ] = spawnstruct();
/* 11:23 */waypoints[ 37 ].origin = (-1409.89, 1419.72, 776.125);
/* 11:23 */waypoints[ 37 ].type = "stand";
/* 11:23 */waypoints[ 37 ].children[ 0 ] = 36;
/* 11:23 */waypoints[ 37 ].children[ 1 ] = 38;
/* 11:23 */waypoints[ 38 ] = spawnstruct();
/* 11:23 */waypoints[ 38 ].origin = (-1240.1, 1425.84, 776.125);
/* 11:23 */waypoints[ 38 ].type = "stand";
/* 11:23 */waypoints[ 38 ].children[ 0 ] = 37;
/* 11:23 */waypoints[ 38 ].children[ 1 ] = 39;
/* 11:23 */waypoints[ 39 ] = spawnstruct();
/* 11:23 */waypoints[ 39 ].origin = (-1182.56, 1179.41, 768.125);
/* 11:23 */waypoints[ 39 ].type = "stand";
/* 11:23 */waypoints[ 39 ].children[ 0 ] = 38;
/* 11:23 */waypoints[ 39 ].children[ 1 ] = 34;
/* 11:23 */waypoints[ 40 ] = spawnstruct();
/* 11:23 */waypoints[ 40 ].origin = (-1403.92, 536.019, 768.125);
/* 11:23 */waypoints[ 40 ].type = "stand";
/* 11:23 */waypoints[ 40 ].children[ 0 ] = 34;
/* 11:23 */waypoints[ 40 ].children[ 1 ] = 41;
/* 11:23 */waypoints[ 41 ] = spawnstruct();
/* 11:23 */waypoints[ 41 ].origin = (-1425.23, 283.566, 768.125);
/* 11:23 */waypoints[ 41 ].type = "stand";
/* 11:23 */waypoints[ 41 ].children[ 0 ] = 40;
/* 11:23 */waypoints[ 41 ].children[ 1 ] = 42;
/* 11:23 */waypoints[ 42 ] = spawnstruct();
/* 11:23 */waypoints[ 42 ].origin = (-1480.47, 10.2429, 768.125);
/* 11:23 */waypoints[ 42 ].type = "stand";
/* 11:23 */waypoints[ 42 ].children[ 0 ] = 41;
/* 11:23 */waypoints[ 42 ].children[ 1 ] = 43;
/* 11:23 */waypoints[ 43 ] = spawnstruct();
/* 11:23 */waypoints[ 43 ].origin = (-1392.45, -371.874, 768.125);
/* 11:23 */waypoints[ 43 ].type = "stand";
/* 11:23 */waypoints[ 43 ].children[ 0 ] = 42;
/* 11:23 */waypoints[ 43 ].children[ 1 ] = 44;
/* 11:23 */waypoints[ 43 ].children[ 2 ] = 72;
/* 11:23 */waypoints[ 44 ] = spawnstruct();
/* 11:23 */waypoints[ 44 ].origin = (-1166.09, -634.238, 768.125);
/* 11:23 */waypoints[ 44 ].type = "stand";
/* 11:23 */waypoints[ 44 ].children[ 0 ] = 43;
/* 11:23 */waypoints[ 44 ].children[ 1 ] = 45;
/* 11:23 */waypoints[ 45 ] = spawnstruct();
/* 11:23 */waypoints[ 45 ].origin = (-898.575, -900.347, 768.125);
/* 11:23 */waypoints[ 45 ].type = "stand";
/* 11:23 */waypoints[ 45 ].children[ 0 ] = 44;
/* 11:23 */waypoints[ 45 ].children[ 1 ] = 0;
/* 11:23 */waypoints[ 45 ].children[ 2 ] = 73;
/* 11:23 */waypoints[ 46 ] = spawnstruct();
/* 11:23 */waypoints[ 46 ].origin = (-302.491, -1263.68, 768.125);
/* 11:23 */waypoints[ 46 ].type = "stand";
/* 11:23 */waypoints[ 46 ].children[ 0 ] = 0;
/* 11:23 */waypoints[ 46 ].children[ 1 ] = 47;
/* 11:23 */waypoints[ 46 ].children[ 2 ] = 10;
/* 11:23 */waypoints[ 47 ] = spawnstruct();
/* 11:23 */waypoints[ 47 ].origin = (-0.476853, -1300.91, 768.125);
/* 11:23 */waypoints[ 47 ].type = "stand";
/* 11:23 */waypoints[ 47 ].children[ 0 ] = 46;
/* 11:23 */waypoints[ 47 ].children[ 1 ] = 10;
/* 11:23 */waypoints[ 47 ].children[ 2 ] = 11;
/* 11:23 */waypoints[ 48 ] = spawnstruct();
/* 11:23 */waypoints[ 48 ].origin = (906.419, -913.321, 768.125);
/* 11:23 */waypoints[ 48 ].type = "stand";
/* 11:23 */waypoints[ 48 ].children[ 0 ] = 11;
/* 11:23 */waypoints[ 48 ].children[ 1 ] = 49;
/* 11:23 */waypoints[ 49 ] = spawnstruct();
/* 11:23 */waypoints[ 49 ].origin = (1118.75, -606.975, 768.125);
/* 11:23 */waypoints[ 49 ].type = "stand";
/* 11:23 */waypoints[ 49 ].children[ 0 ] = 48;
/* 11:23 */waypoints[ 49 ].children[ 1 ] = 50;
/* 11:23 */waypoints[ 49 ].children[ 2 ] = 21;
/* 11:23 */waypoints[ 50 ] = spawnstruct();
/* 11:23 */waypoints[ 50 ].origin = (781.494, -426.196, 760.125);
/* 11:23 */waypoints[ 50 ].type = "stand";
/* 11:23 */waypoints[ 50 ].children[ 0 ] = 49;
/* 11:23 */waypoints[ 50 ].children[ 1 ] = 51;
/* 11:23 */waypoints[ 51 ] = spawnstruct();
/* 11:23 */waypoints[ 51 ].origin = (584.088, -326.384, 696.125);
/* 11:23 */waypoints[ 51 ].type = "stand";
/* 11:23 */waypoints[ 51 ].children[ 0 ] = 50;
/* 11:23 */waypoints[ 51 ].children[ 1 ] = 52;
/* 11:23 */waypoints[ 51 ].children[ 2 ] = 59;
/* 11:23 */waypoints[ 51 ].children[ 3 ] = 7;
/* 11:23 */waypoints[ 51 ].children[ 4 ] = 60;
/* 11:23 */waypoints[ 51 ].children[ 5 ] = 87;
/* 11:23 */waypoints[ 52 ] = spawnstruct();
/* 11:23 */waypoints[ 52 ].origin = (27.3556, -657.766, 696.125);
/* 11:23 */waypoints[ 52 ].type = "stand";
/* 11:23 */waypoints[ 52 ].children[ 0 ] = 51;
/* 11:23 */waypoints[ 52 ].children[ 1 ] = 53;
/* 11:23 */waypoints[ 52 ].children[ 2 ] = 87;
/* 11:23 */waypoints[ 53 ] = spawnstruct();
/* 11:23 */waypoints[ 53 ].origin = (-580.592, -340.797, 696.125);
/* 11:23 */waypoints[ 53 ].type = "stand";
/* 11:23 */waypoints[ 53 ].children[ 0 ] = 52;
/* 11:23 */waypoints[ 53 ].children[ 1 ] = 54;
/* 11:23 */waypoints[ 53 ].children[ 2 ] = 69;
/* 11:23 */waypoints[ 53 ].children[ 3 ] = 75;
/* 11:23 */waypoints[ 54 ] = spawnstruct();
/* 11:23 */waypoints[ 54 ].origin = (-822.778, 4.72435, 696.125);
/* 11:23 */waypoints[ 54 ].type = "stand";
/* 11:23 */waypoints[ 54 ].children[ 0 ] = 53;
/* 11:23 */waypoints[ 54 ].children[ 1 ] = 55;
/* 11:23 */waypoints[ 54 ].children[ 2 ] = 69;
/* 11:23 */waypoints[ 54 ].children[ 3 ] = 70;
/* 11:23 */waypoints[ 55 ] = spawnstruct();
/* 11:23 */waypoints[ 55 ].origin = (-541.53, 401.937, 696.125);
/* 11:23 */waypoints[ 55 ].type = "stand";
/* 11:23 */waypoints[ 55 ].children[ 0 ] = 54;
/* 11:23 */waypoints[ 55 ].children[ 1 ] = 56;
/* 11:23 */waypoints[ 55 ].children[ 2 ] = 80;
/* 11:23 */waypoints[ 55 ].children[ 3 ] = 5;
/* 11:23 */waypoints[ 55 ].children[ 4 ] = 69;
/* 11:23 */waypoints[ 56 ] = spawnstruct();
/* 11:23 */waypoints[ 56 ].origin = (-163.668, 665.978, 696.125);
/* 11:23 */waypoints[ 56 ].type = "stand";
/* 11:23 */waypoints[ 56 ].children[ 0 ] = 55;
/* 11:23 */waypoints[ 56 ].children[ 1 ] = 57;
/* 11:23 */waypoints[ 56 ].children[ 2 ] = 88;
/* 11:23 */waypoints[ 57 ] = spawnstruct();
/* 11:23 */waypoints[ 57 ].origin = (345.647, 614.047, 696.125);
/* 11:23 */waypoints[ 57 ].type = "stand";
/* 11:23 */waypoints[ 57 ].children[ 0 ] = 56;
/* 11:23 */waypoints[ 57 ].children[ 1 ] = 58;
/* 11:23 */waypoints[ 57 ].children[ 2 ] = 86;
/* 11:23 */waypoints[ 58 ] = spawnstruct();
/* 11:23 */waypoints[ 58 ].origin = (662.277, 310.669, 696.125);
/* 11:23 */waypoints[ 58 ].type = "stand";
/* 11:23 */waypoints[ 58 ].children[ 0 ] = 57;
/* 11:23 */waypoints[ 58 ].children[ 1 ] = 59;
/* 11:23 */waypoints[ 58 ].children[ 2 ] = 86;
/* 11:23 */waypoints[ 58 ].children[ 3 ] = 60;
/* 11:23 */waypoints[ 59 ] = spawnstruct();
/* 11:23 */waypoints[ 59 ].origin = (811.767, -32.7372, 696.125);
/* 11:23 */waypoints[ 59 ].type = "stand";
/* 11:23 */waypoints[ 59 ].children[ 0 ] = 58;
/* 11:23 */waypoints[ 59 ].children[ 1 ] = 51;
/* 11:23 */waypoints[ 59 ].children[ 2 ] = 60;
/* 11:23 */waypoints[ 59 ].children[ 3 ] = 67;
/* 11:23 */waypoints[ 60 ] = spawnstruct();
/* 11:23 */waypoints[ 60 ].origin = (663.417, 5.68826, 745.125);
/* 11:23 */waypoints[ 60 ].type = "stand";
/* 11:23 */waypoints[ 60 ].children[ 0 ] = 59;
/* 11:23 */waypoints[ 60 ].children[ 1 ] = 6;
/* 11:23 */waypoints[ 60 ].children[ 2 ] = 58;
/* 11:23 */waypoints[ 60 ].children[ 3 ] = 51;
/* 11:23 */waypoints[ 61 ] = spawnstruct();
/* 11:23 */waypoints[ 61 ].origin = (5.13731, 656.477, 813.892);
/* 11:23 */waypoints[ 61 ].type = "stand";
/* 11:23 */waypoints[ 61 ].children[ 0 ] = 5;
/* 11:23 */waypoints[ 61 ].children[ 1 ] = 62;
/* 11:23 */waypoints[ 62 ] = spawnstruct();
/* 11:23 */waypoints[ 62 ].origin = (3.62217, 1054.05, 760.125);
/* 11:23 */waypoints[ 62 ].type = "stand";
/* 11:23 */waypoints[ 62 ].children[ 0 ] = 61;
/* 11:23 */waypoints[ 62 ].children[ 1 ] = 30;
/* 11:23 */waypoints[ 62 ].children[ 2 ] = 31;
/* 11:23 */waypoints[ 63 ] = spawnstruct();
/* 11:23 */waypoints[ 63 ].origin = (807.219, 937.638, 768.125);
/* 11:23 */waypoints[ 63 ].type = "stand";
/* 11:23 */waypoints[ 63 ].children[ 0 ] = 29;
/* 11:23 */waypoints[ 63 ].children[ 1 ] = 64;
/* 11:23 */waypoints[ 63 ].children[ 2 ] = 85;
/* 11:23 */waypoints[ 63 ].children[ 3 ] = 86;
/* 11:23 */waypoints[ 64 ] = spawnstruct();
/* 11:23 */waypoints[ 64 ].origin = (1156.66, 623.253, 768.125);
/* 11:23 */waypoints[ 64 ].type = "stand";
/* 11:23 */waypoints[ 64 ].children[ 0 ] = 63;
/* 11:23 */waypoints[ 64 ].children[ 1 ] = 65;
/* 11:23 */waypoints[ 65 ] = spawnstruct();
/* 11:23 */waypoints[ 65 ].origin = (1157.17, 260.607, 760.125);
/* 11:23 */waypoints[ 65 ].type = "stand";
/* 11:23 */waypoints[ 65 ].children[ 0 ] = 64;
/* 11:23 */waypoints[ 65 ].children[ 1 ] = 66;
/* 11:23 */waypoints[ 66 ] = spawnstruct();
/* 11:23 */waypoints[ 66 ].origin = (1117.86, -70.7362, 760.125);
/* 11:23 */waypoints[ 66 ].type = "stand";
/* 11:23 */waypoints[ 66 ].children[ 0 ] = 65;
/* 11:23 */waypoints[ 66 ].children[ 1 ] = 67;
/* 11:23 */waypoints[ 66 ].children[ 2 ] = 21;
/* 11:23 */waypoints[ 66 ].children[ 3 ] = 68;
/* 11:23 */waypoints[ 67 ] = spawnstruct();
/* 11:23 */waypoints[ 67 ].origin = (942.025, -8.83358, 760.125);
/* 11:23 */waypoints[ 67 ].type = "stand";
/* 11:23 */waypoints[ 67 ].children[ 0 ] = 66;
/* 11:23 */waypoints[ 67 ].children[ 1 ] = 59;
/* 11:23 */waypoints[ 68 ] = spawnstruct();
/* 11:23 */waypoints[ 68 ].origin = (787.11, -223.586, 696.125);
/* 11:23 */waypoints[ 68 ].type = "stand";
/* 11:23 */waypoints[ 68 ].children[ 0 ] = 66;
/* 11:23 */waypoints[ 69 ] = spawnstruct();
/* 11:23 */waypoints[ 69 ].origin = (-704.286, -0.756135, 745.125);
/* 11:23 */waypoints[ 69 ].type = "stand";
/* 11:23 */waypoints[ 69 ].children[ 0 ] = 54;
/* 11:23 */waypoints[ 69 ].children[ 1 ] = 4;
/* 11:23 */waypoints[ 69 ].children[ 2 ] = 55;
/* 11:23 */waypoints[ 69 ].children[ 3 ] = 53;
/* 11:23 */waypoints[ 70 ] = spawnstruct();
/* 11:23 */waypoints[ 70 ].origin = (-947.166, 6.90127, 760.125);
/* 11:23 */waypoints[ 70 ].type = "stand";
/* 11:23 */waypoints[ 70 ].children[ 0 ] = 54;
/* 11:23 */waypoints[ 70 ].children[ 1 ] = 71;
/* 11:23 */waypoints[ 71 ] = spawnstruct();
/* 11:23 */waypoints[ 71 ].origin = (-1181.02, -2.84803, 760.125);
/* 11:23 */waypoints[ 71 ].type = "stand";
/* 11:23 */waypoints[ 71 ].children[ 0 ] = 70;
/* 11:23 */waypoints[ 71 ].children[ 1 ] = 72;
/* 11:23 */waypoints[ 71 ].children[ 2 ] = 79;
/* 11:23 */waypoints[ 72 ] = spawnstruct();
/* 11:23 */waypoints[ 72 ].origin = (-1225.28, -268.174, 768.125);
/* 11:23 */waypoints[ 72 ].type = "stand";
/* 11:23 */waypoints[ 72 ].children[ 0 ] = 71;
/* 11:23 */waypoints[ 72 ].children[ 1 ] = 43;
/* 11:23 */waypoints[ 72 ].children[ 2 ] = 73;
/* 11:23 */waypoints[ 73 ] = spawnstruct();
/* 11:23 */waypoints[ 73 ].origin = (-905.919, -495.786, 760.125);
/* 11:23 */waypoints[ 73 ].type = "stand";
/* 11:23 */waypoints[ 73 ].children[ 0 ] = 72;
/* 11:23 */waypoints[ 73 ].children[ 1 ] = 74;
/* 11:23 */waypoints[ 73 ].children[ 2 ] = 45;
/* 11:23 */waypoints[ 74 ] = spawnstruct();
/* 11:23 */waypoints[ 74 ].origin = (-803.822, -650.708, 760.125);
/* 11:23 */waypoints[ 74 ].type = "stand";
/* 11:23 */waypoints[ 74 ].children[ 0 ] = 73;
/* 11:23 */waypoints[ 74 ].children[ 1 ] = 75;
/* 11:23 */waypoints[ 75 ] = spawnstruct();
/* 11:23 */waypoints[ 75 ].origin = (-592.902, -609.983, 696.109);
/* 11:23 */waypoints[ 75 ].type = "stand";
/* 11:23 */waypoints[ 75 ].children[ 0 ] = 74;
/* 11:23 */waypoints[ 75 ].children[ 1 ] = 2;
/* 11:23 */waypoints[ 75 ].children[ 2 ] = 53;
/* 11:23 */waypoints[ 76 ] = spawnstruct();
/* 11:23 */waypoints[ 76 ].origin = (-592.744, 1019.12, 760.125);
/* 11:23 */waypoints[ 76 ].type = "stand";
/* 11:23 */waypoints[ 76 ].children[ 0 ] = 31;
/* 11:23 */waypoints[ 76 ].children[ 1 ] = 77;
/* 11:23 */waypoints[ 76 ].children[ 2 ] = 88;
/* 11:23 */waypoints[ 77 ] = spawnstruct();
/* 11:23 */waypoints[ 77 ].origin = (-886.003, 872.038, 768.125);
/* 11:23 */waypoints[ 77 ].type = "stand";
/* 11:23 */waypoints[ 77 ].children[ 0 ] = 76;
/* 11:23 */waypoints[ 77 ].children[ 1 ] = 78;
/* 11:23 */waypoints[ 77 ].children[ 2 ] = 81;
/* 11:23 */waypoints[ 78 ] = spawnstruct();
/* 11:23 */waypoints[ 78 ].origin = (-1103.2, 603.703, 768.125);
/* 11:23 */waypoints[ 78 ].type = "stand";
/* 11:23 */waypoints[ 78 ].children[ 0 ] = 77;
/* 11:23 */waypoints[ 78 ].children[ 1 ] = 79;
/* 11:23 */waypoints[ 78 ].children[ 2 ] = 80;
/* 11:23 */waypoints[ 78 ].children[ 3 ] = 81;
/* 11:23 */waypoints[ 79 ] = spawnstruct();
/* 11:23 */waypoints[ 79 ].origin = (-1183.24, 216.145, 760.125);
/* 11:23 */waypoints[ 79 ].type = "stand";
/* 11:23 */waypoints[ 79 ].children[ 0 ] = 78;
/* 11:23 */waypoints[ 79 ].children[ 1 ] = 71;
/* 11:23 */waypoints[ 80 ] = spawnstruct();
/* 11:23 */waypoints[ 80 ].origin = (-797.932, 457.051, 760.125);
/* 11:23 */waypoints[ 80 ].type = "stand";
/* 11:23 */waypoints[ 80 ].children[ 0 ] = 78;
/* 11:23 */waypoints[ 80 ].children[ 1 ] = 55;
/* 11:23 */waypoints[ 81 ] = spawnstruct();
/* 11:23 */waypoints[ 81 ].origin = (-1066.77, 799.024, 768.125);
/* 11:23 */waypoints[ 81 ].type = "stand";
/* 11:23 */waypoints[ 81 ].children[ 0 ] = 34;
/* 11:23 */waypoints[ 81 ].children[ 1 ] = 78;
/* 11:23 */waypoints[ 81 ].children[ 2 ] = 77;
/* 11:23 */waypoints[ 82 ] = spawnstruct();
/* 11:23 */waypoints[ 82 ].origin = (1385.19, -1445.45, 769.125);
/* 11:23 */waypoints[ 82 ].type = "stand";
/* 11:23 */waypoints[ 82 ].children[ 0 ] = 13;
/* 11:23 */waypoints[ 82 ].children[ 1 ] = 18;
/* 11:23 */waypoints[ 83 ] = spawnstruct();
/* 11:23 */waypoints[ 83 ].origin = (1544.28, 738.324, 768.125);
/* 11:23 */waypoints[ 83 ].type = "stand";
/* 11:23 */waypoints[ 83 ].children[ 0 ] = 84;
/* 11:23 */waypoints[ 83 ].children[ 1 ] = 23;
/* 11:23 */waypoints[ 84 ] = spawnstruct();
/* 11:23 */waypoints[ 84 ].origin = (1528.1, 532.906, 768.125);
/* 11:23 */waypoints[ 84 ].type = "crouch";
/* 11:23 */waypoints[ 84 ].children[ 0 ] = 22;
/* 11:23 */waypoints[ 84 ].children[ 1 ] = 83;
/* 11:23 */waypoints[ 85 ] = spawnstruct();
/* 11:23 */waypoints[ 85 ].origin = (1067.36, 1253.83, 768.057);
/* 11:23 */waypoints[ 85 ].type = "stand";
/* 11:23 */waypoints[ 85 ].children[ 0 ] = 63;
/* 11:23 */waypoints[ 86 ] = spawnstruct();
/* 11:23 */waypoints[ 86 ].origin = (492.108, 580.049, 696.125);
/* 11:23 */waypoints[ 86 ].type = "stand";
/* 11:23 */waypoints[ 86 ].children[ 0 ] = 63;
/* 11:23 */waypoints[ 86 ].children[ 1 ] = 57;
/* 11:23 */waypoints[ 86 ].children[ 2 ] = 58;
/* 11:23 */waypoints[ 87 ] = spawnstruct();
/* 11:23 */waypoints[ 87 ].origin = (630.484, -683.954, 696.058);
/* 11:23 */waypoints[ 87 ].type = "stand";
/* 11:23 */waypoints[ 87 ].children[ 0 ] = 52;
/* 11:23 */waypoints[ 87 ].children[ 1 ] = 51;
/* 11:23 */waypoints[ 88 ] = spawnstruct();
/* 11:23 */waypoints[ 88 ].origin = (-458.922, 796.606, 760.125);
/* 11:23 */waypoints[ 88 ].type = "stand";
/* 11:23 */waypoints[ 88 ].children[ 0 ] = 76;
/* 11:23 */waypoints[ 88 ].children[ 1 ] = 56;
/* 11:23 */waypoints[ 89 ] = spawnstruct();
/* 11:23 */waypoints[ 89 ].origin = (-34.6735, 149.676, 760.953);
/* 11:23 */waypoints[ 89 ].type = "stand";
/* 11:23 */waypoints[ 89 ].children[ 0 ] = 5;
/* 11:23 */waypoints[ 89 ].children[ 1 ] = 90;
/* 11:23 */waypoints[ 89 ].children[ 2 ] = 95;
/* 11:23 */waypoints[ 90 ] = spawnstruct();
/* 11:23 */waypoints[ 90 ].origin = (112.021, 144.299, 762.125);
/* 11:23 */waypoints[ 90 ].type = "stand";
/* 11:23 */waypoints[ 90 ].children[ 0 ] = 89;
/* 11:23 */waypoints[ 90 ].children[ 1 ] = 91;
/* 11:23 */waypoints[ 91 ] = spawnstruct();
/* 11:23 */waypoints[ 91 ].origin = (183.552, -7.18491, 762.125);
/* 11:23 */waypoints[ 91 ].type = "crouch";
/* 11:23 */waypoints[ 91 ].children[ 0 ] = 90;
/* 11:23 */waypoints[ 91 ].children[ 1 ] = 92;
/* 11:23 */waypoints[ 92 ] = spawnstruct();
/* 11:23 */waypoints[ 92 ].origin = (91.0829, -174.987, 762.125);
/* 11:23 */waypoints[ 92 ].type = "crouch";
/* 11:23 */waypoints[ 92 ].children[ 0 ] = 91;
/* 11:23 */waypoints[ 92 ].children[ 1 ] = 93;
/* 11:23 */waypoints[ 92 ].children[ 2 ] = 7;
/* 11:23 */waypoints[ 93 ] = spawnstruct();
/* 11:23 */waypoints[ 93 ].origin = (-81.5883, -166.696, 762.125);
/* 11:23 */waypoints[ 93 ].type = "crouch";
/* 11:23 */waypoints[ 93 ].children[ 0 ] = 92;
/* 11:23 */waypoints[ 93 ].children[ 1 ] = 94;
/* 11:23 */waypoints[ 93 ].children[ 2 ] = 3;
/* 11:23 */waypoints[ 94 ] = spawnstruct();
/* 11:23 */waypoints[ 94 ].origin = (-176.838, -71.4926, 762.125);
/* 11:23 */waypoints[ 94 ].type = "crouch";
/* 11:23 */waypoints[ 94 ].children[ 0 ] = 93;
/* 11:23 */waypoints[ 94 ].children[ 1 ] = 95;
/* 11:23 */waypoints[ 95 ] = spawnstruct();
/* 11:23 */waypoints[ 95 ].origin = (-158.907, 99.1066, 762.125);
/* 11:23 */waypoints[ 95 ].type = "crouch";
/* 11:23 */waypoints[ 95 ].children[ 0 ] = 94;
/* 11:23 */waypoints[ 95 ].children[ 1 ] = 89;
/* 11:23 */waypoints[ 95 ].children[ 2 ] = 4;
/* 11:23 */return waypoints;
}
