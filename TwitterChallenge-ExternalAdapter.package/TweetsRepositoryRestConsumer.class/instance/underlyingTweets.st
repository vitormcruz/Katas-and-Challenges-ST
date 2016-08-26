private
underlyingTweets
	| tweets |
	
	underlyingTweetsCache ifNotNil: [ ^ underlyingTweetsCache].
	
	underlyingTweetsCache := OrderedCollection new.
	tweets := NeoJSONObject fromString: (oauthProvider httpGet: 'https://api.twitter.com/1.1/statuses/user_timeline.json?screen_name=vitormcruzbr').
	tweets collect: [ :tweet | DictionaryTweet newFromDictionary: tweet ] into: underlyingTweetsCache.
	^ underlyingTweetsCache 