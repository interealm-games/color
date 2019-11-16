package interealmGames.color.rgba;

import haxe.Exception;

/**
 * Indicates that a colors alpha value is out of range
 */
class UnknownFormatException extends Exception {
	public function new(colorString:String) {
		super('Unknown color format in string "$colorString"');
	}
}
