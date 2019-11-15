package interealmGames.color.rgba.composer;

import interealmGames.color.Composer;
import interealmGames.color.rgba.Color;
import StringTools;
/*
 * Composes a color to the #FFFFFF format
 * @TODO handle alpha
 */
class Hex6Composer implements Composer<Color> {
	public function new () {}

	/**
	 * Converts the color to a string
	 * @param color The color to be composed
	 * @return The formatted color
	 */
	public function compose(color:Color):String {
		return ("#" + StringTools.hex(color.red, 2)
			+ StringTools.hex(color.green, 2)
			+ StringTools.hex(color.blue, 2)).toUpperCase();
	}
}
