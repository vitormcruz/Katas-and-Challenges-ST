tests
testFindTop_Two_Tweets_With_One_Hashes
	| topTenHashes |

	topTenHashes := #('t1').
	tweetsService underlyingTweets: (self tweetsHavingTop_N_Hashes: topTenHashes).
	self assert: (tweetsService hashesTop: 2 
	                            usingLastTweetsUpTo: 2000
	                            fromHandler: 'wharever')
	     equals: #(t1).