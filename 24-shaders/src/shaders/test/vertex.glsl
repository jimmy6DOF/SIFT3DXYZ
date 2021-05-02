
uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;
uniform mat4 modelMatrix;
uniform vec2 uFrequency;
uniform float uTime;

attribute vec3 position; //contains x,y,and z because its vec3
attribute vec2 uv;

varying vec2 vUv;
varying float vElevation;

// varying float vRandom;

void main()
{
     vec4 modelPosition = modelMatrix * vec4(position, 1.0);
    
    float elevation = sin(modelPosition.x * uFrequency.x - uTime) * 0.1;
    elevation += sin(modelPosition.y * uFrequency.y + uTime) * 0.6;

     modelPosition.z += elevation;
     // modelPosition.y += sin(uTime);

     vec4 viewPosition = viewMatrix * modelPosition;
     vec4 projectedPosition = projectionMatrix * viewPosition;

     gl_Position = projectedPosition;

     vUv = uv; 
     vElevation = elevation;

}