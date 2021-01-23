//Scene
const scene = new THREE.Scene()

//Cube
const geometry = new THREE.SphereGeometry(3,3,3)
const material = new THREE.MeshNormalMaterial({ color: 0x623cea })
const mesh = new THREE.Mesh(geometry, material)
mesh.rotation.y = Math.PI/1.2


scene.add(mesh)

//Sizes
const sizes = {
    width: 800,
    height:600
}

// Camera
const camera = new THREE.PerspectiveCamera(75, sizes.width / sizes.height)
camera.position.z = 10
scene.add(camera)

//Renderer
const canvas = document.querySelector('.webgl')
console.log(canvas)
const renderer = new THREE.WebGLRenderer({
    canvas: canvas
})
renderer.setSize(sizes.width, sizes.height)

renderer.render(scene, camera)