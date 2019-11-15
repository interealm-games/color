package interealmGames.color;

/**
 * Composers change a color into a string according to a particular format
 */
interface Composer<T> {
	/**
	 * Converts the color to a string
	 * @param color The color to convert
	 * @return The formatted color string
	 */
	public function compose(color:T):String;
}
