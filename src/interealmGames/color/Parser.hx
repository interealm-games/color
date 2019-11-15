package interealmGames.color;

/**
 * Parses a string to create a color
 */
interface Parser<T> {
	/**
	 * Creates a color from a string
	 * @param colorString The string to parse
	 * @return The Color
	 */
	public function parse(colorString:String):T;
}
