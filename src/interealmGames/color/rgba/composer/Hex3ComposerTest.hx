package interealmGames.color.rgba.composer;

import utest.Assert;
import utest.Async;
import interealmGames.common.math.Rounding;
import interealmGames.color.rgba.composer.Hex3Composer;

class Hex3ComposerTest extends utest.Test {
	var ceilComposer = new Hex3Composer(Rounding.Ceil);
	var floorComposer = new Hex3Composer(Rounding.Floor);
	var nearestComposer = new Hex3Composer(Rounding.NearestUp);

	function testCeilComposition() {
		var color = new Color(31, 133, 222, 1);
		Assert.equals(
			"#29E",
			ceilComposer.compose(color)
		);
	}

	function testFloorComposition() {
		var color = new Color(31, 133, 222, 1);
		Assert.equals(
			"#18D",
			floorComposer.compose(color)
		);
	}

	function testNearestComposition() {
		var color = new Color(31, 133, 222, 1);
		Assert.equals(
			"#28E",
			nearestComposer.compose(color)
		);
	}
}
