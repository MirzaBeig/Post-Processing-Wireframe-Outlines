# Post-Processing Wireframe/Outlines

[![Unity Version](https://img.shields.io/badge/Unity-2021.3%20LTS%2B-blueviolet?logo=unity)](https://unity3d.com/get-unity/download)
[![Unity Pipeline Support (Built-In)](https://img.shields.io/badge/BiRP_✔️-darkgreen?logo=unity)](https://unity3d.com/get-unity/download)
[![Unity Pipeline Support (URP)](https://img.shields.io/badge/URP_❌-blue?logo=unity)](https://unity3d.com/get-unity/download)
[![Unity Pipeline Support (HDRP)](https://img.shields.io/badge/HDRP_❌-darkred?logo=unity)](https://unity3d.com/get-unity/download)

[![GitHub followers](https://img.shields.io/github/followers/MirzaBeig?style=social)](https://github.com/MirzaBeig?tab=followers)
[![Twitter Follow](https://img.shields.io/twitter/follow/TheMirzaBeig?style=social)](http://twitter.com/intent/user?screen_name=TheMirzaBeig)
[![YouTube Channel Views](https://img.shields.io/youtube/channel/views/UC5c5JgFyiFXKXCVRh2DsRJg?style=social)](https://www.youtube.com/MirzaBeig)
[![YouTube Channel Subscribers](https://img.shields.io/youtube/channel/subscribers/UC5c5JgFyiFXKXCVRh2DsRJg?style=social)](https://www.youtube.com/MirzaBeig)

A wireframe and outline (2-in-1) effect for Unity that uses depth-based edge detection to render thick, quality post-processing wireframes and outlines. You can control the line thickness, edge detection threshold, colour, and blend state. Unlike the typical edge-detection techniques of using a sobel filter/kernel, we compare depth against the local area average- calculated using what is essentially box blur.

[![Stars](https://img.shields.io/github/stars/MirzaBeig/Post-Processing-Wireframe-Outlines?style=for-the-badge)](../../stargazers)
[![Forks](https://img.shields.io/github/forks/MirzaBeig/Post-Processing-Wireframe-Outlines?style=for-the-badge)](../../forks)
[![GitHub watchers](https://img.shields.io/github/watchers/MirzaBeig/Post-Processing-Wireframe-Outlines?style=for-the-badge)](../../watchers)
[![GitHub repo size](https://img.shields.io/github/repo-size/MirzaBeig/Post-Processing-Wireframe-Outlines?style=for-the-badge)](../../)
[![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/MirzaBeig/Post-Processing-Wireframe-Outlines?style=for-the-badge)](../../)

## Preview

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
