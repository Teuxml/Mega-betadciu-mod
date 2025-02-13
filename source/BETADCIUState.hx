package;

import flash.text.TextField;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.display.FlxGridOverlay;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.math.FlxMath;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.utils.Assets;
import flixel.effects.FlxFlicker;
import flixel.tweens.FlxTween;
import flixel.addons.ui.FlxInputText;

#if desktop
import Discord.DiscordClient;
#end

using StringTools;

class BETADCIUState extends MusicBeatState
{
	var songs:Array<SongMetadata2> = [];

	var selector:FlxText;
	var curSelected:Int = 0;
	var curDifficulty:Int = 2;

	var scoreText:FlxText;
	var enterText:FlxText;
	var diffText:FlxText;
	var comboText:FlxText;
	var passwordText:FlxInputText;
	var lerpScore:Int = 0;
	var intendedScore:Int = 0;
	var combo:String = '';

	private var grpSongs:FlxTypedGroup<Alphabet>;
	private var curPlaying:Bool = false;
	public static var downscroll:Bool = false;
	public static var inMain:Bool = true;
	public static var canMove:Bool = true;
	var extras:FlxSprite;
	var blackScreen:FlxSprite;

	var bg:FlxSprite = new FlxSprite().loadGraphic(Paths.image('menuDesat'));
	public static var bgcol:FlxColor = 0xFFFFFFFF;
	public static var bgcoldown:FlxColor = 0xFFFFFFFF;
	public static var bgcolup:FlxColor = 0xFFFFFFFF;

	private var iconArray:Array<HealthIcon> = [];

	override function create()
	{
		if (FlxG.sound.music.volume == 0 || !FlxG.sound.music.playing)
		{
			FlxG.sound.music.volume = 1;
			FlxG.sound.playMusic(Paths.music('freakyMenu'));
		}

		 #if desktop
		 // Updating Discord Rich Presence
		 DiscordClient.changePresence("In BETADCIU Menu", null);
		 #end

		var isDebug:Bool = false;

		FlxG.mouse.visible = true;
		inMain = true;
		canMove = true;

		#if debug
		isDebug = true;
		#end

			addWeek(['Ugh', 'Guns', 'Animal'], 1, ['tankman', 'tankman', 'drunk-annie']);
			addWeek(['Nerves', 'Manifest', 'Roses-Remix'], 2, ['garcello', 'sky-mad', 'senpai-giddy']);
			addWeek(['Takeover', 'Hands'], 3, ['demoncass', 'coco-car']);
			addWeek(['Cosmic', 'Storm', 'Haachama'], 5, ['kou', 'annie-bw', 'haachama']);

		// LOAD MUSIC

		// LOAD CHARACTERS

		bg.scrollFactor.x = 0;
		bg.color = bgcol;
		add(bg);

	//	FlxTween.color(bg, 0.5, bgcol, bgcolup);

		grpSongs = new FlxTypedGroup<Alphabet>();
		add(grpSongs);

		for (i in 0...songs.length)
		{
			var songText:Alphabet = new Alphabet(0, (70 * i) + 30, songs[i].songName, true, false);
			songText.isMenuItem = true;
			songText.targetY = i;
			grpSongs.add(songText);

			var icon:HealthIcon = new HealthIcon(songs[i].songCharacter);
			icon.sprTracker = songText;

			// using a FlxGroup is too much fuss!
			iconArray.push(icon);
			add(icon);

			// songText.x += 40;
			// DONT PUT X IN THE FIRST PARAMETER OF new ALPHABET() !!
			// songText.screenCenter(X);
		}

		scoreText = new FlxText(FlxG.width * 0.7, 5, 0, "", 32);
		// scoreText.autoSize = false;
		scoreText.setFormat(Paths.font("vcr.ttf"), 32, FlxColor.WHITE, RIGHT);
		// scoreText.alignment = RIGHT;

		var scoreBG:FlxSprite = new FlxSprite(scoreText.x - 6, 0).makeGraphic(Std.int(FlxG.width * 0.35), 66, 0xFF000000);
		scoreBG.alpha = 0.6;
		add(scoreBG);

		diffText = new FlxText(scoreText.x, scoreText.y + 36, 0, "", 24);
		diffText.font = scoreText.font;
		add(diffText);

		comboText = new FlxText(diffText.x + 100, diffText.y, 0, "", 24);
		comboText.font = diffText.font;
		add(comboText);

		add(scoreText);

		changeSelection();

		extras = new FlxSprite(scoreText.x + 50, 600).loadGraphic(Paths.image('extras', 'shared'), true, 360, 110);
		extras.animation.add('idle', [0]);
		extras.animation.add('hover', [1]);
		extras.scrollFactor.set();
		extras.setGraphicSize(Std.int(extras.width * 0.8));
		extras.updateHitbox();
		add(extras);

		blackScreen = new FlxSprite(-100, -100).makeGraphic(Std.int(FlxG.width * 0.5), Std.int(FlxG.height * 0.5), FlxColor.BLACK);
		blackScreen.screenCenter();
		blackScreen.scrollFactor.set();
		blackScreen.visible = false;
		add(blackScreen);

		enterText = new FlxText(0, 0, 0, "Enter Password:", 48);
		enterText.setFormat('Pixel Arial 11 Bold', 48, FlxColor.WHITE, CENTER);
		enterText.screenCenter();
		enterText.y -= 100;
		enterText.visible = false;
		add(enterText);

		passwordText = new FlxInputText(0, 300, 550, '', 36, FlxColor.WHITE, FlxColor.BLACK);
		passwordText.fieldBorderColor = FlxColor.WHITE;
		passwordText.fieldBorderThickness = 3;
		passwordText.maxLength = 20;
		passwordText.screenCenter(X);
		passwordText.y += 75;
		passwordText.visible = false;
		add(passwordText);

		// FlxG.sound.playMusic(Paths.music('title'), 0);
		// FlxG.sound.music.fadeIn(2, 0, 0.8);
		selector = new FlxText();

		selector.size = 40;
		selector.text = ">";
		// add(selector);

		var swag:Alphabet = new Alphabet(1, 0, "swag");

		// JUST DOIN THIS SHIT FOR TESTING!!!
		/* 
			var md:String = Markdown.markdownToHtml(Assets.getText('CHANGELOG.md'));

			var texFel:TextField = new TextField();
			texFel.width = FlxG.width;
			texFel.height = FlxG.height;
			// texFel.
			texFel.htmlText = md;

			FlxG.stage.addChild(texFel);

			// scoreText.textField.htmlText = md;

			trace(md);
		 */



		super.create();
	}

	public function addSong(songName:String, weekNum:Int, songCharacter:String)
	{
		songs.push(new SongMetadata2(songName, weekNum, songCharacter));
	}

	public function addWeek(songs:Array<String>, weekNum:Int, ?songCharacters:Array<String>)
	{
		if (songCharacters == null)
			songCharacters = ['bf'];

		var num:Int = 0;
		for (song in songs)
		{
			addSong(song, weekNum, songCharacters[num]);

			if (songCharacters.length != 1)
				num++;
		}
	}

	function isOnBtt(xx:Float, yy:Float, dis:Float)
	{
		var xDis = xx - FlxG.mouse.x;
		var yDis = yy - FlxG.mouse.y;
		if (Math.sqrt(Math.pow(xDis, 2) + Math.pow(yDis, 2)) < dis)
		{
			return(true);
		}
		else return(false);
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (FlxG.sound.music.volume < 0.7)
		{
			FlxG.sound.music.volume += 0.5 * FlxG.elapsed;
		}

		if (isOnBtt(extras.getMidpoint().x, extras.getMidpoint().y, 150))
		{
			extras.animation.play('hover');
			if (FlxG.mouse.justPressed)
			{
				blackScreen.visible = true;
				enterText.visible = true;
				passwordText.visible = true;
				canMove = false;
			}
		}
		else if (!isOnBtt(extras.getMidpoint().x, extras.getMidpoint().y, 150))
		{
			extras.animation.play('idle');
		}

		if (passwordText.visible == true)
			inMain = false;

		lerpScore = Math.floor(FlxMath.lerp(lerpScore, intendedScore, 0.4));

		if (Math.abs(lerpScore - intendedScore) <= 10)
			lerpScore = intendedScore;

		scoreText.text = "PERSONAL BEST:" + lerpScore;
		comboText.text = combo + '\n';

		var upP = controls.UP_P;
		var downP = controls.DOWN_P;
		var accepted = controls.ACCEPT;

		if (upP && inMain && canMove)
		{
			changeSelection(-1);
		}
		if (downP && inMain && canMove)
		{
			changeSelection(1);
		}

		if (controls.BACK && inMain && canMove)
		{
			FlxG.switchState(new MainMenuState());
		}

		if (accepted && inMain && canMove)
		{
			var poop:String = Highscore.formatSong(songs[curSelected].songName.toLowerCase(), curDifficulty);

			trace(poop);

			PlayState.SONG = Song.loadFromJson(poop, songs[curSelected].songName.toLowerCase());
			PlayState.isStoryMode = false;
			PlayState.isBETADCIU = true;
			PlayState.isBonus = false;
			PlayState.storyDifficulty = curDifficulty;
			canMove = false;
			
			PlayState.storyWeek = songs[curSelected].week;
			trace('CUR WEEK' + PlayState.storyWeek);
			var llll = FlxG.sound.play(Paths.sound('confirmMenu')).length;
			grpSongs.forEach(function(e:Alphabet){
				if (e.text != songs[curSelected].songName){
					FlxTween.tween(e, {x: -6000}, llll / 1000,{onComplete:function(e:FlxTween){
					
						if (FlxG.keys.pressed.ALT){
							FlxG.switchState(new ChartingState());
						}else{
							LoadingState.loadAndSwitchState(new PlayState());
						}
					}});
				}else{
					FlxFlicker.flicker(e);
					trace(curSelected);
					FlxTween.tween(e, {x: e.x + 20}, llll/1000);
				}	
			});
		}

		if (FlxG.keys.justPressed.ESCAPE && !inMain)
		{
			blackScreen.visible = false;
			enterText.visible = false;
			passwordText.visible = false;
			passwordText.text = '';
			inMain = true;
			canMove = true;
		}		

		if (passwordText.text == 'dont overwork' && FlxG.keys.justPressed.ENTER)
		{
			FlxG.sound.music.stop();
			FlxG.switchState(new BETADCIUSecretState());
			FlxG.sound.play(Paths.sound('ANGRY_TEXT_BOX', 'shared'));
			Main.isHidden = true;
		} 	
		else if (passwordText.text != 'dont overwork' && FlxG.keys.justPressed.ENTER && !inMain)
		{
			FlxG.sound.play(Paths.soundRandom('missnote', 1, 3, 'shared'));
			passwordText.text = '';
		}

		#if !switch
		intendedScore = Highscore.getScore(songs[curSelected].songName, curDifficulty);
		combo = Highscore.getCombo(songs[curSelected].songName, curDifficulty);
		#end

		switch (curDifficulty)
		{
			case 0:
				diffText.text = "EASY";
			case 1:
				diffText.text = 'NORMAL';
			case 2:
				diffText.text = "HARD";
		}
	}

	function changeSelection(change:Int = 0)
	{
		#if !switch
		// NGio.logEvent('Fresh');
		#end

		// NGio.logEvent('Fresh');
		FlxG.sound.play(Paths.sound('scrollMenu'), 0.4);

		curSelected += change;

		if (curSelected < 0)
			curSelected = songs.length - 1;
		if (curSelected >= songs.length)
			curSelected = 0;

		// selector.y = (70 * curSelected) + 30;

		#if !switch
		intendedScore = Highscore.getScore(songs[curSelected].songName, curDifficulty);
		combo = Highscore.getCombo(songs[curSelected].songName, curDifficulty);
		// lerpScore = 0;
		#end

		var bullShit:Int = 0;

		for (i in 0...iconArray.length)
		{
			iconArray[i].alpha = 0.6;
		}

		iconArray[curSelected].alpha = 1;

		for (item in grpSongs.members)
		{
			item.targetY = bullShit - curSelected;
			bullShit++;

			item.alpha = 0.6;
			// item.setGraphicSize(Std.int(item.width * 0.8));

			if (item.targetY == 0)
			{
				item.alpha = 1;
				// item.setGraphicSize(Std.int(item.width));
			}
		}
	}
}

class SongMetadata2
{
	public var songName:String = "";
	public var week:Int = 0;
	public var songCharacter:String = "";

	public function new(song:String, week:Int, songCharacter:String)
	{
		this.songName = song;
		this.week = week;
		this.songCharacter = songCharacter;
	}
}
