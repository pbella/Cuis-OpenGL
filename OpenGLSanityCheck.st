'From Cuis 5.0 [latest update: #3960] on 24 November 2019 at 7:26:56 pm'!
!classDefinition: #OpenGLTest category: #OpenGLTest!
Object subclass: #OpenGLTest
	instanceVariableNames: 'gl'
	classVariableNames: ''
	poolDictionaries: 'OpenGLConstants'
	category: 'OpenGLTest'!

!OpenGLTest methodsFor: 'as yet unclassified' stamp: 'pb 11/24/2019 18:56:39'!
glDestroy
	gl destroy ! !

!OpenGLTest methodsFor: 'as yet unclassified' stamp: 'pb 11/24/2019 19:02:08'!
glInitialize
	gl _ OpenGL newIn: (50 @ 50 corner: 300 @ 300).
	gl
		
			glClearColor: 0.3
			with: 0.3
			with: 0.7
			with: 1.0;
		glClear: GLColorBufferBit + GLDepthBufferBit;
		glBegin: GLTriangles;
		
			glColor3f: 1.0
			with: 0.0
			with: 0.0;
		
			glVertex3f: -0.5
			with: 0.0
			with: 0.0;
		
			glColor3f: 0.0
			with: 1.0
			with: 0.0;
		
			glVertex3f: 0.5
			with: 0.0
			with: 0.0;
		
			glColor3f: 0.0
			with: 0.0
			with: 0.5;
		
			glVertex3f: 0.0
			with: 1.0
			with: 0.0;
		glEnd;
		swapBuffers;
		checkForErrors.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'OpenGLTest class' category: #OpenGLTest!
OpenGLTest class
	instanceVariableNames: ''!

!OpenGLTest class methodsFor: 'as yet unclassified' stamp: 'pb 11/24/2019 19:23:53'!
demo
	| newGl |
	newGl _ self new.
	newGl glInitialize.
	(Delay forSeconds: 3) wait.
	newGl glDestroy.! !
