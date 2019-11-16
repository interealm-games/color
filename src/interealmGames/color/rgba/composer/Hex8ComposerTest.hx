package interealmGames.color.rgba.composer;


import utest.Assert;
import utest.Async;
import interealmGames.color.rgba.composer.Hex8Composer;

class Hex8ComposerTest extends utest.Test {
	var beforeComposer = new Hex8Composer(true);
	var afterComposer = new Hex8Composer();

	function testBeforeComposition() {
		var color = new Color(31, 133, 222, 1);
		Assert.equals(
			"#FF1F85DE",
			beforeComposer.compose(color)
		);
	}

	function testAfterComposition() {
		var color = new Color(31, 133, 222, 1);
		Assert.equals(
			"#1F85DEFF",
			afterComposer.compose(color)
		);
		var color2 = new Color(31, 133, 222, 0.5);
		Assert.equals(
			"#1F85DE80",
			afterComposer.compose(color2)
		);
	}
}
