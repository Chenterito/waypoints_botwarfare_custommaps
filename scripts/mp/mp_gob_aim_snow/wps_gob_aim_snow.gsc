main()
{
	level.waypoints = mp_gob_aim_snow();
}

mp_gob_aim_snow()
{
/*  5:26 */waypoints = [];
/*  5:26 */waypoints[ 0 ] = spawnstruct();
/*  5:26 */waypoints[ 0 ].origin = (1236.2, -1166.08, -183.875);
/*  5:26 */waypoints[ 0 ].type = "stand";
/*  5:26 */waypoints[ 0 ].children[ 0 ] = 1;
/*  5:26 */waypoints[ 1 ] = spawnstruct();
/*  5:26 */waypoints[ 1 ].origin = (1201.94, -1276.54, -183.875);
/*  5:26 */waypoints[ 1 ].type = "stand";
/*  5:26 */waypoints[ 1 ].children[ 0 ] = 0;
/*  5:26 */waypoints[ 1 ].children[ 1 ] = 2;
/*  5:26 */waypoints[ 2 ] = spawnstruct();
/*  5:26 */waypoints[ 2 ].origin = (872.22, -1208.88, -183.875);
/*  5:26 */waypoints[ 2 ].type = "crouch";
/*  5:26 */waypoints[ 2 ].children[ 0 ] = 1;
/*  5:26 */waypoints[ 2 ].children[ 1 ] = 3;
/*  5:26 */waypoints[ 3 ] = spawnstruct();
/*  5:26 */waypoints[ 3 ].origin = (737.227, -1077.11, -183.875);
/*  5:26 */waypoints[ 3 ].type = "crouch";
/*  5:26 */waypoints[ 3 ].children[ 0 ] = 2;
/*  5:26 */waypoints[ 3 ].children[ 1 ] = 4;
/*  5:26 */waypoints[ 3 ].children[ 2 ] = 23;
/*  5:26 */waypoints[ 3 ].children[ 3 ] = 24;
/*  5:26 */waypoints[ 4 ] = spawnstruct();
/*  5:26 */waypoints[ 4 ].origin = (785.963, -888.499, -183.875);
/*  5:26 */waypoints[ 4 ].type = "stand";
/*  5:26 */waypoints[ 4 ].children[ 0 ] = 3;
/*  5:26 */waypoints[ 4 ].children[ 1 ] = 5;
/*  5:26 */waypoints[ 5 ] = spawnstruct();
/*  5:26 */waypoints[ 5 ].origin = (648, -845.009, -183.875);
/*  5:26 */waypoints[ 5 ].type = "crouch";
/*  5:26 */waypoints[ 5 ].children[ 0 ] = 4;
/*  5:26 */waypoints[ 5 ].children[ 1 ] = 6;
/*  5:26 */waypoints[ 6 ] = spawnstruct();
/*  5:26 */waypoints[ 6 ].origin = (575.705, -1001.79, -183.875);
/*  5:26 */waypoints[ 6 ].type = "crouch";
/*  5:26 */waypoints[ 6 ].children[ 0 ] = 5;
/*  5:26 */waypoints[ 6 ].children[ 1 ] = 7;
/*  5:26 */waypoints[ 7 ] = spawnstruct();
/*  5:26 */waypoints[ 7 ].origin = (512.926, -882.621, -183.875);
/*  5:26 */waypoints[ 7 ].type = "stand";
/*  5:26 */waypoints[ 7 ].children[ 0 ] = 6;
/*  5:26 */waypoints[ 7 ].children[ 1 ] = 8;
/*  5:26 */waypoints[ 7 ].children[ 2 ] = 26;
/*  5:26 */waypoints[ 8 ] = spawnstruct();
/*  5:26 */waypoints[ 8 ].origin = (447.703, -971.581, -183.875);
/*  5:26 */waypoints[ 8 ].type = "crouch";
/*  5:26 */waypoints[ 8 ].children[ 0 ] = 7;
/*  5:26 */waypoints[ 8 ].children[ 1 ] = 9;
/*  5:26 */waypoints[ 8 ].children[ 2 ] = 25;
/*  5:26 */waypoints[ 9 ] = spawnstruct();
/*  5:26 */waypoints[ 9 ].origin = (267.746, -1061.99, -183.958);
/*  5:26 */waypoints[ 9 ].type = "stand";
/*  5:26 */waypoints[ 9 ].children[ 0 ] = 8;
/*  5:26 */waypoints[ 9 ].children[ 1 ] = 10;
/*  5:26 */waypoints[ 10 ] = spawnstruct();
/*  5:26 */waypoints[ 10 ].origin = (130.775, -1229.77, -183.946);
/*  5:26 */waypoints[ 10 ].type = "stand";
/*  5:26 */waypoints[ 10 ].children[ 0 ] = 9;
/*  5:26 */waypoints[ 10 ].children[ 1 ] = 11;
/*  5:26 */waypoints[ 11 ] = spawnstruct();
/*  5:26 */waypoints[ 11 ].origin = (40.2392, -1199.13, -183.993);
/*  5:26 */waypoints[ 11 ].type = "stand";
/*  5:26 */waypoints[ 11 ].children[ 0 ] = 10;
/*  5:26 */waypoints[ 11 ].children[ 1 ] = 12;
/*  5:26 */waypoints[ 12 ] = spawnstruct();
/*  5:26 */waypoints[ 12 ].origin = (22.3734, -1413.93, -183.895);
/*  5:26 */waypoints[ 12 ].type = "stand";
/*  5:26 */waypoints[ 12 ].children[ 0 ] = 11;
/*  5:26 */waypoints[ 12 ].children[ 1 ] = 13;
/*  5:26 */waypoints[ 13 ] = spawnstruct();
/*  5:26 */waypoints[ 13 ].origin = (432.532, -1418.58, -183.896);
/*  5:26 */waypoints[ 13 ].type = "stand";
/*  5:26 */waypoints[ 13 ].children[ 0 ] = 12;
/*  5:26 */waypoints[ 13 ].children[ 1 ] = 14;
/*  5:26 */waypoints[ 14 ] = spawnstruct();
/*  5:26 */waypoints[ 14 ].origin = (651.334, -1071.95, -183.875);
/*  5:26 */waypoints[ 14 ].type = "crouch";
/*  5:26 */waypoints[ 14 ].children[ 0 ] = 13;
/*  5:26 */waypoints[ 14 ].children[ 1 ] = 15;
/*  5:26 */waypoints[ 15 ] = spawnstruct();
/*  5:26 */waypoints[ 15 ].origin = (798.21, -837.096, -183.875);
/*  5:26 */waypoints[ 15 ].type = "crouch";
/*  5:26 */waypoints[ 15 ].children[ 0 ] = 14;
/*  5:26 */waypoints[ 15 ].children[ 1 ] = 16;
/*  5:26 */waypoints[ 16 ] = spawnstruct();
/*  5:26 */waypoints[ 16 ].origin = (660.907, -419.729, -183.875);
/*  5:26 */waypoints[ 16 ].type = "stand";
/*  5:26 */waypoints[ 16 ].children[ 0 ] = 15;
/*  5:26 */waypoints[ 16 ].children[ 1 ] = 17;
/*  5:26 */waypoints[ 17 ] = spawnstruct();
/*  5:26 */waypoints[ 17 ].origin = (1078.25, -373.586, -169.769);
/*  5:26 */waypoints[ 17 ].type = "stand";
/*  5:26 */waypoints[ 17 ].children[ 0 ] = 16;
/*  5:26 */waypoints[ 17 ].children[ 1 ] = 18;
/*  5:26 */waypoints[ 18 ] = spawnstruct();
/*  5:26 */waypoints[ 18 ].origin = (1051.83, -631.812, -183.875);
/*  5:26 */waypoints[ 18 ].type = "crouch";
/*  5:26 */waypoints[ 18 ].children[ 0 ] = 17;
/*  5:26 */waypoints[ 18 ].children[ 1 ] = 19;
/*  5:26 */waypoints[ 19 ] = spawnstruct();
/*  5:26 */waypoints[ 19 ].origin = (991.546, -845.246, -183.875);
/*  5:26 */waypoints[ 19 ].type = "stand";
/*  5:26 */waypoints[ 19 ].children[ 0 ] = 18;
/*  5:26 */waypoints[ 19 ].children[ 1 ] = 20;
/*  5:26 */waypoints[ 20 ] = spawnstruct();
/*  5:26 */waypoints[ 20 ].origin = (1171.02, -932.441, -183.875);
/*  5:26 */waypoints[ 20 ].type = "stand";
/*  5:26 */waypoints[ 20 ].children[ 0 ] = 19;
/*  5:26 */waypoints[ 20 ].children[ 1 ] = 21;
/*  5:26 */waypoints[ 21 ] = spawnstruct();
/*  5:26 */waypoints[ 21 ].origin = (1093.18, -1081.47, -183.875);
/*  5:26 */waypoints[ 21 ].type = "stand";
/*  5:26 */waypoints[ 21 ].children[ 0 ] = 20;
/*  5:26 */waypoints[ 21 ].children[ 1 ] = 22;
/*  5:26 */waypoints[ 22 ] = spawnstruct();
/*  5:26 */waypoints[ 22 ].origin = (813.293, -1352.13, -183.875);
/*  5:26 */waypoints[ 22 ].type = "crouch";
/*  5:26 */waypoints[ 22 ].children[ 0 ] = 21;
/*  5:26 */waypoints[ 22 ].children[ 1 ] = 23;
/*  5:26 */waypoints[ 22 ].children[ 2 ] = 55;
/*  5:26 */waypoints[ 23 ] = spawnstruct();
/*  5:26 */waypoints[ 23 ].origin = (827.637, -1211.29, -183.875);
/*  5:26 */waypoints[ 23 ].type = "crouch";
/*  5:26 */waypoints[ 23 ].children[ 0 ] = 22;
/*  5:26 */waypoints[ 23 ].children[ 1 ] = 3;
/*  5:26 */waypoints[ 24 ] = spawnstruct();
/*  5:26 */waypoints[ 24 ].origin = (688.974, -1206.02, -183.875);
/*  5:26 */waypoints[ 24 ].type = "stand";
/*  5:26 */waypoints[ 24 ].children[ 0 ] = 3;
/*  5:26 */waypoints[ 24 ].children[ 1 ] = 25;
/*  5:26 */waypoints[ 25 ] = spawnstruct();
/*  5:26 */waypoints[ 25 ].origin = (433.73, -1186.45, -183.875);
/*  5:26 */waypoints[ 25 ].type = "crouch";
/*  5:26 */waypoints[ 25 ].children[ 0 ] = 24;
/*  5:26 */waypoints[ 25 ].children[ 1 ] = 8;
/*  5:26 */waypoints[ 26 ] = spawnstruct();
/*  5:26 */waypoints[ 26 ].origin = (341.525, -700.961, -183.875);
/*  5:26 */waypoints[ 26 ].type = "crouch";
/*  5:26 */waypoints[ 26 ].children[ 0 ] = 7;
/*  5:26 */waypoints[ 26 ].children[ 1 ] = 27;
/*  5:26 */waypoints[ 27 ] = spawnstruct();
/*  5:26 */waypoints[ 27 ].origin = (151.519, -435.009, -183.875);
/*  5:26 */waypoints[ 27 ].type = "stand";
/*  5:26 */waypoints[ 27 ].children[ 0 ] = 26;
/*  5:26 */waypoints[ 27 ].children[ 1 ] = 28;
/*  5:26 */waypoints[ 28 ] = spawnstruct();
/*  5:26 */waypoints[ 28 ].origin = (62.1321, -391.977, -183.875);
/*  5:26 */waypoints[ 28 ].type = "stand";
/*  5:26 */waypoints[ 28 ].children[ 0 ] = 27;
/*  5:26 */waypoints[ 28 ].children[ 1 ] = 29;
/*  5:26 */waypoints[ 29 ] = spawnstruct();
/*  5:26 */waypoints[ 29 ].origin = (-305.705, -403.453, -103.875);
/*  5:26 */waypoints[ 29 ].type = "stand";
/*  5:26 */waypoints[ 29 ].children[ 0 ] = 28;
/*  5:26 */waypoints[ 29 ].children[ 1 ] = 30;
/*  5:26 */waypoints[ 29 ].children[ 2 ] = 62;
/*  5:26 */waypoints[ 30 ] = spawnstruct();
/*  5:26 */waypoints[ 30 ].origin = (-323.704, -619.034, -103.875);
/*  5:26 */waypoints[ 30 ].type = "stand";
/*  5:26 */waypoints[ 30 ].children[ 0 ] = 29;
/*  5:26 */waypoints[ 30 ].children[ 1 ] = 31;
/*  5:26 */waypoints[ 31 ] = spawnstruct();
/*  5:26 */waypoints[ 31 ].origin = (-397.519, -635.046, -103.875);
/*  5:26 */waypoints[ 31 ].type = "stand";
/*  5:26 */waypoints[ 31 ].children[ 0 ] = 30;
/*  5:26 */waypoints[ 31 ].children[ 1 ] = 32;
/*  5:26 */waypoints[ 31 ].children[ 2 ] = 34;
/*  5:26 */waypoints[ 32 ] = spawnstruct();
/*  5:26 */waypoints[ 32 ].origin = (-231.384, -1042.11, -103.875);
/*  5:26 */waypoints[ 32 ].type = "stand";
/*  5:26 */waypoints[ 32 ].children[ 0 ] = 31;
/*  5:26 */waypoints[ 32 ].children[ 1 ] = 33;
/*  5:26 */waypoints[ 33 ] = spawnstruct();
/*  5:26 */waypoints[ 33 ].origin = (-306.53, -1288.87, -103.875);
/*  5:26 */waypoints[ 33 ].type = "stand";
/*  5:26 */waypoints[ 33 ].children[ 0 ] = 32;
/*  5:26 */waypoints[ 34 ] = spawnstruct();
/*  5:26 */waypoints[ 34 ].origin = (-410.497, -990.339, -103.875);
/*  5:26 */waypoints[ 34 ].type = "stand";
/*  5:26 */waypoints[ 34 ].children[ 0 ] = 31;
/*  5:26 */waypoints[ 34 ].children[ 1 ] = 35;
/*  5:26 */waypoints[ 35 ] = spawnstruct();
/*  5:26 */waypoints[ 35 ].origin = (-440.496, -1327.12, -15.875);
/*  5:26 */waypoints[ 35 ].type = "stand";
/*  5:26 */waypoints[ 35 ].children[ 0 ] = 34;
/*  5:26 */waypoints[ 35 ].children[ 1 ] = 36;
/*  5:26 */waypoints[ 36 ] = spawnstruct();
/*  5:26 */waypoints[ 36 ].origin = (-423.468, -1432.62, -15.875);
/*  5:26 */waypoints[ 36 ].type = "stand";
/*  5:26 */waypoints[ 36 ].children[ 0 ] = 35;
/*  5:26 */waypoints[ 36 ].children[ 1 ] = 37;
/*  5:26 */waypoints[ 37 ] = spawnstruct();
/*  5:26 */waypoints[ 37 ].origin = (299.338, -1428, -15.875);
/*  5:26 */waypoints[ 37 ].type = "stand";
/*  5:26 */waypoints[ 37 ].children[ 0 ] = 36;
/*  5:26 */waypoints[ 37 ].children[ 1 ] = 38;
/*  5:26 */waypoints[ 38 ] = spawnstruct();
/*  5:26 */waypoints[ 38 ].origin = (577.017, -1412.55, 40.125);
/*  5:26 */waypoints[ 38 ].type = "stand";
/*  5:26 */waypoints[ 38 ].children[ 0 ] = 37;
/*  5:26 */waypoints[ 38 ].children[ 1 ] = 39;
/*  5:26 */waypoints[ 39 ] = spawnstruct();
/*  5:26 */waypoints[ 39 ].origin = (552.869, -1141.43, 40.125);
/*  5:26 */waypoints[ 39 ].type = "stand";
/*  5:26 */waypoints[ 39 ].children[ 0 ] = 38;
/*  5:26 */waypoints[ 39 ].children[ 1 ] = 40;
/*  5:26 */waypoints[ 40 ] = spawnstruct();
/*  5:26 */waypoints[ 40 ].origin = (608.874, -1094.42, 40.125);
/*  5:26 */waypoints[ 40 ].type = "stand";
/*  5:26 */waypoints[ 40 ].children[ 0 ] = 39;
/*  5:26 */waypoints[ 40 ].children[ 1 ] = 41;
/*  5:26 */waypoints[ 41 ] = spawnstruct();
/*  5:26 */waypoints[ 41 ].origin = (584.763, -986.327, 40.125);
/*  5:26 */waypoints[ 41 ].type = "stand";
/*  5:26 */waypoints[ 41 ].children[ 0 ] = 40;
/*  5:26 */waypoints[ 41 ].children[ 1 ] = 42;
/*  5:26 */waypoints[ 42 ] = spawnstruct();
/*  5:26 */waypoints[ 42 ].origin = (518.081, -962.404, 40.125);
/*  5:26 */waypoints[ 42 ].type = "stand";
/*  5:26 */waypoints[ 42 ].children[ 0 ] = 41;
/*  5:26 */waypoints[ 42 ].children[ 1 ] = 43;
/*  5:26 */waypoints[ 43 ] = spawnstruct();
/*  5:26 */waypoints[ 43 ].origin = (537.726, -792.442, 40.125);
/*  5:26 */waypoints[ 43 ].type = "stand";
/*  5:26 */waypoints[ 43 ].children[ 0 ] = 42;
/*  5:26 */waypoints[ 43 ].children[ 1 ] = 44;
/*  5:26 */waypoints[ 44 ] = spawnstruct();
/*  5:26 */waypoints[ 44 ].origin = (587.263, -721.85, 40.125);
/*  5:26 */waypoints[ 44 ].type = "stand";
/*  5:26 */waypoints[ 44 ].children[ 0 ] = 43;
/*  5:26 */waypoints[ 44 ].children[ 1 ] = 45;
/*  5:26 */waypoints[ 45 ] = spawnstruct();
/*  5:26 */waypoints[ 45 ].origin = (516.482, -401.677, 40.125);
/*  5:26 */waypoints[ 45 ].type = "stand";
/*  5:26 */waypoints[ 45 ].children[ 0 ] = 44;
/*  5:26 */waypoints[ 45 ].children[ 1 ] = 46;
/*  5:26 */waypoints[ 46 ] = spawnstruct();
/*  5:26 */waypoints[ 46 ].origin = (695.932, -388.383, 40.125);
/*  5:26 */waypoints[ 46 ].type = "stand";
/*  5:26 */waypoints[ 46 ].children[ 0 ] = 45;
/*  5:26 */waypoints[ 46 ].children[ 1 ] = 47;
/*  5:26 */waypoints[ 47 ] = spawnstruct();
/*  5:26 */waypoints[ 47 ].origin = (887.957, -384.486, -15.875);
/*  5:26 */waypoints[ 47 ].type = "stand";
/*  5:26 */waypoints[ 47 ].children[ 0 ] = 46;
/*  5:26 */waypoints[ 47 ].children[ 1 ] = 48;
/*  5:26 */waypoints[ 48 ] = spawnstruct();
/*  5:26 */waypoints[ 48 ].origin = (1524.66, -370.121, -15.875);
/*  5:26 */waypoints[ 48 ].type = "stand";
/*  5:26 */waypoints[ 48 ].children[ 0 ] = 47;
/*  5:26 */waypoints[ 48 ].children[ 1 ] = 49;
/*  5:26 */waypoints[ 49 ] = spawnstruct();
/*  5:26 */waypoints[ 49 ].origin = (1534.37, -467.819, -15.875);
/*  5:26 */waypoints[ 49 ].type = "stand";
/*  5:26 */waypoints[ 49 ].children[ 0 ] = 48;
/*  5:26 */waypoints[ 49 ].children[ 1 ] = 50;
/*  5:26 */waypoints[ 50 ] = spawnstruct();
/*  5:26 */waypoints[ 50 ].origin = (1524.58, -816.352, -103.875);
/*  5:26 */waypoints[ 50 ].type = "stand";
/*  5:26 */waypoints[ 50 ].children[ 0 ] = 49;
/*  5:26 */waypoints[ 50 ].children[ 1 ] = 51;
/*  5:26 */waypoints[ 50 ].children[ 2 ] = 60;
/*  5:26 */waypoints[ 50 ].children[ 3 ] = 52;
/*  5:26 */waypoints[ 51 ] = spawnstruct();
/*  5:26 */waypoints[ 51 ].origin = (1339.34, -881.88, -103.875);
/*  5:26 */waypoints[ 51 ].type = "stand";
/*  5:26 */waypoints[ 51 ].children[ 0 ] = 50;
/*  5:26 */waypoints[ 51 ].children[ 1 ] = 52;
/*  5:26 */waypoints[ 52 ] = spawnstruct();
/*  5:26 */waypoints[ 52 ].origin = (1488.11, -983.18, -103.875);
/*  5:26 */waypoints[ 52 ].type = "stand";
/*  5:26 */waypoints[ 52 ].children[ 0 ] = 51;
/*  5:26 */waypoints[ 52 ].children[ 1 ] = 53;
/*  5:26 */waypoints[ 52 ].children[ 2 ] = 61;
/*  5:26 */waypoints[ 52 ].children[ 3 ] = 50;
/*  5:26 */waypoints[ 53 ] = spawnstruct();
/*  5:26 */waypoints[ 53 ].origin = (1433.24, -1394.99, -103.875);
/*  5:26 */waypoints[ 53 ].type = "stand";
/*  5:26 */waypoints[ 53 ].children[ 0 ] = 52;
/*  5:26 */waypoints[ 53 ].children[ 1 ] = 54;
/*  5:26 */waypoints[ 53 ].children[ 2 ] = 57;
/*  5:26 */waypoints[ 53 ].children[ 3 ] = 56;
/*  5:26 */waypoints[ 53 ].children[ 4 ] = 61;
/*  5:26 */waypoints[ 54 ] = spawnstruct();
/*  5:26 */waypoints[ 54 ].origin = (1305.22, -1399.58, -103.875);
/*  5:26 */waypoints[ 54 ].type = "stand";
/*  5:26 */waypoints[ 54 ].children[ 0 ] = 53;
/*  5:26 */waypoints[ 54 ].children[ 1 ] = 55;
/*  5:26 */waypoints[ 55 ] = spawnstruct();
/*  5:26 */waypoints[ 55 ].origin = (1036.43, -1381.46, -183.875);
/*  5:26 */waypoints[ 55 ].type = "stand";
/*  5:26 */waypoints[ 55 ].children[ 0 ] = 54;
/*  5:26 */waypoints[ 55 ].children[ 1 ] = 22;
/*  5:26 */waypoints[ 56 ] = spawnstruct();
/*  5:26 */waypoints[ 56 ].origin = (1480.87, -1384.51, -100.089);
/*  5:26 */waypoints[ 56 ].type = "climb";
/*  5:26 */waypoints[ 56 ].children[ 0 ] = 53;
/*  5:26 */waypoints[ 56 ].angles = (-15.1721, -6.61682, 0);
/*  5:26 */waypoints[ 57 ] = spawnstruct();
/*  5:26 */waypoints[ 57 ].origin = (1480.87, -1389.59, 116.27);
/*  5:26 */waypoints[ 57 ].type = "climb";
/*  5:26 */waypoints[ 57 ].children[ 0 ] = 58;
/*  5:26 */waypoints[ 57 ].children[ 1 ] = 53;
/*  5:26 */waypoints[ 57 ].angles = (-14.9524, -3.45276, 0);
/*  5:26 */waypoints[ 58 ] = spawnstruct();
/*  5:26 */waypoints[ 58 ].origin = (1393.12, -1368.9, 136.125);
/*  5:26 */waypoints[ 58 ].type = "stand";
/*  5:26 */waypoints[ 58 ].children[ 0 ] = 57;
/*  5:26 */waypoints[ 59 ] = spawnstruct();
/*  5:26 */waypoints[ 59 ].origin = (1350.77, -565.161, -103.875);
/*  5:26 */waypoints[ 59 ].type = "stand";
/*  5:26 */waypoints[ 59 ].children[ 0 ] = 60;
/*  5:26 */waypoints[ 60 ] = spawnstruct();
/*  5:26 */waypoints[ 60 ].origin = (1437.75, -742.386, -103.875);
/*  5:26 */waypoints[ 60 ].type = "stand";
/*  5:26 */waypoints[ 60 ].children[ 0 ] = 59;
/*  5:26 */waypoints[ 60 ].children[ 1 ] = 50;
/*  5:26 */waypoints[ 61 ] = spawnstruct();
/*  5:26 */waypoints[ 61 ].origin = (1327.62, -1232.54, -103.875);
/*  5:26 */waypoints[ 61 ].type = "stand";
/*  5:26 */waypoints[ 61 ].children[ 0 ] = 53;
/*  5:26 */waypoints[ 61 ].children[ 1 ] = 52;
/*  5:26 */waypoints[ 62 ] = spawnstruct();
/*  5:26 */waypoints[ 62 ].origin = (-360.875, -413.668, -92.1786);
/*  5:26 */waypoints[ 62 ].type = "climb";
/*  5:26 */waypoints[ 62 ].children[ 0 ] = 29;
/*  5:26 */waypoints[ 62 ].children[ 1 ] = 63;
/*  5:26 */waypoints[ 62 ].angles = (-31.2659, 177.585, 0);
/*  5:26 */waypoints[ 63 ] = spawnstruct();
/*  5:26 */waypoints[ 63 ].origin = (-360.874, -415.379, 77.5379);
/*  5:26 */waypoints[ 63 ].type = "climb";
/*  5:26 */waypoints[ 63 ].children[ 0 ] = 62;
/*  5:26 */waypoints[ 63 ].children[ 1 ] = 64;
/*  5:26 */waypoints[ 63 ].angles = (-50.4095, 174.927, 0);
/*  5:26 */waypoints[ 64 ] = spawnstruct();
/*  5:26 */waypoints[ 64 ].origin = (-273.125, -429.332, 136.125);
/*  5:26 */waypoints[ 64 ].type = "stand";
/*  5:26 */waypoints[ 64 ].children[ 0 ] = 63;
/*  5:26 */return waypoints;
}


