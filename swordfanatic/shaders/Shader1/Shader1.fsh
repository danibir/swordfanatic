//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float flash;
uniform float hurtflash;

void main()
{
	vec4 thecolor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    
	thecolor.r = thecolor.r + (1.0 - thecolor.r) * flash;
	thecolor.g = thecolor.g + (1.0 - thecolor.g) * flash - thecolor.g * hurtflash;
	thecolor.b = thecolor.b + (1.0 - thecolor.b) * flash - thecolor.b * hurtflash;
	
	gl_FragColor = thecolor;
}
