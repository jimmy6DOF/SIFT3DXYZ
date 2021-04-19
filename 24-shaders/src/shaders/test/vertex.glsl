
uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;
uniform mat4 modelMatrix;

attribute vec3 position;

void main()
{
     vec4 foo = vec4(1.0, 2.0, 3.0, 4.0);
     vec4 bar = vec4(foo.zw, vec2(5.0, 6.0));

     gl_Position = projectionMatrix * viewMatrix * modelMatrix * vec4(position, 1.0);
}