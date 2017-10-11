tests
testFilteringGettingOneSuggestion
		
	| locations expectedSuggestions |
	
	
	expectedSuggestions := {SuggestionGoEuro newForDictionary: ( self newDictionaryDorId: '1' name: 'Test1' type: 'location1' latitude: 'latitude' longitude: 1 )}.
	
	
	self mockReturnListOfJsonSugestions: { Dictionary newFromPairs: {'id' . '1'. 
																				      'name' . 'Test1'.
																			         'type' . 'location1'.
 																				      'latitude' . '1'.
																				      'longitude' . '1'} }.
												

	
	locations := suggestionRepositoryBuilder forCity: 'RioDeJaneiro'.
	self assert: (locations asSet = expectedSuggestions asSet ).