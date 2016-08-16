filtering-specific
forCity: aCity

	"Recover suggestion from goeuro for the sity provided by the argument"

	(aCity isNil or: [ aCity isEmpty ]) ifTrue: [ Error signal: 'You must specify a valid city, i.e., not nil and not empty.' ].
	suggestions := self suggestionsForCity: aCity