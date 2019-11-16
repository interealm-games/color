package interealmGames.color.rgba.composer;

using interealmGames.common.math.MathExtension;

import interealmGames.color.Composer;
import interealmGames.common.math.Rounding;
import interealmGames.color.rgba.Color;
import StringTools;

/*
 * @TODO handle alpha
 */
class RgbaComposer implements Composer<Color> {
	var precision:Int;
	var rounding:Null<Rounding>;

	public function new (precision:Int = 0, rounding:Null<Rounding> = null) {
		this.precision = precision;
		this.rounding = rounding;
	}

	/**
	 * Converts the color to a string
	 * @param color The color to be composed
	 * @return The formatted color
	 */
	public function compose(color:Color):String {
		var alpha = this.rounding == null 
			? color.alpha 
			: Math.roundTo(color.alpha, this.precision, this.rounding);
		return "rgb(" + color.red + ", "
			+ color.green + ", "
			+ color.blue + ", "
			+ alpha + ")";
	}
}
