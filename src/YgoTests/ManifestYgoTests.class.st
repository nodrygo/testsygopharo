"
this package is useless and only for basic tests 
"
Class {
	#name : #ManifestYgoTests,
	#superclass : #PackageManifest,
	#category : #'YgoTests-Manifest'
}

{ #category : #'code-critics' }
ManifestYgoTests class >> ruleClassNotReferencedRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGClassDefinition #(#LotShapes)) #'2023-04-26T09:09:23.166103+02:00') #(#(#RGClassDefinition #(#BaselineOfYgoTests)) #'2023-04-26T09:09:33.783845+02:00') )
]
