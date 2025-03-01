varying vec2 v_vTexcoord;
uniform float spin_rotation_speed;
uniform float move_speed;
uniform vec2 offset;
uniform vec4 colour_1;
uniform vec4 colour_2;
uniform vec4 colour_3;
uniform float contrast;
uniform float lighting;
uniform float spin_amount;
uniform float pixel_filter;
uniform bool is_rotating;
uniform float iTime;  // Should be set from GML using current time
uniform vec2 texture_size;

#define SPIN_EASE 1.0

vec4 effect(vec2 screenSize, vec2 screen_coords) {
    float pixel_size = length(screenSize) / pixel_filter;
    vec2 uv = (floor(screen_coords * (1.0 / pixel_size)) * pixel_size - 0.5 * screenSize) / length(screenSize) - offset;
    
    float uv_len = length(uv);
    
    float speed = spin_rotation_speed * SPIN_EASE * 0.2;
    if (is_rotating) {
        speed = iTime * speed;
    }
    speed += 302.2;
    float new_pixel_angle = atan(uv.y, uv.x) + speed - SPIN_EASE * 20.0 * (spin_amount * uv_len + (1.0 - spin_amount));
    vec2 mid = screenSize * 0.5 / length(screenSize);
    uv = vec2(uv_len * cos(new_pixel_angle) + mid.x, uv_len * sin(new_pixel_angle) + mid.y) - mid;
    
    uv *= 30.0;
    speed = iTime * move_speed;
    vec2 uv2 = vec2(uv.x + uv.y);
    
    for (int i = 0; i < 5; i++) {
        uv2 += sin(max(uv.x, uv.y)) + uv;
        uv += 0.5 * vec2(cos(54.1324523314 + 0.353 * uv2.y + speed * 0.131121), sin(uv2.x - 0.113 * speed));
        uv -= cos(uv.x + uv.y) - sin(uv.x * 0.711 - uv.y);
    }
    
    float contrast_mod = 0.25 * contrast + 0.5 * spin_amount + 1.2;
    float paint_res = clamp(length(uv) * 0.035 * contrast_mod, 0.0, 2.0);
    float c1p = max(0.0, 1.0 - contrast_mod * abs(1.0 - paint_res));
    float c2p = max(0.0, 1.0 - contrast_mod * abs(paint_res));
    float c3p = 1.0 - min(1.0, c1p + c2p);
    
    float light = (lighting - 0.2) * max(c1p * 5.0 - 4.0, 0.0) + lighting * max(c2p * 5.0 - 4.0, 0.0);
    vec4 ret_col = (0.3 / contrast) * colour_1 + (1.0 - 0.3 / contrast) * (colour_1 * c1p + colour_2 * c2p + vec4(colour_3.rgb * c3p, c3p * colour_1.a)) + light;
    return ret_col;
}

void main() {
    // Calculate texture coordinates and size
    vec2 tex_size = texture_size;  // Use the uniform passed from GML
    vec2 uv = v_vTexcoord * tex_size;  // Scale UVs to texture size
    vec4 base_color = texture2D(gm_BaseTexture, v_vTexcoord);  // Sample texture
    vec4 effect_color = effect(tex_size, uv);  // Apply effect
    gl_FragColor = base_color * effect_color;  // Combine results
}