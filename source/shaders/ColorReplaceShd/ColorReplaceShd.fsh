//
//  Retro color replace fragment shader
//
//  GMLscripts.com
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

const int TotalColours = 16;

uniform vec3 u_vInputColour[ TotalColours ];
uniform vec3 u_vOutputColour[ TotalColours ];
uniform float u_fTolerance;
uniform int u_iTotalColours;

void main()
{
	vec4 vPixelColour = texture2D( gm_BaseTexture, v_vTexcoord );
	vec3 vZero = vec3( 0.0 );
	if ( u_iTotalColours > 0 && u_iTotalColours <= TotalColours )
	{
		for ( int n = 0; n < u_iTotalColours; ++n )
		{
			if ( distance( u_vInputColour[ n ], vZero ) > 0.0 &&
				 distance( u_vOutputColour[ n ], vZero ) > 0.0 &&
				 distance( vPixelColour.rgb, u_vInputColour[ n ] ) <= u_fTolerance )
			{
				vPixelColour = vec4( u_vOutputColour[ n ], vPixelColour.a );
				break;
			}
		}
	}
    gl_FragColor = v_vColour * vPixelColour;
}