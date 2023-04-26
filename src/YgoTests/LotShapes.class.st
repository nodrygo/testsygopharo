"
## LotShapes is a test for Pharo perf:   
this class represent a fiels of shapes of n rect/circle at random pos and random colors    
####Public API and Key Messages   
- run  
#### Run Demo with :      
```
t1 := [ | c | c := LotShapes new nb: 10000 ; usebloc: false; run . ""c open""] timeToRun .
```
**Note** _timeToRun_ seem not include display time 
### Instance Variables
- nb:		quantity of created shapes
- usebloc:		use Bloc/Alexandria (ext Cairo)

"
Class {
	#name : #LotShapes,
	#superclass : #Object,
	#instVars : [
		'nb',
		'usebloc'
	],
	#category : #'YgoTests-ShapesRoassalTests'
}

{ #category : #initialization }
LotShapes >> initialize [ 
 super initialize .
 self usebloc: false . 
 self nb: 5000.
]

{ #category : #accessing }
LotShapes >> nb [
^ nb

]

{ #category : #accessing }
LotShapes >> nb: num [
  nb := num 
]

{ #category : #running }
LotShapes >> run [
"I am the shape runner for exemple"
<script: '| c | c := self new  nb: 10000; usebloc: false ; run . c open'>
| r shapes c |
shapes := RSGroup new .
r := Random seed: 42.
nb timesRepeat: [ 
	shapes add: (RSBox new width: (r nextInteger:  10); height: (r nextInteger:  20) ; x: (r nextInteger:  800) ;y: (r nextInteger:  600); color: Color random translucent ).
	
	shapes add: (RSEllipse new
		position: (r nextInteger:  800)@(r nextInteger:  600);
		color: Color random translucent;
		extent: (r nextInteger:  10)@(r nextInteger:  20))].	

c := RSCanvas new .

c addAll: shapes.
"RSRectanglePackLayout new on: shapes."
c @ RSCanvasController .
"c pngExporter
		zoomToShapes;
		fileName: '/home/ygo/pharo/testRect.png';
		export."
"WITH ext BLOC slower"
usebloc ifTrue: [ c useBlocHost] .

  ^ c 
"
open auto ou pas ? 
win := c openOnce .
win extent: 800@600.
"

]

{ #category : #accessing }
LotShapes >> usebloc [
 ^ usebloc
]

{ #category : #accessing }
LotShapes >> usebloc: logic [
 usebloc := logic 
]
