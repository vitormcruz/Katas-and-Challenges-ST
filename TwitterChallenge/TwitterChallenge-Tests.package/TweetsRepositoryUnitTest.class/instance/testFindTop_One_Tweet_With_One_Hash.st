tests
testFindTop_One_Tweet_With_One_Hash
	| expectedTopTenHashes |

	expectedTopTenHashes := #('t1').
	tweetsService underlyingTweets: (self tweetsHavingTop_N_Hashes: expectedTopTenHashes).
	self assert: (tweetsService hashesTop: 1
	                            usingLastTweetsUpTo: 2000
	                            fromHandler: 'wharever')
	     equals: expectedTopTenHashes.