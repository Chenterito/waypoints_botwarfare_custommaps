main()
{
	level.waypoints = mp_port_d();
}

mp_port_d()
{
/*  4:14 */waypoints = [];
/*  4:14 */waypoints[ 0 ] = spawnstruct();
/*  4:14 */waypoints[ 0 ].origin = (1430, 576, 0.125);
/*  4:14 */waypoints[ 0 ].type = "stand";
/*  4:14 */waypoints[ 0 ].children[ 0 ] = 1;
/*  4:14 */waypoints[ 0 ].children[ 1 ] = 4;
/*  4:14 */waypoints[ 0 ].children[ 2 ] = 5;
/*  4:14 */waypoints[ 1 ] = spawnstruct();
/*  4:14 */waypoints[ 1 ].origin = (1715.96, 783.519, 0.125);
/*  4:14 */waypoints[ 1 ].type = "stand";
/*  4:14 */waypoints[ 1 ].children[ 0 ] = 0;
/*  4:14 */waypoints[ 1 ].children[ 1 ] = 2;
/*  4:14 */waypoints[ 2 ] = spawnstruct();
/*  4:14 */waypoints[ 2 ].origin = (1807.74, 565.047, 0.125);
/*  4:14 */waypoints[ 2 ].type = "stand";
/*  4:14 */waypoints[ 2 ].children[ 0 ] = 1;
/*  4:14 */waypoints[ 2 ].children[ 1 ] = 3;
/*  4:14 */waypoints[ 3 ] = spawnstruct();
/*  4:14 */waypoints[ 3 ].origin = (1816.95, 67.1941, 8.125);
/*  4:14 */waypoints[ 3 ].type = "stand";
/*  4:14 */waypoints[ 3 ].children[ 0 ] = 2;
/*  4:14 */waypoints[ 3 ].children[ 1 ] = 4;
/*  4:14 */waypoints[ 3 ].children[ 2 ] = 12;
/*  4:14 */waypoints[ 4 ] = spawnstruct();
/*  4:14 */waypoints[ 4 ].origin = (1412.77, 96.7536, 0.125);
/*  4:14 */waypoints[ 4 ].type = "stand";
/*  4:14 */waypoints[ 4 ].children[ 0 ] = 3;
/*  4:14 */waypoints[ 4 ].children[ 1 ] = 0;
/*  4:14 */waypoints[ 5 ] = spawnstruct();
/*  4:14 */waypoints[ 5 ].origin = (1415.4, 692.211, 0.125);
/*  4:14 */waypoints[ 5 ].type = "stand";
/*  4:14 */waypoints[ 5 ].children[ 0 ] = 0;
/*  4:14 */waypoints[ 5 ].children[ 1 ] = 6;
/*  4:14 */waypoints[ 6 ] = spawnstruct();
/*  4:14 */waypoints[ 6 ].origin = (1354.2, 683.341, 62.125);
/*  4:14 */waypoints[ 6 ].type = "stand";
/*  4:14 */waypoints[ 6 ].children[ 0 ] = 5;
/*  4:14 */waypoints[ 6 ].children[ 1 ] = 7;
/*  4:14 */waypoints[ 7 ] = spawnstruct();
/*  4:14 */waypoints[ 7 ].origin = (1296.83, 683.874, 125.125);
/*  4:14 */waypoints[ 7 ].type = "stand";
/*  4:14 */waypoints[ 7 ].children[ 0 ] = 6;
/*  4:14 */waypoints[ 7 ].children[ 1 ] = 8;
/*  4:14 */waypoints[ 8 ] = spawnstruct();
/*  4:14 */waypoints[ 8 ].origin = (1229.04, 693.298, 199.431);
/*  4:14 */waypoints[ 8 ].type = "crouch";
/*  4:14 */waypoints[ 8 ].children[ 0 ] = 7;
/*  4:14 */waypoints[ 8 ].children[ 1 ] = 9;
/*  4:14 */waypoints[ 9 ] = spawnstruct();
/*  4:14 */waypoints[ 9 ].origin = (1082.27, 697.394, 192.125);
/*  4:14 */waypoints[ 9 ].type = "stand";
/*  4:14 */waypoints[ 9 ].children[ 0 ] = 8;
/*  4:14 */waypoints[ 9 ].children[ 1 ] = 10;
/*  4:14 */waypoints[ 10 ] = spawnstruct();
/*  4:14 */waypoints[ 10 ].origin = (1071.49, 307.007, 192.125);
/*  4:14 */waypoints[ 10 ].type = "stand";
/*  4:14 */waypoints[ 10 ].children[ 0 ] = 9;
/*  4:14 */waypoints[ 10 ].children[ 1 ] = 11;
/*  4:14 */waypoints[ 11 ] = spawnstruct();
/*  4:14 */waypoints[ 11 ].origin = (1249.14, 324.311, 208.125);
/*  4:14 */waypoints[ 11 ].type = "stand";
/*  4:14 */waypoints[ 11 ].children[ 0 ] = 10;
/*  4:14 */waypoints[ 12 ] = spawnstruct();
/*  4:14 */waypoints[ 12 ].origin = (1706.33, -381.94, 0.124999);
/*  4:14 */waypoints[ 12 ].type = "stand";
/*  4:14 */waypoints[ 12 ].children[ 0 ] = 3;
/*  4:14 */waypoints[ 12 ].children[ 1 ] = 13;
/*  4:14 */waypoints[ 13 ] = spawnstruct();
/*  4:14 */waypoints[ 13 ].origin = (1393.93, -363.316, 0.124999);
/*  4:14 */waypoints[ 13 ].type = "stand";
/*  4:14 */waypoints[ 13 ].children[ 0 ] = 12;
/*  4:14 */waypoints[ 13 ].children[ 1 ] = 14;
/*  4:14 */waypoints[ 13 ].children[ 2 ] = 15;
/*  4:14 */waypoints[ 14 ] = spawnstruct();
/*  4:14 */waypoints[ 14 ].origin = (1291.95, -357.139, 0.124999);
/*  4:14 */waypoints[ 14 ].type = "stand";
/*  4:14 */waypoints[ 14 ].children[ 0 ] = 13;
/*  4:14 */waypoints[ 14 ].children[ 1 ] = 15;
/*  4:14 */waypoints[ 14 ].children[ 2 ] = 43;
/*  4:14 */waypoints[ 15 ] = spawnstruct();
/*  4:14 */waypoints[ 15 ].origin = (1294.77, -559.263, 0.124999);
/*  4:14 */waypoints[ 15 ].type = "stand";
/*  4:14 */waypoints[ 15 ].children[ 0 ] = 14;
/*  4:14 */waypoints[ 15 ].children[ 1 ] = 16;
/*  4:14 */waypoints[ 15 ].children[ 2 ] = 13;
/*  4:14 */waypoints[ 16 ] = spawnstruct();
/*  4:14 */waypoints[ 16 ].origin = (999.206, -911.788, 0.124999);
/*  4:14 */waypoints[ 16 ].type = "stand";
/*  4:14 */waypoints[ 16 ].children[ 0 ] = 15;
/*  4:14 */waypoints[ 16 ].children[ 1 ] = 17;
/*  4:14 */waypoints[ 17 ] = spawnstruct();
/*  4:14 */waypoints[ 17 ].origin = (763.185, -808.767, 0.124999);
/*  4:14 */waypoints[ 17 ].type = "stand";
/*  4:14 */waypoints[ 17 ].children[ 0 ] = 16;
/*  4:14 */waypoints[ 17 ].children[ 1 ] = 18;
/*  4:14 */waypoints[ 17 ].children[ 2 ] = 34;
/*  4:14 */waypoints[ 17 ].children[ 3 ] = 20;
/*  4:14 */waypoints[ 18 ] = spawnstruct();
/*  4:14 */waypoints[ 18 ].origin = (580.993, -775.022, 0.124999);
/*  4:14 */waypoints[ 18 ].type = "stand";
/*  4:14 */waypoints[ 18 ].children[ 0 ] = 17;
/*  4:14 */waypoints[ 18 ].children[ 1 ] = 19;
/*  4:14 */waypoints[ 18 ].children[ 2 ] = 30;
/*  4:14 */waypoints[ 19 ] = spawnstruct();
/*  4:14 */waypoints[ 19 ].origin = (268.858, -742.061, 0.124999);
/*  4:14 */waypoints[ 19 ].type = "stand";
/*  4:14 */waypoints[ 19 ].children[ 0 ] = 18;
/*  4:14 */waypoints[ 19 ].children[ 1 ] = 20;
/*  4:14 */waypoints[ 19 ].children[ 2 ] = 25;
/*  4:14 */waypoints[ 19 ].children[ 3 ] = 77;
/*  4:14 */waypoints[ 20 ] = spawnstruct();
/*  4:14 */waypoints[ 20 ].origin = (120.356, -911.513, 0.124999);
/*  4:14 */waypoints[ 20 ].type = "stand";
/*  4:14 */waypoints[ 20 ].children[ 0 ] = 19;
/*  4:14 */waypoints[ 20 ].children[ 1 ] = 21;
/*  4:14 */waypoints[ 20 ].children[ 2 ] = 17;
/*  4:14 */waypoints[ 21 ] = spawnstruct();
/*  4:14 */waypoints[ 21 ].origin = (-154.724, -907.103, 0.124999);
/*  4:14 */waypoints[ 21 ].type = "stand";
/*  4:14 */waypoints[ 21 ].children[ 0 ] = 20;
/*  4:14 */waypoints[ 21 ].children[ 1 ] = 22;
/*  4:14 */waypoints[ 21 ].children[ 2 ] = 24;
/*  4:14 */waypoints[ 22 ] = spawnstruct();
/*  4:14 */waypoints[ 22 ].origin = (-297.903, -822.472, 8.125);
/*  4:14 */waypoints[ 22 ].type = "stand";
/*  4:14 */waypoints[ 22 ].children[ 0 ] = 21;
/*  4:14 */waypoints[ 22 ].children[ 1 ] = 23;
/*  4:14 */waypoints[ 23 ] = spawnstruct();
/*  4:14 */waypoints[ 23 ].origin = (-318.76, -418.854, -46.875);
/*  4:14 */waypoints[ 23 ].type = "stand";
/*  4:14 */waypoints[ 23 ].children[ 0 ] = 22;
/*  4:14 */waypoints[ 24 ] = spawnstruct();
/*  4:14 */waypoints[ 24 ].origin = (-145.904, -528.379, 0.125);
/*  4:14 */waypoints[ 24 ].type = "stand";
/*  4:14 */waypoints[ 24 ].children[ 0 ] = 21;
/*  4:14 */waypoints[ 24 ].children[ 1 ] = 25;
/*  4:14 */waypoints[ 24 ].children[ 2 ] = 26;
/*  4:14 */waypoints[ 24 ].children[ 3 ] = 76;
/*  4:14 */waypoints[ 25 ] = spawnstruct();
/*  4:14 */waypoints[ 25 ].origin = (93.5323, -448.905, 0.125);
/*  4:14 */waypoints[ 25 ].type = "stand";
/*  4:14 */waypoints[ 25 ].children[ 0 ] = 24;
/*  4:14 */waypoints[ 25 ].children[ 1 ] = 19;
/*  4:14 */waypoints[ 25 ].children[ 2 ] = 26;
/*  4:14 */waypoints[ 25 ].children[ 3 ] = 77;
/*  4:14 */waypoints[ 26 ] = spawnstruct();
/*  4:14 */waypoints[ 26 ].origin = (128.598, -287.683, 0.125);
/*  4:14 */waypoints[ 26 ].type = "stand";
/*  4:14 */waypoints[ 26 ].children[ 0 ] = 25;
/*  4:14 */waypoints[ 26 ].children[ 1 ] = 27;
/*  4:14 */waypoints[ 26 ].children[ 2 ] = 29;
/*  4:14 */waypoints[ 26 ].children[ 3 ] = 24;
/*  4:14 */waypoints[ 26 ].children[ 4 ] = 57;
/*  4:14 */waypoints[ 27 ] = spawnstruct();
/*  4:14 */waypoints[ 27 ].origin = (132.088, -96.1848, 0.125);
/*  4:14 */waypoints[ 27 ].type = "stand";
/*  4:14 */waypoints[ 27 ].children[ 0 ] = 26;
/*  4:14 */waypoints[ 27 ].children[ 1 ] = 28;
/*  4:14 */waypoints[ 28 ] = spawnstruct();
/*  4:14 */waypoints[ 28 ].origin = (404.667, -91.5418, 0.125);
/*  4:14 */waypoints[ 28 ].type = "stand";
/*  4:14 */waypoints[ 28 ].children[ 0 ] = 27;
/*  4:14 */waypoints[ 28 ].children[ 1 ] = 29;
/*  4:14 */waypoints[ 28 ].children[ 2 ] = 44;
/*  4:14 */waypoints[ 29 ] = spawnstruct();
/*  4:14 */waypoints[ 29 ].origin = (380.814, -284.291, 0.125);
/*  4:14 */waypoints[ 29 ].type = "stand";
/*  4:14 */waypoints[ 29 ].children[ 0 ] = 28;
/*  4:14 */waypoints[ 29 ].children[ 1 ] = 30;
/*  4:14 */waypoints[ 29 ].children[ 2 ] = 26;
/*  4:14 */waypoints[ 30 ] = spawnstruct();
/*  4:14 */waypoints[ 30 ].origin = (592.584, -273.343, 0.125);
/*  4:14 */waypoints[ 30 ].type = "stand";
/*  4:14 */waypoints[ 30 ].children[ 0 ] = 29;
/*  4:14 */waypoints[ 30 ].children[ 1 ] = 31;
/*  4:14 */waypoints[ 30 ].children[ 2 ] = 18;
/*  4:14 */waypoints[ 30 ].children[ 3 ] = 34;
/*  4:14 */waypoints[ 30 ].children[ 4 ] = 36;
/*  4:14 */waypoints[ 31 ] = spawnstruct();
/*  4:14 */waypoints[ 31 ].origin = (716.789, -250.548, 0.125);
/*  4:14 */waypoints[ 31 ].type = "stand";
/*  4:14 */waypoints[ 31 ].children[ 0 ] = 30;
/*  4:14 */waypoints[ 31 ].children[ 1 ] = 32;
/*  4:14 */waypoints[ 31 ].children[ 2 ] = 35;
/*  4:14 */waypoints[ 32 ] = spawnstruct();
/*  4:14 */waypoints[ 32 ].origin = (940.768, -234.781, 0.125);
/*  4:14 */waypoints[ 32 ].type = "stand";
/*  4:14 */waypoints[ 32 ].children[ 0 ] = 31;
/*  4:14 */waypoints[ 32 ].children[ 1 ] = 33;
/*  4:14 */waypoints[ 32 ].children[ 2 ] = 34;
/*  4:14 */waypoints[ 32 ].children[ 3 ] = 83;
/*  4:14 */waypoints[ 32 ].children[ 4 ] = 87;
/*  4:14 */waypoints[ 33 ] = spawnstruct();
/*  4:14 */waypoints[ 33 ].origin = (944.283, 218.724, 0.125);
/*  4:14 */waypoints[ 33 ].type = "prone";
/*  4:14 */waypoints[ 33 ].children[ 0 ] = 32;
/*  4:14 */waypoints[ 34 ] = spawnstruct();
/*  4:14 */waypoints[ 34 ].origin = (774.152, -560.24, 0.124996);
/*  4:14 */waypoints[ 34 ].type = "stand";
/*  4:14 */waypoints[ 34 ].children[ 0 ] = 32;
/*  4:14 */waypoints[ 34 ].children[ 1 ] = 17;
/*  4:14 */waypoints[ 34 ].children[ 2 ] = 30;
/*  4:14 */waypoints[ 35 ] = spawnstruct();
/*  4:14 */waypoints[ 35 ].origin = (703.146, 327.074, 192.125);
/*  4:14 */waypoints[ 35 ].type = "stand";
/*  4:14 */waypoints[ 35 ].children[ 0 ] = 31;
/*  4:14 */waypoints[ 35 ].children[ 1 ] = 36;
/*  4:14 */waypoints[ 35 ].children[ 2 ] = 65;
/*  4:14 */waypoints[ 35 ].children[ 3 ] = 66;
/*  4:14 */waypoints[ 36 ] = spawnstruct();
/*  4:14 */waypoints[ 36 ].origin = (576.792, 316.049, 192.125);
/*  4:14 */waypoints[ 36 ].type = "stand";
/*  4:14 */waypoints[ 36 ].children[ 0 ] = 35;
/*  4:14 */waypoints[ 36 ].children[ 1 ] = 37;
/*  4:14 */waypoints[ 36 ].children[ 2 ] = 30;
/*  4:14 */waypoints[ 36 ].children[ 3 ] = 64;
/*  4:14 */waypoints[ 37 ] = spawnstruct();
/*  4:14 */waypoints[ 37 ].origin = (406.955, 321.652, 192.125);
/*  4:14 */waypoints[ 37 ].type = "stand";
/*  4:14 */waypoints[ 37 ].children[ 0 ] = 36;
/*  4:14 */waypoints[ 37 ].children[ 1 ] = 38;
/*  4:14 */waypoints[ 37 ].children[ 2 ] = 64;
/*  4:14 */waypoints[ 38 ] = spawnstruct();
/*  4:14 */waypoints[ 38 ].origin = (410.398, 137.291, 192.125);
/*  4:14 */waypoints[ 38 ].type = "stand";
/*  4:14 */waypoints[ 38 ].children[ 0 ] = 37;
/*  4:14 */waypoints[ 38 ].children[ 1 ] = 39;
/*  4:14 */waypoints[ 39 ] = spawnstruct();
/*  4:14 */waypoints[ 39 ].origin = (312.933, 131.269, 192.125);
/*  4:14 */waypoints[ 39 ].type = "stand";
/*  4:14 */waypoints[ 39 ].children[ 0 ] = 38;
/*  4:14 */waypoints[ 39 ].children[ 1 ] = 40;
/*  4:14 */waypoints[ 39 ].children[ 2 ] = 71;
/*  4:14 */waypoints[ 40 ] = spawnstruct();
/*  4:14 */waypoints[ 40 ].origin = (322.422, -324.178, 192.125);
/*  4:14 */waypoints[ 40 ].type = "stand";
/*  4:14 */waypoints[ 40 ].children[ 0 ] = 39;
/*  4:14 */waypoints[ 40 ].children[ 1 ] = 41;
/*  4:14 */waypoints[ 41 ] = spawnstruct();
/*  4:14 */waypoints[ 41 ].origin = (1353.46, -322.806, 192.125);
/*  4:14 */waypoints[ 41 ].type = "stand";
/*  4:14 */waypoints[ 41 ].children[ 0 ] = 40;
/*  4:14 */waypoints[ 41 ].children[ 1 ] = 42;
/*  4:14 */waypoints[ 42 ] = spawnstruct();
/*  4:14 */waypoints[ 42 ].origin = (1364.83, -26.873, 192.125);
/*  4:14 */waypoints[ 42 ].type = "stand";
/*  4:14 */waypoints[ 42 ].children[ 0 ] = 41;
/*  4:14 */waypoints[ 42 ].children[ 1 ] = 43;
/*  4:14 */waypoints[ 43 ] = spawnstruct();
/*  4:14 */waypoints[ 43 ].origin = (1282.02, -18.3723, 192.125);
/*  4:14 */waypoints[ 43 ].type = "stand";
/*  4:14 */waypoints[ 43 ].children[ 0 ] = 42;
/*  4:14 */waypoints[ 43 ].children[ 1 ] = 14;
/*  4:14 */waypoints[ 44 ] = spawnstruct();
/*  4:14 */waypoints[ 44 ].origin = (402.455, 329.005, 0.124996);
/*  4:14 */waypoints[ 44 ].type = "stand";
/*  4:14 */waypoints[ 44 ].children[ 0 ] = 28;
/*  4:14 */waypoints[ 44 ].children[ 1 ] = 45;
/*  4:14 */waypoints[ 44 ].children[ 2 ] = 49;
/*  4:14 */waypoints[ 44 ].children[ 3 ] = 46;
/*  4:14 */waypoints[ 45 ] = spawnstruct();
/*  4:14 */waypoints[ 45 ].origin = (405.66, 801.266, 0.124996);
/*  4:14 */waypoints[ 45 ].type = "stand";
/*  4:14 */waypoints[ 45 ].children[ 0 ] = 44;
/*  4:14 */waypoints[ 45 ].children[ 1 ] = 46;
/*  4:14 */waypoints[ 46 ] = spawnstruct();
/*  4:14 */waypoints[ 46 ].origin = (693.992, 766.843, 0.124996);
/*  4:14 */waypoints[ 46 ].type = "stand";
/*  4:14 */waypoints[ 46 ].children[ 0 ] = 45;
/*  4:14 */waypoints[ 46 ].children[ 1 ] = 47;
/*  4:14 */waypoints[ 46 ].children[ 2 ] = 49;
/*  4:14 */waypoints[ 46 ].children[ 3 ] = 44;
/*  4:14 */waypoints[ 47 ] = spawnstruct();
/*  4:14 */waypoints[ 47 ].origin = (688.473, 901.221, 24.125);
/*  4:14 */waypoints[ 47 ].type = "stand";
/*  4:14 */waypoints[ 47 ].children[ 0 ] = 46;
/*  4:14 */waypoints[ 47 ].children[ 1 ] = 48;
/*  4:14 */waypoints[ 48 ] = spawnstruct();
/*  4:14 */waypoints[ 48 ].origin = (971.471, 897.97, 24.125);
/*  4:14 */waypoints[ 48 ].type = "stand";
/*  4:14 */waypoints[ 48 ].children[ 0 ] = 47;
/*  4:14 */waypoints[ 49 ] = spawnstruct();
/*  4:14 */waypoints[ 49 ].origin = (708.414, 438.758, 0.125);
/*  4:14 */waypoints[ 49 ].type = "stand";
/*  4:14 */waypoints[ 49 ].children[ 0 ] = 46;
/*  4:14 */waypoints[ 49 ].children[ 1 ] = 50;
/*  4:14 */waypoints[ 49 ].children[ 2 ] = 56;
/*  4:14 */waypoints[ 49 ].children[ 3 ] = 44;
/*  4:14 */waypoints[ 50 ] = spawnstruct();
/*  4:14 */waypoints[ 50 ].origin = (804.12, 433.493, 0.125);
/*  4:14 */waypoints[ 50 ].type = "stand";
/*  4:14 */waypoints[ 50 ].children[ 0 ] = 49;
/*  4:14 */waypoints[ 50 ].children[ 1 ] = 51;
/*  4:14 */waypoints[ 51 ] = spawnstruct();
/*  4:14 */waypoints[ 51 ].origin = (807.939, 305.399, 28.125);
/*  4:14 */waypoints[ 51 ].type = "stand";
/*  4:14 */waypoints[ 51 ].children[ 0 ] = 50;
/*  4:14 */waypoints[ 51 ].children[ 1 ] = 52;
/*  4:14 */waypoints[ 52 ] = spawnstruct();
/*  4:14 */waypoints[ 52 ].origin = (868.875, 291.125, 28.125);
/*  4:14 */waypoints[ 52 ].type = "stand";
/*  4:14 */waypoints[ 52 ].children[ 0 ] = 51;
/*  4:14 */waypoints[ 52 ].children[ 1 ] = 53;
/*  4:14 */waypoints[ 53 ] = spawnstruct();
/*  4:14 */waypoints[ 53 ].origin = (858.112, 605.623, 56.125);
/*  4:14 */waypoints[ 53 ].type = "stand";
/*  4:14 */waypoints[ 53 ].children[ 0 ] = 52;
/*  4:14 */waypoints[ 53 ].children[ 1 ] = 54;
/*  4:14 */waypoints[ 54 ] = spawnstruct();
/*  4:14 */waypoints[ 54 ].origin = (950.727, 601.812, 56.125);
/*  4:14 */waypoints[ 54 ].type = "stand";
/*  4:14 */waypoints[ 54 ].children[ 0 ] = 53;
/*  4:14 */waypoints[ 54 ].children[ 1 ] = 55;
/*  4:14 */waypoints[ 55 ] = spawnstruct();
/*  4:14 */waypoints[ 55 ].origin = (958.076, 316.261, 56.125);
/*  4:14 */waypoints[ 55 ].type = "crouch";
/*  4:14 */waypoints[ 55 ].children[ 0 ] = 54;
/*  4:14 */waypoints[ 55 ].angles = (20.0885, 177.025, 0);
/*  4:14 */waypoints[ 56 ] = spawnstruct();
/*  4:14 */waypoints[ 56 ].origin = (702.805, 94.6613, 0.125);
/*  4:14 */waypoints[ 56 ].type = "stand";
/*  4:14 */waypoints[ 56 ].children[ 0 ] = 49;
/*  4:14 */waypoints[ 57 ] = spawnstruct();
/*  4:14 */waypoints[ 57 ].origin = (-374.397, -118.863, 0.125);
/*  4:14 */waypoints[ 57 ].type = "stand";
/*  4:14 */waypoints[ 57 ].children[ 0 ] = 26;
/*  4:14 */waypoints[ 57 ].children[ 1 ] = 58;
/*  4:14 */waypoints[ 57 ].children[ 2 ] = 73;
/*  4:14 */waypoints[ 57 ].children[ 3 ] = 76;
/*  4:14 */waypoints[ 58 ] = spawnstruct();
/*  4:14 */waypoints[ 58 ].origin = (-395.558, 197.748, 0.125);
/*  4:14 */waypoints[ 58 ].type = "stand";
/*  4:14 */waypoints[ 58 ].children[ 0 ] = 57;
/*  4:14 */waypoints[ 58 ].children[ 1 ] = 59;
/*  4:14 */waypoints[ 59 ] = spawnstruct();
/*  4:14 */waypoints[ 59 ].origin = (-689.632, 205.798, 192.125);
/*  4:14 */waypoints[ 59 ].type = "stand";
/*  4:14 */waypoints[ 59 ].children[ 0 ] = 58;
/*  4:14 */waypoints[ 59 ].children[ 1 ] = 60;
/*  4:14 */waypoints[ 60 ] = spawnstruct();
/*  4:14 */waypoints[ 60 ].origin = (-707.235, 575.774, 192.125);
/*  4:14 */waypoints[ 60 ].type = "stand";
/*  4:14 */waypoints[ 60 ].children[ 0 ] = 59;
/*  4:14 */waypoints[ 60 ].children[ 1 ] = 61;
/*  4:14 */waypoints[ 61 ] = spawnstruct();
/*  4:14 */waypoints[ 61 ].origin = (-419.114, 575.669, 192.125);
/*  4:14 */waypoints[ 61 ].type = "stand";
/*  4:14 */waypoints[ 61 ].children[ 0 ] = 60;
/*  4:14 */waypoints[ 61 ].children[ 1 ] = 62;
/*  4:14 */waypoints[ 61 ].children[ 2 ] = 69;
/*  4:14 */waypoints[ 62 ] = spawnstruct();
/*  4:14 */waypoints[ 62 ].origin = (-112.976, 585.067, 192.125);
/*  4:14 */waypoints[ 62 ].type = "stand";
/*  4:14 */waypoints[ 62 ].children[ 0 ] = 61;
/*  4:14 */waypoints[ 62 ].children[ 1 ] = 63;
/*  4:14 */waypoints[ 62 ].children[ 2 ] = 67;
/*  4:14 */waypoints[ 63 ] = spawnstruct();
/*  4:14 */waypoints[ 63 ].origin = (57.6281, 555.699, 192.125);
/*  4:14 */waypoints[ 63 ].type = "stand";
/*  4:14 */waypoints[ 63 ].children[ 0 ] = 62;
/*  4:14 */waypoints[ 63 ].children[ 1 ] = 64;
/*  4:14 */waypoints[ 63 ].children[ 2 ] = 70;
/*  4:14 */waypoints[ 64 ] = spawnstruct();
/*  4:14 */waypoints[ 64 ].origin = (376.367, 565.351, 192.125);
/*  4:14 */waypoints[ 64 ].type = "stand";
/*  4:14 */waypoints[ 64 ].children[ 0 ] = 63;
/*  4:14 */waypoints[ 64 ].children[ 1 ] = 37;
/*  4:14 */waypoints[ 64 ].children[ 2 ] = 36;
/*  4:14 */waypoints[ 64 ].children[ 3 ] = 65;
/*  4:14 */waypoints[ 65 ] = spawnstruct();
/*  4:14 */waypoints[ 65 ].origin = (771.325, 623.008, 192.125);
/*  4:14 */waypoints[ 65 ].type = "stand";
/*  4:14 */waypoints[ 65 ].children[ 0 ] = 64;
/*  4:14 */waypoints[ 65 ].children[ 1 ] = 35;
/*  4:14 */waypoints[ 65 ].children[ 2 ] = 66;
/*  4:14 */waypoints[ 66 ] = spawnstruct();
/*  4:14 */waypoints[ 66 ].origin = (914.351, 279.162, 192.125);
/*  4:14 */waypoints[ 66 ].type = "crouch";
/*  4:14 */waypoints[ 66 ].children[ 0 ] = 35;
/*  4:14 */waypoints[ 66 ].children[ 1 ] = 65;
/*  4:14 */waypoints[ 67 ] = spawnstruct();
/*  4:14 */waypoints[ 67 ].origin = (-100.268, 288.148, 192.125);
/*  4:14 */waypoints[ 67 ].type = "stand";
/*  4:14 */waypoints[ 67 ].children[ 0 ] = 62;
/*  4:14 */waypoints[ 67 ].children[ 1 ] = 68;
/*  4:14 */waypoints[ 67 ].children[ 2 ] = 69;
/*  4:14 */waypoints[ 67 ].children[ 3 ] = 72;
/*  4:14 */waypoints[ 68 ] = spawnstruct();
/*  4:14 */waypoints[ 68 ].origin = (124.785, 288.239, 192.125);
/*  4:14 */waypoints[ 68 ].type = "stand";
/*  4:14 */waypoints[ 68 ].children[ 0 ] = 67;
/*  4:14 */waypoints[ 68 ].children[ 1 ] = 70;
/*  4:14 */waypoints[ 69 ] = spawnstruct();
/*  4:14 */waypoints[ 69 ].origin = (-431.452, 286.376, 192.125);
/*  4:14 */waypoints[ 69 ].type = "stand";
/*  4:14 */waypoints[ 69 ].children[ 0 ] = 67;
/*  4:14 */waypoints[ 69 ].children[ 1 ] = 61;
/*  4:14 */waypoints[ 70 ] = spawnstruct();
/*  4:14 */waypoints[ 70 ].origin = (50.6893, 362.456, 192.125);
/*  4:14 */waypoints[ 70 ].type = "stand";
/*  4:14 */waypoints[ 70 ].children[ 0 ] = 63;
/*  4:14 */waypoints[ 70 ].children[ 1 ] = 68;
/*  4:14 */waypoints[ 70 ].children[ 2 ] = 71;
/*  4:14 */waypoints[ 71 ] = spawnstruct();
/*  4:14 */waypoints[ 71 ].origin = (185.387, 139.096, 192.125);
/*  4:14 */waypoints[ 71 ].type = "stand";
/*  4:14 */waypoints[ 71 ].children[ 0 ] = 70;
/*  4:14 */waypoints[ 71 ].children[ 1 ] = 72;
/*  4:14 */waypoints[ 71 ].children[ 2 ] = 39;
/*  4:14 */waypoints[ 72 ] = spawnstruct();
/*  4:14 */waypoints[ 72 ].origin = (-144.285, 137.43, 192.125);
/*  4:14 */waypoints[ 72 ].type = "stand";
/*  4:14 */waypoints[ 72 ].children[ 0 ] = 71;
/*  4:14 */waypoints[ 72 ].children[ 1 ] = 67;
/*  4:14 */waypoints[ 72 ].children[ 2 ] = 74;
/*  4:14 */waypoints[ 73 ] = spawnstruct();
/*  4:14 */waypoints[ 73 ].origin = (-696.677, -144.399, 0.125);
/*  4:14 */waypoints[ 73 ].type = "stand";
/*  4:14 */waypoints[ 73 ].children[ 0 ] = 57;
/*  4:14 */waypoints[ 74 ] = spawnstruct();
/*  4:14 */waypoints[ 74 ].origin = (-125.875, -41.0163, 125.125);
/*  4:14 */waypoints[ 74 ].type = "stand";
/*  4:14 */waypoints[ 74 ].children[ 0 ] = 72;
/*  4:14 */waypoints[ 74 ].children[ 1 ] = 75;
/*  4:14 */waypoints[ 75 ] = spawnstruct();
/*  4:14 */waypoints[ 75 ].origin = (-212.192, -45.3395, 62.125);
/*  4:14 */waypoints[ 75 ].type = "stand";
/*  4:14 */waypoints[ 75 ].children[ 0 ] = 74;
/*  4:14 */waypoints[ 75 ].children[ 1 ] = 76;
/*  4:14 */waypoints[ 76 ] = spawnstruct();
/*  4:14 */waypoints[ 76 ].origin = (-226.103, -107.788, 0.125001);
/*  4:14 */waypoints[ 76 ].type = "stand";
/*  4:14 */waypoints[ 76 ].children[ 0 ] = 75;
/*  4:14 */waypoints[ 76 ].children[ 1 ] = 57;
/*  4:14 */waypoints[ 76 ].children[ 2 ] = 24;
/*  4:14 */waypoints[ 77 ] = spawnstruct();
/*  4:14 */waypoints[ 77 ].origin = (264.224, -562.819, 0.125001);
/*  4:14 */waypoints[ 77 ].type = "stand";
/*  4:14 */waypoints[ 77 ].children[ 0 ] = 25;
/*  4:14 */waypoints[ 77 ].children[ 1 ] = 78;
/*  4:14 */waypoints[ 77 ].children[ 2 ] = 19;
/*  4:14 */waypoints[ 78 ] = spawnstruct();
/*  4:14 */waypoints[ 78 ].origin = (339.764, -542.753, 59.8571);
/*  4:14 */waypoints[ 78 ].type = "stand";
/*  4:14 */waypoints[ 78 ].children[ 0 ] = 77;
/*  4:14 */waypoints[ 78 ].children[ 1 ] = 79;
/*  4:14 */waypoints[ 79 ] = spawnstruct();
/*  4:14 */waypoints[ 79 ].origin = (388.814, -598.341, 126.125);
/*  4:14 */waypoints[ 79 ].type = "stand";
/*  4:14 */waypoints[ 79 ].children[ 0 ] = 78;
/*  4:14 */waypoints[ 79 ].children[ 1 ] = 80;
/*  4:14 */waypoints[ 80 ] = spawnstruct();
/*  4:14 */waypoints[ 80 ].origin = (460.004, -546.746, 200.125);
/*  4:14 */waypoints[ 80 ].type = "stand";
/*  4:14 */waypoints[ 80 ].children[ 0 ] = 79;
/*  4:14 */waypoints[ 80 ].children[ 1 ] = 81;
/*  4:14 */waypoints[ 81 ] = spawnstruct();
/*  4:14 */waypoints[ 81 ].origin = (677.188, -445.157, 200.125);
/*  4:14 */waypoints[ 81 ].type = "stand";
/*  4:14 */waypoints[ 81 ].children[ 0 ] = 80;
/*  4:14 */waypoints[ 81 ].children[ 1 ] = 82;
/*  4:14 */waypoints[ 82 ] = spawnstruct();
/*  4:14 */waypoints[ 82 ].origin = (991.925, -508.895, 202.315);
/*  4:14 */waypoints[ 82 ].type = "crouch";
/*  4:14 */waypoints[ 82 ].children[ 0 ] = 81;
/*  4:14 */waypoints[ 82 ].angles = (30.7727, 4.26501, 0);
/*  4:14 */waypoints[ 83 ] = spawnstruct();
/*  4:14 */waypoints[ 83 ].origin = (1012.11, -71.3085, 0.125001);
/*  4:14 */waypoints[ 83 ].type = "stand";
/*  4:14 */waypoints[ 83 ].children[ 0 ] = 32;
/*  4:14 */waypoints[ 83 ].children[ 1 ] = 84;
/*  4:14 */waypoints[ 84 ] = spawnstruct();
/*  4:14 */waypoints[ 84 ].origin = (1148.08, -73.4131, 0.125001);
/*  4:14 */waypoints[ 84 ].type = "stand";
/*  4:14 */waypoints[ 84 ].children[ 0 ] = 83;
/*  4:14 */waypoints[ 84 ].children[ 1 ] = 85;
/*  4:14 */waypoints[ 84 ].children[ 2 ] = 86;
/*  4:14 */waypoints[ 85 ] = spawnstruct();
/*  4:14 */waypoints[ 85 ].origin = (1151.3, 174.344, 0.125001);
/*  4:14 */waypoints[ 85 ].type = "stand";
/*  4:14 */waypoints[ 85 ].children[ 0 ] = 84;
/*  4:14 */waypoints[ 86 ] = spawnstruct();
/*  4:14 */waypoints[ 86 ].origin = (1170.68, -271.927, 0.125001);
/*  4:14 */waypoints[ 86 ].type = "crouch";
/*  4:14 */waypoints[ 86 ].children[ 0 ] = 84;
/*  4:14 */waypoints[ 86 ].children[ 1 ] = 87;
/*  4:14 */waypoints[ 87 ] = spawnstruct();
/*  4:14 */waypoints[ 87 ].origin = (1003.4, -266.707, 0.125001);
/*  4:14 */waypoints[ 87 ].type = "crouch";
/*  4:14 */waypoints[ 87 ].children[ 0 ] = 86;
/*  4:14 */waypoints[ 87 ].children[ 1 ] = 32;
/*  4:14 */return waypoints;
}

