uniform vec3 uDepthColor;
uniform vec3 uSurfaceColor;

varying float vElevation;

void main()
{
    vec3 color=mix(uDepthColor,uSurfaceColor,vElevation*5.+.5);
    
    gl_FragColor=vec4(color,1.);
    // gl_FragColor = vec4(0.5, 0.8, 1.0, 1.0);
}