# Post-Processing Wireframe/Outlines
A wireframe and outline (2-in-1) effect for Unity that uses depth-based edge detection to render thick, quality post-processing wireframes and outlines. You can control the line thickness, edge detection threshold, colour, and blend state. Unlike the typical edge-detection techniques of using a sobel filter/kernel, we compare depth against the local area average- calculated using what is essentially box blur.

https://github.com/MirzaBeig/Post-Processing-Wireframe-Outlines/assets/37354140/68f099ce-cb16-49e9-93a9-91c42de46f5a

https://github.com/MirzaBeig/Post-Processing-Wireframe-Outlines/assets/37354140/b02f1e77-c708-40dc-8aa7-866f823805d0

## Compatibility

- Built-in pipeline.
- Tested with Unity 2021.3 (LTS). 

## Installation

You'll find everything under Mirza Beig/Post-Processing-Wireframe-Outlines/...

## Usage

Easy as,

1. Attach these two components to your camera. 
2. Set to render *at least* 'Depth', and assign the material. 

...That's it.

![238803119-38e8040a-b09c-4b36-89cc-e14715915fab](https://github.com/MirzaBeig/Post-Processing-Wireframe-Outlines/assets/37354140/70eaef50-88ed-4e1f-aa10-85a0ffda505c)

You can then tweak the material, for example: to get this automatic per-object line colour look.

![238801956-4b456446-d5a9-41d7-a873-281fd68ccab8](https://github.com/MirzaBeig/Post-Processing-Wireframe-Outlines/assets/37354140/653b4641-df3c-41bd-bd14-0fe4869f6c9b)

Or to render thick, painterly strokes- best used in combination with some kind of stylized surface shader.

![image](https://github.com/MirzaBeig/Post-Processing-Wireframe-Outlines/assets/37354140/7c710fda-fda4-4294-afe6-c9e02eb11192)
