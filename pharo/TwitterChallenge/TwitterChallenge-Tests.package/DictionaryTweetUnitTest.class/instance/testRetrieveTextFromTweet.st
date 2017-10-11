tests
testRetrieveTextFromTweet
	
	| tweet |

	tweet := (DictionaryTweetBuilder new withText: 'Test') build.
	self assert: tweet text equals: 'Test'.