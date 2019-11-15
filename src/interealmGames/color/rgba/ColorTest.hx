package interealmGames.color.rgba;

import utest.Assert;
import utest.Async;

class ColorTest extends utest.Test {
	var invalid256:Array<Int> = [-1, 256, 3000];
	var invalidAlpha:Array<Float> = [-0.1, 1.00001]; 

//   //synchronous setup
//   public function setup() {
//	 field = "some";
//   }

	function testValidation() {
		for(value in this.invalid256) {
			// Test invalid red
			Assert.raises(function() {
				var color = new Color(0, 0, 0, 1);
				color.red = value;
				color.validate();
			}, InvalidValueException);

			// Test invalid green
			Assert.raises(function() {
				var color = new Color(0, 0, 0, 1);
				color.green = value;
				color.validate();
			}, InvalidValueException);

			// Test invalid blue
			Assert.raises(function() {
				var color = new Color(0, 0, 0, 1);
				color.blue = value;
				color.validate();
			}, InvalidValueException);
		}

		for(value in this.invalidAlpha) {
			// Test invalid alpha
			Assert.raises(function() {
				var color = new Color(0, 0, 0, 1);
				color.alpha = value;
				color.validate();
			}, InvalidValueException);
		}
	}

//   function specField() {
//	 field.charAt(0) == 's';
//	 field.length > 3;
//   }
}

