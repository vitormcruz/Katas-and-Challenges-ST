fetching
fetchLastTweetsUpTo: lastTweetsUpTo fromHandler: handler
	| limit nextMaxId tweets lastSizeResult |
	
   limit := self class maxTweetsToUse min: (lastTweetsUpTo	ifNil: [ self class maxTweetsToUse ]).

	tweets := OrderedCollection new.
	lastSizeResult := 1.
	nextMaxId := ''.	
	[ (tweets size < limit) & (lastSizeResult ~= 0)] whileTrue: 
	[ | intermediateResult |
		intermediateResult := NeoJSONObject fromString: (oauthProvider httpGet: (self templateCallFor: handler) , nextMaxId).
		lastSizeResult := intermediateResult size.
		nextMaxId := self nextIdQueryFor: intermediateResult.
		tweets addAll: intermediateResult.
	].

	^ (tweets firstAvailable: limit) collect: [ :tweet | DictionaryTweet newFromDictionary: tweet ].