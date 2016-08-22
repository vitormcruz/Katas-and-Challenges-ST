test utility
tweetsHavingTopTenHashes: topTenHashes 
	| tweets |
	
	tweets := OrderedCollection new.
	topTenHashes collectWithIndex: [ :hash :i | 
		(1 to: (topTenHashes size + 1 - i)) collect: [ :count | 
			(DictionaryTweetBuilder new withHashes: {hash asString}) build
		] into: tweets.
		
	].

	^ tweets.