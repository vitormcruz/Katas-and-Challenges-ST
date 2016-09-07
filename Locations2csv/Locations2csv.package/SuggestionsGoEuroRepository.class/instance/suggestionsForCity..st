enumerating
suggestionsForCity: city
	| serviceResultAsDictionary |
	
	serviceResultAsDictionary := NeoJSONReader	fromString: (znClient new beOneShot get: serviceURL , city).
   ^serviceResultAsDictionary collect: [ :sugestionAsMap | SuggestionGoEuro newForDictionary: sugestionAsMap ].