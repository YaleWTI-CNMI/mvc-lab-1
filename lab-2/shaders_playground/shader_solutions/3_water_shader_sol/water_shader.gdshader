shader_type spatial;

uniform sampler2D normalMap : hint_normal;
uniform float flowSpeed = 1.0;
uniform float waveFreq = 10.0;
uniform vec3 waterColor : source_color = vec3(0.0, 0.0, 0.5);
uniform vec3 waterColor2 : source_color = vec3(0.0, 0.0, 0.5);

uniform float normalScale = 1.0;

void vertex() {
	VERTEX.y += sin(VERTEX.x * waveFreq + TIME * flowSpeed * 2.0) * 0.04;
	VERTEX.y += sin(VERTEX.z * waveFreq / 6.0 + TIME * flowSpeed * 2.0) * 0.04;
}

void fragment() {
	vec2 uvOffset = vec2(TIME * flowSpeed, 0.0) * 0.1;
	
	vec3 n = texture(normalMap, UV * normalScale + uvOffset).rgb;
	vec3 n2 = texture(normalMap, vec2(UV.y, UV.x) * normalScale + uvOffset * 0.33).rgb;

	NORMAL_MAP = normalize(n + n2);
	NORMAL_MAP_DEPTH = length(n + n2);
	vec3 color = mix(waterColor, waterColor2, pow((dot(NORMAL, NORMAL_MAP) + 1.0) / 2.0, 5.0));
	ALBEDO = color;
	ROUGHNESS = 0.2;
}

//void light() {
//	// Called for every pixel for every light affecting the CanvasItem.
//	// Uncomment to replace the default light processing function with this one.
//}
