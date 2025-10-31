shader_type canvas_item;

uniform vec2 mouse_position;
const float dist = 0.2;

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	// Called for every pixel the material is visible on.
	// - 0.5 + mouse_position
	vec4 color = texture(TEXTURE, UV);
	if(distance(UV, mouse_position) < dist) {
		COLOR = color;
	} else {
		COLOR = vec4(0, 0, 0, 1.0);
	}
}

//void light() {
//	// Called for every pixel for every light affecting the CanvasItem.
//	// Uncomment to replace the default light processing function with this one.
//}
