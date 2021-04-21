
uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;
uniform mat4 modelMatrix;

attribute vec3 position;

float loremIpsum()

{
     float a = 1.0;
     float b = 2.0;

     return a + b;
}

void main()
{
     float result = loremIpsum();

     gl_Position = projectionMatrix * viewMatrix * modelMatrix * vec4(position, 1.0);
}