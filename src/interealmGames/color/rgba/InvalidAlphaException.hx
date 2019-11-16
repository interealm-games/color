package interealmGames.color.rgba;

import haxe.Exception;

/**
 * Indicates that a colors alpha value is out of range
 */
class InvalidAlphaException extends Exception {
	public function new(value:Float) {
		super('Invalid "alpha" value "$value"');
	}
}
