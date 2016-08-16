comparing
= otherObject

	self == otherObject ifTrue: [ ^true ].
	(self isKindOf: otherObject class) ifFalse: [ ^false ].
	^self id = otherObject id.