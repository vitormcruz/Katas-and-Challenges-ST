fetching
fetchLastTweetsUpTo: lastTweetsUpTo fromHandler: handler

	| limit nextMaxId calls templateCall |
	
	nextMaxId := ''.
	limit := lastTweetsUpTo ifNil: [ self class maxTweetsToUse ] 
				 			          ifNotNil: [ lastTweetsUpTo min: (self class maxTweetsToUse) ].
	templateCall := 'https://api.twitter.com/1.1/statuses/user_timeline.json?include_rts=true&screen_name=', handler.
	
	calls := ((1 to: (limit / MAX_TWEETS_CALL)) collect: [ :it | 
		templateCall , '&count=', MAX_TWEETS_CALL asString.
	]) asOrderedCollection.

	(limit \\ MAX_TWEETS_CALL) ~= 0 ifTrue: [calls add: (templateCall , '&count=' , (limit \\ MAX_TWEETS_CALL) asString)]. 
	
	^ (calls flatCollect: [ :call | 
		| result |
		result := NeoJSONObject fromString: (oauthProvider httpGet: call, nextMaxId).
		nextMaxId := '&max_id=', ((result last at: #id) asNumber - 1) asString.
		result.
	]) collect: [ :tweet | DictionaryTweet newFromDictionary: tweet ].