shader_type canvas_item;


// Helpful variables:

// *TEXTURE*: the texture object (i.e. our Wu Tsai image);
// -- Can sample (get) a pixel from it by using the function:
// -- texture(TEXTURE, vec2), where vec2 is a vector with 2 components
// -- in the range [0, 1]

// *UV*: a vec2 representing which pixel is being shaded right now
// -- has 2 components x, y representing in the range [0, 1]
// -- the UV sweeps all values from
// -- vec2(0, 0) (the top left corner of our image) to
// -- vec2(1, 1) (the bottom right corner of our image)


// *COLOR*: vec4 representing our output color i.e.
// -- resulting color of the pixel currently being shaded

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	// Called for every pixel the material is visible on.
	texture(TEXTURE, UV);
	vec3 pixel = vec3(175, 213, 164);
}

//void light() {
//	// Called for every pixel for every light affecting the CanvasItem.
//	// Uncomment to replace the default light processing function with this one.
//}
