tests
testFindTop_TenTweets_With_Ten_Hashes
	| tweetsRepository expectedTopTenHashes |

	expectedTopTenHashes := #('t1' 't2' 't3' 't4' 't5' 't6' 't7' 't8' 't9' 't10').
	tweetsRepository := TweetsRepositoryMock forHandler: 'vitormcruzbr'.
	tweetsRepository underlyingTweets: (self tweetsHavingTop_N_Hashes: expectedTopTenHashes).
	self assert: (tweetsRepository hashesTop: 10) equals: expectedTopTenHashes.