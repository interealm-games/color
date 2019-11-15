package interealmGames.color.rgba.composer;


import utest.Assert;
import utest.Async;
import interealmGames.common.math.Rounding;
import interealmGames.color.rgba.composer.RgbComposer;

class RgbComposerTest extends utest.Test {
	var composer = new RgbComposer();

	function testCollapseComposition() {
		var color = new Color(136, 170, 17, 1);
		Assert.equals(
			"rgb(136, 170, 17)",
			composer.compose(color)
		);
	}
}
