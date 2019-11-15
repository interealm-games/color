package interealmGames.color.rgba.composer;


import utest.Assert;
import utest.Async;
import interealmGames.common.math.Rounding;
import interealmGames.color.rgba.composer.HexComposer;

class HexComposerTest extends utest.Test {
	var composer = new HexComposer();

	function testCollapseComposition() {
		var color = new Color(136, 170, 17, 1);
		Assert.equals(
			"#8A1",
			composer.compose(color)
		);
	}
}
