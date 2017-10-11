*TwitterChallenge-accessing
firstAvailable: anInteger 

	self size < anInteger ifTrue: [ ^ self ] ifFalse: [ ^ self first: anInteger ].
