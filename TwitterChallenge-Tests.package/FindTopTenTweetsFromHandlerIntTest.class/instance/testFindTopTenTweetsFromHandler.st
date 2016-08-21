tests
testFindTopTenTweetsFromHandler
	| tweetsRepository expectedTopTenHashes |

	self skip.
	expectedTopTenHashes := #('t1' 't2' 't3' 't4' 't5' 't6' 't7' 't8' 't9' 't10').
	tweetsRepository := TweetsRepositoryMock forHandler: 'vitormcruzbr'.
	tweetsRepository underlyingTweets: (self tweetsHavingTopTenHashes: expectedTopTenHashes).
	(tweetsRepository hashesTop: 10) = expectedTopTenHashes