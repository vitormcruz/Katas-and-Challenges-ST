tests
testWithEmptyCity

	self should: [suggestionRepositoryBuilder forCity: ''] 
	     raise: Error 
	     withExceptionDo: [ :exception | self assert: exception messageText equals: 'You must specify a valid city, i.e., not nil and not empty.'].