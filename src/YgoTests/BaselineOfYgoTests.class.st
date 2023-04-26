"
###  BaselineOf YgoTests   

needs:
-    Bloc  
-    github://ObjectProfile/Roassal3:bloc
```  
[ Metacello new
	baseline: 'Bloc';
	repository: 'github://pharo-graphics/Bloc:dev-1.0/src';
	onConflictUseIncoming;
	ignoreImage;
	load ]
		on: MCMergeOrLoadWarning
		do: [ :warning | warning load ]
		  
[Metacello new
    baseline: 'Roassal3:bloc';
    repository: 'github://ObjectProfile/Roassal3:bloc';
    load: 'Full' ] on: MCMergeOrLoadWarning do: [:warning | warning load ]
```    
### How to load in Playground
  
   
```
Metacello new baseline: 'YgoTests';
     repository: 'github:nodrygo/testsygopharo/src/YgoTests'; load

```

"
Class {
	#name : #BaselineOfYgoTests,
	#superclass : #BaselineOf,
	#category : #'YgoTests-ShapesRoassalTests'
}

{ #category : #baselines }
BaselineOfYgoTests >> baseline: spec [ 
	<baseline>
 spec     for: #common  do: [
	   spec package: 'YgoTest' .
      spec 
		     baseline: 'Roassal3'
		     with: [ 
		        spec repository: 'github://ObjectProfile/Roassal3:bloc/src' ].
	]
]
