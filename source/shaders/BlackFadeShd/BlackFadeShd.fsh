//
// Megadrive color fade fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float u_fTransition;

void main()
{
    float fTransition = clamp( 3.0 - u_fTransition, 0.0, 3.0 );
    vec4 vTextureColour = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    float fb = clamp( fTransition, 0.0, vTextureColour.b );
    float fg = clamp( fTransition - fb, 0.0, vTextureColour.g );
    float fr = clamp( fTransition - fb - fg, 0.0, vTextureColour.r );
    gl_FragColor = vec4( fr, fg, fb, vTextureColour.a );
}