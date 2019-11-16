package interealmGames.color;

import utest.Assert;
import utest.Async;
import interealmGames.color.Format;
import interealmGames.color.FormatIdentifier;

class FormatIdentifierTest extends utest.Test {
    var identifier = new FormatIdentifier();

    public function testHex3() {
        Assert.equals(
			Format.Hex3,
			this.identifier.identify("#4BD")
		);
        Assert.equals(
			Format.Hex3,
			this.identifier.identify("A5F")
		);
    }

    public function testHex6() {
        Assert.equals(
			Format.Hex6,
			this.identifier.identify("#4BD49B")
		);
        Assert.equals(
			Format.Hex6,
			this.identifier.identify("AA55FF")
		);
        Assert.equals(
			Format.Unknown,
			this.identifier.identify("#AB567Z")
		);
    }

    public function testHex8() {
        Assert.equals(
			Format.Hex8,
			this.identifier.identify("#4BD49BFA")
		);
        Assert.equals(
			Format.Hex8,
			this.identifier.identify("AA55FFCA")
		);
    }

    public function testRgba() {
        Assert.equals(
			Format.Rgba,
			this.identifier.identify("rgba(34, 56, 12, 0.9)")
		);
        Assert.equals(
			Format.Rgba,
			this.identifier.identify("34, 56, 12, .23")
		);
        Assert.equals(
			Format.Rgba,
			this.identifier.identify("(34, 56, 12, 0.9)")
		);
        Assert.equals(
			Format.Rgba,
			this.identifier.identify("(34,56, 12,0.9)")
		);
    }

    public function testRgb() {
        Assert.equals(
			Format.Rgb,
			this.identifier.identify("rgb(34, 56, 12)")
		);
        Assert.equals(
			Format.Rgb,
			this.identifier.identify("34, 56, 12")
		);
        Assert.equals(
			Format.Rgb,
			this.identifier.identify("(34, 56, 12)")
		);
        Assert.equals(
			Format.Rgb,
			this.identifier.identify("(34,56, 12)")
		);
    }

    public function testUnknown() {
        Assert.equals(
			Format.Unknown,
			this.identifier.identify("hsl(0, 100%, 50%)") // unsupported
		);
        Assert.equals(
			Format.Unknown,
			this.identifier.identify("not a color")
		);
    }
}
