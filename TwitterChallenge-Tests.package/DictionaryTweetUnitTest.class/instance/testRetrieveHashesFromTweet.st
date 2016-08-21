tests
testRetrieveHashesFromTweet
	
	| tweet |

	tweet := (DictionaryTweetBuilder new withHashes: #('Teste 1' 'Teste 2')) build.
	self assert: tweet hashes asSet equals: #('Teste 1' 'Teste 2') asSet.