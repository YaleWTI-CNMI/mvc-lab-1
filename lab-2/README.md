# Helpful variables and functions

## 2D

### `TEXTURE`: the texture object (i.e. our Wu Tsai image);
- Can sample (get) a pixel from it by using the function: `texture(TEXTURE, vec2)`, where vec2 is a vector with 2 components in the range `[0, 1]`.

### `TEXTURE_PIXEL_SIZE`: normalized pixel size of the texture
- For a texture of size 64x32px, `TEXTURE_PIXEL_SIZE = vec2(1/64, 1/32)`

### `UV`: a vec2 representing which pixel is being shaded right now
- It has 2 components x, y representing in the range `[0, 1]`.
- The UV sweeps all values from vec2(0, 0) (the top left corner of our image) to vec2(1, 1) (the bottom right corner of our image).


### `COLOR`: vec4 representing our output color
- In other words, it is the resulting color of the pixel currently being shaded


## 3D

### `ALBEDO`: the equivalent of COLOR in a 3D environment
- The type of ALBEDO is vec3 rather than vec4 like `COLOR`
- The alpha is stored separately in another variable called `ALPHA`.
  - We'll see why this is needed in a later club meeting.

### `NORMAL_MAP`: output variable
- We will use this to make the renderer use our custom normal map texture for the water shader.

## Other

### `TIME`: float representing the number of seconds since Godot has started
- useful for animating shader properties over time

### `sin`, `cos`, `pow` ... your bog-standard math functions

## More Resources
- [Spatial Shaders (3D) Reference](https://docs.godotengine.org/en/stable/tutorials/shaders/shader_reference/spatial_shader.html#fragment-built-ins)
- [CanvasItem Shaders (2D) Reference](https://docs.godotengine.org/en/stable/tutorials/shaders/shader_reference/canvas_item_shader.html)


## Copyrighted material
- [Chair model](https://sketchfab.com/3d-models/office-chair-gaming-chair-93f4f9b64f2c4ee69b42c1bebeaec095)
- [Mountain Pic](https://pixabay.com/photos/climb-mountaineering-mountains-2125148/)
