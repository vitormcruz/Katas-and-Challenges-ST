tests
testFilteringGettingNSuggestions
		
	| locations expectedSuggestions |
	
	
	expectedSuggestions := {SuggestionGoEuro newForDictionary: ( self newDictionaryDorId: '1' name: 'Test1' type: 'type1' latitude: '1' longitude: 1 ).
								  SuggestionGoEuro newForDictionary: ( self newDictionaryDorId: '2' name: 'Test2' type: 'type2' latitude: '2' longitude: 2 ).}.
	
	
	self mockReturnListOfJsonSugestions: { {'id' -> '1'. 
												      'name' -> 'Test1'.
											         'type' -> 'type1'.
												      'latitude' -> '1'.
												      'longitude' -> '1'} asDictionary.
																				
 													  {'id' -> '2'. 
									 			      'name' -> 'Test2'.
											         'type' -> 'type2'.
												      'latitude' -> '2'.
												      'longitude' -> '2'} asDictionary}.
												

	
	locations := suggestionRepositoryBuilder forCity: 'RioDeJaneiro'.
	self assert: (locations asSet = expectedSuggestions asSet ).