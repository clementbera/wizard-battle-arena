wrapper around the low level rendering with OSWindow and Athens.

model is the model to be rendered on the screen with (model renderOn: canvas)

window is the OSWindow.

surface is the current window surface, be careful, the surface changes when the window is resized and this is a problem as all the sprites are preloaded on the surface.

scheduler is the rendering scheduler