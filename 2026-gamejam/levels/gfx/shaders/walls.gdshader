shader_type canvas_item;

varying vec2 UV2; // Use this as the UV for the effect
uniform sampler2D noise;
void vertex() {
    UV2 = (MODEL_MATRIX * vec4(VERTEX, 0, 1)).xy / 200.0;
}
uniform float cycle_speed;
uniform float scroll_speed;
uniform float scale;
void fragment() {
	COLOR.r+=COLOR.g*0.3*sin(4.0*UV2.x+2.*TIME);
	COLOR.g+=COLOR.g*0.3*sin(4.0*UV2.x+2.*TIME);
	COLOR.r+=COLOR.g*0.3*sin(4.0*UV2.y+2.*TIME);
	COLOR.g+=COLOR.g*0.3*sin(4.0*UV2.y+2.*TIME);
	
	//alternative
	//COLOR*=vec4(0,1,0,1)*0.8+texture(noise,fract((UV2.xy+200.)*scale+-2.*scroll_speed*TIME)).r*texture(noise,fract(UV2.xy*scale+scroll_speed*TIME)).r;
}

//void light() {
//	// Called for every pixel for every light affecting the CanvasItem.
//	// Uncomment to replace the default light processing function with this one.
//}
