package interealmGames.color.rgba.composer;

import interealmGames.color.Composer;
import interealmGames.common.math.Rounding;
import interealmGames.color.rgba.Color;
import interealmGames.color.rgba.composer.Hex3Composer;
import interealmGames.color.rgba.composer.Hex6Composer;
import StringTools;

/*
 * Composes a color to the #FFFFFF format and will use the #FFF format where possible
 * @TODO handle alpha
 */
class HexComposer implements Composer<Color> {
	/** Handles #FFFFFF composing */
	var hex6Composer:Hex6Composer;

	public function new () {
		this.hex6Composer = new Hex6Composer();
	}

	/**
	 * Checks if a six digit hex can be converted to three digit
	 * @param hex The 6 character hex string to evaluate
	 * @return Whether it can be collapse to 3 characters
	 */
	public function canBeCollapsed(hex:String):Bool {
		var offset = hex.charAt(0) == '#' ? 1 : 0;
		return hex.charAt(0 + offset) == hex.charAt(1 + offset)
			&& hex.charAt(2 + offset) == hex.charAt(3 + offset)
			&& hex.charAt(4 + offset) == hex.charAt(5 + offset);
	}

	/**
	 * Converts the color to a string
	 * @param color The color to be composed
	 * @return The formatted color
	 */
	public function compose(color:Color):String {
		var hex = this.hex6Composer.compose(color);
		if(this.canBeCollapsed(hex)) {
			hex = '#' + hex.charAt(1) + hex.charAt(3) + hex.charAt(5);
		}

		return hex;
	}
}
