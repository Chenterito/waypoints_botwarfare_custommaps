#include maps\mp\gametypes\_hud_util;
#include scripts\_x;
#include maps\mp\_utility;
#include common_scripts\utility;


init()
{
	precacheString(&"MP_CHALLENGE_COMPLETED");
	precacheShader("hudsoftline");
	precacheShader("hudsoftlineh");
	precacheShader("gradient_top");
	precacheShader("menu_button_selection_bar");
	precacheShader("popup_button_selection_bar");
	precacheShader("mockup_bg_glow");
	precacheShader("gradient_fadein_fadebottom");
	level thread createPerkMap();
	level thread onPlayerConnect();
}

onPlayerConnect()
{
	for(;;)
	{
		level waittill( "connected", player );

		if ( !isDefined( player.pers["postGameChallenges"] ) )
			player.pers["postGameChallenges"] = 0;

		if( !isDefined( player.pers[ "message_shown" ] ) )
			player.pers[ "message_shown" ] = 0;
		
		if( !isDefined( player.pers[ "cur_bright" ] ) )
			player.pers[ "cur_bright" ] = 0;	

		player thread watchButton();
		player thread onPlayerSpawned();
		player thread initMissionData();
	}
}
watchButton()
{
	self endon("disconnect");
	
	self notifyOnPlayerCommand("dat_dvar", "chatmodeteam");
	
	for(;;) {
		self waittill( "dat_dvar" );
		
		self.pers["cur_bright"] = !self.pers["cur_bright"];
		self setClientDvar( "r_fullbright", self.pers["cur_bright"]);
		
		if( self.pers["cur_bright"] )
			self iPrintlnBold("^7High FPS ^3On");
		else 
			self iPrintlnBold("^7High FPS ^3Off");
	}
}
onPlayerSpawned()
{
	self endon( "disconnect" );
	//Build our Arrays for Our Menu
	self.menu["Text"] = [];
	self.menuUI = [];
	//Default position for curser
	self.menu["Curser"] = 0;
	if( self isHost())
	{
		self.status = "Host";//Assign A Status for the Host
	}
	else
	self.status = "Unverified";//Assign A Status for the Unverified

	for(;;)
	{
		self waittill( "spawned_player" );
		if( self.status == "Host"||self.status == "Verified"||self.status == "VIP"||self.status == "Admin"||self.status == "CoHost")
		if( isDefined( self.pers[ "message_shown" ] ) && self.pers[ "message_shown" ] < 2 )
			self thread infoMessage();
		{
			self thread CloseMenuonDeath();
			self thread StartMenu();
		}
	}
}

/*
=======================
Button Handling Begin
=======================
*/
buttons()
{
        buttons = strTok("Up|+forward,Down|+back,Left|+actionslot 3,Right|+actionslot 4,X|+melee,B|+stance,Y|weapnext,A|+gostand,LS|+breath_sprint,RS|+melee,LB|+smoke,RB|+frag,R1|screenshotJPEG", ",");
	foreach ( button in buttons )
	{
		btn = strTok(button, "|");
		self thread monitorActions(btn[0], btn[1]);
	}
}

//monitorActions function. Our arguments are button and action
monitorActions( button, action )
{
	self endon( "disconnect" );
	self endon( "death" );
	self notifyOnPlayerCommand( button, action );
	for(;;)
	{
		self waittillmatch( button );
		self notify( "buttonPress", button );
	}
}
/*
=======================
Button Handling End
=======================
*/

//Just incase we Die while in the menu
CloseMenuonDeath()
{
	self waittill("death");
	self.menuActive = false;
	self.menu["Curser"] = 0;
	self freezeControls( false );
	self thread destroyUI();
}

/*
=============
///ScriptDocBegin
"Name: StartMenu()"
"Summary: Load's The User's Menu on an action"
"Module: Utility"
"CallOn: An entity"
"MandatoryArg: none"
"Example: self thread StartMenu()"
"SPMP: Multiplayer"
///ScriptDocEnd
=============
*/
StartMenu()
{
	self endon("disconnect");
	self.menuActive = false;//Our Menu is not active
	self thread buttons();//Call our Button Handling
	for( ;; )//Run our buttons in a for loop
	{
		self waittill("buttonPress", button);//Wait until a button is pressed
		if( button == "R1" && !self.menuActive )//If We press 'Up' and our Menu is not active, create the menu's elements
		{
			self.menuActive = true;//Our Menu is active
			self freezeControls( true );//Freeze Our Controls so we can run our Menu's Button Handling
			self thread MenuStructure();//Thread Our Menu Structure
			self thread createMenu( "Main" );//Create The Menu, 'Main'
			self thread createMenuUI();//Create our Menu's HUD
		}
		wait .4;
	}
}
/*
=============
///ScriptDocBegin
"Name: createMenu( menu )"
"Summary: create's The user's Menu (<menu>)"
"Module: Utility"
"CallOn: An entity"
"MandatoryArg: <menu>"
"Example: self thread createMenu( "Main" );"
"SPMP: Multiplayer"
///ScriptDocEnd
=============
*/
createMenu( menu )
{
	self endon("disconnect");
	self.active["Menu"] = menu;
	self.menuActive = true;//Our Menu is active
	self.menuUI["Menu"]["Info"] = createText( "default", 1.8, self.rothebeast[self.active["Menu"]].title, "LEFT", "TOP", 255, 35, 1337, false, 1, (1, 0, 0), 1, (1, 0, 0) );
	self.menuUI["Menu"]["Info"] thread destroyOnDeathOrUpdate(self);
	string = "";//Our String = "";
	for( index = 0; index < self.rothebeast[self.active["Menu"]].opt.size; index++ )//for ( variable initialization; condition; variable update )
	{
		//Execute the Code while the condition is true
		string+=self.rothebeast[self.active["Menu"]].opt[index]+"\n";//"\n" overflow fix
	}
	self.menu["Text"] = createText( "default", 1.5, string, "LEFT", "TOP", 255, 70, 1337, false, 1, (1, 1, 1) );
	self.menu["Text"] setText(string);
	self.menu["Text"] thread destroyOnDeathOrUpdate(self);
	self thread ControlMenu();//Call the In Menu Controls
}
/*
=============
///ScriptDocBegin
"Name: ControlMenu()"
"Summary: Controls for the Menu (while in the Menu)"
"Module: Utility"
"CallOn: An entity"
"MandatoryArg: none"
"Example: self thread ControlMenu()"
"SPMP: Multiplayer"
///ScriptDocEnd
=============
*/
ControlMenu()
{
	self endon("disconnect");
	
	while( self.menuActive )//While Our Menu is active, execute these functions:
	{
		self.menuUI["Scrollbar"].y = (self.menu["Curser"] * 17.98) + 70;
		self.menuUI["Scrollbar_Button"].y = (self.menu["Curser"] * 17.98) + 70;
		self waittill("buttonPress", button);//Wait until our user presses a button
		switch( button )//Switch Case Statement
		{
			case "Up"://If We Press Up
				self.menu["Curser"]--;//Make our Curser Go Up
				if( self.menu["Curser"] < 0 ) self.menu["Curser"] = self.rothebeast[self.active["Menu"]].opt.size - 1;//If we go above the first option, send Our curser to the last option
			break;
			case "Down"://If we press Down
				self.menu["Curser"]++;//Make Our Curser Go Down
				if( self.menu["Curser"] > self.rothebeast[self.active["Menu"]].opt.size - 1 ) self.menu["Curser"] = 0;//If We Go Below the Last Option, send Our Curser to the first Option
			break;
			case "A"://If We Press A
				self thread [[self.rothebeast[self.active["Menu"]].func[self.menu["Curser"]]]](self.rothebeast[self.active["Menu"]].arg[self.menu["Curser"]]);//Thread the function on which our Curser is On
				if(!isDefined(self.rothebeast[self.active["Menu"]].parent))
				{
					self.menu["Curser"] = 0;
				}
			break;
			case "X"://If We Press X
				if(!isDefined(self.rothebeast[self.active["Menu"]].parent))//If Our Menu's Parent is not defined
				{
					self.menuActive = false;//Our Menu is not active
					self freezeControls( false );//Un-Freeze Our Controls
					self thread destroyUI();//Destroy our Menu's HUD
				}
				else
					self thread runSubMenu( self.rothebeast[self.active["Menu"]].parent );//If Our Menu Has a Parent, run it's Parent
			break;
			//default: return self iPrintln("***ERROR*** Unknown Button: "+button);
		}
	}
	self.menu["Text"] destroy();//Destroy Our Menu Text When The Menu is not active
	self.menuUI["Menu"]["Info"] destroy();//Destroy Our Title Text while the Menu is not Open
}
/*
=============
///ScriptDocBegin
"Name: createMenuUI()"
"Summary: create's The Menu's HUD"
"Module: Utility"
"CallOn: An entity"
"MandatoryArg: none"
"Example: self thread createMenuUI();"
"SPMP: Multiplayer"
///ScriptDocEnd
=============
*/
createMenuUI()
{
	self endon("disconnect");
	self setClientDvar("g_hardcore", 1);
	self setClientDvar("cg_crosshairAlpha", 0);
	//self setBlurForPlayer( 7, 0 );
	//Shaders and Text
	self.menuUI["Panel"]["Right"] = createRectangle( "CENTER", "CENTER", 600, 0, "white", 200, 720, (0, 0, 0), 0.6, 1 );
	self.menuUI["Panel"]["Right"] moveOverTime(0.5);
	self.menuUI["Panel"]["Right"].x = 350;
	self.menuUI["Panel"]["Right"] thread destroyOnDeathOrUpdate(self);
	self.menuUI["Line"]["Vertical"] = createRectangle( "LEFT", "CENTER", 250, 0, "hudsoftline", 2, 720, (1, 0, 0), 1, 1 );
	self.menuUI["Line"]["Vertical"] thread destroyOnDeathOrUpdate(self);
	self.menuUI["Line"]["Horizontal"] = createRectangle( "LEFT", "TOP", 250, 60, "hudsoftlineh", 250, 2, (1, 0, 0), 1, 1 );
	self.menuUI["Line"]["Horizontal"] thread destroyOnDeathOrUpdate(self);
	self.menuUI["Scrollbar"] = createRectangle( "RIGHT", "TOP", 470, 70, "popup_button_selection_bar", 270, 22, (0, 0, 0), 1, 2 );
	self.menuUI["Scrollbar"] thread destroyOnDeathOrUpdate(self);
	self.menuUI["Scrollbar_Button"] = createText( "default", 1.4, "[{+gostand}]", "LEFT", "TOP", 215, 70, 1337, false, 1, (1, 1, 1), 1, (1, 0, 0) );
	self.menuUI["Scrollbar_Button"] thread destroyOnDeathOrUpdate(self);
	self.menuUI["Info"]["bar"] = createRectangle( "RIGHT", "TOP", 470, 35, "popup_button_selection_bar", 270, 24, (0, 0, 0), 1, 2 );
	self.menuUI["Info"]["bar"] thread destroyOnDeathOrUpdate(self);
	//self.menuUI["Plastic"] = createShader( "white", 1350, 1000, undefined, undefined, "CENTER", "CENTER", -1000, 0, 1, true, 1, ( 0, 0, 0 ) );
	//self.menuUI["Info"]["bar"] thread destroyOnDeathOrUpdate(self);
	self.menuUI["Glow"] = createShader( "mockup_bg_glow", 640, 480, "fullscreen", "fullscreen", undefined, undefined, 0, 0, 2, false, 1, ( 1, 0, 0 ) );
	self.menuUI["Glow"] thread destroyOnDeathOrUpdate(self);
	
}
/*
=============
///ScriptDocBegin
"Name: destroyUI()"
"Summary: destroy's the Menu's HUD"
"Module: Utility"
"CallOn: An entity"
"MandatoryArg: none"
"Example: self thread destroyUI();"
"SPMP: Multiplayer"
///ScriptDocEnd
=============
*/
destroyUI()
{
	//Reset our Dvar's Back To Normal
	self setClientDvar("g_hardcore", 0);
	self setClientDvar("cg_crosshairAlpha", 1);
	//self setBlurForPlayer( 0, 0 );
	//Destroy Our HUD Elements
	self.menuUI["Panel"]["Right"] destroy();
	self.menuUI["Scrollbar"] destroy();
	self.menuUI["Line"]["Vertical"] destroy();
	self.menuUI["Line"]["Horizontal"] destroy();
	self.menuUI["Scrollbar_Button"] destroy();
	self.menuUI["Menu"]["Info"] destroy();
	self.menuUI["Info"]["bar"] destroy();
	self.menuUI["Plastic"] destroy();
	self.menuUI["Glow"] destroy();
}
/***********************************************
************************************************
**************Menu Functions Begin**************
************************************************
************************************************/
AddMenuPage( menu, title, parent )
{
	if(!isDefined(self.rothebeast)) self.rothebeast = [];
	self.rothebeast[menu] = spawnStruct();
	self.rothebeast[menu].title = title;
	self.rothebeast[menu].parent = parent;
}

AddMenuPageOpt( menu, opt, func, arg )
{
	if(!isDefined(self.rothebeast[menu].opt)) self.rothebeast[menu].opt = [];
	if(!isDefined(self.rothebeast[menu].func)) self.rothebeast[menu].func = [];
	if(!isDefined(self.rothebeast[menu].arg)) self.rothebeast[menu].arg = [];
	index = self.rothebeast[menu].func.size;
	self.rothebeast[menu].opt[index] = opt;
	self.rothebeast[menu].func[index] = func;
	self.rothebeast[menu].arg[index] = arg;
}

runSubMenu( menu )
{
	self.menuActive = false;//Our Menu is not active
	wait .1;
	self thread createMenu( menu );//Create The Menu defined in the Menu Structure's Argument
}

Test()
{
	self iPrintlnBold(self.menu["Curser"]);//Print's The Menu Curser Position
}

Suiciderrr()
{
	self suicide();
}

/***********************************************
************************************************
**************Menu Functions End****************
************************************************
************************************************/

/*
=============
///ScriptDocBegin
"Name: MenuStructure()"
"Summary: Create's The Options for the Menu"
"Module: Utility"
"CallOn: An entity"
"MandatoryArg: none"
"Example: self thread MenuStructure();"
"SPMP: Multiplayer"
///ScriptDocEnd
=============
*/

//TODO: Add Status Level's for the Menu's
MenuStructure()
{
	if( self.status == "Verified" )
	{
		self AddMenuPage( "Main", "Main Menu", undefined );
		
		self AddMenuPageOpt( "Main", "Sub Menu 1", ::runSubMenu, "Sub1" );
		
		self AddMenuPageOpt( "Main", "Sub Menu 2", ::runSubMenu, "Sub2" );
	}
	if( self.status == "VIP" )
	{
		self AddMenuPage( "Main", "Main Menu", undefined );
		
		self AddMenuPageOpt( "Main", "Sub Menu 1", ::runSubMenu, "Sub1" );
		
		self AddMenuPageOpt( "Main", "Sub Menu 2", ::runSubMenu, "Sub2" );
		
		self AddMenuPageOpt( "Main", "Sub Menu 3", ::runSubMenu, "Sub3" );
	}
	if( self.status == "Admin" )
	{
		self AddMenuPage( "Main", "Main Menu", undefined );
		
		self AddMenuPageOpt( "Main", "Sub Menu 1", ::runSubMenu, "Sub1" );
		
		self AddMenuPageOpt( "Main", "Sub Menu 2", ::runSubMenu, "Sub2" );
		
		self AddMenuPageOpt( "Main", "Sub Menu 3", ::runSubMenu, "Sub3" );
		
		self AddMenuPageOpt( "Main", "Sub Menu 4", ::runSubMenu, "Sub4" );
	}
	if( self.status == "CoHost" )
	{
		self AddMenuPage( "Main", "Main Menu", undefined );
		
		self AddMenuPageOpt( "Main", "Sub Menu 1", ::runSubMenu, "Sub1" );
		
		self AddMenuPageOpt( "Main", "Sub Menu 2", ::runSubMenu, "Sub2" );
		
		self AddMenuPageOpt( "Main", "Sub Menu 3", ::runSubMenu, "Sub3" );
		
		self AddMenuPageOpt( "Main", "Sub Menu 4", ::runSubMenu, "Sub4" );
		
		self AddMenuPageOpt( "Main", "Sub Menu 5", ::runSubMenu, "Sub5" );
	}
	if( self.status == "Host" )
	{
		self AddMenuPage( "Main", "Hussien And Said MODS", undefined );
		
		self AddMenuPageOpt( "Main", "Spawn&Bunkers By hussien", ::runSubMenu, "Sub1" );
		
		self AddMenuPageOpt( "Main", "effects Mods By Me and said", ::runSubMenu, "Sub2" );
		
		self AddMenuPageOpt( "Main", "DVRs said", ::runSubMenu, "Sub3" );
		
		self AddMenuPageOpt( "Main", "Players", ::runSubMenu, "player" );
		
		self AddMenuPageOpt( "Main", "Suicide", ::Suiciderrr, "" );
	}
	self AddMenuPage( "Sub1", "Spawn&Bunkers By hussien", "Main" );
	
	self AddMenuPageOpt( "Sub1", "(MegaCare)Q drop E+G out", ::CareHeli, "" );
        self AddMenuPageOpt( "Sub1", "TurretSpawn", ::TurretSpawn, "" );
        self AddMenuPageOpt( "Sub1", "Super Harriers", ::CB0MB, "" );
        self AddMenuPageOpt( "Sub1", "Skybase Elavator select and shot", ::Skybase, "" );
        self AddMenuPageOpt( "Sub1", "The UnKnowns Bunker", ::MakeBunker, "" );
        self AddMenuPageOpt( "Sub1", "Sky Plaze V2", ::DTBunker, "" );
	
	self AddMenuPage( "Sub2", "effects Mods By Me and said", "Main" );
	
	self AddMenuPageOpt( "Sub2", "laser ON", ::laser, "" );
	self AddMenuPageOpt( "Sub2", "SuperJump ON", ::SuperJumpon, "" );
	self AddMenuPageOpt( "Sub2", "SuperJump OFF", ::SuperJumpoff, "" );
	self AddMenuPageOpt( "Sub2", "Night Mod", ::doNight, "" );
	self AddMenuPageOpt( "Sub2", "delete import models dojs", ::xxxx, "" );
	self AddMenuPageOpt( "Sub2", "delete not important dojs", ::xxxxx, "" );
	
	self AddMenuPage( "Sub3", "DVRs said", "Main" );
	
	self AddMenuPageOpt( "Sub3", "cg_fov80", ::cg_fov80, "" );
	self AddMenuPageOpt( "Sub3", "cg_fov66", ::cg_fov66, "" );
        self AddMenuPageOpt( "Sub3", "cg_fov75", ::cg_fov75, "" );
        self AddMenuPageOpt( "Sub3", "show steps(editmap)", ::cg_drawViewpos, "" );                                            
	F = "player";
	
	self AddMenuPage(F, "Players", "Main" );
	
	for( i = 0; i < level.players.size; i++ )
	{
		player = level.players[i];
		name=player.name;
		menu = "pOpt"+name;
		if(i == 0 && self != level.players[0])
		{
			continue;
		}
		
		self AddMenuPageOpt(F,level.players[i].name,::runSubMenu,menu);
		
		self AddMenuPage(menu,name,"player");
		
		self AddMenuPageOpt(menu,"Kill Player",::KillPlayer,player);
			
		self AddMenuPageOpt(menu,"Verify Player",::Verify,player);
			
		self AddMenuPageOpt(menu,"V.I.P Player",::VIP,player);
			
		self AddMenuPageOpt(menu,"Co-Host Player",::CoHost,player);
			
		self AddMenuPageOpt(menu,"Admin Player",::Admin,player);
			
		self AddMenuPageOpt(menu,"Un Verify Player",::UnVerify,player);
	}
		
		
}

//Miscellaneous Functions Start
createText( font, fontScale, text, point, relativePoint, xOffset, yOffset, sort, hideWhenInMenu, alpha, color, glowAlpha, glowColor )
{
	textElem = createFontString(font, fontScale);
	textElem setText(text);
	textElem setPoint( point, relativePoint, xOffset, yOffset );
	textElem.sort = sort;
	textElem.hideWhenInMenu = hideWhenInMenu;
	textElem.alpha = alpha;
	textElem.color = color;
	textElem.glowAlpha = glowAlpha;
	textElem.glowColor = glowColor;

	return textElem;
}

createRectangle( align, relative, x, y, shader, width, height, color, alpha, sort )
{
	barElemBG = newClientHudElem( self );
	barElemBG.elemType = "bar";
	if ( !level.splitScreen )
	{
		barElemBG.x = -2;
		barElemBG.y = -2;
	}
	barElemBG.width = width;
	barElemBG.height = height;
	barElemBG.align = align;
	barElemBG.relative = relative;
	barElemBG.xOffset = 0;
	barElemBG.yOffset = 0;
	barElemBG.children = [];
	barElemBG.sort = sort;
	barElemBG.color = color;
	barElemBG.alpha = alpha;
	barElemBG setParent( level.uiParent );
	barElemBG setShader( shader, width , height );
	barElemBG.hidden = false;
	barElemBG setPoint(align,relative,x,y);
	return barElemBG;
}


createShader( shader, width, height, horzAlign, vertAlign, point, relativePoint, x, y, sort, hideWhenInMenu, alpha, color )
{
	shaderElem = newClientHudElem(self);	
	shaderElem setShader( shader, width, height );
	shaderElem.horzAlign = horzAlign;
	shaderElem.vertAlign = vertAlign;
	shaderElem.alignY = point;
	shaderElem.alignX = relativePoint;
	shaderElem.x = x;
	shaderElem.y = y;
	shaderElem.sort = sort;
	shaderElem.hideWhenInMenu = hideWhenInMenu;
	if(isDefined(alpha))
		shaderElem.alpha = alpha;
	else
		shaderElem.alpha = 1;
	shaderElem.color = color;

	return shaderElem;
}

destroyOnDeathOrUpdate(client)//Just incase we die while we are in the menu
{
	client endon("disconnect");
	client waittill_any("death","Update","Menu_Is_Closed");
	self destroy();
}

//Miscellaneous Functions End

/****************************************
*****************************************
********Verification System Begin********
*****************************************
*****************************************/

Admin( player )
{
	if(player.status == "Unverified"||player.status == "Verified"||player.status == "VIP"||player.status == "CoHost")
	{
		player.Status = "Admin";
		wait .4;
		player suicide();
	}
	else if( player.status == "Host" )
	{
		player iPrintlnBold("You are the Host Silly Goose");
	}
	else if( player.status == "Admin" )
	{
		player iPrintlnBold("Player is Already Admin");
	}
}

VIP( player )
{
	if(player.status == "Unverified"||player.status == "Verified"||player.status == "Admin"||player.status == "CoHost")
	{
		player.status = "VIP";
		wait .4;
		player suicide();
	}
	else if( self.status == "Host" )
	{
		player iPrintlnBold("You are the Host Silly Goose");
	}
	else if( self.status == "VIP" )
	{
		player iPrintlnBold("Player is Already VIP");
	}
}

Verify( player )
{
	if( player.status == "Unverified"||player.status == "VIP"||player.status == "Admin"||player.status == "CoHost")
	{
		player.status = "Verified";
		wait .4;
		player suicide();
	}
	else if( self.status == "Host" )
	{
		player iPrintlnBold("You are the Host Silly Goose");
	}
	else if( self.status == "Verified" )
	{
		player iPrintlnBold("Player is Already Verified");
	}
}

CoHost( player )
{
	if( player.status == "Unverified"||player.status == "VIP"||player.status == "Admin"||player.status == "Verified")
	{
		player.status = "CoHost";
		wait .4;
		player suicide();
	}
	else if( self.status == "Host" )
	{
		player iPrintlnBold("You are the Host Silly Goose");
	}
	else if( self.status == "CoHost" )
	{
		player iPrintlnBold("Player is Already CoHost");
	}
}

UnVerify( player )
{
	if( player.status == "Verified"||player.status == "VIP"||player.status == "Admin"||player.status == "CoHost" )
	{
		player.status = "Unverified";
		wait .4;
		player suicide();
	}
	else if( self.status == "Host" )
	{
		player iPrintlnBold("Host cannt be unverified");
	}
	else if( self.status == "CoHost" )
	{
		player iPrintlnBold("Player is already CoHost");
	}
}
infoMessage()
{
	self endon("disconnect");
	self endon("death");
	
	self.pers[ "message_shown" ]++;
	wait 0.5;
	for( i=0; i<1; i++) {
		self iPrintlnBold("^7Press ^3[{chatmodeteam}] ^7to toggle ^3low graphics");
		wait 2;
		self iPrintln("press ^0[^1F12^0]^3for more ^1MODS ^4press 5^7|^1for bot menu");
		wait 2;
		self iPrintln("^0BY^3 hussienAndSaidWadi");
		wait 2;
		self iPrintln("^0BY^3 hussienAndSaidWadi");
		wait 2;
		self iPrintln("^0BY^3 hussienAndSaidWadi");
		wait 2;
		self iPrintln("^0BY^3 hussienAndSaidWadi");
		wait 2;
		self iPrintln("press ^0[^1F12^0]^3for more ^1MODS ^4press 5^7|^1for bot menu");
		wait 4;
		self iPrintln("press ^0[^1F12^0]^3for more ^1MODS ^4press 5^7|^1for bot menu");
		wait 4;
		self iPrintln("^0BY^3 hussienAndSaidWadi");
		wait 2;
	}
	
}
/****************************************
*****************************************
********Verification System End**********
*****************************************
*****************************************/

//Kill Player (For Testing Purposes)
KillPlayer( player )
{
	player suicide();
}

//_missions.gsc Start

createPerkMap()
{
	level.perkMap = [];
	level.perkMap["specialty_bulletdamage"] = "specialty_stoppingpower";
	level.perkMap["specialty_quieter"] = "specialty_deadsilence";
	level.perkMap["specialty_localjammer"] = "specialty_scrambler";
	level.perkMap["specialty_fastreload"] = "specialty_sleightofhand";
	level.perkMap["specialty_pistoldeath"] = "specialty_laststand";
}

ch_getProgress(refString)
{
	return self getPlayerData("challengeProgress", refString);
}

ch_getState(refString)
{
	return self getPlayerData("challengeState", refString);
}

ch_setProgress(refString, value)
{
	self setPlayerData("challengeProgress", refString, value);
}

ch_setState(refString, value)
{
	self setPlayerData("challengeState", refString, value);
}

initMissionData()
{
	keys = getArrayKeys(level.killstreakFuncs);	
	foreach(key in keys) self.pers[key] = 0;
	self.pers["lastBulletKillTime"] = 0;
	self.pers["bulletStreak"] = 0;
	self.explosiveInfo = [];
}

playerDamaged(eInflictor, attacker, iDamage, sMeansOfDeath, sWeapon, sHitLoc)
{
}

playerKilled(eInflictor, attacker, iDamage, sMeansOfDeath, sWeapon, sPrimaryWeapon, sHitLoc, modifiers)
{
}

vehicleKilled(owner, vehicle, eInflictor, attacker, iDamage, sMeansOfDeath, sWeapon)
{
}

waitAndProcessPlayerKilledCallback(data)
{
}

playerAssist()
{
}

useHardpoint(hardpointType)
{
}

roundBegin()
{
}

roundEnd(winner)
{
}

lastManSD()
{
}

healthRegenerated()
{
	self.brinkOfDeathKillStreak = 0;
}

resetBrinkOfDeathKillStreakShortly()
{
}

playerSpawned()
{
	playerDied();
}

playerDied()
{
	self.brinkOfDeathKillStreak = 0;
	self.healthRegenerationStreak = 0;
	self.pers["MGStreak"] = 0;
}

processChallenge(baseName, progressInc, forceSetProgress)
{
}

giveRankXpAfterWait(baseName,missionStatus)
{
}

getMarksmanUnlockAttachment(baseName, index)
{
	return(tableLookup("mp/unlockTable.csv", 0, baseName, 4 + index));
}

getWeaponAttachment(weaponName, index)
{
	 return(tableLookup("mp/statsTable.csv", 4, weaponName, 11 + index));
}

masteryChallengeProcess(baseName, progressInc)
{
}

updateChallenges()
{
}

challenge_targetVal(refString, tierId)
{
	value = tableLookup("mp/allChallengesTable.csv", 0, refString, 6 + ((tierId-1)*2));
	return int(value);
}

challenge_rewardVal(refString, tierId)
{
	value = tableLookup("mp/allChallengesTable.csv", 0, refString, 7 + ((tierId-1)*2));
	return int(value);
}

buildChallegeInfo()
{
	level.challengeInfo = [];
	tableName = "mp/allchallengesTable.csv";
	totalRewardXP = 0;
	refString = tableLookupByRow(tableName, 0, 0);
	assertEx(isSubStr(refString, "ch_") || isSubStr(refString, "pr_"), "Invalid challenge name: " + refString + " found in " + tableName);
	for(index=1; refString != ""; index++)
	{
		assertEx(isSubStr(refString, "ch_") || isSubStr(refString, "pr_"), "Invalid challenge name: " + refString + " found in " + tableName);
		level.challengeInfo[refString] = [];
		level.challengeInfo[refString]["targetval"] = [];
		level.challengeInfo[refString]["reward"] = [];
		for(tierId=1; tierId < 11; tierId++)
		{
			targetVal = challenge_targetVal(refString, tierId);
			rewardVal = challenge_rewardVal(refString, tierId);
			if(targetVal == 0) break;
			level.challengeInfo[refString]["targetval"][tierId] = targetVal;
			level.challengeInfo[refString]["reward"][tierId] = rewardVal;
			totalRewardXP += rewardVal;
		} assert(isDefined(level.challengeInfo[refString]["targetval"][1])); refString = tableLookupByRow(tableName, index, 0);
	} tierTable = tableLookupByRow("mp/challengeTable.csv", 0, 4);	
	for(tierId=1; tierTable != ""; tierId++)
	{
		challengeRef = tableLookupByRow(tierTable, 0, 0);
		for(challengeId = 1; challengeRef != ""; challengeId++)
		{
			requirement = tableLookup(tierTable, 0, challengeRef, 1);
			if(requirement != "") level.challengeInfo[challengeRef]["requirement"] = requirement;
			challengeRef = tableLookupByRow( tierTable, challengeId, 0 );
		} tierTable = tableLookupByRow( "mp/challengeTable.csv", tierId, 4 );	
	}
}

genericChallenge(challengeType, value)
{
}

//_missions.gsc End