package interealmGames.color.rgba.parser;

import utest.Assert;
import utest.Async;
import interealmGames.color.rgba.parser.Hex3Parser;

class Hex3ParserTest extends utest.Test {
	var parser = new Hex3Parser();

	function testParse() {
		var colorString = "#28D";
		var expected = new Color(34, 136, 221, 1);
		var actual = this.parser.parse(colorString);
		Assert.equals(
			expected.red,
			actual.red
		);
		Assert.equals(
			expected.blue,
			actual.blue
		);
		Assert.equals(
			expected.green,
			actual.green
		);
		Assert.equals(
			expected.alpha,
			actual.alpha
		);
	}
}
