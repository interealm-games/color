package interealmGames.color.rgba.composer;

import interealmGames.color.Composer;
import interealmGames.color.rgba.Color;
import StringTools;

/*
 * @TODO handle alpha
 */
class RgbComposer implements Composer<Color> {
	public function new () {}

	public function compose(color:Color):String {
		return "rgb(" + color.red + ", "
			+ color.green + ", "
			+ color.blue + ")";
	}
}
