tests
testFindTop_One_Tweet_With_One_Hash
	| tweetsRepository expectedTopTenHashes |

	expectedTopTenHashes := #('t1').
	tweetsRepository := TweetsRepositoryMock forHandler: 'vitormcruzbr'.
	tweetsRepository underlyingTweets: (self tweetsHavingTop_N_Hashes: expectedTopTenHashes).
	self assert: (tweetsRepository hashesTop: 1) equals: expectedTopTenHashes.