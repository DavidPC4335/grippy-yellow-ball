//
// Simple passthrough fragment shader that adds a red tint to image
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	gl_FragColor.r *= 1.5;
	gl_FragColor.g *=0.2;
	gl_FragColor.b *=0.2;
}
