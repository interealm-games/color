package interealmGames.color.rgba.composer;


import utest.Assert;
import utest.Async;
import interealmGames.color.rgba.composer.Hex6Composer;

class Hex6ComposerTest extends utest.Test {
	var composer = new Hex6Composer();

	function testComposition() {
		var color = new Color(31, 133, 222, 1);
		Assert.equals(
			"#1F85DE",
			composer.compose(color)
		);
	}
}
