precision mediump float;

varying float vRandom;

void main()
{
    // gl_FragColor = vec4(vRandom, vRandom, 1.0, 0.5);
    gl_FragColor = vec4(0.25, vRandom * 0.45, .5969, 1.0);
}

