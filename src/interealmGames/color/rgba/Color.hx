package interealmGames.color.rgba;

import interealmGames.color.Color in ColorBase;
import interealmGames.color.rgba.InvalidAlphaException;
import interealmGames.color.rgba.InvalidValueException;

class Color extends ColorBase {
	public var red:Int;
	public var green:Int;
	public var blue:Int;
	public var alpha:Float;

	public function new(r:Int, g:Int, b:Int, a:Float) {
		this.red = r;
		this.green = g;
		this.blue = b;
		this.alpha = a;
		this.validate();
	}

	public function validate(): Void {
		if(!this.isValidValue(this.red)) {
			throw new InvalidValueException('red', this.red);
		}

		if(!this.isValidValue(this.green)) {
			throw new InvalidValueException('green', this.green);
		}

		if(!this.isValidValue(this.blue)) {
			throw new InvalidValueException('blue', this.blue);
		}

		if(!this.isValidAlpha(this.alpha)) {
			throw new InvalidAlphaException(this.alpha);
		}
	}

	private function isValidAlpha(value:Float): Bool {
		return value >=0 && value <= 1;
	}

	private function isValidValue(value:Int): Bool {
		return value >=0 && value < 256;
	}
}
