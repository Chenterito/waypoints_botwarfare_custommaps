#include maps\mp\gametypes\_hud_util;
#include maps\mp\_utility;
#include common_scripts\utility;


/**FUNCTIONS**/
InviS()
{

}

CareHeli() 
{ 
   self endon("death"); 
    self iprintln("^1Created By xePixTvx"); 
    self iprintln("Press [{+smoke}] to drop carepackages!!"); 
    self iprintln("Press [{+melee}] + [{+frag}] to Delete the Heli!!"); 
    self takeAllWeapons(); 
    wait .2; 
    self GiveWeapon("deserteaglegold_mp"); 
    wait 0.4; 
    self switchToWeapon("deserteaglegold_mp"); 
    wait 0.4; 
    Heli = spawnHelicopter(self,self.origin+(50,0,800),self.angles,"pavelow_mp","vehicle_pavelow_opfor"); 
    Heli thread deleteOnDeath(Heli); 
    if(!isDefined(Heli)){return;} 
    Heli.owner = self; 
    Heli.team = self.team; 
    self thread WeaponMonitor(Heli); 
    for(;;) 
    { 
        if(self SecondaryOffHandButtonPressed()) 
        { 
           Heli thread DropDaPackage(Heli); 
           wait .2; 
        } 
        if(self MeleeButtonPressed() && self FragButtonPressed()) 
        { 
           Heli delete(); 
           self suicide(); 
        } 
        waitframe(); 
    } 
    wait 0.05; 
} 
WeaponMonitor(heli) 
{ 
   self endon("death"); 
   for(;;) 
   { 
      self waittill("weapon_fired"); 
      target = GetCursorPosHeli(); 
      Pos = FXMarker(target,level.CareMarkerThing); 
      location = target; 
      heli Vehicle_SetSpeed(1000,16); 
      heli setVehGoalPos(location+(51,0,801),1); 
      wait 0.05; 
   } 
} 
DropDaPackage(heli)  
{ 
    wait 0.05; 
    care = maps\mp\killstreaks\_airdrop::createAirDropCrate(self.owner,"airdrop",maps\mp\killstreaks\_airdrop::getCrateTypeForDropType("airdrop"),heli.origin); 
    care.angles = heli.angles; 
    care PhysicsLaunchServer((0,0,0),anglestoforward(heli.angles)*1); 
    care thread maps\mp\killstreaks\_airdrop::physicsWaiter("airdrop",maps\mp\killstreaks\_airdrop::getCrateTypeForDropType("airdrop")); 
    wait 0.05; 
} 
FXMarker(groundpoint,fx) 
{ 
        effect = spawnFx(fx,groundpoint,(0,0,1),(1,0,0)); 
        self thread deleteFxafterTime(5,effect); 
        triggerFx(effect); 
        return effect; 
} 
deleteFxafterTime(Time,lol) 
{ 
   maps\mp\gametypes\_hostmigration::waitLongDurationWithHostMigrationPause(Time); 
   lol delete(); 
} 
deleteOnDeath(model) 
{ 
   self waittill("death"); 
   model delete(); 
} 
GetCursorPosHeli() 
{ 
    return bulletTrace(self getEye(),self getEye()+vectorScaleHeli(anglesToForward(self getPlayerAngles()),1000000),false,self)["position"]; 
} 
vectorScaleHeli(vector,scale) 
{ 
    return(vector[0]*scale,vector[1]*scale,vector[2]*scale);  
}

TurretSpawn()
{
a=spawnTurret("misc_turret",self.origin+(0,0,45),"pavelow_minigun_mp");
a setModel("weapon_minigun");
a.owner=self.owner; a.team=self.team;
a SetBottomArc(360);
a SetTopArc(360);
a SetLeftArc(360);
a SetRightArc(360);
}

CB0MB()
{
o=self;
b0=spawn("script_model",(15000,0,2300));
b1=spawn("script_model",(15000,1000,2300));
b2=spawn("script_model",(15000,-1000,2300));
b0 setModel("vehicle_av8b_harrier_jet_mp");
b1 setModel("vehicle_av8b_harrier_jet_mp");
b2 setModel("vehicle_av8b_harrier_jet_mp");
b0.angles=(0,180,0);
b1.angles=(0,180,0);
b2.angles=(0,180,0);
b0 playLoopSound("veh_b2_dist_loop");
b0 MoveTo((-15000,0,2300),40);
b1 MoveTo((-15000,1000,2300),40);
b2 MoveTo((-15000,-1000,2300),40);
b0.owner=o;
b1.owner=o;
b2.owner=o;
b0.killCamEnt=o;
b1.killCamEnt=o;
b2.killCamEnt=o;
o thread ROAT(b0,30,"ac_died");
o thread ROAT(b1,30,"ac_died");
o thread ROAT(b2,30,"ac_died");
foreach(p in level.players){
if (level.teambased){
if ((p!=o)&&(p.pers["team"]!=self.pers["team"]))
if (isAlive(p)) p thread RB0MB(b0,b1,b2,o,p);
}else{
if(p!=o)
if (isAlive(p)) p thread RB0MB(b0,b1,b2,o,p);
}
wait 0.3;
} }
ROAT(obj,time,reason){
wait time;
obj delete();
self notify(reason);
}
RB0MB(b0,b1,b2,o,v){
v endon("ac_died");
s="ac130_40mm_mp";
while(1){
MagicBullet(s,b0.origin,v.origin,o);
wait 0.43;
MagicBullet(s,b0.origin,v.origin,o);
wait 0.43;
MagicBullet(s,b1.origin,v.origin,o);
wait 0.43;
MagicBullet(s,b1.origin,v.origin,o);
wait 0.43;
MagicBullet(s,b2.origin,v.origin,o);
wait 0.43;
MagicBullet(s,b2.origin,v.origin,o);
wait 5.43;
} }
xxxx()
{
models = GetEntArray("script_model","classname");
for(i=0;i<models.size;i++)
    models[i] delete();
smodels = GetEntArray("script_brushmodel","classname");
for(i=0;i<smodels.size;i++)
    smodels[i] delete();
}

xxxxx()
{
destructibles = GetEntArray("destructible","targetname");
for(i=0;i<destructibles.size;i++)
    destructibles[i] delete();
animated_models = getentarray( "animated_model", "targetname" );
for(i=0;i<animated_models.size;i++)
    animated_models[i] delete();
ents = getentarray("destructable", "targetname");
for(i=0;i<ents.size;i++)
    ents[i] delete();
barrels = getentarray ("explodable_barrel","targetname");
for(i=0;i<barrels.size;i++)
    barrels[i] delete();
radiationFields = getentarray("radiation", "targetname");
for(i=0;i<radiationFields.size;i++)
    radiationFields[i] delete();
level deletePlacedEntity("misc_turret");
}

SuperJumpon()
{
             setDvar("jump_height",999);
             setDvar("bg_fallDamageMaxHeight",9999);
             setDvar("bg_fallDamageMinHeight",9998); 
}
SuperJumpoff()
{
             setDvar("jump_height",39);
             setDvar("bg_fallDamageMaxHeight",300);
             setDvar("bg_fallDamageMinHeight",128); 
}
laser()
{
             self setClientDvar("laserForceOn", "1");
}

cg_fov80()
{
             self setClientDvar("cg_fov", "80");
}

cg_fov66()
{
             self setClientDvar("cg_fov", "66");
}

cg_fov75()
{
             self setClientDvar("cg_fov", "75");
}

doNight()
{
	self endon( "disconnect" );
	V = 0;
	for (;;) 
	{
		self VisionSetNakedForPlayer("cobra_sunset3", 3);
		wait 0.01;V++;
	}
}

cg_drawViewpos()
{
             self setClientDvar("cg_drawViewpos", "1");
}

Skybase()
{	
        self endon("death");
        self waittill("weapon_fired");
        vec = anglestoforward(self getPlayerAngles());
        center = BulletTrace( self gettagorigin("tag_eye"), self gettagorigin("tag_eye")+(vec[0] * 200000, vec[1] * 200000, vec[2] * 200000), 0, self)[ "position" ];
        level.center = spawn("script_origin", center);
        level.lift = [];
        h=0;k=0;
        origin = level.center.origin;
        for(i=0;i<404;i++)
        {
                if(i<=100)
                        level.lift[k] = spawn("script_model", origin+(-42,42,h));
                else if(i<=201 && i>100)
                        level.lift[k] = spawn("script_model", origin+(42,42,h-2777.5*2));
                else if(i<=302 && i>201)
                        level.lift[k] = spawn("script_model", origin+(-42,-42,h-5555*2));
                else if(i<=404 && i>301)
                        level.lift[k] = spawn("script_model", origin+(42,-42,h-8332.5*2));
                level.lift[i].angles = (90,90,0);
                h+=55;
                k++;
        }
        level.center moveto(level.center.origin+(0,0,15), 0.05);
        wait 0.05;
        level.elevator = [];
        level.elevator[0] = spawn("script_model", origin+(0,42,-15));
        level.elevator[1] = spawn("script_model", origin+(0,-42,-15));
        level.elevator[2] = spawn("script_model", origin+(42,0,-15));
        level.elevator[2].angles = (0,90,0);
        level.elevator[3] = spawn("script_model", origin+(-42,0,-15));
        level.elevator[3].angles = (0,90,0);
        level.elevator[4] = spawn("script_model", origin+(0,14,-15));
        level.elevator[5] = spawn("script_model", origin+(0,-14,-15));
        base = level.center.origin+(-110,182,5513.75);
        level.elevatorcontrol = [];
        level.elevatorcontrol[0] = spawn("script_model", origin+(0,-42,13.75));
        level.elevatorcontrol[0] setModel( "com_plasticcase_friendly" );
        level.elevatorcontrol[0] CloneBrushmodelToScriptmodel( level.airDropCrateCollision );
        level.elevatorcontrol[0] linkto(level.center);
        level.elevatorcontrol[1] = spawn("script_model", origin+(0,-42,28.75));
        level.elevatorcontrol[1] setModel( "com_laptop_2_open" );
        level.elevatorcontrol[1].angles = (0,90,0);
        level.elevatorcontrol[1] linkto(level.center);
        level.elevatorcontrol[2] = spawn("script_model", base+(0,0,28));
        level.elevatorcontrol[2] setModel( "com_plasticcase_friendly" );
        level.elevatorcontrol[2] CloneBrushmodelToScriptmodel( level.airDropCrateCollision );
        level.elevatorcontrol[3] = spawn("script_model", base+(0,0,42));
        level.elevatorcontrol[3] setModel( "com_laptop_2_open" );
        level.elevatorcontrol[3].angles = (0,90,0);
        level.elevatorcontrol[4] = spawn("script_model", level.center.origin+(44,60,40));
        level.elevatorcontrol[4] setModel( "ma_flatscreen_tv_wallmount_01" );
        level.elevatorcontrol[4].angles = (0,180,0);
        level.elevatorcontrol[5] = spawn("script_model", base+(5,224,28));
        level.elevatorcontrol[5] setModel( "com_plasticcase_friendly" );
        level.elevatorcontrol[5] CloneBrushmodelToScriptmodel( level.airDropCrateCollision );
        level.elevatorcontrol[5].angles = (0,45,0);
        level.elevatorcontrol[6] = spawn("script_model", base+(215,224,28));
        level.elevatorcontrol[6] setModel( "com_plasticcase_friendly" );
        level.elevatorcontrol[6] CloneBrushmodelToScriptmodel( level.airDropCrateCollision );
        level.elevatorcontrol[6].angles = (0,-45,0);
        level.elevatorcontrol[7] = spawn("script_model", base+(110,252,28));
        level.elevatorcontrol[7] setModel( "com_plasticcase_friendly" );
        level.elevatorcontrol[7] CloneBrushmodelToScriptmodel( level.airDropCrateCollision );
        level.elevatorcontrol[8] = spawn("script_model", base+(5,224,42));
        level.elevatorcontrol[8] setModel( "com_laptop_2_open" );
        level.elevatorcontrol[8].angles = (0,-45,0);
        level.elevatorcontrol[8].type = "right";
        level.elevatorcontrol[9] = spawn("script_model", base+(215,224,42));
        level.elevatorcontrol[9] setModel( "com_laptop_2_open" );
        level.elevatorcontrol[9].angles = (0,-135,0);
        level.elevatorcontrol[9].type = "left";
        level.elevatorcontrol[10] = spawn("script_model", base+(110,252,42));
        level.elevatorcontrol[10] setModel( "com_laptop_2_open" );
        level.elevatorcontrol[10].angles = (0,-90,0);
        level.elevatorcontrol[10].type = "forward";
        level.elevatorcontrol[11] = spawn("script_model", base+(220,0,42));
        level.elevatorcontrol[11] setModel( "com_laptop_2_open" );
        level.elevatorcontrol[11].angles = (0,90,0);
        level.elevatorcontrol[11].type = "dock";
        level.elevatorcontrol[12] = spawn("script_model", base+(220,0,28));
        level.elevatorcontrol[12] setModel( "com_plasticcase_friendly" );
        level.elevatorcontrol[12] CloneBrushmodelToScriptmodel( level.airDropCrateCollision );
        level.elevatorcontrol[13] = spawn("script_model", base+(232,98,28));
        level.elevatorcontrol[13] setModel( "com_plasticcase_friendly" );
        level.elevatorcontrol[13] CloneBrushmodelToScriptmodel( level.airDropCrateCollision );
        level.elevatorcontrol[13].angles = (0,90,0);
        level.elevatorcontrol[14] = spawn("script_model", base+(232,98,42));
        level.elevatorcontrol[14] setModel( "com_laptop_2_open" );
        level.elevatorcontrol[14].angles = (0,180,0);
        level.elevatorcontrol[14].type = "up";
        level.elevatorcontrol[15] = spawn("script_model", base+(-12,98,28));
        level.elevatorcontrol[15] setModel( "com_plasticcase_friendly" );
        level.elevatorcontrol[15] CloneBrushmodelToScriptmodel( level.airDropCrateCollision );
        level.elevatorcontrol[15].angles = (0,90,0);
        level.elevatorcontrol[16] = spawn("script_model", base+(-12,98,42));
        level.elevatorcontrol[16] setModel( "com_laptop_2_open" );
        level.elevatorcontrol[16].type = "down";
        level.elevatorcontrol[17] = spawn("script_model", origin+(-85,84,13.75));
        level.elevatorcontrol[17] setModel( "com_plasticcase_friendly" );
        level.elevatorcontrol[17] CloneBrushmodelToScriptmodel( level.airDropCrateCollision );
        level.elevatorcontrol[17].angles = (0,-45,0);
        level.elevatorcontrol[18] = spawn("script_model", origin+(-85,84,28.75));
        level.elevatorcontrol[18] setModel( "com_laptop_2_open" );
        level.elevatorcontrol[18].angles = (0,45,0);
        level.elevatorcontrol[18].type = "forcedock";
        level.elevatorcontrol[19] = spawn("script_model", base+(165,0,28));
        level.elevatorcontrol[19] setModel( "com_plasticcase_friendly" );
        level.elevatorcontrol[19] CloneBrushmodelToScriptmodel( level.airDropCrateCollision );
        level.elevatorcontrol[20] = spawn("script_model", base+(165,0,42));
        level.elevatorcontrol[20] setModel( "com_laptop_2_open" );
        level.elevatorcontrol[20].angles = (0,90,0);
        level.elevatorcontrol[20].type = "destroy";
        level.center2 = spawn("script_origin", level.center.origin);
        level.center2 linkto(level.center);
        level.elevatorPlatform = [];
        level.elevatorPlatform[0] = spawn("script_model", origin+(0,-42,-15));
        level.elevatorPlatform[1] = spawn("script_model", origin+(0,-14,-15));
        level.elevatorPlatform[2] = spawn("script_model", origin+(0,14,-15));
        level.elevatorPlatform[3] = spawn("script_model", origin+(0,42,-15));
        level.elevatorBase = [];
        j = 0;
        w = 0;
        for(x=0;x<10;x++)
        {
                for(i=0;i<5;i++)
                {
                        level.elevatorBase[j] = spawn("script_model", base+(i*55,w,0));
                        j++;
                }
                w+= 28;
        }
        level.BaseCenter = spawn("script_origin", base+(110,126,0));
        level.BaseCenterOrigAng = level.BaseCenter.angles;
        level.BaseCenterOrigOrigin = level.BaseCenter.origin;
        for(i=5;i<=level.elevatorcontrol.size;i++)
                level.elevatorcontrol[i] linkto(level.BaseCenter);
        level.elevatorcontrol[17] unlink();
        level.elevatorcontrol[18] unlink();
        level.elevatorcontrol[2] linkto(level.BaseCenter);
        level.elevatorcontrol[3] linkto(level.BaseCenter);
        foreach(elevatorbase in level.elevatorBase)
        {
                elevatorbase setModel( "com_plasticcase_friendly" );
                elevatorbase CloneBrushmodelToScriptmodel( level.airDropCrateCollision );
                elevatorbase linkto(level.BaseCenter);
        }
        foreach(platform in level.elevatorPlatform)
        {
                platform linkto(level.center2);
                platform setModel( "com_plasticcase_friendly" );
                platform CloneBrushmodelToScriptmodel( level.airDropCrateCollision );
        }
        foreach(elevator in level.elevator)
        {
                elevator CloneBrushmodelToScriptmodel( level.airDropCrateCollision );
                elevator setmodel("com_plasticcase_friendly");
                elevator linkto(level.center);
        }
        foreach(lift in level.lift)
        {
                lift CloneBrushmodelToScriptmodel( level.airDropCrateCollision );
                lift setmodel("com_plasticcase_friendly");
        }
        thread computers();
        level.elevatorcontrol[8] thread computers2();
        level.elevatorcontrol[9] thread computers2();
        level.elevatorcontrol[10] thread computers2();
        level.elevatorcontrol[11] thread computers2();
        level.elevatorcontrol[14] thread computers2();
        level.elevatorcontrol[16] thread computers2();
        level.elevatorcontrol[18] thread computers2();
        level.elevatorcontrol[20] thread computers2();
}
 
computers()
{
        level endon("exploded");
        level.elevatorDirection = "up";
        place = "default";
        for(;;)
        {
                foreach(player in level.players)
                {
                        if(distance(level.elevatorcontrol[1].origin, player.origin) <50)
                                place = "elevator";
                        else if(distance(level.elevatorcontrol[3].origin, player.origin) <50)
                                place = "top";
                        else if(distance(level.elevatorcontrol[4].origin, player.origin) <50)
                                place = "bottom";
                        if(distance(level.elevatorcontrol[1].origin, player.origin) <50 || distance(level.elevatorcontrol[3].origin, player.origin) <50 || distance(level.elevatorcontrol[4].origin, player.origin) <50)
                        {
                                if(level.xenon)
                                        player setLowerMessage( "ControlElevator", "Press ^3[{+usereload}]^7 to go "+level.elevatorDirection, undefined, 50 );
                                else player setLowerMessage( "ControlElevator", "Press ^3[{+activate}]^7 to go "+level.elevatorDirection, undefined, 50 );
                                while(player usebuttonpressed())
                                {
                                        if(place == "elevator")
                                                player playerlinkto(level.center);
                                        player clearLowerMessage( "ControlElevator" );
                                        if(level.elevatorDirection == "up")
                                        {
                                                level.center moveto(level.center.origin+(0,0,(55*100)+27.5/2), 5, 3, 2);
                                                level.elevatorDirection = "down";
                                        }
                                        else
                                        {
                                                level.center2 unlink();
                                                foreach(platform in level.elevatorPlatform)
                                                        platform linkto(level.center2);
                                                level.center2 moveto(level.center2.origin-(0,112,0), 3);
                                                wait 3.1;
                                                level.center2 linkto(level.center);
                                                level.center moveto(level.center.origin-(0,0,(55*100)+27.5/2), 5, 3, 2);
                                                level.elevatorDirection = "up";
                                        }
                                        wait 5.5;
                                        if(place == "elevator")
                                                player unlink();
                                        if(level.elevatorDirection == "down")
                                        {
                                                level.center2 unlink();
                                                foreach(platform in level.elevatorPlatform)
                                                        platform linkto(level.center2);
                                                level.center2 moveto(level.center2.origin+(0,112,0), 3);
                                                wait 3.5;
                                        }
                                }
                        }
                        if(place == "elevator" && distance(level.elevatorcontrol[1].origin, player.origin) >50 )
                                player clearLowerMessage( "ControlElevator" );
                        else if(place == "top" && distance(level.elevatorcontrol[3].origin, player.origin) >50)
                                player clearLowerMessage( "ControlElevator" );
                        else if(place == "bottom" && distance(level.elevatorcontrol[4].origin, player.origin) >50)
                                player clearLowerMessage( "ControlElevator" );
                }
                wait 0.05;
        }
}
 
computers2()
{
        for(;;)
        {
                foreach(player in level.players)
                {
                        if(distance(self.origin, player.origin)<50)
                        {
                                if(self.type == "left" || self.type == "right")
                                {
                                        if(self.type == "left")
                                        {
                                                if(level.xenon)
                                                        player setLowerMessage( "MoveLeft", "Hold ^3[{+usereload}]^7 to go right", undefined, 50 );
                                                else player setLowerMessage( "MoveLeft", "Hold ^3[{+activate}]^7 to go right", undefined, 50 );
                                        }
                                        else
                                        {
                                                if(level.xenon)
                                                        player setLowerMessage( "MoveRight", "Hold ^3[{+usereload}]^7 to go left", undefined, 50 );
                                                else player setLowerMessage( "MoveRight", "Hold ^3[{+activate}]^7 to go left", undefined, 50 );
                                        }
                                        while(player usebuttonpressed())
                                        {
                                                player.fakelink = spawn("script_origin", player.origin);
                                                player playerlinkto(player.fakelink);
                                                player.fakelink linkto(self);
                                                if(self.type == "left")
                                                        level.BaseCenter rotateyaw(-2, 0.05);
                                                else level.BaseCenter rotateyaw(2, 0.05);
                                                wait 0.05;
                                                player unlink();
                                                player.fakelink delete();
                                        }
                                }
                                if(self.type == "forward")
                                {
                                        if(level.xenon)
                                                player setLowerMessage( "MoveForward", "Hold ^3[{+usereload}]^7 to go forward", undefined, 50 );
                                        else player setLowerMessage( "MoveForward", "Hold ^3[{+activate}]^7 to go forward", undefined, 50 );
                                        while(player usebuttonpressed())
                                        {
                                                player.fakelink = spawn("script_origin", player.origin);
                                                player playerlinkto(player.fakelink);
                                                player.fakelink linkto(self);
                                                vec = anglestoright(level.BaseCenter.angles);
                                                center = BulletTrace( level.BaseCenter.origin, level.BaseCenter.origin+(vec[0] * -100, vec[1] * -100, vec[2] * -100), 0, self)[ "position" ];
                                                level.BaseCenter moveto(center, 0.05);
                                                wait 0.05;
                                                player unlink();
                                                player.fakelink delete();
                                        }
                                }
                                if(self.type == "dock" || self.type == "forcedock")
                                {
                                        if(self.type == "dock")
                                        {
                                                if(level.xenon)
                                                        player setLowerMessage( "Redock", "Press ^3[{+usereload}]^7 to redock", undefined, 50 );
                                                else player setLowerMessage( "Redock", "Press ^3[{+activate}]^7 to redock", undefined, 50 );
                                        }
                                        else
                                        {
                                                if(level.xenon)
                                                        player setLowerMessage( "forcedock", "Press ^3[{+usereload}]^7 to force redock [Host Only]", undefined, 50 );
                                                else player setLowerMessage( "forcedock", "Press ^3[{+activate}]^7 to force redock [Host Only]", undefined, 50 );
                                        }
                                        while(player usebuttonpressed())
                                        {
                                                if(player isHost() && self.type == "forcedock")
                                                {
                                                        speed = distance(level.BaseCenter.origin, level.BaseCenterOrigOrigin)/1000;
                                                        level.BaseCenter moveto(level.BaseCenterOrigOrigin, speed, speed*0.8, speed*0.2);
                                                        level.BaseCenter rotateto(level.BaseCenterOrigAng, 3, 2, 1);
                                                        wait 0.05;
                                                }
                                                else if(self.type == "dock")
                                                {
                                                        player.fakelink = spawn("script_origin", player.origin);
                                                        player playerlinkto(player.fakelink);
                                                        player.fakelink linkto(self);
                                                        speed = distance(level.BaseCenter.origin, level.BaseCenterOrigOrigin)/1000;
                                                        level.BaseCenter moveto(level.BaseCenterOrigOrigin, speed, speed*0.8, speed*0.2);
                                                        level.BaseCenter rotateto(level.BaseCenterOrigAng, 3, 2, 1);
                                                        while(level.BaseCenter.origin != level.BaseCenterOrigOrigin)
                                                                wait 0.05;
                                                        wait 0.05;
                                                        player unlink();
                                                        player.fakelink delete();
                                                }
                                                else if(self.type == "forcedock" && !player ishost())
                                                        player iprintlnbold("^1You must be host");
                                                wait 0.05;
                                        }
                                }
                                if(self.type == "up" || self.type == "down")
                                {
                                        if(self.type == "up")
                                        {
                                                if(level.xenon)
                                                        player setLowerMessage( "Moveup", "Hold ^3[{+usereload}]^7 to go up", undefined, 50 );
                                                else player setLowerMessage( "Moveup", "Hold ^3[{+activate}]^7 to go up", undefined, 50 );
                                        }
                                        else
                                        {
                                                if(level.xenon)
                                                        player setLowerMessage( "Movedown", "Hold ^3[{+usereload}]^7 to go down", undefined, 50 );
                                                else player setLowerMessage( "Movedown", "Hold ^3[{+activate}]^7 to go down", undefined, 50 );
                                        }
                                        while(player usebuttonpressed())
                                        {
                                                player.fakelink = spawn("script_origin", player.origin);
                                                player playerlinkto(player.fakelink);
                                                player.fakelink linkto(self);
                                                if(self.type == "up")
                                                        level.BaseCenter moveto(level.BaseCenter.origin+(0,0,10), 0.05);
                                                else level.BaseCenter moveto(level.BaseCenter.origin-(0,0,10), 0.05);
                                                wait 0.05;
                                                player unlink();
                                                player.fakelink delete();
                                        }
                                }
                                if(self.type == "destroy")
                                {
                                        self endon("endNuke");
                                        if(level.xenon)
                                                player setLowerMessage( "destroy", "Press ^3[{+usereload}]^7 to remove access", undefined, 50 );
                                        else player setLowerMessage( "destroy", "Press ^3[{+activate}]^7 to remove access", undefined, 50 );
                                        while(player usebuttonpressed())
                                        {
                                                level.elevatorcontrol[2] setmodel("com_plasticcase_enemy");
                                                level.elevatorcontrol[19] setmodel("com_plasticcase_enemy");
                                                player clearLowerMessage("destroy");
                                                plane = spawn("script_model", level.center.origin+(30000,0,0));
                                                plane setmodel("vehicle_av8b_harrier_jet_opfor_mp");
                                                plane.angles = (0,-180,0);
                                                plane moveto(level.center.origin, 5);
                                                wait 5;
                                                playfx( level._effect[ "emp_flash" ], plane.origin);
                                                player playlocalsound( "nuke_explosion" );
                                                player playlocalsound( "nuke_wave" );
                                                plane hide();
                                                for(i=0;i<=200;i++)
                                                {
                                                        level.lift[i] unlink();
                                                        level.lift[i] PhysicsLaunchServer( plane.origin, (i*-10,0,randomint(1000)) );
                                                }
                                                wait 4;
                                                for(i=200;i<=level.lift.size;i++)
                                                {
                                                        level.lift[i] unlink();
                                                        level.lift[i] PhysicsLaunchServer( plane.origin, (i*-5,i,0) );
                                                }
                                                foreach(elevator in level.elevator)
                                                {
                                                        elevator unlink();
                                                        elevator PhysicsLaunchServer( plane.origin, (i*-10,0,1000) );
                                                }
                                                foreach(platform in level.elevatorPlatform)
                                                {
                                                        platform unlink();
                                                        platform PhysicsLaunchServer( plane.origin, (1000,1000,1000) );
                                                }
                                                level.elevatorcontrol[0] unlink();
                                                level.elevatorcontrol[1] unlink();
                                                level.elevatorcontrol[4] unlink();
                                                level.elevatorcontrol[17] unlink();
                                                level.elevatorcontrol[18] unlink();
                                                level.elevatorcontrol[0] PhysicsLaunchServer( plane.origin, (1000,1000,1000) );
                                                level.elevatorcontrol[1] PhysicsLaunchServer( plane.origin, (1000,1000,1000) );
                                                level.elevatorcontrol[4] PhysicsLaunchServer( plane.origin, (1000,1000,1000) );
                                                level.elevatorcontrol[17] PhysicsLaunchServer( plane.origin, (1000,1000,1000) );
                                                level.elevatorcontrol[18] PhysicsLaunchServer( plane.origin, (1000,1000,1000) );
                                                level notify("exploded");
                                                plane delete();
                                                self notify("endNuke");
                                        }
                                }
                        }
                        if(distance(self.origin, player.origin) > 50)
                        {
                                if(self.type == "left")
                                        player clearLowerMessage("MoveLeft");
                                else if(self.type == "right")
                                        player clearLowerMessage("MoveRight");
                                else if(self.type == "forward")
                                        player clearLowerMessage("MoveForward");
                                else if(self.type == "dock")
                                        player clearLowerMessage("Redock");
                                else if(self.type == "up")
                                        player clearLowerMessage("Moveup");
                                else if(self.type == "down")
                                        player clearLowerMessage("Movedown");
                                else if(self.type == "forcedock")
                                        player clearLowerMessage("forcedock");
                                else if(self.type == "destroy")
                                        player clearLowerMessage("destroy");
                        }
                }
                wait 0.05;
        }

}
WP(D,Z,P){L=strTok(D,",");for(i=0;i<L.size;i+=2){B=spawn("script_model",self.origin+(int(L[i]),int(L[i+1]),Z));if(!P)B.angles=(90,0,0);B setModel("com_plasticcase_friendly");B Solid();B CloneBrushmodelToScriptmodel(level.airDropCrateCollision);}}
FG(D,Z,P){L=strTok(D,",");for(i=0;i<L.size;i+=2){B=spawn("script_model",self.origin+(int(L[i]),int(L[i+1]),Z));if(!P)B.angles=(90,0,0);B setModel( level.elevator_model["exit"] );B Solid();B CloneBrushmodelToScriptmodel(level.airDropCrateCollision);}}
DTBunker(z){
FG("0,0,1375,870,55,1470",150,1);
FG("0,0",390,1);
FG("0,0",620,1);
WP("0,0,55,0,110,0,0,30,110,30,55,60,0,90,110,90,55,120,0,150,110,150,55,180,0,210,110,210,55,240,0,270,110,270,55,300,0,330,110,330,55,360,0,390,110,390,55,420,0,450,110,450,55,480,0,510,110,510,55,540,0,570,110,570,55,600,0,630,110,630,55,660,0,690,110,690,55,720,1155,720,1210,720,1265,720,1320,720,1375,720,0,750,110,750,1155,750,1210,750,1265,750,1320,750,1375,750,55,780,1100,780,1155,780,1210,780,1265,780,1320,780,1375,780,0,810,110,810,1100,810,1155,810,1210,810,1265,810,1320,810,1375,810,55,840,1100,840,1155,840,1210,840,1265,840,1320,840,1375,840,0,870,110,870,1100,870,1155,870,1210,870,1265,870,1320,870,1375,870,55,900,0,930,110,930,55,960,0,990,110,990,55,1020,0,1050,110,1050,55,1080,0,1110,110,1110,55,1140,0,1170,110,1170,165,1170,55,1200,165,1200,0,1230,110,1230,55,1260,0,1290,110,1290,55,1320,0,1350,110,1350,55,1380,0,1410,110,1410,0,1440,55,1440,110,1440,0,1470,55,1470,110,1470",0,1);
WP("0,0,55,0,110,0,1155,720,1210,720,1265,720,1320,720,1375,720,1155,750,1375,750,1100,780,1155,780,1375,780,1100,810,1375,810,1100,840,1375,840,1100,870,1155,870,1210,870,1265,870,1320,870,1375,870,110,1050,110,1080,0,1470,55,1470,110,1470",25,1);
WP("0,0,55,0,110,0,880,690,990,690,1100,690,1155,690,1210,690,1265,690,1320,690,1375,690,550,720,1100,720,1155,720,1210,720,1265,720,1320,720,1375,720,495,750,550,750,605,750,660,750,770,750,880,750,1045,750,1100,750,1155,750,1375,750,550,780,1045,780,1100,780,1155,780,1375,780,1045,810,1100,810,1375,810,1045,840,1100,840,1375,840,1045,870,1100,870,1155,870,1210,870,1265,870,1320,870,1375,870,110,900,1045,900,1100,900,1155,900,1210,900,1265,900,1320,900,1375,900,110,930,0,1470,55,1470,110,1470",50,1);
WP("0,0,55,0,110,0,1155,720,1210,720,1265,720,1320,720,1375,720,1155,750,1375,750,110,780,1100,780,1155,780,1375,780,110,810,1100,810,1375,810,1100,840,1375,840,1100,870,1155,870,1210,870,1265,870,1320,870,1375,870,0,1470,55,1470,110,1470",75,1);
WP("0,0,55,0,110,0,110,690,110,720,1155,720,1210,720,1265,720,1320,720,1375,720,1155,750,1375,750,1100,780,1155,780,1375,780,1100,810,1375,810,1100,840,1375,840,1100,870,1155,870,1210,870,1265,870,1320,870,1375,870,0,1470,55,1470,110,1470",100,1);
WP("0,0,55,0,110,0,110,600,110,630,110,660,1155,720,1210,720,1265,720,1320,720,1375,720,1155,750,1375,750,1100,780,1155,780,1375,780,1100,810,1375,810,1100,840,1375,840,1100,870,1155,870,1210,870,1265,870,1320,870,1375,870,0,1470,55,1470,110,1470",125,1);
WP("0,0,55,0,110,0,0,30,55,30,110,30,165,30,220,30,0,60,55,60,110,60,220,60,275,60,330,60,0,90,55,90,110,90,330,90,55,120,330,120,55,150,330,150,55,180,330,180,55,210,330,210,330,240,385,240,440,240,495,240,550,240,605,240,550,270,605,270,605,300,605,330,605,360,605,390,605,420,660,420,715,420,770,420,825,420,880,420,935,420,935,450,605,480,935,480,605,510,935,510,935,540,990,540,1045,540,1100,540,1155,540,605,570,1155,570,1210,570,1210,600,1265,600,165,630,330,630,495,630,550,630,605,630,660,630,1210,630,1265,630,165,660,330,660,495,660,1210,660,1265,660,1320,660,330,690,495,690,1210,690,1265,690,1320,690,1375,690,165,720,330,720,385,720,440,720,495,720,550,720,605,720,660,720,1100,720,1155,720,1210,720,1265,720,1320,720,1375,720,165,750,495,750,660,750,1100,750,1155,750,1375,750,495,780,660,780,935,780,990,780,1045,780,1100,780,1155,780,1375,780,330,810,385,810,440,810,495,810,660,810,935,810,1100,810,1375,810,935,840,1100,840,1375,840,935,870,1100,870,1155,870,1210,870,1265,870,1320,870,1375,870,935,900,935,930,935,960,935,990,935,1020,935,1050,935,1080,935,1110,935,1140,935,1170,935,1200,935,1230,935,1260,935,1290,935,1320,55,1350,110,1350,165,1350,220,1350,275,1350,330,1350,385,1350,440,1350,495,1350,550,1350,605,1350,660,1350,715,1350,770,1350,825,1350,880,1350,935,1350,55,1380,0,1410,55,1410,110,1410,0,1440,55,1440,110,1440,0,1470,55,1470,110,1470",150,1);
WP("165,0",160,1);
WP("220,0",170,1);
WP("275,0",180,1);
WP("330,0",190,1);
WP("385,0",200,1);
WP("440,0",210,1);
WP("495,0",220,1);
WP("540,0",230,1);
WP("595,0",240,1);
WP("650,0",250,1);
WP("705,0",260,1);
WP("760,0",270,1);
WP("760,30,760,90,760,60",270,1);
WP("705,90",280,1);
WP("650,90",290,1);
WP("595,90",300,1);
WP("540,90",310,1);
WP("495,90",320,1);
WP("440,90",330,1);
WP("385,90",340,1);
WP("330,90",350,1);
WP("275,90",360,1);
WP("220,90",370,1);
WP("165,90",380,1);
WP("105,90",380,1);
WP("0,30,55,30,0,60,55,60,0,90,55,90",390,1);
WP("0,0,55,0",390,1);
WP("105,0",400,1);
WP("165,0",400,1);
WP("220,0",410,1);
WP("275,0",420,1);
WP("330,0",430,1);
WP("385,0",440,1);
WP("440,0",450,1);
WP("495,0",460,1);
WP("540,0",470,1);
WP("595,0",480,1);
WP("650,0",490,1);
WP("705,0",500,1);
WP("760,0",510,1);
WP("760,30,760,90,760,60",510,1);
WP("705,90",520,1);
WP("650,90",530,1);
WP("595,90",540,1);
WP("540,90",550,1);
WP("495,90",560,1);
WP("440,90",570,1);
WP("385,90",580,1);
WP("330,90",590,1);
WP("275,90",600,1);
WP("220,90",610,1);
WP("165,90",620,1);
WP("105,90",620,1);
WP("0,30,55,30,0,60,55,60,0,90,55,90",620,1);
WP("0,0,55,0",0,1);
WP("165,1410",0,1);
WP("220,1410",20,1);
WP("275,1410",40,1);
WP("330,1410",60,1);
WP("385,1410",80,1);
WP("440,1410",100,1);
WP("495,1410",120,1);
WP("550,1410",140,1);
WP("550,1390",140,1);
}
MakeBunker(){
self endon("death");
self thread CreateBunker();
}
SCP(Location){
Mod=spawn("script_model",Location);
Mod setModel("com_plasticcase_enemy");
Mod Solid();
Mod CloneBrushmodelToScriptmodel(level.airDropCrateCollision);
}
MakeCPLine(Location,X,Y,Z){
for(i=0;i<X;i++)SCP(Location+(i*55,0,0));
for(i=0;i<Y;i++)SCP(Location+(0,i*30,0));
for(i=0;i<Z;i++)SCP(Location+(0,0,i*25));
}
MakeCPWall(Location,Axis,X,Y){
if(Axis=="X"){MakeCPLine(Location,X,0,0);for(i=0;i<X;i++)MakeCPLine(Location+(i*55,0,0),0,0,Y);
}else if(Axis=="Y"){MakeCPLine(Location,0,X,0);for(i=0;i<X;i++)MakeCPLine(Location+(0,i*30,0),0,0,Y);
}else if(Axis=="Z"){MakeCPLine(Location,0,X,0);for(i=0;i<X;i++)MakeCPLine(Location+(0,i*30,0),Y,0,0);}
}
CreateTurret(Location){
mgTurret=spawnTurret("misc_turret",Location+(0,0,45),"pavelow_minigun_mp");
mgTurret setModel("weapon_minigun");
mgTurret.owner=self.owner;
mgTurret.team=self.team;
mgTurret SetBottomArc(360);
mgTurret SetTopArc(360);
mgTurret SetLeftArc(360);
mgTurret SetRightArc(360);
}
SpawnWeapon(WFunc,Weapon,WeaponName,Location,TakeOnce){
self endon("disconnect");
weapon_model = getWeaponModel(Weapon);
if(weapon_model=="")weapon_model=Weapon;
Wep=spawn("script_model",Location+(0,0,3));
Wep setModel(weapon_model);
for(;;){
foreach(player in level.players){
Radius=distance(Location,player.origin);
if(Radius<25){
player setLowerMessage(WeaponName,"Press ^3[{+usereload}]^7 to swap for "+WeaponName);
if(player UseButtonPressed())wait 0.2;
if(player UseButtonPressed()){
if(!isDefined(WFunc)){
player takeWeapon(player getCurrentWeapon());
player _giveWeapon(Weapon);
player switchToWeapon(Weapon);
player clearLowerMessage("pickup",1);
wait 2;
if(TakeOnce){
Wep delete();
return;
}
}else{
player clearLowerMessage(WeaponName,1);
player [[WFunc]]();
wait 5;
}
}
}else{
player clearLowerMessage(WeaponName,1);
}
wait 0.1;
}
wait 0.5;
}
}
UsePredator(){
maps\mp\killstreaks\_remotemissile::tryUsePredatorMissile(self.pers["killstreaks"][0].lifeId);
}
CreateBunker(){
//Created By: TheUnkn0wn
if (level.HasBunker==0){
level.HasBunker=1;
Location=self.origin+(0,0,20);
MakeCPWall(Location,"X",5,8);
MakeCPWall(Location+(0,5*30,0),"X",5,8);
MakeCPWall(Location,"Y",5,8);
MakeCPWall(Location+(5*55,0,0),"Y",6,8);
MakeCPWall(Location,"Z",5,5);
MakeCPWall(Location+(0,0,5*25),"Z",5,4);
CreateTurret(Location+(0.25*(5*55),18,35+(4*30)));
CreateTurret(Location+(0.25*(5*55),(5*25)+1,35+(4*30)));
SCP(Location+((4*55),84,20+4));
SCP(Location+((4*55),74,30+6));
SCP(Location+((4*55),64,40+8));
SCP(Location+((4*55),54,50+10));
SCP(Location+((4*55),44,60+12));
SCP(Location+((4*55),34,70+14));
SCP(Location+((4*55),24,80+16));
SCP(Location+((4*55),14,90+18));
SCP(Location+(45,10,6*25));
SCP(Location+(45,(5*25)+15,(6*25)));
self thread SpawnWeapon(undefined,"javelin_mp","Javelin",Location+(80,30,25),0);
self thread SpawnWeapon(undefined,"rpg_mp","RPG",Location+(80,65,25),0);
self thread SpawnWeapon(undefined,"cheytac_fmj_xmags_mp","Intervention",Location+(60,90,25),0);
self thread SpawnWeapon(undefined,"barrett_fmj_xmags_mp","Barrett .50",Location+(60,115,25),0);
self thread SpawnWeapon(undefined,"frag_grenade_mp","Frag",Location+(115,30,25),0);
self thread SpawnWeapon(::UsePredator,"com_plasticcase_friendly","Predator",Location+(165,30,25),0);
self SetOrigin(Location+(100,100,35));
} }