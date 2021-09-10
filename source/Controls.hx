package;

import flixel.FlxG;
import flixel.input.FlxInput;
import flixel.input.actions.FlxAction;
import flixel.input.actions.FlxActionInput;
import flixel.input.actions.FlxActionInputDigital;
import flixel.input.actions.FlxActionManager;
import flixel.input.actions.FlxActionSet;
import flixel.input.gamepad.FlxGamepadButton;
import flixel.input.gamepad.FlxGamepadInputID;
import flixel.input.keyboard.FlxKey;

#if (haxe >= "4.0.0")
enum abstract Action(String) to String from String
{
	var UP = "up";
	var LEFT = "left";
	var RIGHT = "right";
	var DOWN = "down";


	var UP_P = "up-press";
	var LEFT_P = "left-press";
	var RIGHT_P = "right-press";
	var DOWN_P = "down-press";



	var UP_R = "up-release";
	var LEFT_R = "left-release";
	var RIGHT_R = "right-release";
	var DOWN_R = "down-release";



	var ACCEPT = "accept";
	var BACK = "back";
	var PAUSE = "pause";
	var RESET = "reset";
	var CHEAT = "cheat";

	var L1 = "l1";
	var U1 = "u";
	var R1 = "r1";
	var L2 = "l2";
	var D1 = "d";
	var R2 = "r2";

	var L1_P = "l1-press";
	var U1_P = "u-press";
	var R1_P = "r1-press";
	var L2_P = "l2-press";
	var D1_P = "d-press";
	var R2_P = "r2-press";

	var L1_R = "l1-release";
	var U1_R = "u-release";
	var R1_R = "r1-release";
	var L2_R = "l2-release";
	var D1_R = "d-release";
	var R2_R = "r2-release";

	var P0 = "p0";
	var P1 = "p1";
	var P2 = "p2";
	var P3 = "p3";
	var P4 = "p4";
	var P5 = "p5";
	var P6 = "p6";
	var P7 = "p7";
	var P8 = "p8";
	var P9 = "p9";
	var P10 = "p10";
	var P11 = "p11";
	var P12 = "p12";
	var P13 = "p13";
	var P14 = "p14";
	var P15 = "p15";
	var P16 = "p16";
	var P17 = "p17";
	var P18 = "p18";
	var P19 = "p19";
	var P20 = "p20";
	//var P21 = "p21";

	var P0_P = "p0-press";
	var P1_P = "p1-press";
	var P2_P = "p2-press";
	var P3_P = "p3-press";
	var P4_P = "p4-press";
	var P5_P = "p5-press";
	var P6_P = "p6-press";
	var P7_P = "p7-press";
	var P8_P = "p8-press";
	var P9_P = "p9-press";
	var P10_P = "p10-press";
	var P11_P = "p11-press";
	var P12_P = "p12-press";
	var P13_P = "p13-press";
	var P14_P = "p14-press";
	var P15_P = "p15-press";
	var P16_P = "p16-press";
	var P17_P = "p17-press";
	var P18_P = "p18-press";
	var P19_P = "p19-press";
	var P20_P = "p20-press";
	//var P21_P = "p21-press";

	var P0_R = "p0-release";
	var P1_R = "p1-release";
	var P2_R = "p2-release";
	var P3_R = "p3-release";
	var P4_R = "p4-release";
	var P5_R = "p5-release";
	var P6_R = "p6-release";
	var P7_R = "p7-release";
	var P8_R = "p8-release";
	var P9_R = "p9-release";
	var P10_R = "p10-release";
	var P11_R = "p11-release";
	var P12_R = "p12-release";
	var P13_R = "p13-release";
	var P14_R = "p14-release";
	var P15_R = "p15-release";
	var P16_R = "p16-release";
	var P17_R = "p17-release";
	var P18_R = "p18-release";
	var P19_R = "p19-release";
	var P20_R = "p20-release";
	//var P21_R = "p21-release";


	var N0 = "n0";
	var N1 = "n1";
	var N2 = "n2";
	var N3 = "n3";
	var N4 = "n4";
	var N5 = "n5";
	var N6 = "n6";
	var N7 = "n7";
	var N8 = "n8";

	var N0_P = "n0-press";
	var N1_P = "n1-press";
	var N2_P = "n2-press";
	var N3_P = "n3-press";
	var N4_P = "n4-press";
	var N5_P = "n5-press";
	var N6_P = "n6-press";
	var N7_P = "n7-press";
	var N8_P = "n8-press";

	var N0_R = "n0-release";
	var N1_R = "n1-release";
	var N2_R = "n2-release";
	var N3_R = "n3-release";
	var N4_R = "n4-release";
	var N5_R = "n5-release";
	var N6_R = "n6-release";
	var N7_R = "n7-release";
	var N8_R = "n8-release";
}
#else
@:enum
abstract Action(String) to String from String
{
	var UP = "up";
	var LEFT = "left";
	var RIGHT = "right";
	var DOWN = "down";
	var UP_P = "up-press";
	var LEFT_P = "left-press";
	var RIGHT_P = "right-press";
	var DOWN_P = "down-press";
	var UP_R = "up-release";
	var LEFT_R = "left-release";
	var RIGHT_R = "right-release";
	var DOWN_R = "down-release";


	var ACCEPT = "accept";
	var BACK = "back";
	var PAUSE = "pause";
	var RESET = "reset";
	var CHEAT = "cheat";

	var L1 = "l1";
	var U1 = "u";
	var R1 = "r1";
	var L2 = "l2";
	var D1 = "d";
	var R2 = "r2";

	var L1_P = "l1-press";
	var U1_P = "u-press";
	var R1_P = "r1-press";
	var L2_P = "l2-press";
	var D1_P = "d-press";
	var R2_P = "r2-press";

	var L1_R = "l1-release";
	var U1_R = "u-release";
	var R1_R = "r1-release";
	var L2_R = "l2-release";
	var D1_R = "d-release";
	var R2_R = "r2-release";

	var P0 = "p0";
	var P1 = "p1";
	var P2 = "p2";
	var P3 = "p3";
	var P4 = "p4";
	var P5 = "p5";
	var P6 = "p6";
	var P7 = "p7";
	var P8 = "p8";
	var P9 = "p9";
	var P10 = "p10";
	var P11 = "p11";
	var P12 = "p12";
	var P13 = "p13";
	var P14 = "p14";
	var P15 = "p15";
	var P16 = "p16";
	var P17 = "p17";
	var P18 = "p18";
	var P19 = "p19";
	var P20 = "p20";
//	var P21 = "p21";

	var P0_P = "p0-press";
	var P1_P = "p1-press";
	var P2_P = "p2-press";
	var P3_P = "p3-press";
	var P4_P = "p4-press";
	var P5_P = "p5-press";
	var P6_P = "p6-press";
	var P7_P = "p7-press";
	var P8_P = "p8-press";
	var P9_P = "p9-press";
	var P10_P = "p10-press";
	var P11_P = "p11-press";
	var P12_P = "p12-press";
	var P13_P = "p13-press";
	var P14_P = "p14-press";
	var P15_P = "p15-press";
	var P16_P = "p16-press";
	var P17_P = "p17-press";
	var P18_P = "p18-press";
	var P19_P = "p19-press";
	var P20_P = "p20-press";
	//var P21_P = "p21-press";

	var P0_R = "p0-release";
	var P1_R = "p2-release";
	var P3_R = "p4-release";
	var P5_R = "p5-release";
	var P6_R = "p6-release";
	var P7_R = "p7-release";
	var P8_R = "p8-release";
	var P9_R = "p9-release";
	var P10_R = "p10-release";
	var P11_R = "p11-release";
	var P12_R = "p12-release";
	var P13_R = "p13-release";
	var P14_R = "p14-release";
	var P15_R = "p15-release";
	var P16_R = "p16-release";
	var P17_R = "p17-release";
	var P18_R = "p18-release";
	var P19_R = "p19-release";
	var P20_R = "p20-release";
	//var P21_R = "p21-release";


	var N0 = "n0";
	var N1 = "n1";
	var N2 = "n2";
	var N3 = "n3";
	var N4 = "n4";
	var N5 = "n5";
	var N6 = "n6";
	var N7 = "n7";
	var N8 = "n8";

	var N0_P = "n0-press";
	var N1_P = "n1-press";
	var N2_P = "n2-press";
	var N3_P = "n3-press";
	var N4_P = "n4-press";
	var N5_P = "n5-press";
	var N6_P = "n6-press";
	var N7_P = "n7-press";
	var N8_P = "n8-press";

	var N0_R = "n0-release";
	var N1_R = "n1-release";
	var N2_R = "n2-release";
	var N3_R = "n3-release";
	var N4_R = "n4-release";
	var N5_R = "n5-release";
	var N6_R = "n6-release";
	var N7_R = "n7-release";
	var N8_R = "n8-release";
}
#end

enum Device
{
	Keys;
	Gamepad(id:Int);
}

/**
 * Since, in many cases multiple actions should use similar keys, we don't want the
 * rebinding UI to list every action. ActionBinders are what the user percieves as
 * an input so, for instance, they can't set jump-press and jump-release to different keys.
 */
enum Control
{
	UP;
	LEFT;
	RIGHT;
	DOWN;

	RESET;
	ACCEPT;
	BACK;
	PAUSE;
	CHEAT;
	L1;
	U1;
	R1;
	L2;
	D1;
	R2;
	N0;
	N1;
	N2;
	N3;
	N4;
	N5;
	N6;
	N7;
	N8;
	P0;
	P1;
	P2;
	P3;
	P4;
	P5;
	P6;
	P7;
	P8;
	P9;
	P10;
	P11;
	P12;
	P13;
	P14;
	P15;
	P16;
	P17;
	P18;
	P19;
	P20;
	//P21;
}

enum KeyboardScheme
{
	Solo;
	Duo(first:Bool);
	None;
	Custom;
}

/**
 * A list of actions that a player would invoke via some input device.
 * Uses FlxActions to funnel various inputs to a single action.
 */
class Controls extends FlxActionSet
{
	var _up = new FlxActionDigital(Action.UP);
	var _left = new FlxActionDigital(Action.LEFT);
	var _right = new FlxActionDigital(Action.RIGHT);
	var _down = new FlxActionDigital(Action.DOWN);
	var _upP = new FlxActionDigital(Action.UP_P);
	var _leftP = new FlxActionDigital(Action.LEFT_P);
	var _rightP = new FlxActionDigital(Action.RIGHT_P);
	var _downP = new FlxActionDigital(Action.DOWN_P);
	var _upR = new FlxActionDigital(Action.UP_R);
	var _leftR = new FlxActionDigital(Action.LEFT_R);
	var _rightR = new FlxActionDigital(Action.RIGHT_R);
	var _downR = new FlxActionDigital(Action.DOWN_R);


	
	var _accept = new FlxActionDigital(Action.ACCEPT);
	var _back = new FlxActionDigital(Action.BACK);
	var _pause = new FlxActionDigital(Action.PAUSE);
	var _reset = new FlxActionDigital(Action.RESET);
	var _cheat = new FlxActionDigital(Action.CHEAT);

	var _l1 = new FlxActionDigital(Action.L1);
	var _l1P = new FlxActionDigital(Action.L1_P);
	var _l1R = new FlxActionDigital(Action.L1_R);

	var _u = new FlxActionDigital(Action.U1);
	var _uP = new FlxActionDigital(Action.U1_P);
	var _uR = new FlxActionDigital(Action.U1_R);

	var _r1 = new FlxActionDigital(Action.R1);
	var _r1P = new FlxActionDigital(Action.R1_P);
	var _r1R = new FlxActionDigital(Action.R1_R);

	var _l2 = new FlxActionDigital(Action.L2);
	var _l2P = new FlxActionDigital(Action.L2_P);
	var _l2R = new FlxActionDigital(Action.L2_R);

	var _d = new FlxActionDigital(Action.D1);
	var _dP = new FlxActionDigital(Action.D1_P);
	var _dR = new FlxActionDigital(Action.D1_R);

	var _r2 = new FlxActionDigital(Action.R2);
	var _r2P = new FlxActionDigital(Action.R2_P);
	var _r2R = new FlxActionDigital(Action.R2_R);

	var _p0 = new FlxActionDigital(Action.P0);
	var _p1 = new FlxActionDigital(Action.P1);
	var _p2 = new FlxActionDigital(Action.P2);
	var _p3 = new FlxActionDigital(Action.P3);
	var _p4 = new FlxActionDigital(Action.P4);
	var _p5 = new FlxActionDigital(Action.P5);
	var _p6 = new FlxActionDigital(Action.P6);
	var _p7 = new FlxActionDigital(Action.P7);
	var _p8 = new FlxActionDigital(Action.P8);
	var _p9 = new FlxActionDigital(Action.P9);
	var _p10 = new FlxActionDigital(Action.P10);
	var _p11 = new FlxActionDigital(Action.P11);
	var _p12 = new FlxActionDigital(Action.P12);
	var _p13 = new FlxActionDigital(Action.P13);
	var _p14 = new FlxActionDigital(Action.P14);
	var _p15 = new FlxActionDigital(Action.P15);
	var _p16 = new FlxActionDigital(Action.P16);
	var _p17 = new FlxActionDigital(Action.P17);
	var _p18 = new FlxActionDigital(Action.P18);
	var _p19 = new FlxActionDigital(Action.P19);
	var _p20 = new FlxActionDigital(Action.P20);
	//var _p21 = new FlxActionDigital(Action.P21);

	var _p0P = new FlxActionDigital(Action.P0_P);
	var _p1P = new FlxActionDigital(Action.P1_P);
	var _p2P = new FlxActionDigital(Action.P2_P);
	var _p3P = new FlxActionDigital(Action.P3_P);
	var _p4P = new FlxActionDigital(Action.P4_P);
	var _p5P = new FlxActionDigital(Action.P5_P);
	var _p6P = new FlxActionDigital(Action.P6_P);
	var _p7P = new FlxActionDigital(Action.P7_P);
	var _p8P = new FlxActionDigital(Action.P8_P);
	var _p9P = new FlxActionDigital(Action.P9_P);
	var _p10P = new FlxActionDigital(Action.P10_P);
	var _p11P = new FlxActionDigital(Action.P11_P);
	var _p12P = new FlxActionDigital(Action.P12_P);
	var _p13P = new FlxActionDigital(Action.P13_P);
	var _p14P = new FlxActionDigital(Action.P14_P);
	var _p15P = new FlxActionDigital(Action.P15_P);
	var _p16P = new FlxActionDigital(Action.P16_P);
	var _p17P = new FlxActionDigital(Action.P17_P);
	var _p18P = new FlxActionDigital(Action.P18_P);
	var _p19P = new FlxActionDigital(Action.P19_P);
	var _p20P = new FlxActionDigital(Action.P20_P);
	//var _p21P = new FlxActionDigital(Action.P21_P);

	var _p0R = new FlxActionDigital(Action.P0_R);
	var _p1R = new FlxActionDigital(Action.P1_R);
	var _p2R = new FlxActionDigital(Action.P2_R);
	var _p3R = new FlxActionDigital(Action.P3_R);
	var _p4R = new FlxActionDigital(Action.P4_R);
	var _p5R = new FlxActionDigital(Action.P5_R);
	var _p6R = new FlxActionDigital(Action.P6_R);
	var _p7R = new FlxActionDigital(Action.P7_R);
	var _p8R = new FlxActionDigital(Action.P8_R);
	var _p9R = new FlxActionDigital(Action.P9_R);
	var _p10R = new FlxActionDigital(Action.P10_R);
	var _p11R = new FlxActionDigital(Action.P11_R);
	var _p12R = new FlxActionDigital(Action.P12_R);
	var _p13R = new FlxActionDigital(Action.P13_R);
	var _p14R = new FlxActionDigital(Action.P14_R);
	var _p15R = new FlxActionDigital(Action.P15_R);
	var _p16R = new FlxActionDigital(Action.P16_R);
	var _p17R = new FlxActionDigital(Action.P17_R);
	var _p18R = new FlxActionDigital(Action.P18_R);
	var _p19R = new FlxActionDigital(Action.P19_R);
	var _p20R = new FlxActionDigital(Action.P20_R);
	//var _p21R = new FlxActionDigital(Action.P21_R);

	var _n0 = new FlxActionDigital(Action.N0);
	var _n1 = new FlxActionDigital(Action.N1);
	var _n2 = new FlxActionDigital(Action.N2);
	var _n3 = new FlxActionDigital(Action.N3);
	var _n4 = new FlxActionDigital(Action.N4);
	var _n5 = new FlxActionDigital(Action.N5);
	var _n6 = new FlxActionDigital(Action.N6);
	var _n7 = new FlxActionDigital(Action.N7);
	var _n8 = new FlxActionDigital(Action.N8);

	var _n0P = new FlxActionDigital(Action.N0_P);
	var _n1P = new FlxActionDigital(Action.N1_P);
	var _n2P = new FlxActionDigital(Action.N2_P);
	var _n3P = new FlxActionDigital(Action.N3_P);
	var _n4P = new FlxActionDigital(Action.N4_P);
	var _n5P = new FlxActionDigital(Action.N5_P);
	var _n6P = new FlxActionDigital(Action.N6_P);
	var _n7P = new FlxActionDigital(Action.N7_P);
	var _n8P = new FlxActionDigital(Action.N8_P);

	var _n0R = new FlxActionDigital(Action.N0_R);
	var _n1R = new FlxActionDigital(Action.N1_R);
	var _n2R = new FlxActionDigital(Action.N2_R);
	var _n3R = new FlxActionDigital(Action.N3_R);
	var _n4R = new FlxActionDigital(Action.N4_R);
	var _n5R = new FlxActionDigital(Action.N5_R);
	var _n6R = new FlxActionDigital(Action.N6_R);
	var _n7R = new FlxActionDigital(Action.N7_R);
	var _n8R = new FlxActionDigital(Action.N8_R);

	#if (haxe >= "4.0.0")
	var byName:Map<String, FlxActionDigital> = [];
	#else
	var byName:Map<String, FlxActionDigital> = new Map<String, FlxActionDigital>();
	#end

	public var gamepadsAdded:Array<Int> = [];
	public var keyboardScheme = KeyboardScheme.None;

	public var UP(get, never):Bool;

	inline function get_UP()
		return _up.check();

	public var LEFT(get, never):Bool;

	inline function get_LEFT()
		return _left.check();

	public var RIGHT(get, never):Bool;

	inline function get_RIGHT()
		return _right.check();

	public var DOWN(get, never):Bool;

	inline function get_DOWN()
		return _down.check();

	public var UP_P(get, never):Bool;

	inline function get_UP_P()
		return _upP.check();

	public var LEFT_P(get, never):Bool;

	inline function get_LEFT_P()
		return _leftP.check();

	public var RIGHT_P(get, never):Bool;

	inline function get_RIGHT_P()
		return _rightP.check();

	public var DOWN_P(get, never):Bool;

	inline function get_DOWN_P()
		return _downP.check();

	public var UP_R(get, never):Bool;

	inline function get_UP_R()
		return _upR.check();

	public var LEFT_R(get, never):Bool;

	inline function get_LEFT_R()
		return _leftR.check();

	public var RIGHT_R(get, never):Bool;

	inline function get_RIGHT_R()
		return _rightR.check();

	public var DOWN_R(get, never):Bool;

	inline function get_DOWN_R()
		return _downR.check();

	public var ACCEPT(get, never):Bool;

	inline function get_ACCEPT()
		return _accept.check();

	public var BACK(get, never):Bool;

	inline function get_BACK()
		return _back.check();

	public var PAUSE(get, never):Bool;

	inline function get_PAUSE()
		return _pause.check();

	public var RESET(get, never):Bool;

	inline function get_RESET()
		return _reset.check();

	public var CHEAT(get, never):Bool;

	inline function get_CHEAT()
		return _cheat.check();

	public var L1(get, never):Bool;

	inline function get_L1()
		return _l1.check();

	public var L1_P(get, never):Bool;

	inline function get_L1_P()
		return _l1P.check();

	public var L1_R(get, never):Bool;

	inline function get_L1_R()
		return _l1R.check();	

	public var D1(get, never):Bool;

	inline function get_D1()
		return _d.check();

	public var D1_P(get, never):Bool;

	inline function get_D1_P()
		return _dP.check();

	public var D1_R(get, never):Bool;

	inline function get_D1_R()
		return _dR.check();

	public var R1(get, never):Bool;

	inline function get_R1()
		return _r1.check();

	public var R1_P(get, never):Bool;

	inline function get_R1_P()
		return _r1P.check();

	public var R1_R(get, never):Bool;

	inline function get_R1_R()
		return _r1R.check();	


	public var L2(get, never):Bool;

	inline function get_L2()
		return _l2.check();

	public var L2_P(get, never):Bool;

	inline function get_L2_P()
		return _l2P.check();

	public var L2_R(get, never):Bool;

	inline function get_L2_R()
		return _l2R.check();	

	public var U1(get, never):Bool;

	inline function get_U1()
		return _u.check();

	public var U1_P(get, never):Bool;

	inline function get_U1_P()
		return _uP.check();

	public var U1_R(get, never):Bool;

	inline function get_U1_R()
		return _uR.check();

	public var R2(get, never):Bool;

	inline function get_R2()
		return _r2.check();

	public var R2_P(get, never):Bool;

	inline function get_R2_P()
		return _r2P.check();

	public var R2_R(get, never):Bool;

	inline function get_R2_R()
		return _r2R.check();




	public var N0(get, never):Bool;
	public var N1(get, never):Bool;
	public var N2(get, never):Bool;
	public var N3(get, never):Bool;
	public var N4(get, never):Bool;
	public var N5(get, never):Bool;
	public var N6(get, never):Bool;
	public var N7(get, never):Bool;
	public var N8(get, never):Bool;

	public var N0_P(get, never):Bool;
	public var N1_P(get, never):Bool;
	public var N2_P(get, never):Bool;
	public var N3_P(get, never):Bool;
	public var N4_P(get, never):Bool;
	public var N5_P(get, never):Bool;
	public var N6_P(get, never):Bool;
	public var N7_P(get, never):Bool;
	public var N8_P(get, never):Bool;

	public var N0_R(get, never):Bool;
	public var N1_R(get, never):Bool;
	public var N2_R(get, never):Bool;
	public var N3_R(get, never):Bool;
	public var N4_R(get, never):Bool;
	public var N5_R(get, never):Bool;
	public var N6_R(get, never):Bool;
	public var N7_R(get, never):Bool;
	public var N8_R(get, never):Bool;

	
	public var P0(get, never):Bool;
	public var P1(get, never):Bool;
	public var P2(get, never):Bool;
	public var P3(get, never):Bool;
	public var P4(get, never):Bool;
	public var P5(get, never):Bool;
	public var P6(get, never):Bool;
	public var P7(get, never):Bool;
	public var P8(get, never):Bool;
	public var P9(get, never):Bool;
	public var P10(get, never):Bool;
	public var P11(get, never):Bool;
	public var P12(get, never):Bool;
	public var P13(get, never):Bool;
	public var P14(get, never):Bool;
	public var P15(get, never):Bool;
	public var P16(get, never):Bool;
	public var P17(get, never):Bool;
	public var P18(get, never):Bool;
	public var P19(get, never):Bool;
	public var P20(get, never):Bool;
	//public var P21(get, never):Bool;

	public var P0_P(get, never):Bool;
	public var P1_P(get, never):Bool;
	public var P2_P(get, never):Bool;
	public var P3_P(get, never):Bool;
	public var P4_P(get, never):Bool;
	public var P5_P(get, never):Bool;
	public var P6_P(get, never):Bool;
	public var P7_P(get, never):Bool;
	public var P8_P(get, never):Bool;
	public var P9_P(get, never):Bool;
	public var P10_P(get, never):Bool;
	public var P11_P(get, never):Bool;
	public var P12_P(get, never):Bool;
	public var P13_P(get, never):Bool;
	public var P14_P(get, never):Bool;
	public var P15_P(get, never):Bool;
	public var P16_P(get, never):Bool;
	public var P17_P(get, never):Bool;
	public var P18_P(get, never):Bool;
	public var P19_P(get, never):Bool;
	public var P20_P(get, never):Bool;
	//public var P21_P(get, never):Bool;

	public var P0_R(get, never):Bool;
	public var P1_R(get, never):Bool;
	public var P2_R(get, never):Bool;
	public var P3_R(get, never):Bool;
	public var P4_R(get, never):Bool;
	public var P5_R(get, never):Bool;
	public var P6_R(get, never):Bool;
	public var P7_R(get, never):Bool;
	public var P8_R(get, never):Bool;
	public var P9_R(get, never):Bool;
	public var P10_R(get, never):Bool;
	public var P11_R(get, never):Bool;
	public var P12_R(get, never):Bool;
	public var P13_R(get, never):Bool;
	public var P14_R(get, never):Bool;
	public var P15_R(get, never):Bool;
	public var P16_R(get, never):Bool;
	public var P17_R(get, never):Bool;
	public var P18_R(get, never):Bool;
	public var P19_R(get, never):Bool;
	public var P20_R(get, never):Bool;
	//public var P21_R(get, never):Bool;

	inline function get_N0() return _n0.check();
	inline function get_N1() return _n1.check();
	inline function get_N2() return _n2.check();
	inline function get_N3() return _n3.check();
	inline function get_N4() return _n4.check();
	inline function get_N5() return _n5.check();
	inline function get_N6() return _n6.check();
	inline function get_N7() return _n7.check();
	inline function get_N8() return _n8.check();

	inline function get_N0_P() return _n0P.check();
	inline function get_N1_P() return _n1P.check();
	inline function get_N2_P() return _n2P.check();
	inline function get_N3_P() return _n3P.check();
	inline function get_N4_P() return _n4P.check();
	inline function get_N5_P() return _n5P.check();
	inline function get_N6_P() return _n6P.check();
	inline function get_N7_P() return _n7P.check();
	inline function get_N8_P() return _n8P.check();

	inline function get_N0_R() return _n0R.check();
	inline function get_N1_R() return _n1R.check();
	inline function get_N2_R() return _n2R.check();
	inline function get_N3_R() return _n3R.check();
	inline function get_N4_R() return _n4R.check();
	inline function get_N5_R() return _n5R.check();
	inline function get_N6_R() return _n6R.check();
	inline function get_N7_R() return _n7R.check();
	inline function get_N8_R() return _n8R.check();

	inline function get_P0() return _p0.check();
	inline function get_P1() return _p1.check();
	inline function get_P2() return _p2.check();
	inline function get_P3() return _p3.check();
	inline function get_P4() return _p4.check();
	inline function get_P5() return _p5.check();
	inline function get_P6() return _p6.check();
	inline function get_P7() return _p7.check();
	inline function get_P8() return _p8.check();
	inline function get_P9() return _p9.check();
	inline function get_P10() return _p10.check();
	inline function get_P11() return _p11.check();
	inline function get_P12() return _p12.check();
	inline function get_P13() return _p13.check();
	inline function get_P14() return _p14.check();
	inline function get_P15() return _p15.check();
	inline function get_P16() return _p16.check();
	inline function get_P17() return _p17.check();
	inline function get_P18() return _p18.check();
	inline function get_P19() return _p19.check();
	inline function get_P20() return _p20.check();
	//inline function get_P21() return _p21.check();

	inline function get_P0_P() return _p0P.check();
	inline function get_P1_P() return _p1P.check();
	inline function get_P2_P() return _p2P.check();
	inline function get_P3_P() return _p3P.check();
	inline function get_P4_P() return _p4P.check();
	inline function get_P5_P() return _p5P.check();
	inline function get_P6_P() return _p6P.check();
	inline function get_P7_P() return _p7P.check();
	inline function get_P8_P() return _p8P.check();
	inline function get_P9_P() return _p9P.check();
	inline function get_P10_P() return _p10P.check();
	inline function get_P11_P() return _p11P.check();
	inline function get_P12_P() return _p12P.check();
	inline function get_P13_P() return _p13P.check();
	inline function get_P14_P() return _p14P.check();
	inline function get_P15_P() return _p15P.check();
	inline function get_P16_P() return _p16P.check();
	inline function get_P17_P() return _p17P.check();
	inline function get_P18_P() return _p18P.check();
	inline function get_P19_P() return _p19P.check();
	inline function get_P20_P() return _p20P.check();
	//inline function get_P21_P() return _p21P.check();

	inline function get_P0_R() return _p0R.check();
	inline function get_P1_R() return _p1R.check();
	inline function get_P2_R() return _p2R.check();
	inline function get_P3_R() return _p3R.check();
	inline function get_P4_R() return _p4R.check();
	inline function get_P5_R() return _p5R.check();
	inline function get_P6_R() return _p6R.check();
	inline function get_P7_R() return _p7R.check();
	inline function get_P8_R() return _p8R.check();
	inline function get_P9_R() return _p9R.check();
	inline function get_P10_R() return _p10R.check();
	inline function get_P11_R() return _p11R.check();
	inline function get_P12_R() return _p12R.check();
	inline function get_P13_R() return _p13R.check();
	inline function get_P14_R() return _p14R.check();
	inline function get_P15_R() return _p15R.check();
	inline function get_P16_R() return _p16R.check();
	inline function get_P17_R() return _p17R.check();
	inline function get_P18_R() return _p18R.check();
	inline function get_P19_R() return _p19R.check();
	inline function get_P20_R() return _p20R.check();
	//inline function get_P21_R() return _p21R.check();

	#if (haxe >= "4.0.0")
	public function new(name, scheme = None)
	{
		super(name);

		add(_up);
		add(_left);
		add(_right);
		add(_down);
		add(_upP);
		add(_leftP);
		add(_rightP);
		add(_downP);
		add(_upR);
		add(_leftR);
		add(_rightR);
		add(_downR);


		add(_accept);
		add(_back);
		add(_pause);
		add(_reset);
		add(_cheat);

		add(_l1);
		add(_l1P);
		add(_l1R);
		add(_d);
		add(_dP);
		add(_dR);
		add(_r1);
		add(_r1P);
		add(_r1R);

		add(_l2);
		add(_l2P);
		add(_l2R);
		add(_u);
		add(_uP);
		add(_uR);
		add(_r2);
		add(_r2P);
		add(_r2R);


		add(_n0);
		add(_n1);
		add(_n2);
		add(_n3);
		add(_n4);
		add(_n5);
		add(_n6);
		add(_n7);
		add(_n8);

		add(_n0P);
		add(_n1P);
		add(_n2P);
		add(_n3P);
		add(_n4P);
		add(_n5P);
		add(_n6P);
		add(_n7P);
		add(_n8P);

		add(_n0R);
		add(_n1R);
		add(_n2R);
		add(_n3R);
		add(_n4R);
		add(_n5R);
		add(_n6R);
		add(_n7R);
		add(_n8R);

		add(_p0);
		add(_p1);
		add(_p2);
		add(_p3);
		add(_p4);
		add(_p5);
		add(_p6);
		add(_p7);
		add(_p8);
		add(_p9);
		add(_p10);
		add(_p11);
		add(_p12);
		add(_p13);
		add(_p14);
		add(_p15);
		add(_p16);
		add(_p17);
		add(_p18);
		add(_p19);
		add(_p20);
		//add(_p21);

		add(_p0P);
		add(_p1P);
		add(_p2P);
		add(_p3P);
		add(_p4P);
		add(_p5P);
		add(_p6P);
		add(_p7P);
		add(_p8P);
		add(_p9P);
		add(_p10P);
		add(_p11P);
		add(_p12P);
		add(_p13P);
		add(_p14P);
		add(_p15P);
		add(_p16P);
		add(_p17P);
		add(_p18P);
		add(_p19P);
		add(_p20P);
		//add(_p21P);

		add(_p0R);
		add(_p1R);
		add(_p2R);
		add(_p3R);
		add(_p4R);
		add(_p5R);
		add(_p6R);
		add(_p7R);
		add(_p8R);
		add(_p9R);
		add(_p10R);
		add(_p11R);
		add(_p12R);
		add(_p13R);
		add(_p14R);
		add(_p15R);
		add(_p16R);
		add(_p17R);
		add(_p18R);
		add(_p19R);
		add(_p20R);
		//add(_p21R);


		for (action in digitalActions)
			byName[action.name] = action;

		setKeyboardScheme(scheme, false);
	}
	#else
	public function new(name, scheme:KeyboardScheme = null)
	{
		super(name);

		add(_up);
		add(_left);
		add(_right);
		add(_down);
		add(_upP);
		add(_leftP);
		add(_rightP);
		add(_downP);
		add(_upR);
		add(_leftR);
		add(_rightR);
		add(_downR);
		add(_accept);
		add(_back);
		add(_pause);
		add(_reset);
		add(_cheat);



		add(_l1);
		add(_l1P);
		add(_l1R);
		add(_d);
		add(_dP);
		add(_dR);
		add(_r1);
		add(_r1P);
		add(_r1R);

		add(_l2);
		add(_l2P);
		add(_l2R);
		add(_u);
		add(_uP);
		add(_uR);
		add(_r2);
		add(_r2P);
		add(_r2R);


		add(_n0);
		add(_n1);
		add(_n2);
		add(_n3);
		add(_n4);
		add(_n5);
		add(_n6);
		add(_n7);
		add(_n8);

		add(_n0P);
		add(_n1P);
		add(_n2P);
		add(_n3P);
		add(_n4P);
		add(_n5P);
		add(_n6P);
		add(_n7P);
		add(_n8P);

		add(_n0R);
		add(_n1R);
		add(_n2R);
		add(_n3R);
		add(_n4R);
		add(_n5R);
		add(_n6R);
		add(_n7R);
		add(_n8R);

		add(_p0);
		add(_p1);
		add(_p2);
		add(_p3);
		add(_p4);
		add(_p5);
		add(_p6);
		add(_p7);
		add(_p8);
		add(_p9);
		add(_p10);
		add(_p11);
		add(_p12);
		add(_p13);
		add(_p14);
		add(_p15);
		add(_p16);
		add(_p17);
		add(_p18);
		add(_p19);
		add(_p20);
//		add(_p21);

		add(_p0P);
		add(_p1P);
		add(_p2P);
		add(_p3P);
		add(_p4P);
		add(_p5P);
		add(_p6P);
		add(_p7P);
		add(_p8P);
		add(_p9P);
		add(_p10P);
		add(_p11P);
		add(_p12P);
		add(_p13P);
		add(_p14P);
		add(_p15P);
		add(_p16P);
		add(_p17P);
		add(_p18P);
		add(_p19P);
		add(_p20P);
	//	add(_p21P);

		add(_p0R);
		add(_p1R);
		add(_p2R);
		add(_p3R);
		add(_p4R);
		add(_p5R);
		add(_p6R);
		add(_p7R);
		add(_p8R);
		add(_p9R);
		add(_p10R);
		add(_p11R);
		add(_p12R);
		add(_p13R);
		add(_p14R);
		add(_p15R);
		add(_p16R);
		add(_p17R);
		add(_p18R);
		add(_p19R);
		add(_p20R);
	//	add(_p21R);


		for (action in digitalActions)
			byName[action.name] = action;
			
		if (scheme == null)
			scheme = None;
		setKeyboardScheme(scheme, false);
	}
	#end

	override function update()
	{
		super.update();
	}

	// inline
	public function checkByName(name:Action):Bool
	{
		#if debug
		if (!byName.exists(name))
			throw 'Invalid name: $name';
		#end
		return byName[name].check();
	}

	public function getDialogueName(action:FlxActionDigital):String
	{
		var input = action.inputs[0];
		return switch input.device
		{
			case KEYBOARD: return '[${(input.inputID : FlxKey)}]';
			case GAMEPAD: return '(${(input.inputID : FlxGamepadInputID)})';
			case device: throw 'unhandled device: $device';
		}
	}

	public function getDialogueNameFromToken(token:String):String
	{
		return getDialogueName(getActionFromControl(Control.createByName(token.toUpperCase())));
	}

	function getActionFromControl(control:Control):FlxActionDigital
	{
		return switch (control)
		{
			case UP: _up;
			case DOWN: _down;
			case LEFT: _left;
			case RIGHT: _right;



			case ACCEPT: _accept;
			case BACK: _back;
			case PAUSE: _pause;
			case RESET: _reset;
			case CHEAT: _cheat;

			case L1: _l1;
			case D1: _d;
			case R1: _r1;
			case L2: _l2;
			case U1: _u;
			case R2: _r2;

			case N0: _n0;
			case N1: _n1;
			case N2: _n2;
			case N3: _n3;
			case N4: _n4;
			case N5: _n5;
			case N6: _n6;
			case N7: _n7;
			case N8: _n8;
			
			case P0: _p0;
			case P1: _p1;
			case P2: _p2;
			case P3: _p3;
			case P4: _p4;
			case P5: _p5;
			case P6: _p6;
			case P7: _p7;
			case P8: _p8;
			case P9: _p9;
			case P10: _p10;
			case P11: _p11;
			case P12: _p12;
			case P13: _p13;
			case P14: _p14;
			case P15: _p15;
			case P16: _p16;
			case P17: _p17;
			case P18: _p18;
			case P19: _p19;
			case P20: _p20;
		//	case P21: _p21;
		}
	}

	static function init():Void
	{
		var actions = new FlxActionManager();
		FlxG.inputs.add(actions);
	}

	/**
	 * Calls a function passing each action bound by the specified control
	 * @param control
	 * @param func
	 * @return ->Void)
	 */
	function forEachBound(control:Control, func:FlxActionDigital->FlxInputState->Void)
	{
		switch (control)
		{
			case UP:
				func(_up, PRESSED);
				func(_upP, JUST_PRESSED);
				func(_upR, JUST_RELEASED);
			case LEFT:
				func(_left, PRESSED);
				func(_leftP, JUST_PRESSED);
				func(_leftR, JUST_RELEASED);
			case RIGHT:
				func(_right, PRESSED);
				func(_rightP, JUST_PRESSED);
				func(_rightR, JUST_RELEASED);
			case DOWN:
				func(_down, PRESSED);
				func(_downP, JUST_PRESSED);
				func(_downR, JUST_RELEASED);

	
			case ACCEPT:
				func(_accept, JUST_PRESSED);
			case BACK:
				func(_back, JUST_PRESSED);
			case PAUSE:
				func(_pause, JUST_PRESSED);
			case RESET:
				func(_reset, JUST_PRESSED);
			case CHEAT:
				func(_cheat, JUST_PRESSED);

			case L1:
				func(_l1, PRESSED);
				func(_l1P, JUST_PRESSED);
				func(_l1R, JUST_RELEASED);
			case U1:
				func(_u, PRESSED);
				func(_uP, JUST_PRESSED);
				func(_uR, JUST_RELEASED);
			case R1:
				func(_r1, PRESSED);
				func(_r1P, JUST_PRESSED);
				func(_r1R, JUST_RELEASED);
			case L2:
				func(_l2, PRESSED);
				func(_l2P, JUST_PRESSED);
				func(_l2R, JUST_RELEASED);
			case D1:
				func(_d, PRESSED);
				func(_dP, JUST_PRESSED);
				func(_dR, JUST_RELEASED);
			case R2:
				func(_r2, PRESSED);
				func(_r2P, JUST_PRESSED);
				func(_r2R, JUST_RELEASED);

			case N0:
				func(_n0, PRESSED);
				func(_n0P, JUST_PRESSED);
				func(_n0R, JUST_RELEASED);
			case N1:
				func(_n1, PRESSED);
				func(_n1P, JUST_PRESSED);
				func(_n1R, JUST_RELEASED);
			case N2:
				func(_n2, PRESSED);
				func(_n2P, JUST_PRESSED);
				func(_n2R, JUST_RELEASED);
			case N3:
				func(_n3, PRESSED);
				func(_n3P, JUST_PRESSED);
				func(_n3R, JUST_RELEASED);
			case N4:
				func(_n4, PRESSED);
				func(_n4P, JUST_PRESSED);
				func(_n4R, JUST_RELEASED);
			case N5:
				func(_n5, PRESSED);
				func(_n5P, JUST_PRESSED);
				func(_n5R, JUST_RELEASED);
			case N6:
				func(_n6, PRESSED);
				func(_n6P, JUST_PRESSED);
				func(_n6R, JUST_RELEASED);
			case N7:
				func(_n7, PRESSED);
				func(_n7P, JUST_PRESSED);
				func(_n7R, JUST_RELEASED);
			case N8:
				func(_n8, PRESSED);
				func(_n8P, JUST_PRESSED);
				func(_n8R, JUST_RELEASED);

			case P0:
				func(_p0, PRESSED);
				func(_p0P, JUST_PRESSED);
				func(_p0R, JUST_RELEASED);
			case P1:
				func(_p1, PRESSED);
				func(_p1P, JUST_PRESSED);
				func(_p1R, JUST_RELEASED);
			case P2:
				func(_p2, PRESSED);
				func(_p2P, JUST_PRESSED);
				func(_p2R, JUST_RELEASED);
			case P3:
				func(_p3, PRESSED);
				func(_p3P, JUST_PRESSED);
				func(_p3R, JUST_RELEASED);
			case P4:
				func(_p4, PRESSED);
				func(_p4P, JUST_PRESSED);
				func(_p4R, JUST_RELEASED);
			case P5:
				func(_p5, PRESSED);
				func(_p5P, JUST_PRESSED);
				func(_p5R, JUST_RELEASED);
			case P6:
				func(_p6, PRESSED);
				func(_p6P, JUST_PRESSED);
				func(_p6R, JUST_RELEASED);
			case P7:
				func(_p7, PRESSED);
				func(_p7P, JUST_PRESSED);
				func(_p7R, JUST_RELEASED);
			case P8:
				func(_p8, PRESSED);
				func(_p8P, JUST_PRESSED);
				func(_p8R, JUST_RELEASED);
			case P9:
				func(_p9, PRESSED);
				func(_p9P, JUST_PRESSED);
				func(_p9R, JUST_RELEASED);
				case P10:
					func(_p10, PRESSED);
					func(_p10P, JUST_PRESSED);
					func(_p10R, JUST_RELEASED);
				case P11:
					func(_p11, PRESSED);
					func(_p11P, JUST_PRESSED);
					func(_p11R, JUST_RELEASED);
				case P12:
					func(_p12, PRESSED);
					func(_p12P, JUST_PRESSED);
					func(_p12R, JUST_RELEASED);
				case P13:
					func(_p13, PRESSED);
					func(_p13P, JUST_PRESSED);
					func(_p13R, JUST_RELEASED);
				case P14:
					func(_p14, PRESSED);
					func(_p14P, JUST_PRESSED);
					func(_p14R, JUST_RELEASED);
				case P15:
					func(_p15, PRESSED);
					func(_p15P, JUST_PRESSED);
					func(_p15R, JUST_RELEASED);
				case P16:
					func(_p16, PRESSED);
					func(_p16P, JUST_PRESSED);
					func(_p16R, JUST_RELEASED);
				case P17:
					func(_p17, PRESSED);
					func(_p17P, JUST_PRESSED);
					func(_p17R, JUST_RELEASED);
				case P18:
					func(_p18, PRESSED);
					func(_p18P, JUST_PRESSED);
					func(_p18R, JUST_RELEASED);
				case P19:
					func(_p19, PRESSED);
					func(_p19P, JUST_PRESSED);
					func(_p19R, JUST_RELEASED);
					case P20:
						func(_p20, PRESSED);
						func(_p20P, JUST_PRESSED);
						func(_p20R, JUST_RELEASED);
					//case P21:
					//	func(_p21, PRESSED);
					//	func(_p21P, JUST_PRESSED);
					//	func(_p21R, JUST_RELEASED);
		}
	}

	public function replaceBinding(control:Control, device:Device, ?toAdd:Int, ?toRemove:Int)
	{
		if (toAdd == toRemove)
			return;

		switch (device)
		{
			case Keys:
				if (toRemove != null)
					unbindKeys(control, [toRemove]);
				if (toAdd != null)
					bindKeys(control, [toAdd]);

			case Gamepad(id):
				if (toRemove != null)
					unbindButtons(control, id, [toRemove]);
				if (toAdd != null)
					bindButtons(control, id, [toAdd]);
		}
	}

	public function copyFrom(controls:Controls, ?device:Device)
	{
		#if (haxe >= "4.0.0")
		for (name => action in controls.byName)
		{
			for (input in action.inputs)
			{
				if (device == null || isDevice(input, device))
					byName[name].add(cast input);
			}
		}
		#else
		for (name in controls.byName.keys())
		{
			var action = controls.byName[name];
			for (input in action.inputs)
			{
				if (device == null || isDevice(input, device))
				byName[name].add(cast input);
			}
		}
		#end

		switch (device)
		{
			case null:
				// add all
				#if (haxe >= "4.0.0")
				for (gamepad in controls.gamepadsAdded)
					if (!gamepadsAdded.contains(gamepad))
						gamepadsAdded.push(gamepad);
				#else
				for (gamepad in controls.gamepadsAdded)
					if (gamepadsAdded.indexOf(gamepad) == -1)
					  gamepadsAdded.push(gamepad);
				#end

				mergeKeyboardScheme(controls.keyboardScheme);

			case Gamepad(id):
				gamepadsAdded.push(id);
			case Keys:
				mergeKeyboardScheme(controls.keyboardScheme);
		}
	}

	inline public function copyTo(controls:Controls, ?device:Device)
	{
		controls.copyFrom(this, device);
	}

	function mergeKeyboardScheme(scheme:KeyboardScheme):Void
	{
		if (scheme != None)
		{
			switch (keyboardScheme)
			{
				case None:
					keyboardScheme = scheme;
				default:
					keyboardScheme = Custom;
			}
		}
	}

	/**
	 * Sets all actions that pertain to the binder to trigger when the supplied keys are used.
	 * If binder is a literal you can inline this
	 */
	public function bindKeys(control:Control, keys:Array<FlxKey>)
	{
		#if (haxe >= "4.0.0")
		inline forEachBound(control, (action, state) -> addKeys(action, keys, state));
		#else
		forEachBound(control, function(action, state) addKeys(action, keys, state));
		#end
	}

	/**
	 * Sets all actions that pertain to the binder to trigger when the supplied keys are used.
	 * If binder is a literal you can inline this
	 */
	public function unbindKeys(control:Control, keys:Array<FlxKey>)
	{
		#if (haxe >= "4.0.0")
		inline forEachBound(control, (action, _) -> removeKeys(action, keys));
		#else
		forEachBound(control, function(action, _) removeKeys(action, keys));
		#end
	}

	inline static function addKeys(action:FlxActionDigital, keys:Array<FlxKey>, state:FlxInputState)
	{
		for (key in keys)
			action.addKey(key, state);
	}

	static function removeKeys(action:FlxActionDigital, keys:Array<FlxKey>)
	{
		var i = action.inputs.length;
		while (i-- > 0)
		{
			var input = action.inputs[i];
			if (input.device == KEYBOARD && keys.indexOf(cast input.inputID) != -1)
				action.remove(input);
		}
	}

	public function setKeyboardScheme(scheme:KeyboardScheme, reset = true)
	{

		loadKeyBinds();

		/*bindKeys(Control.N0, [A]);
		bindKeys(Control.N1, [S]);
		bindKeys(Control.N2, [D]);
		bindKeys(Control.N3, [F]);
		bindKeys(Control.N4, [FlxKey.SPACE]);
		bindKeys(Control.N5, [H]);
		bindKeys(Control.N6, [J]);
		bindKeys(Control.N7, [K]);
		bindKeys(Control.N8, [L]);*/

		bindKeys(Control.P0, [Q]);
		bindKeys(Control.P1, [W]);
		bindKeys(Control.P2, [A]);
		bindKeys(Control.P3, [S]);
		bindKeys(Control.P4, [E]);
		bindKeys(Control.P5, [R]);
		bindKeys(Control.P6, [C]);
		bindKeys(Control.P7, [V]);
		bindKeys(Control.P8, [D]);
		bindKeys(Control.P9, [F]);
		bindKeys(Control.P10, [FlxKey.SPACE]);
		bindKeys(Control.P11, [M]);
		bindKeys(Control.P12, [H]);
		bindKeys(Control.P13, [J]);
		bindKeys(Control.P14, [N]);
		bindKeys(Control.P15, [U]);
		bindKeys(Control.P16, [I]);
		bindKeys(Control.P17, [O]);
		bindKeys(Control.P18, [P]);
		bindKeys(Control.P19, [K]);
		bindKeys(Control.P20, [L]);

		/*bindKeys(Control.L1, [S]);
		bindKeys(Control.U1, [D]);
		bindKeys(Control.R1, [F]);
		bindKeys(Control.L2, [J]);
	 	bindKeys(Control.D1, [K]);
		bindKeys(Control.R2, [L]);
		/*if (reset)
			removeKeyboard();

		keyboardScheme = scheme;
		
		#if (haxe >= "4.0.0")
		switch (scheme)
		{
			case Solo:
				inline bindKeys(Control.UP, [FlxKey.fromString("W"), FlxKey.UP]);
				inline bindKeys(Control.DOWN, [FlxKey.fromString("S"), FlxKey.DOWN]);
				inline bindKeys(Control.LEFT, [FlxKey.fromString("A"), FlxKey.LEFT]);
				inline bindKeys(Control.RIGHT, [FlxKey.fromString("D"), FlxKey.RIGHT]);
				inline bindKeys(Control.ACCEPT, [Z, SPACE, ENTER]);
				inline bindKeys(Control.BACK, [BACKSPACE, ESCAPE]);
				inline bindKeys(Control.PAUSE, [P, ENTER, ESCAPE]);
				inline bindKeys(Control.RESET, [FlxKey.fromString("R")]);
			case Duo(true):
				inline bindKeys(Control.UP, [W, K]);
				inline bindKeys(Control.DOWN, [S, J]);
				inline bindKeys(Control.LEFT, [A, H]);
				inline bindKeys(Control.RIGHT, [D, L]);
				inline bindKeys(Control.ACCEPT, [Z]);
				inline bindKeys(Control.BACK, [X]);
				inline bindKeys(Control.PAUSE, [ONE]);
				inline bindKeys(Control.RESET, [R]);
			case Duo(false):
				inline bindKeys(Control.UP, [FlxKey.UP]);
				inline bindKeys(Control.DOWN, [FlxKey.DOWN]);
				inline bindKeys(Control.LEFT, [FlxKey.LEFT]);
				inline bindKeys(Control.RIGHT, [FlxKey.RIGHT]);
				inline bindKeys(Control.ACCEPT, [O]);
				inline bindKeys(Control.BACK, [P]);
				inline bindKeys(Control.PAUSE, [ENTER]);
				inline bindKeys(Control.RESET, [BACKSPACE]);
			case None: // nothing
			case Custom: // nothing
		}
		#else
		switch (scheme)
		{
			case Solo:
				bindKeys(Control.UP, [W, K, FlxKey.UP]);
				bindKeys(Control.DOWN, [S, J, FlxKey.DOWN]);
				bindKeys(Control.LEFT, [A, H, FlxKey.LEFT]);
				bindKeys(Control.RIGHT, [D, L, FlxKey.RIGHT]);
				bindKeys(Control.ACCEPT, [Z, SPACE, ENTER]);
				bindKeys(Control.BACK, [BACKSPACE, ESCAPE]);
				bindKeys(Control.PAUSE, [P, ENTER, ESCAPE]);
				bindKeys(Control.RESET, [R]);
			case Duo(true):
				bindKeys(Control.UP, [W, K]);
				bindKeys(Control.DOWN, [S, J]);
				bindKeys(Control.LEFT, [A, H]);
				bindKeys(Control.RIGHT, [D, L]);
				bindKeys(Control.ACCEPT, [Z]);
				bindKeys(Control.BACK, [X]);
				bindKeys(Control.PAUSE, [ONE]);
				bindKeys(Control.RESET, [R]);
			case Duo(false):
				bindKeys(Control.UP, [FlxKey.UP]);
				bindKeys(Control.DOWN, [FlxKey.DOWN]);
				bindKeys(Control.LEFT, [FlxKey.LEFT]);
				bindKeys(Control.RIGHT, [FlxKey.RIGHT]);
				bindKeys(Control.ACCEPT, [O]);
				bindKeys(Control.BACK, [P]);
				bindKeys(Control.PAUSE, [ENTER]);
				bindKeys(Control.RESET, [BACKSPACE]);
			case None: // nothing
			case Custom: // nothing
		}
		#end*/
	}

	public function loadKeyBinds()
	{

		//trace(FlxKey.fromString(FlxG.save.data.upBind));

		removeKeyboard();
	
		inline bindKeys(Control.UP, [FlxKey.fromString(FlxG.save.data.upBind), FlxKey.UP]);
		inline bindKeys(Control.DOWN, [FlxKey.fromString(FlxG.save.data.downBind), FlxKey.DOWN]);
		inline bindKeys(Control.LEFT, [FlxKey.fromString(FlxG.save.data.leftBind), FlxKey.LEFT]);
		inline bindKeys(Control.RIGHT, [FlxKey.fromString(FlxG.save.data.rightBind), FlxKey.RIGHT]);

		inline bindKeys(Control.ACCEPT, [Z, SPACE, ENTER]);
		inline bindKeys(Control.BACK, [BACKSPACE, ESCAPE]);
		inline bindKeys(Control.PAUSE, [ENTER, ESCAPE]);
		inline bindKeys(Control.RESET, [FlxKey.fromString(FlxG.save.data.killBind)]);

		inline bindKeys(Control.N0, [FlxKey.fromString(FlxG.save.data.N0Bind)]);
		inline bindKeys(Control.N1, [FlxKey.fromString(FlxG.save.data.N1Bind)]);
		inline bindKeys(Control.N2, [FlxKey.fromString(FlxG.save.data.N2Bind)]);
		inline bindKeys(Control.N3, [FlxKey.fromString(FlxG.save.data.N3Bind)]);
		inline bindKeys(Control.N4, [FlxKey.fromString(FlxG.save.data.N4Bind)]);
		inline bindKeys(Control.N5, [FlxKey.fromString(FlxG.save.data.N5Bind)]);
		inline bindKeys(Control.N6, [FlxKey.fromString(FlxG.save.data.N6Bind)]);
		inline bindKeys(Control.N7, [FlxKey.fromString(FlxG.save.data.N7Bind)]);
		inline bindKeys(Control.N8, [FlxKey.fromString(FlxG.save.data.N8Bind)]);

		inline bindKeys(Control.P0, [FlxKey.fromString(FlxG.save.data.P0Bind)]);
		inline bindKeys(Control.P1, [FlxKey.fromString(FlxG.save.data.P1Bind)]);
		inline bindKeys(Control.P2, [FlxKey.fromString(FlxG.save.data.P2Bind)]);
		inline bindKeys(Control.P3, [FlxKey.fromString(FlxG.save.data.P3Bind)]);
		inline bindKeys(Control.P4, [FlxKey.fromString(FlxG.save.data.P4Bind)]);
		inline bindKeys(Control.P5, [FlxKey.fromString(FlxG.save.data.P5Bind)]);
		inline bindKeys(Control.P6, [FlxKey.fromString(FlxG.save.data.P6Bind)]);
		inline bindKeys(Control.P7, [FlxKey.fromString(FlxG.save.data.P7Bind)]);
		inline bindKeys(Control.P8, [FlxKey.fromString(FlxG.save.data.P8Bind)]);
		inline bindKeys(Control.P9, [FlxKey.fromString(FlxG.save.data.P9Bind)]);
		inline bindKeys(Control.P10, [FlxKey.fromString(FlxG.save.data.P10Bind)]);
		inline bindKeys(Control.P11, [FlxKey.fromString(FlxG.save.data.P11Bind)]);
		inline bindKeys(Control.P12, [FlxKey.fromString(FlxG.save.data.P12Bind)]);
		inline bindKeys(Control.P13, [FlxKey.fromString(FlxG.save.data.P13Bind)]);
		inline bindKeys(Control.P14, [FlxKey.fromString(FlxG.save.data.P14Bind)]);
		inline bindKeys(Control.P15, [FlxKey.fromString(FlxG.save.data.P15Bind)]);
		inline bindKeys(Control.P16, [FlxKey.fromString(FlxG.save.data.P16Bind)]);
		inline bindKeys(Control.P17, [FlxKey.fromString(FlxG.save.data.P17Bind)]);
		inline bindKeys(Control.P18, [FlxKey.fromString(FlxG.save.data.P18Bind)]);
		inline bindKeys(Control.P19, [FlxKey.fromString(FlxG.save.data.P19Bind)]);
		inline bindKeys(Control.P20, [FlxKey.fromString(FlxG.save.data.P20Bind)]);
		//inline bindKeys(Control.P21, [FlxKey.fromString(FlxG.save.data.P21Bind)]);

		inline bindKeys(Control.L1, [FlxKey.fromString(FlxG.save.data.L1Bind)]);
		inline bindKeys(Control.U1, [FlxKey.fromString(FlxG.save.data.U1Bind)]);
		inline bindKeys(Control.R1, [FlxKey.fromString(FlxG.save.data.R1Bind)]);
		inline bindKeys(Control.L2, [FlxKey.fromString(FlxG.save.data.L2Bind)]);
		inline bindKeys(Control.D1, [FlxKey.fromString(FlxG.save.data.D1Bind)]);
		inline bindKeys(Control.R2, [FlxKey.fromString(FlxG.save.data.R2Bind)]);

		bindKeys(Control.P0, [Q]);
		bindKeys(Control.P1, [W]);
		bindKeys(Control.P2, [A]);
		bindKeys(Control.P3, [S]);
		bindKeys(Control.P4, [E]);
		bindKeys(Control.P5, [R]);
		bindKeys(Control.P6, [C]);
		bindKeys(Control.P7, [V]);
		bindKeys(Control.P8, [D]);
		bindKeys(Control.P9, [F]);
		bindKeys(Control.P10, [FlxKey.SPACE]);
		bindKeys(Control.P11, [M]);
		bindKeys(Control.P12, [H]);
		bindKeys(Control.P13, [J]);
		bindKeys(Control.P14, [N]);
		bindKeys(Control.P15, [U]);
		bindKeys(Control.P16, [I]);
		bindKeys(Control.P17, [O]);
		bindKeys(Control.P18, [P]);
		bindKeys(Control.P19, [K]);
		bindKeys(Control.P20, [L]);
	}

	function removeKeyboard()
	{
		for (action in this.digitalActions)
		{
			var i = action.inputs.length;
			while (i-- > 0)
			{
				var input = action.inputs[i];
				if (input.device == KEYBOARD)
					action.remove(input);
			}
		}
	}

	public function addGamepad(id:Int, ?buttonMap:Map<Control, Array<FlxGamepadInputID>>):Void
	{
		gamepadsAdded.push(id);
		
		#if (haxe >= "4.0.0")
		for (control => buttons in buttonMap)
			inline bindButtons(control, id, buttons);
		#else
		for (control in buttonMap.keys())
			bindButtons(control, id, buttonMap[control]);
		#end
	}

	inline function addGamepadLiteral(id:Int, ?buttonMap:Map<Control, Array<FlxGamepadInputID>>):Void
	{
		gamepadsAdded.push(id);

		#if (haxe >= "4.0.0")
		for (control => buttons in buttonMap)
			inline bindButtons(control, id, buttons);
		#else
		for (control in buttonMap.keys())
			bindButtons(control, id, buttonMap[control]);
		#end
	}

	public function removeGamepad(deviceID:Int = FlxInputDeviceID.ALL):Void
	{
		for (action in this.digitalActions)
		{
			var i = action.inputs.length;
			while (i-- > 0)
			{
				var input = action.inputs[i];
				if (input.device == GAMEPAD && (deviceID == FlxInputDeviceID.ALL || input.deviceID == deviceID))
					action.remove(input);
			}
		}

		gamepadsAdded.remove(deviceID);
	}

	public function addDefaultGamepad(id):Void
	{
		#if !switch
		addGamepadLiteral(id, [
			Control.ACCEPT => [A],
			Control.BACK => [B],
			Control.UP => [DPAD_UP, LEFT_STICK_DIGITAL_UP],
			Control.DOWN => [DPAD_DOWN, LEFT_STICK_DIGITAL_DOWN],
			Control.LEFT => [DPAD_LEFT, LEFT_STICK_DIGITAL_LEFT],
			Control.RIGHT => [DPAD_RIGHT, LEFT_STICK_DIGITAL_RIGHT],
			Control.PAUSE => [START],
			Control.RESET => [Y]
		]);
		#else
		addGamepadLiteral(id, [
			//Swap A and B for switch
			Control.ACCEPT => [B],
			Control.BACK => [A],
			Control.UP => [DPAD_UP, LEFT_STICK_DIGITAL_UP, RIGHT_STICK_DIGITAL_UP],
			Control.DOWN => [DPAD_DOWN, LEFT_STICK_DIGITAL_DOWN, RIGHT_STICK_DIGITAL_DOWN],
			Control.LEFT => [DPAD_LEFT, LEFT_STICK_DIGITAL_LEFT, RIGHT_STICK_DIGITAL_LEFT],
			Control.RIGHT => [DPAD_RIGHT, LEFT_STICK_DIGITAL_RIGHT, RIGHT_STICK_DIGITAL_RIGHT],
			Control.PAUSE => [START],
			//Swap Y and X for switch
			Control.RESET => [Y],
			Control.CHEAT => [X]
		]);
		#end
	}

	/**
	 * Sets all actions that pertain to the binder to trigger when the supplied keys are used.
	 * If binder is a literal you can inline this
	 */
	public function bindButtons(control:Control, id, buttons)
	{
		#if (haxe >= "4.0.0")
		inline forEachBound(control, (action, state) -> addButtons(action, buttons, state, id));
		#else
		forEachBound(control, function(action, state) addButtons(action, buttons, state, id));
		#end
	}

	/**
	 * Sets all actions that pertain to the binder to trigger when the supplied keys are used.
	 * If binder is a literal you can inline this
	 */
	public function unbindButtons(control:Control, gamepadID:Int, buttons)
	{
		#if (haxe >= "4.0.0")
		inline forEachBound(control, (action, _) -> removeButtons(action, gamepadID, buttons));
		#else
		forEachBound(control, function(action, _) removeButtons(action, gamepadID, buttons));
		#end
	}

	inline static function addButtons(action:FlxActionDigital, buttons:Array<FlxGamepadInputID>, state, id)
	{
		for (button in buttons)
			action.addGamepad(button, state, id);
	}

	static function removeButtons(action:FlxActionDigital, gamepadID:Int, buttons:Array<FlxGamepadInputID>)
	{
		var i = action.inputs.length;
		while (i-- > 0)
		{
			var input = action.inputs[i];
			if (isGamepad(input, gamepadID) && buttons.indexOf(cast input.inputID) != -1)
				action.remove(input);
		}
	}

	public function getInputsFor(control:Control, device:Device, ?list:Array<Int>):Array<Int>
	{
		if (list == null)
			list = [];

		switch (device)
		{
			case Keys:
				for (input in getActionFromControl(control).inputs)
				{
					if (input.device == KEYBOARD)
						list.push(input.inputID);
				}
			case Gamepad(id):
				for (input in getActionFromControl(control).inputs)
				{
					if (input.deviceID == id)
						list.push(input.inputID);
				}
		}
		return list;
	}

	public function removeDevice(device:Device)
	{
		switch (device)
		{
			case Keys:
				setKeyboardScheme(None);
			case Gamepad(id):
				removeGamepad(id);
		}
	}

	static function isDevice(input:FlxActionInput, device:Device)
	{
		return switch device
		{
			case Keys: input.device == KEYBOARD;
			case Gamepad(id): isGamepad(input, id);
		}
	}

	inline static function isGamepad(input:FlxActionInput, deviceID:Int)
	{
		return input.device == GAMEPAD && (deviceID == FlxInputDeviceID.ALL || input.deviceID == deviceID);
	}
}
