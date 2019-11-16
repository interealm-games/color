package interealmGames.color.rgba.parser;

import utest.Assert;
import utest.Async;
import interealmGames.color.rgba.parser.RgbParser;

class RgbParserTest extends utest.Test {
	var parser = new RgbParser();

	private function _test(colorString, expected) {
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

	function testParse() {
		var expected = new Color(31, 133, 222, 1);
		this._test("rgb(31,133,222)", expected);
		this._test("rgb(31, 133,222)", expected);
		this._test("rgb(31, 133, 222)", expected);
		this._test("(31,133,222)", expected);
		this._test("31, 133, 222", expected);
	}
}
