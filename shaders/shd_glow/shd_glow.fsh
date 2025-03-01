//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec4 bgColor;
uniform vec2 circlePos[20];
uniform float circleRadius[20];
uniform int circleCount;
uniform vec2 screenSize;

void main()
{
	vec4 color = texture2D(gm_BaseTexture, v_vTexcoord);
	
	float luminance = dot(color.rgb, vec3(0.299, 0.587, 0.114));
	vec4 grayscale = vec4(vec3(luminance),1.0);
	
	vec4 dark = vec4(17.0/255.0, 16.0/255.0, 28.0/255.0, 1.0);
	
	color = grayscale + dark - vec4(1.0);
	
	for(int i = 0; i < circleCount; i++) {
		float dist = distance(v_vTexcoord * screenSize, circlePos[i]);
		if(dist < circleRadius[i] + 3.0) {
			color = vec4(17.0/255.0, 16.0/255.0, 28.0/255.0, 0.5); //Adds Stroke
		}
	}
	for(int i = 0; i < circleCount; i++) {
		float dist = distance(v_vTexcoord * screenSize, circlePos[i]);
		if(dist < circleRadius[i]) {
			color.a = 0.0; //discard cuts out the circle
		}
	}
    gl_FragColor = color;
}
