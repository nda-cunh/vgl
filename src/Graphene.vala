namespace Vgl {

errordomain BurgerError {
	TEXTURE_INVALID
}
/**
 * Rectangle 
 *
 * @param x The x-coordinate of the rectangle.
 * @param y The y-coordinate of the rectangle.
 * @param w The width of the rectangle.
 * @param h The height of the rectangle.
 */
public struct Rect : SDL.Video.Rect {
}

/**
 * Represents a color in RGBA format.
 *
 * @param red   The red component of the color (0-255).
 * @param green The green component of the color (0-255).
 * @param blue  The blue component of the color (0-255).
 * @param alpha The alpha (transparency) component of the color (0-255).
 */

public struct Color {
	public const Color White = {255,255,255, 255};
	public const Color Black = {0,0,0, 255};
	public const Color Red = {255, 0, 0, 255};
    public const Color Green = {0, 255, 0, 255};
    public const Color Blue = {0, 0, 255, 255};
    public const Color Yellow = {255, 255, 0, 255};
    public const Color Cyan = {0, 255, 255, 255};
    public const Color Magenta = {255, 0, 255, 255};
	public const Color Gray = {128, 128, 128, 255};
    public const Color Orange = {255, 165, 0, 255};
    public const Color Purple = {128, 0, 128, 255};
    public const Color Brown = {139, 69, 19, 255};

	/**
	* @param red   The red component of the color (0-255).
	* @param green The green component of the color (0-255).
	* @param blue  The blue component of the color (0-255).
	* @param alpha The alpha (transparency) component of the color (0-255).
	*/
	public Color(uint8 red, uint8 green, uint8 blue, uint8 alpha = 255) {
		this.red = red;
		this.green = green;
		this.blue = blue;
		this.alpha = alpha;
	}

	uint8 red;
	uint8 green;
	uint8 blue;
	uint8 alpha;
}

public struct ColorDouble {
	public static ColorDouble parse(Color color) {
		double r = color.red / 255.0;
		double g = color.green / 255.0;
		double b = color.blue / 255.0;
		double a = color.alpha / 255.0;
		return ({r,g,b,a});
		
	} 
	double r;
	double g;
	double b;
	double a;
}

/**
 * Represents a 2D integer vector.
 *
 * @param x The X-coordinate of the vector.
 * @param y The Y-coordinate of the vector.
 */
public struct Vector2i {
	int x;
	int y;
}

/**
 * Represents a 2D float vector.
 *
 * @param x The X-coordinate of the vector.
 * @param y The Y-coordinate of the vector.
 */
public struct Vector2f {
	double x;
	double y;
}

/**
 * Represents a 3D integer vector.
 *
 * @param x The X-coordinate of the vector.
 * @param y The Y-coordinate of the vector.
 * @param z The Z-coordinate of the vector.
 */
public struct Vector3i {
	int x;
	int y;
	int z;
}

}
