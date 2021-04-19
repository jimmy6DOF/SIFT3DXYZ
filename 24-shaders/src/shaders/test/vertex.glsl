
uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;
uniform mat4 modelMatrix;

attribute vec3 position;

void main()
{
     // vec3 foo = vec3(0.0);
     // vec3 bar = vec3(1.0, 2.0, 3.0);
     // bar.z = 4.0;

     // vec3 purpleColor = vec3(0.0);
     // purpleColor.r = 0.5;
     // purpleColor.b = 1.0;

     // vec2 foo = vec2(1.0, 2.0);
     // vec3 bar =vec3(foo, 3.0);

     vec3 foo = vec3(1.0, 2.0, 3.0);
     vec2 bar = foo.xz;


     gl_Position = projectionMatrix * viewMatrix * modelMatrix * vec4(position, 1.0);
}