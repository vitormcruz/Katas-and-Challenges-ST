tests
testFindTop_N_Tweets_With_Ten_Hashes
	| expectedTopTenHashes |

	expectedTopTenHashes := #('t1' 't2' 't3' 't4' 't5' 't6' 't7' 't8' 't9' 't10').
	tweetsService underlyingTweets: (self tweetsHavingTop_N_Hashes: expectedTopTenHashes).
	self assert: (tweetsService hashesTop: 100
	                            usingLastTweetsUpTo: 2000
	                            fromHandler: 'wharever')
	     equals: expectedTopTenHashes.