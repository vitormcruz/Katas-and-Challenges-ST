tests
testFindTop_Two_Tweets_With_N_Hashes
	| tweetsRepository topTenHashes |

	topTenHashes := #('t1' 't2' 't3' 't4' 't5' 't6' 't7' 't8' 't9' 't10').
	tweetsRepository := TweetsRepositoryMock forHandler: 'vitormcruzbr'.
	tweetsRepository underlyingTweets: (self tweetsHavingTop_N_Hashes: topTenHashes).
	self assert: (tweetsRepository hashesTop: 2) equals: #(t1 t2).