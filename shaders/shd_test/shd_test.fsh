//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 tex = v_color * texture2D( gm_BaseTexture, v_texcoord);
	float gray = dot(tex, vec4(0.299, 0.587, 0.114, 0));

	vec4 shade = vec4(gray * u_tone.rgb, tex.a);
	gl_FragColor = mix(shade, tex, u_tone.a);
}
