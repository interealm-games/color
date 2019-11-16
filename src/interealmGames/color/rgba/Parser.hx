package interealmGames.color.rgba;

import interealmGames.color.Format;
import interealmGames.color.FormatIdentifier;
import interealmGames.color.Parser in ParserInterface;
import interealmGames.color.rgba.Color;
import interealmGames.color.rgba.parser.Hex3Parser;
import interealmGames.color.rgba.parser.Hex6Parser;
import interealmGames.color.rgba.parser.Hex8Parser;
import interealmGames.color.rgba.parser.RgbaParser;
import interealmGames.color.rgba.parser.RgbParser;

class Parser implements ParserInterface<Color> {
	var hex3Parser:Hex3Parser;
	var hex6Parser:Hex6Parser;
	var hex8Parser:Hex8Parser;
	var rgbaParser:RgbaParser;
	var rgbParser:RgbParser;
	var identifier:FormatIdentifier;

	public function new (isHex8AlphaBefore:Bool = false) {
		this.hex3Parser = new Hex3Parser();
		this.hex6Parser = new Hex6Parser();
		this.hex8Parser = new Hex8Parser(isHex8AlphaBefore);
		this.rgbaParser = new RgbaParser();
		this.rgbParser = new RgbParser();
		this.identifier = new FormatIdentifier();
	}

	/**
	 * Converts a string into a rgba Color
	 * @param colorString The string to convert
	 * @return The converted Color
	 * @throws UnknownFormatException
	 */
	public function parse(colorString:String):Color {
		return switch(this.identifier.identify(colorString)) {
			case Format.Hex3:
				this.hex3Parser.parse(colorString);
			case Format.Hex6:
				this.hex6Parser.parse(colorString);
			case Format.Hex8:
				this.hex8Parser.parse(colorString);
			case Format.Rgb:
				this.rgbParser.parse(colorString);
			case Format.Rgba:
				this.rgbaParser.parse(colorString);
			case Format.Unknown:
				throw new UnknownFormatException(colorString);
			default:
				throw new UnknownFormatException(colorString);
		}
	}
}
