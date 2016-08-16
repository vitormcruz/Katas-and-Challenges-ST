tests
testFilteringButGettingNoSuggestions
		
	| locations |
	
	(znClientMock stub get: Any) willReturn: '[]'.
	
	locations := suggestionRepositoryBuilder forCity: 'RioDeJaneiro'.
	self assert: locations isEmpty.