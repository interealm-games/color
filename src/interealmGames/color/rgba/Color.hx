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

	/**
	 * Validates whether the Color values are in the appropriate range
	 * @return Whether it is valid
	 */
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

	/**
	 * Validates whether the alpha value is in the appropriate 0-1 range
	 * @param value The value to check
	 * @return Whether it is valid
	 */
	private function isValidAlpha(value:Float): Bool {
		return value >=0 && value <= 1;
	}

	/**
	 * Validates whether the Color value is in the appropriate 255 range
	 * @param value The value to check
	 * @return Whether it is valid
	 */
	private function isValidValue(value:Int): Bool {
		return value >=0 && value < 256;
	}
}
