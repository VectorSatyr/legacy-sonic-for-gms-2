//
//  shColorReplaceBlend
//
//      Replaces one color with another. Can replace 
//      similar colors while preserving shading.
//
//      colorIn             color to replace (vec4)
//      colorOut            replacement color (vec4)
//      colorTolerance      HSVA tolerances (vec4)
//      blend               1.0 preserves shading of original, 
//                          0.0 replaces color as-is (float)
//
//  GMLscripts.com
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

const int TotalColors = 16;

uniform vec3 u_vInputColor[TotalColors]; //colorIn;
uniform vec3 u_vOutputColor[TotalColors]; //colorOut;
uniform vec3 u_vTolerance; //colorTolerance;
uniform float u_fBlendFactor; //blend;
uniform int u_iTotalColors;

vec3 rgb_to_hsv(vec3 col)
{
    float H = 0.0;
    float S = 0.0;
    float V = 0.0;
    
    float M = max(col.r, max(col.g, col.b));
    float m = min(col.r, min(col.g, col.b));
    
    V = M;
    
    float C = M - m;
    
    if (C > 0.0) {
        if (M == col.r) H = mod( (col.g - col.b) / C, 6.0);
        if (M == col.g) H = (col.b - col.r) / C + 2.0;
        if (M == col.b) H = (col.r - col.g) / C + 4.0;
        H /= 6.0;
        S = C / V;
    }
    
    return vec3(H, S, V);
}

vec3 hsv_to_rgb(vec3 col)
{
    float H = col.r;
    float S = col.g;
    float V = col.b;
    
    float C = V * S;
    
    H *= 6.0;
    float X = C * (1.0 - abs( mod(H, 2.0) - 1.0 ));
    float m = V - C;
    C += m;
    X += m;
    
    vec3 vColor;
    if (H < 1.0) vColor = vec3(C, X, m);
    if (H < 2.0) vColor = vec3(X, C, m);
    if (H < 3.0) vColor = vec3(m, C, X);
    if (H < 4.0) vColor = vec3(m, X, C);
    if (H < 5.0) vColor = vec3(X, m, C);
    else         vColor = vec3(C, m, X);
    
    return vColor;
}

void main() {
    vec4 vPixelColor = texture2D( gm_BaseTexture, v_vTexcoord );
    vec3 vHSVColor, vHSVInputColor, vHSVOutputColor, vColorDelta, vFinalColor;
    float fHue, fSat, fVal;
    for ( int n = 0; n < u_iTotalColors; ++n ) {
        if ( any( greaterThan( u_vInputColor[n], vec3(0.0) ) ) &&
             any( greaterThan( u_vOutputColor[n], vec3(0.0) ) ) ) {
            vHSVColor = rgb_to_hsv( vPixelColor.rgb );
    
            vHSVInputColor = rgb_to_hsv( u_vInputColor[n] );
    
            vColorDelta = vHSVColor - vHSVInputColor;
    
            if ( abs( vColorDelta.r ) > 0.5 ) {
                vColorDelta.r -= sign( vColorDelta.r );
            }
    
            if ( all( lessThanEqual( abs( vColorDelta ), u_vTolerance ) ) )  {
                if ( u_fBlendFactor == 0.0 ) {
                    vFinalColor = u_vOutputColor[n];
                } else {
                    vHSVOutputColor = rgb_to_hsv( u_vOutputColor[n] );
                    
                    fHue = mod( vHSVOutputColor.r + vColorDelta.r, 1.0 );
                    fSat = clamp( vHSVOutputColor.g + vColorDelta.g, 0.0, 1.0 );
                    fVal = clamp( vHSVOutputColor.b + vColorDelta.b, 0.0, 1.0 );
                    
                    vFinalColor = mix( u_vOutputColor[n], hsv_to_rgb( vec3( fHue, fSat, fVal ) ), u_fBlendFactor );
                }
                
                vPixelColor = vec4( vFinalColor , vPixelColor.a );
                break;
            }
        }
    }
    
    gl_FragColor = v_vColour * vPixelColor;
}