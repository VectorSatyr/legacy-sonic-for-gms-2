//
// Megadrive color fade fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_fTransition;

void main() {
    float ft = clamp( 3.0 - u_fTransition, 0.0, 3.0 );
    vec4 vFragColour = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    vec4 vInvColour = 1.0 - vFragColour;
    float fr = min( vFragColour.r + ft, 1.0 );
    float fg = min( vFragColour.g + max( ft - vInvColour.r, 0.0 ), 1.0 );
    float fb = min( vFragColour.b + max( ft - vInvColour.r - vInvColour.g, 0.0 ), 1.0 );
    gl_FragColor = vec4( fr, fg, fb, vFragColour.a );
}
