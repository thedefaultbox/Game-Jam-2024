shader_type canvas_item;

uniform vec4 origin:source_color;
uniform vec4 new:source_color;
uniform vec4 origin1:source_color;
uniform vec4 new1:source_color;
uniform vec4 origin2:source_color;
uniform vec4 new2:source_color;

void fragment() {
	vec4 current_pixel = texture(TEXTURE,UV);
	if (current_pixel == origin)
		COLOR = new;
	else 
		if (current_pixel == origin1)
			COLOR = new1;
		else 
			if (current_pixel == origin2)
				COLOR = new2;
			else
				COLOR = new;






}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
