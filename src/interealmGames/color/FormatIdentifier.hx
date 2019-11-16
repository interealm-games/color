package interealmGames.color;

using StringTools;
using interealmGames.common.StringToolsExtension;

import interealmGames.color.Format;

class FormatIdentifier {
	/** Identifies hex strings */
    static public var REGEX_HEX = ~/^#?[a-fA-F0-9]+$/;

    public function new () {}

	/**
	 * Identifies the type of color format of a given string
	 * @param colorString The string describing a color
	 * @return The format
	 */
    public function identify(colorString:String):Format {
		var format = Format.Unknown;
		if(colorString.contains(',') && !colorString.contains('%')) {
			var commas = StringTools.count(colorString, ',');
			if (commas == 2) {
				format = Format.Rgb;
			} else if (commas == 3) {
				format = Format.Rgba;
			}
		} else if(FormatIdentifier.REGEX_HEX.match(colorString)) {
			var length = colorString.replace('#', '').length;
			switch(length) {
				case 3:
					format = Format.Hex3;
				case 6:
					format = Format.Hex6;
				case 8:
					format = Format.Hex8;
			}
		}

		return format;
	}
}
