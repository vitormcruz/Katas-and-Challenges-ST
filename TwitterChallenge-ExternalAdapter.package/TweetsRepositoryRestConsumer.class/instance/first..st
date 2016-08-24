accessing
first: anInteger

	limit := anInteger ifNil: [ maxLimit  ] 
				 			 ifNotNil: [ anInteger ].