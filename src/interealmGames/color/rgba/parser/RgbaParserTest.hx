package interealmGames.color.rgba.parser;

import utest.Assert;
import utest.Async;
import interealmGames.color.rgba.parser.RgbaParser;

class RgbaParserTest extends utest.Test {
	var parser = new RgbaParser();

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
		this._test("rgb(31,133,222,1)", new Color(31, 133, 222, 1));
        this._test("rgb(31, 133,222,0.1)", new Color(31, 133, 222, 0.1));
        this._test("rgb(31, 133, 222, 0.05)", new Color(31, 133, 222, 0.05));
        this._test("(31,133,222, .5)", new Color(31, 133, 222, 0.5));
        this._test("31, 133, 222, .65", new Color(31, 133, 222, 0.65));
	}
}
