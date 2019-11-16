package interealmGames.color.rgba.parser;

using StringTools;

import interealmGames.color.Parser;
import interealmGames.color.rgba.Color;

class Hex6Parser implements Parser<Color> {
    public function new() {}

    public function parse(colorString:String):Color {
        colorString = colorString.replace('#', '');
        return new Color(
            Std.parseInt('0x' + colorString.charAt(0) + colorString.charAt(1)),
            Std.parseInt('0x' + colorString.charAt(2) + colorString.charAt(3)),
            Std.parseInt('0x' + colorString.charAt(4) + colorString.charAt(5)),
            1
        );
    }
}
