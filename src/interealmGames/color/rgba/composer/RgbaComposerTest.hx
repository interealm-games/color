package interealmGames.color.rgba.composer;


import utest.Assert;
import utest.Async;
import interealmGames.common.math.Rounding;
import interealmGames.color.rgba.composer.RgbaComposer;

class RgbaComposerTest extends utest.Test {
	var composer = new RgbaComposer(2, Rounding.NearestUp);

	function testBasicComposition() {
		var color = new Color(136, 170, 17, 1);
		Assert.equals(
			"rgb(136, 170, 17, 1)",
			composer.compose(color)
		);

		var color = new Color(136, 170, 17, 0.5555555);
		Assert.equals(
			"rgb(136, 170, 17, 0.56)",
			composer.compose(color)
		);
	}
}
