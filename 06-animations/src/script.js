import './style.css'
import * as THREE from 'three'

// Canvas
const canvas = document.querySelector('canvas.webgl')

// Scene
const scene = new THREE.Scene()

//added axesHelper
const axesHelper = new THREE.AxesHelper( 5 );
scene.add( axesHelper );

// Object
const geometry = new THREE.BoxGeometry(1, 1, 1)
const material = new THREE.MeshBasicMaterial({ color: 0x623cea })
const mesh = new THREE.Mesh(geometry, material)
scene.add(mesh)

// Sizes
const sizes = {
    width: 800,
    height: 600
}

// Camera
const camera = new THREE.PerspectiveCamera(75, sizes.width / sizes.height)
camera.position.z = 3
scene.add(camera)

// Renderer
const renderer = new THREE.WebGLRenderer({
    canvas: canvas
})
renderer.setSize(sizes.width, sizes.height)

//Time
let time = Date.now()

//Animations
const tick = () => 
{
    //Time
    const currentTime = Date.now()
    const deltaTime = currentTime - time
    time = currentTime

    // console.log(deltaTime)

    //Update Objects
    mesh.rotation.y += 0.001 * deltaTime
    // mesh.position.y += 0.01

    //Render the Renderer
    renderer.render(scene, camera)

    window.requestAnimationFrame(tick)
}
//DONT FORGET TO CALL TICK()
tick()