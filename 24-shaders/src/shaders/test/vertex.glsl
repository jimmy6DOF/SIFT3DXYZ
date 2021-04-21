
uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;
uniform mat4 modelMatrix;

attribute vec3 position; //contains x,y,and z because its vec3

void main()
{
     gl_Position = projectionMatrix * viewMatrix * modelMatrix * vec4(position, 1.0);//use vec4 because matrices are mat4's


}