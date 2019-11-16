package interealmGames.color.rgba.parser;

using StringTools;

import interealmGames.color.Parser;
import interealmGames.color.rgba.Color;

class RgbaParser implements Parser<Color> {
    public function new() {}

    public function parse(colorString:String):Color {
        colorString = 
            colorString
                .replace('rgb', '')
                .replace('(', '')
                .replace(')', '')
                .replace(' ', '');
        var parts = colorString.split(",");
        return new Color(
            Std.parseInt(parts[0]),
            Std.parseInt(parts[1]),
            Std.parseInt(parts[2]),
            Std.parseFloat(parts[3])
        );
    }
}
