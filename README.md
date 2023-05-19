# Post-Processing Wireframe/Outlines
A wireframe and outline (2-in-1) effect for Unity uses depth-based edge detection to render thick, quality post-processing wireframes and outlines. You can control the line thickness, edge detection threshold, colour, and blend state. Unlike the typical edge-detection techniques of using a sobel filter/kernel, we compare depth against the local area average- calculated using what is essentially box blur.

https://github.com/MirzaBeig/Depth-Outlines/assets/37354140/630368f8-dc52-45c3-a0cf-1f6319df815b

https://github.com/MirzaBeig/Depth-Outlines/assets/37354140/7e8aa18a-d258-4aab-921b-ab7ee941debc

## Compatibility

- Built-in pipeline.
- Tested with Unity 2021.3 (LTS). 

## Installation

You'll find everything under Mirza Beig/Depth-Outlines/...

## Usage

Easy as,

1. Attach these two components to your camera. 
2. Set to render *at least* 'Depth', and assign the material. 

...That's it.

![image](https://github.com/MirzaBeig/Depth-Outlines/assets/37354140/38e8040a-b09c-4b36-89cc-e14715915fab)

You can then tweak the material, for example: to get this automatic per-object line colour look.

![image](https://github.com/MirzaBeig/Depth-Outlines/assets/37354140/4b456446-d5a9-41d7-a873-281fd68ccab8)

Or to render thick, painterly strokes- best used in combination with some kind of stylized surface shader.

![image](https://github.com/MirzaBeig/Depth-Outlines/assets/37354140/1fc114d9-25f9-4e44-8f28-5f21ab226959)
