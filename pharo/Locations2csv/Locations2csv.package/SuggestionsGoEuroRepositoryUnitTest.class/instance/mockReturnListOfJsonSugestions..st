test-utility
mockReturnListOfJsonSugestions: suggestionsList

	| jsonSuggestionString |
	
	jsonSuggestionString := ((suggestionsList collect: [ :suggestionDic |
																		'{"_id": "', (suggestionDic at: 'id') , 
														  	 		   '","name": "', (suggestionDic at: 'name'),
																      '","type": "', (suggestionDic at: 'type'),
																		'","geo_position": {"latitude":"', (suggestionDic at: 'latitude'),
																		'","longitude": "', (suggestionDic at: 'longitude'), '"}}'		
															]) reduce: [:concateneted :new | concateneted , ', ' , new]).

	(znClientMock stub get: Any) willReturn: '[', jsonSuggestionString, ']'.