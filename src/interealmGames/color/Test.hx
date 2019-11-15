package interealmGames.color;

import utest.Runner;
import utest.ui.Report;
import interealmGames.color.rgba.ColorTest;
import interealmGames.color.rgba.composer.HexComposerTest;
import interealmGames.color.rgba.composer.Hex3ComposerTest;
import interealmGames.color.rgba.composer.Hex6ComposerTest;
import interealmGames.color.rgba.composer.RgbComposerTest;
import interealmGames.color.rgba.composer.RgbaComposerTest;
import interealmGames.color.rgba.parser.Hex3ParserTest;

class Test {
	public static function main() {
		var runner = new Runner();
		runner.addCase(new ColorTest());
		runner.addCase(new HexComposerTest());
		runner.addCase(new Hex3ComposerTest());
		runner.addCase(new Hex6ComposerTest());
		runner.addCase(new RgbComposerTest());
		runner.addCase(new RgbaComposerTest());
		runner.addCase(new Hex3ParserTest());
		Report.create(runner);
		runner.run();
	}
}
