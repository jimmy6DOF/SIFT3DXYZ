
uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;
uniform mat4 modelMatrix;

attribute vec3 position; //contains x,y,and z because its vec3

void main()
{
     vec4 modelPosition = modelMatrix * vec4(position, 1.0);

     modelPosition.y += 1.0;
     vec4 viewPosition = viewMatrix * modelPosition;
     vec4 projectedPosition = projectionMatrix * viewPosition;

     gl_Position = projectedPosition;
}