package interealmGames.color.rgba.parser;

import utest.Assert;
import utest.Async;
import interealmGames.color.rgba.parser.Hex6Parser;

class Hex6ParserTest extends utest.Test {
	var parser = new Hex6Parser();

	function testParse() {
        var colorString = "#1F85DE";
		var expected = new Color(31, 133, 222, 1);
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
