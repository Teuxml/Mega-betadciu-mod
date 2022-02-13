package;

import flixel.FlxSprite;
import flixel.FlxG;

#if windows
import Sys;
import sys.FileSystem;
#end

#if sys
import sys.io.File;
import haxe.io.Path;
import openfl.utils.ByteArray;
import flash.display.BitmapData;
import sys.FileSystem;
#end

using StringTools;

class HealthIcon extends FlxSprite

{
	/**
	 * Used for FreeplayState! If you use it elsewhere, prob gonna annoying
	 */
	public var sprTracker:FlxSprite;
	private var isOldIcon:Bool = false;
	private var isPlayer:Bool = false;
	private var char:String = '';

	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();
		var name:String = 'icons/psych/' + char;
		trace('images/icons/psych/icon-' + char);
		trace('images/icons/psych/' + char);
		if(Paths.fileExists('images/' + name + '.png', IMAGE)){ //later versions of psych icon support
			trace('we are dealing with an old psych icon. do the routine. | images/' + name + '.png');
			isOldIcon = (char == 'bf-old');
			this.isPlayer = isPlayer;
			changeIcon(char);
			scrollFactor.set();
		}
		else if(Paths.fileExists('images/icons/psych/icon-' + char + '.png', IMAGE)){ //older versions of psych icon support
			trace('we are dealing with a new psych icon. do the routine. | images/' + name + '.png');
			isOldIcon = (char == 'bf-old');
			this.isPlayer = isPlayer;
			changeIcon(char);
			scrollFactor.set();
		}
		else
		{
			trace('so ur one of those peeps huh?');
			loadGraphic(Paths.image('icons/blantados/iconGrid'), true, 150, 150);

			antialiasing = true;
			animation.add('bf', [0, 1], 0, false, isPlayer);
			animation.add('bf-car', [0, 1], 0, false, isPlayer);
			animation.add('bf-christmas', [0, 1], 0, false, isPlayer);
			animation.add('bf-fnf-switch', [0, 1], 0, false, isPlayer);
			animation.add('bf-updike', [0, 1], 0, false, isPlayer);
			animation.add('spooky', [2, 3], 0, false, isPlayer);
			animation.add('bf-spooky', [2, 3], 0, false);
			animation.add('pico', [4, 5], 0, false, isPlayer);
			animation.add('gf-pico', [4, 5], 0, false, isPlayer);
			animation.add('mom', [6, 7], 0, false, isPlayer);
			animation.add('mom-car', [6, 7], 0, false, isPlayer);
			animation.add('tankman', [8, 9], 0, false, isPlayer);
			animation.add('face', [10, 11], 0, false, isPlayer);
			animation.add('dad', [12, 13], 0, false, isPlayer);
			animation.add('bf-old', [14, 15], 0, false, isPlayer);
			animation.add('gf', [16, 17], 0, false, isPlayer);
			animation.add('bf-gf', [16, 17], 0, false, isPlayer);
			animation.add('gf-crucified', [16, 17], 0, false, isPlayer);
			animation.add('parents-christmas', [18,19], 0, false, isPlayer);
			animation.add('monster', [20, 21], 0, false, isPlayer);
			animation.add('monster-christmas', [20, 21], 0, false, isPlayer);
			animation.add('bf-pixel', [22, 23], 0, false, isPlayer);
			animation.add('garcello', [24, 25], 0, false, isPlayer);
			animation.add('playable-garcello', [24, 25], 0, false, isPlayer);
			animation.add('tricky', [26, 27], 0, false, isPlayer);
			animation.add('bf-annie', [28, 29], 0, false, isPlayer);
			animation.add('zardy', [30, 31], 0, false, isPlayer);
			animation.add('whitty', [32, 33], 0, false, isPlayer);
			animation.add('hex', [34, 35], 0, false, isPlayer);
			animation.add('bf-carol', [36, 37], 0, false, isPlayer);
			animation.add('gf4', [36, 37], 0, false, isPlayer);
			animation.add('exgf', [38, 39], 0, false, isPlayer);
			animation.add('bf-exgf', [38, 39], 0, false, isPlayer);
			animation.add('bf-senpai', [40, 41], 0, false, isPlayer);
			animation.add('hd-senpai', [40, 41], 0, false, isPlayer);
			animation.add('hd-senpaiangry', [40, 41], 0, false, isPlayer);
			animation.add('hd-senpai-happy', [40, 41], 0, false, isPlayer);
			animation.add('hd-senpai-fear', [41], 0, false, isPlayer);
			animation.add('bf-sarv', [42, 43], 0, false, isPlayer);
			animation.add('sarvente', [42, 43], 0, false, isPlayer);
			animation.add('sarvente-dark', [42, 43], 0, false, isPlayer);
			animation.add('ruv', [44, 45], 0, false, isPlayer);
			animation.add('bf-sky', [46, 47], 0, false, isPlayer);
			animation.add('sky-happy', [46, 47], 0, false, isPlayer);
			animation.add('sky-purehappiness', [46], 0, false, isPlayer);
			animation.add('drunk-annie', [48, 49], 0, false, isPlayer);
			animation.add('drunk-annie-blue', [48, 49], 0, false, isPlayer);
			animation.add('matt', [50, 51], 0, false, isPlayer);
			animation.add('miku', [52, 53], 0, false, isPlayer);
			animation.add('bf-miku', [52, 53], 0, false, isPlayer);
			animation.add('monika', [54, 55], 0, false, isPlayer);
			animation.add('selever', [56, 57], 0, false, isPlayer);
			animation.add('bf-frisk', [58, 59], 0, false, isPlayer);
			animation.add('bf-sans', [60, 61], 0, false, isPlayer);
			animation.add('kapi', [62, 63], 0, false, isPlayer);
			animation.add('liz', [64, 65], 0, false, isPlayer);
			animation.add('tord', [66, 67], 0, false, isPlayer);
			animation.add('agoti', [68, 69], 0, false, isPlayer);
			animation.add('tabi', [70, 71], 0, false, isPlayer);
			animation.add('tom', [72, 73], 0, false, isPlayer);
			animation.add('cassandra', [74, 75], 0, false, isPlayer);
			animation.add('whittyCrazy', [76, 77], 0, false, isPlayer);
			animation.add('sarvente-lucifer', [78, 79], 0, false, isPlayer);
			animation.add('knuckles', [80, 81], 0, false, isPlayer);
			animation.add('lila', [82, 83], 0, false, isPlayer);
			animation.add('garcellotired', [84, 85], 0, false, isPlayer);
			animation.add('garcellotired-blue', [84, 85], 0, false, isPlayer);
			animation.add('gura-amelia', [86, 87], 0, false, isPlayer);
			animation.add('gura-amelia-walfie', [86, 87], 0, false, isPlayer);
			animation.add('botan', [88, 89], 0, false, isPlayer);
			animation.add('bf-dad', [90, 91], 0, false, isPlayer);
			animation.add('bf-mom', [92, 93], 0, false, isPlayer);
			animation.add('bf-mom-car', [92, 93], 0, false, isPlayer);
			animation.add('nene', [94, 95], 0, false, isPlayer);
			animation.add('bf-blantad', [96, 97], 0, false, isPlayer);
			animation.add('blantad-new', [96, 97], 0, false, isPlayer);
			animation.add('blantad-watch', [96, 97], 0, false, isPlayer);
			animation.add('blantad-handscutscene', [96, 97], 0, false, isPlayer);
			animation.add('blantad-handscutscene2', [96, 97], 0, false, isPlayer);
			animation.add('blantad-teleport', [96, 97], 0, false, isPlayer);
			animation.add('hd-senpaidark', [98], 0, false, isPlayer);
			animation.add('matt-angry', [99], 0, false, isPlayer);
			animation.add('uganda-knuckles', [100], 0, false, isPlayer);
			animation.add('hd-spiritnotmad', [101], 0, false, isPlayer);
			animation.add('hd-spirit', [101,102], 0, false, isPlayer);
			animation.add('sky-mad', [103], 0, false, isPlayer);
			animation.add('senpaighosty', [104], 0, false, isPlayer);
			animation.add('tankman-sad', [105, 8], 0, false, isPlayer);
			animation.add('monika-angry', [106, 107], 0, false, isPlayer);
			animation.add('anchor', [108,109], 0, false, isPlayer);
			animation.add('anchor-bowl', [108,109], 0, false, isPlayer);
			animation.add('roro', [110,111], 0, false, isPlayer);
			animation.add('agoti-mad', [112,113], 0, false, isPlayer);
			animation.add('miku-mad', [114,115], 0, false, isPlayer);
			animation.add('brother', [116,117], 0, false, isPlayer);
			animation.add('pompom-mad', [118,119], 0, false, isPlayer);
			animation.add('chara', [120,121], 0, false, isPlayer);
			animation.add('tabi-crazy', [122,123], 0, false, isPlayer);
			animation.add('sunday', [124,125], 0, false, isPlayer);
			animation.add('sunday-guitar', [124,125], 0, false, isPlayer);
			animation.add('bitdadcrazy', [126], 0, false, isPlayer);
			animation.add('dad-sad-pixel-white', [127], 0, false, isPlayer);
			animation.add('bf-pixeld4', [128], 0, false, isPlayer);
			animation.add('bf-pixeld4BSide', [129], 0, false, isPlayer);
			animation.add('bitdad', [130], 0, false, isPlayer);
			animation.add('bitdadBSide', [131], 0, false, isPlayer);
			animation.add('senpai-giddy', [132], 0, false, isPlayer);
			animation.add('bf-tankman-pixel', [133], 0, false, isPlayer);
			animation.add('miku-pixel', [134], 0, false, isPlayer);
			animation.add('jackson', [135], 0, false, isPlayer);
			animation.add('mario-angry', [136], 0, false, isPlayer);
			animation.add('bf-pico-pixel', [137], 0, false, isPlayer);
			animation.add('bf-sonic-pixel', [138], 0, false, isPlayer);
			animation.add('bf-tom-pixel', [139], 0, false, isPlayer);
			animation.add('bf-rico-pixel', [140], 0, false, isPlayer);
			animation.add('colt', [141], 0, false, isPlayer);
			animation.add('colt-angry', [141], 0, false, isPlayer);
			animation.add('colt-angryd2', [141], 0, false, isPlayer);
			animation.add('colt-angryd2corrupt', [141], 0, false, isPlayer);
			animation.add('monster-pixel', [142], 0, false, isPlayer);
			animation.add('spooky-pixel', [143], 0, false);
			animation.add('bf-wright-pixel', [144], 0, false, isPlayer);
			animation.add('kristoph-angry', [145], 0, false, isPlayer);
			animation.add('bf-gf-pixel', [146], 0, false, isPlayer);
			animation.add('bf-sans-pixel', [147], 0, false, isPlayer);
			animation.add('chara-pixel', [148], 0, false, isPlayer);
			animation.add('gura-amelia-pixel', [149], 0, false, isPlayer);
			animation.add('bf-botan-pixel', [150], 0, false, isPlayer);
			animation.add('bf-whitty-pixel', [151], 0, false, isPlayer);
			animation.add('agoti-pixel', [152], 0, false, isPlayer);
			animation.add('tabi-pixel', [153], 0, false, isPlayer);
			animation.add('green-monika', [154], 0, false, isPlayer);
			animation.add('empty', [155], 0, false, isPlayer);
			animation.add('template', [155], 0, false, isPlayer);
			animation.add('neon', [156], 0, false, isPlayer);
			animation.add('monika-jumpscare', [157], 0, false, isPlayer);
			animation.add('baldi-angry', [158], 0, false, isPlayer);
			animation.add('mangle-angry', [159], 0, false, isPlayer);
			animation.add('bf-tankman-pixel-plain', [160], 0, false, isPlayer);
			animation.add('kou', [161, 162], 0, false, isPlayer);
			animation.add('henry', [163, 164], 0, false, isPlayer);
			animation.add('shaggy', [165, 166], 0, false, isPlayer);
			animation.add('bf-lexi', [167, 168], 0, false, isPlayer);
			animation.add('monster-pixel-look', [169], 0, false, isPlayer);
			animation.add('bf1', [170, 171], 0, false, isPlayer);
			animation.add('bf-aloe', [170, 171], 0, false, isPlayer);
			animation.add('bf-aloe-car', [170, 171], 0, false, isPlayer);
			animation.add('bf-senpai-flippin', [172, 173], 0, false, isPlayer);
			animation.add('gf2', [172, 173], 0, false, isPlayer);
			animation.add('bf2', [172, 173], 0, false, isPlayer);
			animation.add('bf-peridot', [174, 175], 0, false, isPlayer);
			animation.add('bf3', [172, 173], 0, false, isPlayer);
			animation.add('bf-smol-whitty', [176, 177], 0, false, isPlayer);
			animation.add('bf4', [176, 177], 0, false, isPlayer);
			animation.add('bf-starzchan', [178, 179], 0, false, isPlayer);
			animation.add('bf5', [178, 179], 0, false, isPlayer);
			animation.add('gfandbf', [180, 181], 0, false, isPlayer);
			animation.add('gfandbf-fear', [180], 0, false, isPlayer);
			animation.add('gf1', [180, 181], 0, false, isPlayer);
			animation.add('senpai', [182, 183], 0, false, isPlayer);
			animation.add('bf-senpai-pixel', [182, 183], 0, false, isPlayer);
			animation.add('senpai-angry', [183], 0, false, isPlayer);
			animation.add('bf-senpai-pixel-angry', [183], 0, false, isPlayer);
			animation.add('agoti-glitcher', [184, 185], 0, false, isPlayer);
			animation.add('agoti-wire', [186, 187], 0, false, isPlayer);
			animation.add('tabi-wire', [188, 189], 0, false, isPlayer);
			animation.add('tabi-glitcher', [190, 191], 0, false, isPlayer);
			animation.add('miku-mad-christmas', [192, 193], 0, false, isPlayer);
			animation.add('demoncass', [194, 195], 0, false, isPlayer);
			animation.add('coco', [196, 197], 0, false, isPlayer);
			animation.add('coco-car', [196, 197], 0, false, isPlayer);
			animation.add('updike', [198, 199], 0, false, isPlayer);
			animation.add('rebecca', [200, 201], 0, false, isPlayer);
			animation.add('spirit', [202, 203], 0, false, isPlayer);
			animation.add('crazygf', [204], 0, false, isPlayer);
			animation.add('monika-finale', [205], 0, false, isPlayer);
			animation.add('lane', [206, 207], 0, false, isPlayer);
			animation.add('bob', [208, 209], 0, false, isPlayer);
			animation.add('opheebop', [210, 211], 0, false, isPlayer);
			animation.add('impostor', [212, 213], 0, false, isPlayer);
			animation.add('neko-crazy', [214, 215], 0, false, isPlayer);
			animation.add('bf-confused', [216, 1], 0, false, isPlayer);
			animation.add('boygf', [217], 0, false, isPlayer);
			animation.add('momosuzu', [218], 0, false, isPlayer);
			animation.add('starzgf', [219], 0, false, isPlayer);
			animation.add('gf5', [219], 0, false, isPlayer);
			animation.add('girlbf', [220, 221], 0, false, isPlayer);
			animation.add('henry-angry', [222, 223], 0, false, isPlayer);
			animation.add('lane-pixel', [224], 0, false, isPlayer);
			animation.add('blantad-pixel', [225], 0, false, isPlayer);
			animation.add('bf-rincewind', [226, 227], 0, false, isPlayer);
			animation.add('bf-pico', [228, 229], 0, false, isPlayer);
			animation.add('bf-ena', [230, 231], 0, false, isPlayer);
			animation.add('bf-chris', [232, 233], 0, false, isPlayer);
			animation.add('bf-ryuko', [234, 235], 0, false, isPlayer);
			animation.add('bf-omori', [236, 237], 0, false, isPlayer);
			animation.add('bf-drip', [238, 239], 0, false, isPlayer);
			animation.add('bf-narancia', [240, 241], 0, false, isPlayer);
			animation.add('bf-troll', [242, 243], 0, false, isPlayer);
			animation.add('gf-kanna', [244], 0, false, isPlayer);
			animation.add('gf3', [244], 0, false, isPlayer);
			animation.add('gf-rincewind', [245], 0, false, isPlayer);
			animation.add('gf-lapis', [246], 0, false, isPlayer);
			animation.add('gf-moony', [247], 0, false, isPlayer);
			animation.add('gf-kaity', [248], 0, false, isPlayer);
			animation.add('gf-lemon', [249], 0, false, isPlayer);
			animation.add('matt2', [250, 251], 0, false, isPlayer);
			animation.add('tord2', [252, 253], 0, false, isPlayer);
			animation.add('eddsworld-switch', [252, 253], 0, false, isPlayer);
			animation.add('tom2', [254, 255], 0, false, isPlayer);
			animation.add('edd2', [256, 257], 0, false, isPlayer);
			animation.add('gf-drip', [258, 259], 0, false, isPlayer);
			animation.add('gf-aubrey', [260], 0, false, isPlayer);
			animation.add('gf-chara', [261], 0, false, isPlayer);
			animation.add('gf-troll', [262], 0, false, isPlayer);
			animation.add('gf-fugo', [263], 0, false, isPlayer);
			animation.add('tankman-happy', [264, 9], 0, false, isPlayer);
			animation.add('tankman-happy-bw', [265, 275], 0, false, isPlayer);
			animation.add('bf-bw', [266, 267], 0, false, isPlayer);
			animation.add('annie-bw', [268, 269], 0, false, isPlayer);
			animation.add('whitty-bw', [270, 271], 0, false, isPlayer);
			animation.add('hex-bw', [272, 273], 0, false, isPlayer);
			animation.add('anchor-bw', [274, 275], 0, false, isPlayer);
			animation.add('roro-bw', [276, 277], 0, false, isPlayer);
			animation.add('hd-senpai-bw', [278, 279], 0, false, isPlayer);
			animation.add('gura-amelia-bw', [280, 281], 0, false, isPlayer);
			animation.add('bf-aloe-bw', [282, 283], 0, false, isPlayer);
			animation.add('tankman-bw', [284, 285], 0, false, isPlayer);
			animation.add('pico-bw', [286, 287], 0, false, isPlayer);
			animation.add('cassandra-bw', [288, 289], 0, false, isPlayer);
			animation.add('nene-bw', [290, 291], 0, false, isPlayer);
			animation.add('hd-senpai-happy', [40, 292], 0, false, isPlayer);
			animation.add('hd-senpai-fear-happy', [292], 0, false, isPlayer);
			animation.add('hd-senpai-happy-bw', [279, 293], 0, false, isPlayer);
			animation.add('ruby', [294, 295], 0, false, isPlayer);
			animation.add('ruby-worried', [294, 295], 0, false, isPlayer);
			animation.add('ruby-worried-night', [294, 295], 0, false, isPlayer);
			animation.add('cjClone', [296, 297], 0, false, isPlayer);
			animation.add('bf-sonic', [298, 299], 0, false, isPlayer);
			animation.add('taki', [300, 301], 0, false, isPlayer);
			animation.add('haachama', [302, 303], 0, false, isPlayer);
			animation.add('kodacho', [304, 305], 0, false, isPlayer);
			animation.add('isabella', [306, 307], 0, false, isPlayer);
			animation.add('momi', [308, 309], 0, false, isPlayer);
			animation.add('snow', [310, 311], 0, false, isPlayer);
			animation.add('mackiepom', [312, 313], 0, false, isPlayer);
			animation.add('rosie', [314, 315], 0, false, isPlayer);
			animation.add('rosie-angry', [314, 315], 0, false, isPlayer);
			animation.add('rosie-furious', [314, 315], 0, false, isPlayer);
			animation.add('cj', [316, 317], 0, false, isPlayer);
			animation.add('cj-ruby', [318, 319], 0, false, isPlayer);
			animation.add('cj-ruby-both', [318, 319], 0, false, isPlayer);
			animation.add('gf-demon', [320, 17], 0, false, isPlayer);
			animation.add('dad-happy', [12, 321], 0, false, isPlayer);
			animation.add('bob2', [322, 323], 0, false, isPlayer);
			animation.add('bosip', [324, 325], 0, false, isPlayer);
			animation.add('peri', [326, 327], 0, false, isPlayer);
			animation.add('bana', [328, 329], 0, false, isPlayer);
			animation.add('mel', [330, 331], 0, false, isPlayer);
			animation.add('cg5', [332, 333], 0, false, isPlayer);
			animation.add('pumpkinpie', [334, 335], 0, false, isPlayer);
			animation.add('mia', [336, 337], 0, false, isPlayer);
			animation.add('mia-lookstraight', [336, 337], 0, false, isPlayer);
			animation.add('mia-lookstraight-blue', [336, 337], 0, false, isPlayer);
			animation.add('mia-wire', [338, 339], 0, false, isPlayer);
			animation.add('bana-wire', [340, 341], 0, false, isPlayer);
			animation.add('sarvente-worried-blue', [342, 43], 0, false, isPlayer);
			animation.add('sarvente-worried-night', [342, 43], 0, false, isPlayer);
			animation.add('bf-senpai-worried', [343, 41], 0, false, isPlayer);
			animation.add('sky-annoyed', [47, 344], 0, false, isPlayer);
			animation.add('bf-aloe-confused', [345, 171], 0, false, isPlayer);
			animation.add('dad-mad', [346], 0, false, isPlayer);
			animation.add('dad-sad-corrupt1', [347], 0, false, isPlayer);
			animation.add('dad-sad', [348], 0, false, isPlayer);
			animation.add('dad-sad-pixel', [349], 0, false, isPlayer);
			animation.add('hd-monika', [350, 351], 0, false, isPlayer);
			animation.add('hex-virus', [352, 353], 0, false, isPlayer);
			animation.add('ruv-mad', [354, 45], 0, false, isPlayer);
			animation.add('tankman-mad', [355, 9], 0, false, isPlayer);
			animation.add('hd-monika-angry', [356, 357], 0, false, isPlayer);
			animation.add('bf-smol-ruv', [358, 359], 0, false, isPlayer);
			animation.add('mario', [360, 361], 0, false, isPlayer);
			animation.add('bico-christmas', [362, 363], 0, false, isPlayer);
			animation.add('henry-blue', [364, 365], 0, false, isPlayer);
			animation.add('blantad-blue', [366, 367], 0, false, isPlayer);
			animation.add('bf-pump', [368, 369], 0, false, isPlayer);
			animation.add('senpaighosty-blue', [371], 0, false, isPlayer);
			animation.add('alya', [372, 373], 0, false, isPlayer);
			animation.add('phil', [374, 375], 0, false, isPlayer);
			animation.add('tordbot', [376, 377], 0, false, isPlayer);
			animation.add('b3-mom-sad', [378], 0, false, isPlayer);
			animation.add('b3-mom-mad', [379], 0, false, isPlayer);
			animation.add('starecrown', [380, 381], 0, false, isPlayer);
			animation.add('picoCrazy', [382, 383], 0, false, isPlayer);
			animation.add('bf-cesar', [384, 385], 0, false, isPlayer);
			animation.add('bf-demoncesar', [386, 387], 0, false, isPlayer);
			animation.add('kkslider', [388, 389], 0, false, isPlayer);
			animation.add('beardington', [390, 391], 0, false, isPlayer);
			animation.add('steve', [392, 393], 0, false, isPlayer);
			animation.add('noke', [394, 395], 0, false, isPlayer);
			animation.add('cyrix', [396, 397], 0, false, isPlayer);
			animation.add('cyrix-crazy', [398, 399], 0, false, isPlayer);
			animation.add('sh-carol', [400, 401], 0, false, isPlayer);
			animation.add('senpai-glitch', [402, 403], 0, false, isPlayer);
			animation.add('spirit-glitch', [404, 405], 0, false, isPlayer);
			animation.add('sarv-ruv', [406, 407], 0, false, isPlayer);
			animation.add('sarv-ruv-both', [406, 407], 0, false, isPlayer);
			animation.add('piconjo', [408, 409], 0, false, isPlayer);
			animation.add('bb', [410, 411], 0, false, isPlayer);
			animation.add('parents-christmas-soft', [412, 413], 0, false, isPlayer);
			animation.add('bf-kaity', [414, 415], 0, false, isPlayer);
			animation.add('bf-kaity-car', [414, 415], 0, false, isPlayer);
			animation.add('isa', [416, 417], 0, false, isPlayer);
			animation.add('bf-senpai-tankman', [418, 419], 0, false, isPlayer);
			animation.add('calli', [420, 421], 0, false, isPlayer);
			animation.add('lucian', [422, 423], 0, false, isPlayer);
			animation.add('abby', [424, 425], 0, false, isPlayer);
			animation.add('abby-mad', [424, 425], 0, false, isPlayer);
			animation.add('ron', [426, 427], 0, false, isPlayer);
			animation.add('nonsense', [428, 429], 0, false, isPlayer);
			animation.add('nonsense-god', [430], 0, false, isPlayer);
			animation.add('eteled2', [432, 433], 0, false, isPlayer);
			animation.add('pshaggy', [434, 435], 0, false, isPlayer);
			animation.add('calli-mad', [436, 437], 0, false, isPlayer);
			animation.add('bf-aloe-corrupt', [438, 439], 0, false, isPlayer);
			animation.add('calli-sad', [440, 441], 0, false, isPlayer);
			animation.add('garcellodead', [442, 443], 0, false, isPlayer);
			animation.add('kapi-angry', [444], 0, false, isPlayer);
			animation.add('qt-kb', [445], 0, false, isPlayer);
			animation.add('duet-sm', [446, 447], 0, false, isPlayer);
			animation.add('parents-christmas-angel', [448, 449], 0, false, isPlayer);
			animation.add('shaggy-matt', [450, 451], 0, false, isPlayer);
			animation.add('mia-bana', [452, 453], 0, false, isPlayer);
			animation.add('garcello-annie', [454, 455], 0, false, isPlayer);
			animation.add('tord-tom', [456, 457], 0, false, isPlayer);
			animation.add('edd-matt', [458, 459], 0, false, isPlayer);
			animation.add('calli-mad-alpha', [460], 0, false, isPlayer);
			animation.add('calli-sad-alpha', [461], 0, false, isPlayer);
			animation.add('bf-aloe-old', [462, 463], 0, false, isPlayer);
			animation.add('mia-old', [464, 465], 0, false, isPlayer);
			animation.add('mia-wire-old', [466, 467], 0, false, isPlayer);
			animation.add('hd-monika-old', [468, 469], 0, false, isPlayer);
			animation.add('hd-monika-angry-old', [470, 471], 0, false, isPlayer);
			animation.add('sunday-old', [472, 473], 0, false, isPlayer);
			animation.add('blantad-bside', [476, 477], 0, false, isPlayer);
			animation.add('hd-senpai-bside', [478, 479], 0, false, isPlayer);
			animation.add('zardy-cablecrow', [480, 481], 0, false, isPlayer);
			animation.add('tabi-agoti', [482, 483], 0, false, isPlayer);
			animation.add('cesar-rosie', [484, 485], 0, false, isPlayer);
			animation.add('exe-maijin', [486, 487], 0, false, isPlayer);
			animation.add('exe', [488, 489], 0, false, isPlayer);
			animation.add('maijin', [490, 491], 0, false, isPlayer);
			animation.add('cablecrow', [492, 493], 0, false, isPlayer);
			animation.add('bb-tired-blue', [494], 0, false, isPlayer);
			animation.add('bf-blue', [495], 0, false, isPlayer);
			animation.add('sayori-blue', [496, 497], 0, false, isPlayer);
			
			animation.play(char);

			if (animation.curAnim == null) {
				trace('its returning null!!! NOOOOOOOOOOO');
				animation.add(char, [10, 11], 0, false, isPlayer);
				animation.play(char);
		}}
		
		switch(char)
		{
			case 'bf-pixel' | 'bf-pixeld4' | 'bf-pixeld4BSide' |'senpai' | 'senpai-angry' | 'senpai-giddy' |'spirit' | 'bf-gf-pixel' | 'monika' | 'monika-angry':
				antialiasing = false;
		}

		scrollFactor.set();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}

	public function swapOldIcon() {
		if(isOldIcon = !isOldIcon) changeIcon('bf-old');
		else changeIcon('bf');
	}

	private var iconOffsets:Array<Float> = [0, 0];
	public function changeIcon(char:String) {
		if(this.char != char) {
			var name:String = 'icons/psych/' + char;
			if(!Paths.fileExists('images/' + name + '.png', IMAGE)) name = 'icons/psych/icon-' + char; //Older versions of psych engine's support
			if(!Paths.fileExists('images/' + name + '.png', IMAGE)) name = 'icons/psych/icon-dave'; //Prevents crash from missing icon
			trace('images/' + name + '.png');
			var file:Dynamic = Paths.image(name);

			loadGraphic(file); //Load stupidly first for getting the file size
			loadGraphic(file, true, Math.floor(width / 2), Math.floor(height)); //Then load it fr
			iconOffsets[0] = (width - 150) / 2;
			iconOffsets[1] = (width - 150) / 2;
			updateHitbox();

			animation.add(char, [0, 1], 0, false, isPlayer);
			animation.play(char);
			this.char = char;

			antialiasing = FlxG.save.data.globalAntialiasing;
			if(char.endsWith('-pixel')) {
				antialiasing = false;
			}
		}
	}

	override function updateHitbox()
	{
		super.updateHitbox();
		offset.x = iconOffsets[0];
		offset.y = iconOffsets[1];
	}

	public function getCharacter():String {
		return char;
	}
}