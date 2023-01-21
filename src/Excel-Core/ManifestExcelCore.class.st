"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestExcelCore,
	#superclass : #PackageManifest,
	#category : 'Excel-Core-Manifest'
}

{ #category : #'code-critics' }
ManifestExcelCore class >> ruleBadMessageRule2V1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#ExcelNumber #adaptToInteger:andSend: #false)) #'2023-01-21T18:54:52.798015+01:00') )
]

{ #category : #'code-critics' }
ManifestExcelCore class >> ruleLiteralArrayContainsSuspiciousTrueFalseOrNilRuleV1FalsePositive [
	^ #(#(#(#RGMetaclassDefinition #(#'ManifestExcelCore class' #ManifestExcelCore)) #'2023-01-21T18:55:08.802561+01:00') )
]
