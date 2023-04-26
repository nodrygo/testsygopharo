"
###  BaselineOf YgoTests   

needs:
-    Bloc  
-    github://ObjectProfile/Roassal3:bloc
    
### How to load in Playground
  
   
```
Metacello new baseline: 'YgoTests';
     repository: 'github:nodrygo/testsygopharo/src/YgoTests'; load

```

"
Class {
	#name : #BaselineOfYgoTests,
	#superclass : #BaselineOf,
	#category : #YgoTests
}

{ #category : #baselines }
BaselineOfYgoTests >> baseline: spec [ 
	<baseline>
 spec
    for: #common 
    do: [ spec package: 'YgoTest' ]
]
