accessing
fetchLastTweetsUpTo: maxLastTweetsToUse fromHandler: handler

	^ underlyingTweets firstAvailable: maxLastTweetsToUse.