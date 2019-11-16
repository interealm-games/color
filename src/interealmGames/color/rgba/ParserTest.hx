package interealmGames.color.rgba;

using interealmGames.common.math.MathExtension;

import utest.Assert;
import utest.Async;
import interealmGames.color.rgba.Color;
import interealmGames.color.rgba.Parser;
import interealmGames.common.test.TestCase;

class ParserTest extends utest.Test {
	var parser:Parser = new Parser();

	function testKnown() {
		var tests:Array<TestCase<String, Color>> = [{
			input: "#28D",
			expected: new Color(34, 136, 221, 1),
		}, {
			input: "#1F85DE",
			expected: new Color(31, 133, 222, 1),
		}, {
			input: "#1F85DEFF",
			expected: new Color(31, 133, 222, 1),
		}, {
			input: "#1F85DE80",
			expected: new Color(31, 133, 222, 0.5),
		}, {
			input: "rgba(31,133,222,1)",
			expected: new Color(31, 133, 222, 1),
		}, {
			input: "rgba(31, 133,222,0.1)",
			expected: new Color(31, 133, 222, 0.1),
		}, {
			input: "rgba(31, 133, 222, 0.05)",
			expected: new Color(31, 133, 222, 0.05),
		}, {
			input: "(31,133,222, .5)",
			expected: new Color(31, 133, 222, 0.5),
		}, {
			input: "31, 133, 222, .65",
			expected: new Color(31, 133, 222, 0.65),
		}, {
			input: "rgb(31,133,222)",
			expected: new Color(31, 133, 222, 1),
		}, {
			input: "rgb(31, 133,222)",
			expected: new Color(31, 133, 222, 1),
		}, {
			input: "rgb(31, 133, 222)",
			expected: new Color(31, 133, 222, 1),
		}, {
			input: "(31,133,222)",
			expected: new Color(31, 133, 222, 1),
		}, {
			input: "31, 133, 222",
			expected: new Color(31, 133, 222, 1),
		}];
		for(test in tests) {
			var color = this.parser.parse(test.input);
			Assert.equals(test.expected.red, color.red);
			Assert.equals(test.expected.green, color.green);
			Assert.equals(test.expected.blue, color.blue);
			Assert.equals(test.expected.alpha, Math.roundTo(color.alpha, 2));
		}
	}

	function testUnknown() {
		var unknowns:Array<String> = [
			"not a color",
			"hsl(0, 100%, 50%)",
			"#45BCE21"
		];
		for(unknown in unknowns) {
			Assert.raises(function() {
				var color = this.parser.parse(unknown);
			}, UnknownFormatException);
		}
	}
}
