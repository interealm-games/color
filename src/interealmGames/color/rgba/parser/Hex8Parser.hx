package interealmGames.color.rgba.parser;

using StringTools;

import interealmGames.color.Parser;
import interealmGames.color.rgba.Color;

class Hex8Parser implements Parser<Color> {
	var isAlphaBefore:Bool;
    public function new(isAlphaBefore:Bool = false) {
        this.isAlphaBefore = isAlphaBefore;
    }

    public function parse(colorString:String):Color {
        colorString = colorString.replace('#', '');
        var offset = this.isAlphaBefore ? 2 : 0;
        var alphaString = this.isAlphaBefore
            ? colorString.charAt(0) + colorString.charAt(1)
            : colorString.charAt(6) + colorString.charAt(7);
        var alpha = Std.parseInt('0x' + alphaString)/255;
        return new Color(
            Std.parseInt('0x' + colorString.charAt(0 + offset) + colorString.charAt(1 + offset)),
            Std.parseInt('0x' + colorString.charAt(2 + offset) + colorString.charAt(3 + offset)),
            Std.parseInt('0x' + colorString.charAt(4 + offset) + colorString.charAt(5 + offset)),
            alpha
        );
    }
}
