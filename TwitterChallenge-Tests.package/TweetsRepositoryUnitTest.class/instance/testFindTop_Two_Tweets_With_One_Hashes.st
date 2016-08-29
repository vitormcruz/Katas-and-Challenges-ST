tests
testFindTop_Two_Tweets_With_One_Hashes
	| tweetsRepository topTenHashes |

	topTenHashes := #('t1').
	tweetsRepository := TweetsRepositoryMock forHandler: 'vitormcruzbr'.
	tweetsRepository underlyingTweets: (self tweetsHavingTop_N_Hashes: topTenHashes).
	self assert: (tweetsRepository hashesTop: 2) equals: #(t1).