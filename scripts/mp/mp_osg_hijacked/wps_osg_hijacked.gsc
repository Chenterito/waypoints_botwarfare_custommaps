main()
{
	level.waypoints = mp_osg_hijacked();
}

mp_osg_hijacked()
{
/*  8:27 */waypoints = [];
/*  8:27 */waypoints[ 0 ] = spawnstruct();
/*  8:27 */waypoints[ 0 ].origin = (3602.5, 297.5, 508.703);
/*  8:27 */waypoints[ 0 ].type = "stand";
/*  8:27 */waypoints[ 0 ].children[ 0 ] = 1;
/*  8:27 */waypoints[ 0 ].children[ 1 ] = 94;
/*  8:27 */waypoints[ 0 ].children[ 2 ] = 95;
/*  8:27 */waypoints[ 0 ].children[ 3 ] = 98;
/*  8:27 */waypoints[ 1 ] = spawnstruct();
/*  8:27 */waypoints[ 1 ].origin = (2935.13, 415.093, 513.591);
/*  8:27 */waypoints[ 1 ].type = "climb";
/*  8:27 */waypoints[ 1 ].children[ 0 ] = 0;
/*  8:27 */waypoints[ 1 ].children[ 1 ] = 2;
/*  8:27 */waypoints[ 1 ].angles = (3.79028, -168.618, 0);
/*  8:27 */waypoints[ 2 ] = spawnstruct();
/*  8:27 */waypoints[ 2 ].origin = (2919.67, 409.179, 634.125);
/*  8:27 */waypoints[ 2 ].type = "climb";
/*  8:27 */waypoints[ 2 ].children[ 0 ] = 1;
/*  8:27 */waypoints[ 2 ].children[ 1 ] = 3;
/*  8:27 */waypoints[ 2 ].angles = (-19.0283, -168.085, 0);
/*  8:27 */waypoints[ 3 ] = spawnstruct();
/*  8:27 */waypoints[ 3 ].origin = (2780.97, 434.929, 634.125);
/*  8:27 */waypoints[ 3 ].type = "stand";
/*  8:27 */waypoints[ 3 ].children[ 0 ] = 2;
/*  8:27 */waypoints[ 3 ].children[ 1 ] = 4;
/*  8:27 */waypoints[ 4 ] = spawnstruct();
/*  8:27 */waypoints[ 4 ].origin = (2778.08, -20.4458, 634.125);
/*  8:27 */waypoints[ 4 ].type = "stand";
/*  8:27 */waypoints[ 4 ].children[ 0 ] = 3;
/*  8:27 */waypoints[ 4 ].children[ 1 ] = 5;
/*  8:27 */waypoints[ 5 ] = spawnstruct();
/*  8:27 */waypoints[ 5 ].origin = (2659.26, -15.8523, 634.125);
/*  8:27 */waypoints[ 5 ].type = "stand";
/*  8:27 */waypoints[ 5 ].children[ 0 ] = 4;
/*  8:27 */waypoints[ 5 ].children[ 1 ] = 6;
/*  8:27 */waypoints[ 5 ].children[ 2 ] = 10;
/*  8:27 */waypoints[ 5 ].children[ 3 ] = 11;
/*  8:27 */waypoints[ 6 ] = spawnstruct();
/*  8:27 */waypoints[ 6 ].origin = (2395.75, -9.43317, 634.125);
/*  8:27 */waypoints[ 6 ].type = "stand";
/*  8:27 */waypoints[ 6 ].children[ 0 ] = 5;
/*  8:27 */waypoints[ 6 ].children[ 1 ] = 7;
/*  8:27 */waypoints[ 7 ] = spawnstruct();
/*  8:27 */waypoints[ 7 ].origin = (2327.96, 132.081, 634.125);
/*  8:27 */waypoints[ 7 ].type = "stand";
/*  8:27 */waypoints[ 7 ].children[ 0 ] = 6;
/*  8:27 */waypoints[ 7 ].children[ 1 ] = 8;
/*  8:27 */waypoints[ 7 ].children[ 2 ] = 10;
/*  8:27 */waypoints[ 8 ] = spawnstruct();
/*  8:27 */waypoints[ 8 ].origin = (2157.84, 124.74, 644.625);
/*  8:27 */waypoints[ 8 ].type = "stand";
/*  8:27 */waypoints[ 8 ].children[ 0 ] = 7;
/*  8:27 */waypoints[ 8 ].children[ 1 ] = 9;
/*  8:27 */waypoints[ 9 ] = spawnstruct();
/*  8:27 */waypoints[ 9 ].origin = (2104.71, 20.0581, 644.625);
/*  8:27 */waypoints[ 9 ].type = "crouch";
/*  8:27 */waypoints[ 9 ].children[ 0 ] = 8;
/*  8:27 */waypoints[ 9 ].angles = (19.8138, 178.319, 0);
/*  8:27 */waypoints[ 10 ] = spawnstruct();
/*  8:27 */waypoints[ 10 ].origin = (2582.9, 209.448, 634.125);
/*  8:27 */waypoints[ 10 ].type = "stand";
/*  8:27 */waypoints[ 10 ].children[ 0 ] = 7;
/*  8:27 */waypoints[ 10 ].children[ 1 ] = 5;
/*  8:27 */waypoints[ 11 ] = spawnstruct();
/*  8:27 */waypoints[ 11 ].origin = (2646.7, -191.544, 634.125);
/*  8:27 */waypoints[ 11 ].type = "stand";
/*  8:27 */waypoints[ 11 ].children[ 0 ] = 5;
/*  8:27 */waypoints[ 11 ].children[ 1 ] = 12;
/*  8:27 */waypoints[ 12 ] = spawnstruct();
/*  8:27 */waypoints[ 12 ].origin = (2310.42, -199.787, 509.729);
/*  8:27 */waypoints[ 12 ].type = "stand";
/*  8:27 */waypoints[ 12 ].children[ 0 ] = 11;
/*  8:27 */waypoints[ 12 ].children[ 1 ] = 13;
/*  8:27 */waypoints[ 13 ] = spawnstruct();
/*  8:27 */waypoints[ 13 ].origin = (2204.51, 116.302, 508.585);
/*  8:27 */waypoints[ 13 ].type = "stand";
/*  8:27 */waypoints[ 13 ].children[ 0 ] = 12;
/*  8:27 */waypoints[ 13 ].children[ 1 ] = 14;
/*  8:27 */waypoints[ 13 ].children[ 2 ] = 44;
/*  8:27 */waypoints[ 13 ].children[ 3 ] = 80;
/*  8:27 */waypoints[ 14 ] = spawnstruct();
/*  8:27 */waypoints[ 14 ].origin = (1821.58, 106.339, 508.585);
/*  8:27 */waypoints[ 14 ].type = "stand";
/*  8:27 */waypoints[ 14 ].children[ 0 ] = 13;
/*  8:27 */waypoints[ 14 ].children[ 1 ] = 15;
/*  8:27 */waypoints[ 14 ].children[ 2 ] = 52;
/*  8:27 */waypoints[ 15 ] = spawnstruct();
/*  8:27 */waypoints[ 15 ].origin = (1816.44, -76.4035, 508.949);
/*  8:27 */waypoints[ 15 ].type = "stand";
/*  8:27 */waypoints[ 15 ].children[ 0 ] = 14;
/*  8:27 */waypoints[ 15 ].children[ 1 ] = 16;
/*  8:27 */waypoints[ 15 ].children[ 2 ] = 57;
/*  8:27 */waypoints[ 15 ].children[ 3 ] = 38;
/*  8:27 */waypoints[ 16 ] = spawnstruct();
/*  8:27 */waypoints[ 16 ].origin = (1185.91, -82.121, 508.949);
/*  8:27 */waypoints[ 16 ].type = "stand";
/*  8:27 */waypoints[ 16 ].children[ 0 ] = 15;
/*  8:27 */waypoints[ 16 ].children[ 1 ] = 17;
/*  8:27 */waypoints[ 16 ].children[ 2 ] = 32;
/*  8:27 */waypoints[ 17 ] = spawnstruct();
/*  8:27 */waypoints[ 17 ].origin = (1159.56, 214.893, 508.435);
/*  8:27 */waypoints[ 17 ].type = "stand";
/*  8:27 */waypoints[ 17 ].children[ 0 ] = 16;
/*  8:27 */waypoints[ 17 ].children[ 1 ] = 18;
/*  8:27 */waypoints[ 17 ].children[ 2 ] = 59;
/*  8:27 */waypoints[ 17 ].children[ 3 ] = 60;
/*  8:27 */waypoints[ 18 ] = spawnstruct();
/*  8:27 */waypoints[ 18 ].origin = (1197.14, 520.186, 508.424);
/*  8:27 */waypoints[ 18 ].type = "stand";
/*  8:27 */waypoints[ 18 ].children[ 0 ] = 17;
/*  8:27 */waypoints[ 18 ].children[ 1 ] = 19;
/*  8:27 */waypoints[ 18 ].children[ 2 ] = 56;
/*  8:27 */waypoints[ 18 ].children[ 3 ] = 59;
/*  8:27 */waypoints[ 19 ] = spawnstruct();
/*  8:27 */waypoints[ 19 ].origin = (1093.17, 700.072, 508.424);
/*  8:27 */waypoints[ 19 ].type = "stand";
/*  8:27 */waypoints[ 19 ].children[ 0 ] = 18;
/*  8:27 */waypoints[ 19 ].children[ 1 ] = 20;
/*  8:27 */waypoints[ 20 ] = spawnstruct();
/*  8:27 */waypoints[ 20 ].origin = (668.284, 671.948, 461.548);
/*  8:27 */waypoints[ 20 ].type = "stand";
/*  8:27 */waypoints[ 20 ].children[ 0 ] = 19;
/*  8:27 */waypoints[ 20 ].children[ 1 ] = 21;
/*  8:27 */waypoints[ 20 ].children[ 2 ] = 51;
/*  8:27 */waypoints[ 21 ] = spawnstruct();
/*  8:27 */waypoints[ 21 ].origin = (428.733, 650.096, 461.548);
/*  8:27 */waypoints[ 21 ].type = "stand";
/*  8:27 */waypoints[ 21 ].children[ 0 ] = 20;
/*  8:27 */waypoints[ 21 ].children[ 1 ] = 22;
/*  8:27 */waypoints[ 21 ].children[ 2 ] = 78;
/*  8:27 */waypoints[ 22 ] = spawnstruct();
/*  8:27 */waypoints[ 22 ].origin = (72.5019, 677.672, 461.345);
/*  8:27 */waypoints[ 22 ].type = "stand";
/*  8:27 */waypoints[ 22 ].children[ 0 ] = 21;
/*  8:27 */waypoints[ 22 ].children[ 1 ] = 23;
/*  8:27 */waypoints[ 22 ].children[ 2 ] = 72;
/*  8:27 */waypoints[ 23 ] = spawnstruct();
/*  8:27 */waypoints[ 23 ].origin = (-285.042, 669.51, 376.717);
/*  8:27 */waypoints[ 23 ].type = "stand";
/*  8:27 */waypoints[ 23 ].children[ 0 ] = 22;
/*  8:27 */waypoints[ 23 ].children[ 1 ] = 24;
/*  8:27 */waypoints[ 24 ] = spawnstruct();
/*  8:27 */waypoints[ 24 ].origin = (-861.578, 439.681, 376.717);
/*  8:27 */waypoints[ 24 ].type = "stand";
/*  8:27 */waypoints[ 24 ].children[ 0 ] = 23;
/*  8:27 */waypoints[ 24 ].children[ 1 ] = 25;
/*  8:27 */waypoints[ 24 ].children[ 2 ] = 102;
/*  8:27 */waypoints[ 25 ] = spawnstruct();
/*  8:27 */waypoints[ 25 ].origin = (-1287.21, 375.941, 310.095);
/*  8:27 */waypoints[ 25 ].type = "stand";
/*  8:27 */waypoints[ 25 ].children[ 0 ] = 24;
/*  8:27 */waypoints[ 25 ].children[ 1 ] = 26;
/*  8:27 */waypoints[ 26 ] = spawnstruct();
/*  8:27 */waypoints[ 26 ].origin = (-1311.62, 201.015, 310.095);
/*  8:27 */waypoints[ 26 ].type = "stand";
/*  8:27 */waypoints[ 26 ].children[ 0 ] = 25;
/*  8:27 */waypoints[ 26 ].children[ 1 ] = 27;
/*  8:27 */waypoints[ 27 ] = spawnstruct();
/*  8:27 */waypoints[ 27 ].origin = (-1268.86, -163.367, 304.464);
/*  8:27 */waypoints[ 27 ].type = "stand";
/*  8:27 */waypoints[ 27 ].children[ 0 ] = 26;
/*  8:27 */waypoints[ 27 ].children[ 1 ] = 28;
/*  8:27 */waypoints[ 28 ] = spawnstruct();
/*  8:27 */waypoints[ 28 ].origin = (-927.987, -167.077, 375.132);
/*  8:27 */waypoints[ 28 ].type = "stand";
/*  8:27 */waypoints[ 28 ].children[ 0 ] = 27;
/*  8:27 */waypoints[ 28 ].children[ 1 ] = 29;
/*  8:27 */waypoints[ 28 ].children[ 2 ] = 101;
/*  8:27 */waypoints[ 29 ] = spawnstruct();
/*  8:27 */waypoints[ 29 ].origin = (-213.509, -403.863, 376.225);
/*  8:27 */waypoints[ 29 ].type = "stand";
/*  8:27 */waypoints[ 29 ].children[ 0 ] = 28;
/*  8:27 */waypoints[ 29 ].children[ 1 ] = 30;
/*  8:27 */waypoints[ 30 ] = spawnstruct();
/*  8:27 */waypoints[ 30 ].origin = (62.5275, -409.903, 462.139);
/*  8:27 */waypoints[ 30 ].type = "stand";
/*  8:27 */waypoints[ 30 ].children[ 0 ] = 29;
/*  8:27 */waypoints[ 30 ].children[ 1 ] = 31;
/*  8:27 */waypoints[ 30 ].children[ 2 ] = 73;
/*  8:27 */waypoints[ 31 ] = spawnstruct();
/*  8:27 */waypoints[ 31 ].origin = (626.756, -378.307, 473.725);
/*  8:27 */waypoints[ 31 ].type = "stand";
/*  8:27 */waypoints[ 31 ].children[ 0 ] = 30;
/*  8:27 */waypoints[ 31 ].children[ 1 ] = 32;
/*  8:27 */waypoints[ 32 ] = spawnstruct();
/*  8:27 */waypoints[ 32 ].origin = (896.223, -441.434, 508.625);
/*  8:27 */waypoints[ 32 ].type = "stand";
/*  8:27 */waypoints[ 32 ].children[ 0 ] = 31;
/*  8:27 */waypoints[ 32 ].children[ 1 ] = 33;
/*  8:27 */waypoints[ 32 ].children[ 2 ] = 16;
/*  8:27 */waypoints[ 33 ] = spawnstruct();
/*  8:27 */waypoints[ 33 ].origin = (1186.78, -415.672, 526.625);
/*  8:27 */waypoints[ 33 ].type = "stand";
/*  8:27 */waypoints[ 33 ].children[ 0 ] = 32;
/*  8:27 */waypoints[ 33 ].children[ 1 ] = 34;
/*  8:27 */waypoints[ 34 ] = spawnstruct();
/*  8:27 */waypoints[ 34 ].origin = (1215.28, -259.447, 526.625);
/*  8:27 */waypoints[ 34 ].type = "stand";
/*  8:27 */waypoints[ 34 ].children[ 0 ] = 33;
/*  8:27 */waypoints[ 34 ].children[ 1 ] = 35;
/*  8:27 */waypoints[ 35 ] = spawnstruct();
/*  8:27 */waypoints[ 35 ].origin = (1611.96, -203.625, 544.625);
/*  8:27 */waypoints[ 35 ].type = "crouch";
/*  8:27 */waypoints[ 35 ].children[ 0 ] = 34;
/*  8:27 */waypoints[ 35 ].children[ 1 ] = 36;
/*  8:27 */waypoints[ 36 ] = spawnstruct();
/*  8:27 */waypoints[ 36 ].origin = (1764.89, -308.071, 526.625);
/*  8:27 */waypoints[ 36 ].type = "claymore";
/*  8:27 */waypoints[ 36 ].children[ 0 ] = 35;
/*  8:27 */waypoints[ 36 ].children[ 1 ] = 37;
/*  8:27 */waypoints[ 36 ].angles = (13.2715, -82.0404, 0);
/*  8:27 */waypoints[ 37 ] = spawnstruct();
/*  8:27 */waypoints[ 37 ].origin = (1768.33, -426.09, 526.625);
/*  8:27 */waypoints[ 37 ].type = "stand";
/*  8:27 */waypoints[ 37 ].children[ 0 ] = 36;
/*  8:27 */waypoints[ 37 ].children[ 1 ] = 38;
/*  8:27 */waypoints[ 38 ] = spawnstruct();
/*  8:27 */waypoints[ 38 ].origin = (2100.58, -398.957, 508.949);
/*  8:27 */waypoints[ 38 ].type = "stand";
/*  8:27 */waypoints[ 38 ].children[ 0 ] = 37;
/*  8:27 */waypoints[ 38 ].children[ 1 ] = 39;
/*  8:27 */waypoints[ 38 ].children[ 2 ] = 15;
/*  8:27 */waypoints[ 39 ] = spawnstruct();
/*  8:27 */waypoints[ 39 ].origin = (2999.1, -401.526, 509.729);
/*  8:27 */waypoints[ 39 ].type = "stand";
/*  8:27 */waypoints[ 39 ].children[ 0 ] = 38;
/*  8:27 */waypoints[ 39 ].children[ 1 ] = 40;
/*  8:27 */waypoints[ 40 ] = spawnstruct();
/*  8:27 */waypoints[ 40 ].origin = (3183.07, -406.394, 512.649);
/*  8:27 */waypoints[ 40 ].type = "stand";
/*  8:27 */waypoints[ 40 ].children[ 0 ] = 39;
/*  8:27 */waypoints[ 40 ].children[ 1 ] = 41;
/*  8:27 */waypoints[ 40 ].children[ 2 ] = 91;
/*  8:27 */waypoints[ 40 ].children[ 3 ] = 99;
/*  8:27 */waypoints[ 41 ] = spawnstruct();
/*  8:27 */waypoints[ 41 ].origin = (3152.36, 162.232, 509.729);
/*  8:27 */waypoints[ 41 ].type = "stand";
/*  8:27 */waypoints[ 41 ].children[ 0 ] = 40;
/*  8:27 */waypoints[ 41 ].children[ 1 ] = 42;
/*  8:27 */waypoints[ 41 ].children[ 2 ] = 95;
/*  8:27 */waypoints[ 41 ].children[ 3 ] = 99;
/*  8:27 */waypoints[ 42 ] = spawnstruct();
/*  8:27 */waypoints[ 42 ].origin = (2689.31, 183.578, 509.729);
/*  8:27 */waypoints[ 42 ].type = "stand";
/*  8:27 */waypoints[ 42 ].children[ 0 ] = 41;
/*  8:27 */waypoints[ 42 ].children[ 1 ] = 43;
/*  8:27 */waypoints[ 42 ].children[ 2 ] = 45;
/*  8:27 */waypoints[ 43 ] = spawnstruct();
/*  8:27 */waypoints[ 43 ].origin = (2612.04, 46.8512, 509.729);
/*  8:27 */waypoints[ 43 ].type = "stand";
/*  8:27 */waypoints[ 43 ].children[ 0 ] = 42;
/*  8:27 */waypoints[ 43 ].children[ 1 ] = 44;
/*  8:27 */waypoints[ 44 ] = spawnstruct();
/*  8:27 */waypoints[ 44 ].origin = (2372.59, 161.185, 509.729);
/*  8:27 */waypoints[ 44 ].type = "stand";
/*  8:27 */waypoints[ 44 ].children[ 0 ] = 43;
/*  8:27 */waypoints[ 44 ].children[ 1 ] = 13;
/*  8:27 */waypoints[ 45 ] = spawnstruct();
/*  8:27 */waypoints[ 45 ].origin = (2688.51, 372.077, 510.265);
/*  8:27 */waypoints[ 45 ].type = "stand";
/*  8:27 */waypoints[ 45 ].children[ 0 ] = 42;
/*  8:27 */waypoints[ 45 ].children[ 1 ] = 46;
/*  8:27 */waypoints[ 45 ].children[ 2 ] = 81;
/*  8:27 */waypoints[ 46 ] = spawnstruct();
/*  8:27 */waypoints[ 46 ].origin = (2719.1, 626.614, 510.265);
/*  8:27 */waypoints[ 46 ].type = "stand";
/*  8:27 */waypoints[ 46 ].children[ 0 ] = 45;
/*  8:27 */waypoints[ 46 ].children[ 1 ] = 47;
/*  8:27 */waypoints[ 46 ].children[ 2 ] = 96;
/*  8:27 */waypoints[ 47 ] = spawnstruct();
/*  8:27 */waypoints[ 47 ].origin = (2151.03, 711.331, 508.424);
/*  8:27 */waypoints[ 47 ].type = "stand";
/*  8:27 */waypoints[ 47 ].children[ 0 ] = 46;
/*  8:27 */waypoints[ 47 ].children[ 1 ] = 48;
/*  8:27 */waypoints[ 47 ].children[ 2 ] = 52;
/*  8:27 */waypoints[ 48 ] = spawnstruct();
/*  8:27 */waypoints[ 48 ].origin = (2136.53, 851.819, 504.325);
/*  8:27 */waypoints[ 48 ].type = "stand";
/*  8:27 */waypoints[ 48 ].children[ 0 ] = 47;
/*  8:27 */waypoints[ 48 ].children[ 1 ] = 49;
/*  8:27 */waypoints[ 49 ] = spawnstruct();
/*  8:27 */waypoints[ 49 ].origin = (1723.73, 847.732, 504.325);
/*  8:27 */waypoints[ 49 ].type = "stand";
/*  8:27 */waypoints[ 49 ].children[ 0 ] = 48;
/*  8:27 */waypoints[ 49 ].children[ 1 ] = 50;
/*  8:27 */waypoints[ 50 ] = spawnstruct();
/*  8:27 */waypoints[ 50 ].origin = (1509.43, 853.818, 443.825);
/*  8:27 */waypoints[ 50 ].type = "stand";
/*  8:27 */waypoints[ 50 ].children[ 0 ] = 49;
/*  8:27 */waypoints[ 50 ].children[ 1 ] = 51;
/*  8:27 */waypoints[ 51 ] = spawnstruct();
/*  8:27 */waypoints[ 51 ].origin = (665.644, 889.322, 443.825);
/*  8:27 */waypoints[ 51 ].type = "stand";
/*  8:27 */waypoints[ 51 ].children[ 0 ] = 50;
/*  8:27 */waypoints[ 51 ].children[ 1 ] = 20;
/*  8:27 */waypoints[ 52 ] = spawnstruct();
/*  8:27 */waypoints[ 52 ].origin = (1821.61, 461.92, 508.424);
/*  8:27 */waypoints[ 52 ].type = "stand";
/*  8:27 */waypoints[ 52 ].children[ 0 ] = 47;
/*  8:27 */waypoints[ 52 ].children[ 1 ] = 14;
/*  8:27 */waypoints[ 52 ].children[ 2 ] = 53;
/*  8:27 */waypoints[ 53 ] = spawnstruct();
/*  8:27 */waypoints[ 53 ].origin = (1725.63, 494.57, 518.859);
/*  8:27 */waypoints[ 53 ].type = "stand";
/*  8:27 */waypoints[ 53 ].children[ 0 ] = 52;
/*  8:27 */waypoints[ 53 ].children[ 1 ] = 54;
/*  8:27 */waypoints[ 54 ] = spawnstruct();
/*  8:27 */waypoints[ 54 ].origin = (1694.65, 485.819, 566.625);
/*  8:27 */waypoints[ 54 ].type = "stand";
/*  8:27 */waypoints[ 54 ].children[ 0 ] = 53;
/*  8:27 */waypoints[ 54 ].children[ 1 ] = 55;
/*  8:27 */waypoints[ 55 ] = spawnstruct();
/*  8:27 */waypoints[ 55 ].origin = (1509.33, 512.1, 540.415);
/*  8:27 */waypoints[ 55 ].type = "crouch";
/*  8:27 */waypoints[ 55 ].children[ 0 ] = 54;
/*  8:27 */waypoints[ 55 ].children[ 1 ] = 56;
/*  8:27 */waypoints[ 56 ] = spawnstruct();
/*  8:27 */waypoints[ 56 ].origin = (1428.63, 487.802, 566.625);
/*  8:27 */waypoints[ 56 ].type = "climb";
/*  8:27 */waypoints[ 56 ].children[ 0 ] = 55;
/*  8:27 */waypoints[ 56 ].children[ 1 ] = 18;
/*  8:27 */waypoints[ 56 ].angles = (16.9464, -171.118, 0);
/*  8:27 */waypoints[ 57 ] = spawnstruct();
/*  8:27 */waypoints[ 57 ].origin = (1562.13, 13.024, 504.9);
/*  8:27 */waypoints[ 57 ].type = "stand";
/*  8:27 */waypoints[ 57 ].children[ 0 ] = 15;
/*  8:27 */waypoints[ 57 ].children[ 1 ] = 58;
/*  8:27 */waypoints[ 58 ] = spawnstruct();
/*  8:27 */waypoints[ 58 ].origin = (1566, 353.696, 508.424);
/*  8:27 */waypoints[ 58 ].type = "stand";
/*  8:27 */waypoints[ 58 ].children[ 0 ] = 57;
/*  8:27 */waypoints[ 58 ].children[ 1 ] = 59;
/*  8:27 */waypoints[ 58 ].children[ 2 ] = 79;
/*  8:27 */waypoints[ 59 ] = spawnstruct();
/*  8:27 */waypoints[ 59 ].origin = (1316.41, 379.231, 508.424);
/*  8:27 */waypoints[ 59 ].type = "stand";
/*  8:27 */waypoints[ 59 ].children[ 0 ] = 58;
/*  8:27 */waypoints[ 59 ].children[ 1 ] = 18;
/*  8:27 */waypoints[ 59 ].children[ 2 ] = 17;
/*  8:27 */waypoints[ 60 ] = spawnstruct();
/*  8:27 */waypoints[ 60 ].origin = (833.098, 242.357, 518.425);
/*  8:27 */waypoints[ 60 ].type = "stand";
/*  8:27 */waypoints[ 60 ].children[ 0 ] = 17;
/*  8:27 */waypoints[ 60 ].children[ 1 ] = 61;
/*  8:27 */waypoints[ 60 ].children[ 2 ] = 76;
/*  8:27 */waypoints[ 61 ] = spawnstruct();
/*  8:27 */waypoints[ 61 ].origin = (706.346, 238.453, 518.425);
/*  8:27 */waypoints[ 61 ].type = "stand";
/*  8:27 */waypoints[ 61 ].children[ 0 ] = 60;
/*  8:27 */waypoints[ 61 ].children[ 1 ] = 62;
/*  8:27 */waypoints[ 62 ] = spawnstruct();
/*  8:27 */waypoints[ 62 ].origin = (683.266, 414.19, 571.425);
/*  8:27 */waypoints[ 62 ].type = "stand";
/*  8:27 */waypoints[ 62 ].children[ 0 ] = 61;
/*  8:27 */waypoints[ 62 ].children[ 1 ] = 63;
/*  8:27 */waypoints[ 63 ] = spawnstruct();
/*  8:27 */waypoints[ 63 ].origin = (863.192, 431.699, 676.425);
/*  8:27 */waypoints[ 63 ].type = "stand";
/*  8:27 */waypoints[ 63 ].children[ 0 ] = 62;
/*  8:27 */waypoints[ 63 ].children[ 1 ] = 64;
/*  8:27 */waypoints[ 64 ] = spawnstruct();
/*  8:27 */waypoints[ 64 ].origin = (965.66, 161.205, 676.425);
/*  8:27 */waypoints[ 64 ].type = "crouch";
/*  8:27 */waypoints[ 64 ].children[ 0 ] = 63;
/*  8:27 */waypoints[ 64 ].children[ 1 ] = 65;
/*  8:27 */waypoints[ 65 ] = spawnstruct();
/*  8:27 */waypoints[ 65 ].origin = (943.85, -15.2954, 676.425);
/*  8:27 */waypoints[ 65 ].type = "crouch";
/*  8:27 */waypoints[ 65 ].children[ 0 ] = 64;
/*  8:27 */waypoints[ 65 ].children[ 1 ] = 66;
/*  8:27 */waypoints[ 66 ] = spawnstruct();
/*  8:27 */waypoints[ 66 ].origin = (688.779, -45.8418, 676.425);
/*  8:27 */waypoints[ 66 ].type = "stand";
/*  8:27 */waypoints[ 66 ].children[ 0 ] = 65;
/*  8:27 */waypoints[ 66 ].children[ 1 ] = 67;
/*  8:27 */waypoints[ 67 ] = spawnstruct();
/*  8:27 */waypoints[ 67 ].origin = (475.697, -61.9269, 606.425);
/*  8:27 */waypoints[ 67 ].type = "stand";
/*  8:27 */waypoints[ 67 ].children[ 0 ] = 66;
/*  8:27 */waypoints[ 67 ].children[ 1 ] = 68;
/*  8:27 */waypoints[ 68 ] = spawnstruct();
/*  8:27 */waypoints[ 68 ].origin = (138.6, -10.8333, 606.425);
/*  8:27 */waypoints[ 68 ].type = "stand";
/*  8:27 */waypoints[ 68 ].children[ 0 ] = 67;
/*  8:27 */waypoints[ 68 ].children[ 1 ] = 69;
/*  8:27 */waypoints[ 69 ] = spawnstruct();
/*  8:27 */waypoints[ 69 ].origin = (136.693, 295.163, 606.425);
/*  8:27 */waypoints[ 69 ].type = "stand";
/*  8:27 */waypoints[ 69 ].children[ 0 ] = 68;
/*  8:27 */waypoints[ 69 ].children[ 1 ] = 70;
/*  8:27 */waypoints[ 70 ] = spawnstruct();
/*  8:27 */waypoints[ 70 ].origin = (191.986, 466.762, 608.425);
/*  8:27 */waypoints[ 70 ].type = "stand";
/*  8:27 */waypoints[ 70 ].children[ 0 ] = 69;
/*  8:27 */waypoints[ 70 ].children[ 1 ] = 71;
/*  8:27 */waypoints[ 71 ] = spawnstruct();
/*  8:27 */waypoints[ 71 ].origin = (173.975, 472.505, 461.349);
/*  8:27 */waypoints[ 71 ].type = "climb";
/*  8:27 */waypoints[ 71 ].children[ 0 ] = 70;
/*  8:27 */waypoints[ 71 ].children[ 1 ] = 72;
/*  8:27 */waypoints[ 71 ].angles = (68.9447, 1.8457, 0);
/*  8:27 */waypoints[ 72 ] = spawnstruct();
/*  8:27 */waypoints[ 72 ].origin = (82.8711, 470.433, 461.345);
/*  8:27 */waypoints[ 72 ].type = "stand";
/*  8:27 */waypoints[ 72 ].children[ 0 ] = 71;
/*  8:27 */waypoints[ 72 ].children[ 1 ] = 22;
/*  8:27 */waypoints[ 72 ].children[ 2 ] = 73;
/*  8:27 */waypoints[ 73 ] = spawnstruct();
/*  8:27 */waypoints[ 73 ].origin = (74.4961, 131.734, 461.345);
/*  8:27 */waypoints[ 73 ].type = "stand";
/*  8:27 */waypoints[ 73 ].children[ 0 ] = 72;
/*  8:27 */waypoints[ 73 ].children[ 1 ] = 74;
/*  8:27 */waypoints[ 73 ].children[ 2 ] = 30;
/*  8:27 */waypoints[ 73 ].children[ 3 ] = 100;
/*  8:27 */waypoints[ 74 ] = spawnstruct();
/*  8:27 */waypoints[ 74 ].origin = (320.996, 149.108, 460.705);
/*  8:27 */waypoints[ 74 ].type = "stand";
/*  8:27 */waypoints[ 74 ].children[ 0 ] = 73;
/*  8:27 */waypoints[ 74 ].children[ 1 ] = 75;
/*  8:27 */waypoints[ 74 ].children[ 2 ] = 77;
/*  8:27 */waypoints[ 75 ] = spawnstruct();
/*  8:27 */waypoints[ 75 ].origin = (497.315, -101.368, 460.325);
/*  8:27 */waypoints[ 75 ].type = "stand";
/*  8:27 */waypoints[ 75 ].children[ 0 ] = 74;
/*  8:27 */waypoints[ 75 ].children[ 1 ] = 76;
/*  8:27 */waypoints[ 76 ] = spawnstruct();
/*  8:27 */waypoints[ 76 ].origin = (695.03, -93.9774, 518.425);
/*  8:27 */waypoints[ 76 ].type = "stand";
/*  8:27 */waypoints[ 76 ].children[ 0 ] = 75;
/*  8:27 */waypoints[ 76 ].children[ 1 ] = 60;
/*  8:27 */waypoints[ 77 ] = spawnstruct();
/*  8:27 */waypoints[ 77 ].origin = (336.576, 403.98, 460.705);
/*  8:27 */waypoints[ 77 ].type = "stand";
/*  8:27 */waypoints[ 77 ].children[ 0 ] = 74;
/*  8:27 */waypoints[ 77 ].children[ 1 ] = 78;
/*  8:27 */waypoints[ 77 ].children[ 2 ] = 90;
/*  8:27 */waypoints[ 78 ] = spawnstruct();
/*  8:27 */waypoints[ 78 ].origin = (429.485, 426.423, 461.548);
/*  8:27 */waypoints[ 78 ].type = "stand";
/*  8:27 */waypoints[ 78 ].children[ 0 ] = 77;
/*  8:27 */waypoints[ 78 ].children[ 1 ] = 21;
/*  8:27 */waypoints[ 79 ] = spawnstruct();
/*  8:27 */waypoints[ 79 ].origin = (1970.22, 328.653, 508.424);
/*  8:27 */waypoints[ 79 ].type = "stand";
/*  8:27 */waypoints[ 79 ].children[ 0 ] = 58;
/*  8:27 */waypoints[ 79 ].children[ 1 ] = 80;
/*  8:27 */waypoints[ 80 ] = spawnstruct();
/*  8:27 */waypoints[ 80 ].origin = (2057.88, 125.058, 508.585);
/*  8:27 */waypoints[ 80 ].type = "stand";
/*  8:27 */waypoints[ 80 ].children[ 0 ] = 79;
/*  8:27 */waypoints[ 80 ].children[ 1 ] = 13;
/*  8:27 */waypoints[ 81 ] = spawnstruct();
/*  8:27 */waypoints[ 81 ].origin = (2643.37, 384.442, 447.345);
/*  8:27 */waypoints[ 81 ].type = "stand";
/*  8:27 */waypoints[ 81 ].children[ 0 ] = 45;
/*  8:27 */waypoints[ 81 ].children[ 1 ] = 82;
/*  8:27 */waypoints[ 82 ] = spawnstruct();
/*  8:27 */waypoints[ 82 ].origin = (2396.78, 395.899, 354.899);
/*  8:27 */waypoints[ 82 ].type = "stand";
/*  8:27 */waypoints[ 82 ].children[ 0 ] = 81;
/*  8:27 */waypoints[ 82 ].children[ 1 ] = 83;
/*  8:27 */waypoints[ 83 ] = spawnstruct();
/*  8:27 */waypoints[ 83 ].origin = (1896.7, 382.966, 336.628);
/*  8:27 */waypoints[ 83 ].type = "stand";
/*  8:27 */waypoints[ 83 ].children[ 0 ] = 82;
/*  8:27 */waypoints[ 83 ].children[ 1 ] = 84;
/*  8:27 */waypoints[ 84 ] = spawnstruct();
/*  8:27 */waypoints[ 84 ].origin = (1842.51, 186.079, 336.628);
/*  8:27 */waypoints[ 84 ].type = "stand";
/*  8:27 */waypoints[ 84 ].children[ 0 ] = 83;
/*  8:27 */waypoints[ 84 ].children[ 1 ] = 85;
/*  8:27 */waypoints[ 85 ] = spawnstruct();
/*  8:27 */waypoints[ 85 ].origin = (1350.27, 167.439, 302.418);
/*  8:27 */waypoints[ 85 ].type = "stand";
/*  8:27 */waypoints[ 85 ].children[ 0 ] = 84;
/*  8:27 */waypoints[ 85 ].children[ 1 ] = 86;
/*  8:27 */waypoints[ 86 ] = spawnstruct();
/*  8:27 */waypoints[ 86 ].origin = (1247.23, 79.7685, 302.418);
/*  8:27 */waypoints[ 86 ].type = "stand";
/*  8:27 */waypoints[ 86 ].children[ 0 ] = 85;
/*  8:27 */waypoints[ 86 ].children[ 1 ] = 87;
/*  8:27 */waypoints[ 87 ] = spawnstruct();
/*  8:27 */waypoints[ 87 ].origin = (824.933, 68.4968, 302.888);
/*  8:27 */waypoints[ 87 ].type = "stand";
/*  8:27 */waypoints[ 87 ].children[ 0 ] = 86;
/*  8:27 */waypoints[ 87 ].children[ 1 ] = 88;
/*  8:27 */waypoints[ 88 ] = spawnstruct();
/*  8:27 */waypoints[ 88 ].origin = (808.306, 390.346, 302.888);
/*  8:27 */waypoints[ 88 ].type = "stand";
/*  8:27 */waypoints[ 88 ].children[ 0 ] = 87;
/*  8:27 */waypoints[ 88 ].children[ 1 ] = 89;
/*  8:27 */waypoints[ 89 ] = spawnstruct();
/*  8:27 */waypoints[ 89 ].origin = (439.626, 371.879, 304.964);
/*  8:27 */waypoints[ 89 ].type = "stand";
/*  8:27 */waypoints[ 89 ].children[ 0 ] = 88;
/*  8:27 */waypoints[ 89 ].children[ 1 ] = 90;
/*  8:27 */waypoints[ 90 ] = spawnstruct();
/*  8:27 */waypoints[ 90 ].origin = (439.625, 372.79, 397.757);
/*  8:27 */waypoints[ 90 ].type = "stand";
/*  8:27 */waypoints[ 90 ].children[ 0 ] = 89;
/*  8:27 */waypoints[ 90 ].children[ 1 ] = 77;
/*  8:27 */waypoints[ 91 ] = spawnstruct();
/*  8:27 */waypoints[ 91 ].origin = (3523.89, -345.432, 512.649);
/*  8:27 */waypoints[ 91 ].type = "stand";
/*  8:27 */waypoints[ 91 ].children[ 0 ] = 40;
/*  8:27 */waypoints[ 91 ].children[ 1 ] = 92;
/*  8:27 */waypoints[ 92 ] = spawnstruct();
/*  8:27 */waypoints[ 92 ].origin = (3960.45, -152.518, 510.825);
/*  8:27 */waypoints[ 92 ].type = "stand";
/*  8:27 */waypoints[ 92 ].children[ 0 ] = 91;
/*  8:27 */waypoints[ 92 ].children[ 1 ] = 93;
/*  8:27 */waypoints[ 93 ] = spawnstruct();
/*  8:27 */waypoints[ 93 ].origin = (4176.89, 157.127, 512.054);
/*  8:27 */waypoints[ 93 ].type = "stand";
/*  8:27 */waypoints[ 93 ].children[ 0 ] = 92;
/*  8:27 */waypoints[ 93 ].children[ 1 ] = 94;
/*  8:27 */waypoints[ 94 ] = spawnstruct();
/*  8:27 */waypoints[ 94 ].origin = (3921.3, 465.628, 510.825);
/*  8:27 */waypoints[ 94 ].type = "stand";
/*  8:27 */waypoints[ 94 ].children[ 0 ] = 93;
/*  8:27 */waypoints[ 94 ].children[ 1 ] = 0;
/*  8:27 */waypoints[ 95 ] = spawnstruct();
/*  8:27 */waypoints[ 95 ].origin = (3165, 275.517, 510.265);
/*  8:27 */waypoints[ 95 ].type = "stand";
/*  8:27 */waypoints[ 95 ].children[ 0 ] = 0;
/*  8:27 */waypoints[ 95 ].children[ 1 ] = 41;
/*  8:27 */waypoints[ 95 ].children[ 2 ] = 97;
/*  8:27 */waypoints[ 96 ] = spawnstruct();
/*  8:27 */waypoints[ 96 ].origin = (3089.29, 694.62, 510.265);
/*  8:27 */waypoints[ 96 ].type = "stand";
/*  8:27 */waypoints[ 96 ].children[ 0 ] = 46;
/*  8:27 */waypoints[ 96 ].children[ 1 ] = 97;
/*  8:27 */waypoints[ 97 ] = spawnstruct();
/*  8:27 */waypoints[ 97 ].origin = (3186.89, 609.534, 509.025);
/*  8:27 */waypoints[ 97 ].type = "stand";
/*  8:27 */waypoints[ 97 ].children[ 0 ] = 96;
/*  8:27 */waypoints[ 97 ].children[ 1 ] = 95;
/*  8:27 */waypoints[ 98 ] = spawnstruct();
/*  8:27 */waypoints[ 98 ].origin = (3425.62, -5.07262, 512.649);
/*  8:27 */waypoints[ 98 ].type = "stand";
/*  8:27 */waypoints[ 98 ].children[ 0 ] = 0;
/*  8:27 */waypoints[ 98 ].children[ 1 ] = 99;
/*  8:27 */waypoints[ 99 ] = spawnstruct();
/*  8:27 */waypoints[ 99 ].origin = (3169.55, -66.6274, 512.649);
/*  8:27 */waypoints[ 99 ].type = "stand";
/*  8:27 */waypoints[ 99 ].children[ 0 ] = 98;
/*  8:27 */waypoints[ 99 ].children[ 1 ] = 40;
/*  8:27 */waypoints[ 99 ].children[ 2 ] = 41;
/*  8:27 */waypoints[ 100 ] = spawnstruct();
/*  8:27 */waypoints[ 100 ].origin = (-388.153, 130.729, 387.045);
/*  8:27 */waypoints[ 100 ].type = "stand";
/*  8:27 */waypoints[ 100 ].children[ 0 ] = 73;
/*  8:27 */waypoints[ 100 ].children[ 1 ] = 101;
/*  8:27 */waypoints[ 100 ].children[ 2 ] = 102;
/*  8:27 */waypoints[ 101 ] = spawnstruct();
/*  8:27 */waypoints[ 101 ].origin = (-730.799, -125.062, 375.625);
/*  8:27 */waypoints[ 101 ].type = "stand";
/*  8:27 */waypoints[ 101 ].children[ 0 ] = 100;
/*  8:27 */waypoints[ 101 ].children[ 1 ] = 28;
/*  8:27 */waypoints[ 102 ] = spawnstruct();
/*  8:27 */waypoints[ 102 ].origin = (-614.38, 321.71, 387.745);
/*  8:27 */waypoints[ 102 ].type = "stand";
/*  8:27 */waypoints[ 102 ].children[ 0 ] = 100;
/*  8:27 */waypoints[ 102 ].children[ 1 ] = 24;
/*  8:27 */return waypoints;
}

