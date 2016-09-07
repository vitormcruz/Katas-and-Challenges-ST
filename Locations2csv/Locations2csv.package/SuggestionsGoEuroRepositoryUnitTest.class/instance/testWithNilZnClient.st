tests
testWithNilZnClient

	self should: [SuggestionsGoEuroRepository new znClient: nil] 
	     raise: Error 
	     withExceptionDo: [ :exception | self assert: exception messageText equals: 'znClient cannot be nil.'].