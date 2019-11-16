package interealmGames.color.rgba;

import haxe.Exception;

/**
 * Indicates that a colors rgb value is out of range
 */
class InvalidValueException extends Exception {
	public function new(name:String, value:Int) {
		super('Invalid "$name" value "$value"');
	}
}
