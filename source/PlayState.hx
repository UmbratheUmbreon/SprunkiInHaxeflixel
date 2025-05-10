package;

import flixel.FlxCamera;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.util.FlxColor;

class PlayState extends FlxState
{
	var hudCam:FlxCamera;

	override public function create()
	{
		super.create();
		FlxG.camera.zoom = 1;
		hudCam = new FlxCamera();
		hudCam.bgColor.alpha = 0;
		hudCam.zoom = 1;
		FlxG.cameras.add(hudCam, false);
		var lowerBar:FlxSprite = new FlxSprite(0, 0).makeGraphic(1280, 185, 0xff202020, false);
		lowerBar.screenCenter(XY);
		lowerBar.y = FlxG.height - lowerBar.height;
		lowerBar.cameras = [hudCam];
		add(lowerBar);

		var upperBar:FlxSprite = new FlxSprite(0, 0).makeGraphic(1280, 100, 0xff202020, false);
		upperBar.screenCenter(X);
		upperBar.cameras = [hudCam];
		add(upperBar);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
