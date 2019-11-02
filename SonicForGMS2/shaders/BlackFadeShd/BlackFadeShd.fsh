//
// Megadrive color fade fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_fTransition;

void main() {
    float ft = clamp( 3.0 - u_fTransition, 0.0, 3.0 );
    vec4 vFragColour = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    float fb = clamp( ft, 0.0, vFragColour.b );
    float fg = clamp( ft - fb, 0.0, vFragColour.g );
    float fr = clamp( ft - fb - fg, 0.0, vFragColour.r );
    gl_FragColor = vec4( fr, fg, fb, vFragColour.a );
}
