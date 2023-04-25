"
###  BaselineOf YgoTests   
    
### How to load in Playground
  
   
```
Metacello new baseline: 'YgopTests';
     repository: 'github://nodrygo/testsygopharo/src'; load
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
