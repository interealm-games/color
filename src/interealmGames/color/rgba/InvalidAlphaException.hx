package interealmGames.color.rgba;

import haxe.Exception;

class InvalidAlphaException extends Exception {
	public function new(value:Float) {
		super('Invalid "alpha" value "$value"');
	}
}
