Cuis-OpenGL
===========

# Overview

Cuis-OpenGL is based on my original OpenGL port in Cuis-Ports but is being rebuilt and reorganized to support 'modern' OpenGL based on the programmable pipeline vs the older fixed pipeline in OpenGL 1.x and OpenGL ES 1.x.  While the focus is currently OpenGL ES 2.0 through 3.1, it is being designed in such a way that would allow for the substitution of the full OpenGL API for OpenGL ES without requiring a rewrite.

This repository is currently a placeholder containing the last committed files from the Cuis-Ports version of the OpenGL package.

# Release notes from latest 3DTransform release

3DTransform - Based on 3DTransform-pbm.19.mcz

# Release notes from latest OpenGL release

OpenGL - Originally based on OpenGL-Core-jrd.6.mcz and have merged in some of the changes from OpenGL-Core-bf.17.mcz.

Depends on 3DTransform and FFI.  If you are running on a Unix or Linux system, see the comment in OGLUnix openGLLibraryName. This was pushed out prematurely and has at least a couple of issues yet to be resolved: font handling is broken, and there are at least one or two hacks that were forgotten about that need to be fixed.

FFI - See FFI.pck.st from https://github.com/Cuis-Smalltalk/Cuis-Smalltalk-Dev/tree/master/Packages/System 

Note: after loading FFI projects, you must call

        Smalltalk recreateSpecialObjectsArray.

# Getting started

https://www.youtube.com/watch?v=WEojS_216eY is a quick walkthrough using OpenGLSanityCheck.st to verify basic OpenGL functionality.  If you have problems running this demo, chances are something is wrong with your plugin/library setup.
