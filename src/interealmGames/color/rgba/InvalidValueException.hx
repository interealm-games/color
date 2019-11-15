package interealmGames.color.rgba;

import haxe.Exception;

class InvalidValueException extends Exception {
	public function new(name:String, value:Int) {
		super('Invalid "$name" value "$value"');
	}
}
