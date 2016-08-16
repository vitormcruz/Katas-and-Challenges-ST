converting
asCsvNamed: fileName

	"Creates a representation of myself as a csv file with the name specified by the argument and in the path provided by my instance variable"

	| cvs csvRefPath|

	csvRefPath := FileSystem disk workingDirectory / csvPath.
	csvRefPath exists ifFalse: [ csvRefPath createDirectory ].
	
	cvs := csvRefPath / fileName.
	cvs writeStreamDo: [ :fileStream | 
		 					  (NeoCSVWriter on: fileStream) nextPut: #('_id' 'name' 'type' 'latitude' 'longitude').
									self do: [ :suggestion |  
								 				 (NeoCSVWriter on: fileStream) nextPut: {suggestion id. suggestion name. suggestion type. suggestion latitude. suggestion longitude}.
												]. 
							].
	
	^cvs.