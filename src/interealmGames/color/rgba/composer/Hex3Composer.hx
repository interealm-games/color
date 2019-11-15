package interealmGames.color.rgba.composer;

import interealmGames.color.Composer;
import interealmGames.common.math.Rounding;
import interealmGames.color.rgba.Color;
import StringTools;

/*
 * Composes a color to the #FFF format
 * @TODO handle alpha
 */
class Hex3Composer implements Composer<Color> {
	/** Rounding Strategies that always go up */
	static private var CEIL = [
		Rounding.Ceil,
		Rounding.CeilAbsolute
	];
	/** Rounding Strategies that round down */
	static private var ROUND_DOWN = [
		Rounding.NearestDown,
		Rounding.NearestTowardsZero
	];
	/** Rounding Strategies that round up */
	static private var ROUND_UP = [
		Rounding.NearestAwayFromZero,
		Rounding.NearestUp
	];

	/** The rounding strategy this composer uses */
	var rounding:Rounding;

	public function new (rounding:Rounding = Rounding.NearestUp) {
		this.rounding = rounding;
	}

	/**
	 * Converts the color to a string
	 * @param color The color to be composed
	 * @return The formatted color
	 */
	public function compose(color:Color):String {
		return ("#" + this.round(color.red)
			+ this.round(color.green)
			+ this.round(color.blue)).toUpperCase();
	}

	/** Maps from [0, 255] to [0, 15] 
	 * @param value The value to map, [0, 255]
	 * @return The [0,15] value
	 */
	private function round(value:Int) {
		var quotient = Math.floor(value/16);
		var remainder = value%16;
		if(Hex3Composer.CEIL.indexOf(this.rounding) > -1 && remainder != 0) {
			quotient++;
		} else if(Hex3Composer.ROUND_UP.indexOf(this.rounding) > -1 && remainder >= 8) {
			quotient++;
		} else if(Hex3Composer.ROUND_DOWN.indexOf(this.rounding) > -1 && remainder > 8) {
			quotient++;
		}
		// Floors do not need to change the quotient

		return StringTools.hex(quotient, 1);
	}
}
