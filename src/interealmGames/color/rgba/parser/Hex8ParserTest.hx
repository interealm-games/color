package interealmGames.color.rgba.parser;

using interealmGames.common.math.MathExtension;

import utest.Assert;
import utest.Async;
import interealmGames.color.rgba.Color;
import interealmGames.color.rgba.parser.Hex8Parser;

typedef Hex8Test = {
    expected:Color,
    input:String
}

class Hex8ParserTest extends utest.Test {
	var beforeParser = new Hex8Parser(true);
	var afterParser = new Hex8Parser();

    private function _test(parser:Hex8Parser, test:Hex8Test) {
        var actual = parser.parse(test.input);
		Assert.equals(
			test.expected.red,
			actual.red
		);
		Assert.equals(
			test.expected.blue,
			actual.blue
		);
		Assert.equals(
			test.expected.green,
			actual.green
		);
		Assert.equals(
			test.expected.alpha,
			Math.roundTo(actual.alpha, 1)
		);
    }

	function testParseBefore() {
        var tests:Array<Hex8Test> = [{
            expected: new Color(31, 133, 222, 1),
            input: "#FF1F85DE"
        }];
        for(test in tests) {
            this._test(this.beforeParser, test);
        }
	}

	function testParseAfter() {
        var tests:Array<Hex8Test> = [{
            expected: new Color(31, 133, 222, 1),
            input: "#1F85DEFF"
        }, {
            expected: new Color(31, 133, 222, 0.5),
            input: "#1F85DE80"
        }];
        for(test in tests) {
            this._test(this.afterParser, test);
        }
	}
}
