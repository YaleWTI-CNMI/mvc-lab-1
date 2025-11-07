shader_type canvas_item;

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	// Your code here...
	// Hint: use TEXTURE_PIXEL_SIZE in your call to `texture`
	// when sampling neighboring pixel
	
	vec4 pixel = texture(TEXTURE, UV);
	COLOR = pixel;
}
