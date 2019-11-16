package interealmGames.color.rgba.composer;

import interealmGames.color.Composer;
import interealmGames.color.rgba.Color;
import StringTools;
/*
 * Composes a color to the #FFFFFF format
 * @TODO handle alpha
 */
class Hex8Composer implements Composer<Color> {
	var isAlphaBefore:Bool;
	public function new (isAlphaBefore:Bool = false) {
		this.isAlphaBefore = isAlphaBefore;
	}

	/**
	 * Converts the color to a string
	 * @param color The color to be composed
	 * @return The formatted color
	 */
	public function compose(color:Color):String {
		var alpha = Math.round(color.alpha * 255);
		var alphaString = StringTools.hex(alpha, 2);
		var colorString = 
			StringTools.hex(color.red, 2)
			+ StringTools.hex(color.green, 2)
			+ StringTools.hex(color.blue, 2);
		colorString = this.isAlphaBefore
			? alphaString + colorString
			: colorString + alphaString;
		return ("#" + colorString).toUpperCase();
	}
}
