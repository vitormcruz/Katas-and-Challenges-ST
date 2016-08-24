private
underlyingTweets
	| service tweets |
	
	underlyingTweetsCache ifNotNil: [ ^ underlyingTweetsCache].
	
	underlyingTweetsCache := OrderedCollection new.
	
	
	service := ZnOAuth1Service new providerAccount: (ZnOAuth1ConsumerData newForTwitterAuthentication 
																						  consumer: (OSProcess thisOSProcess environmentAt: #TWITTER_CHALLENGE_CONSUMER);
																						  consumerSecret: (OSProcess thisOSProcess environmentAt: #TWITTER_CHALLENGE_SECRET); yourself);
																						  yourself.
																						
	tweets := NeoJSONObject fromString: (service httpGet: 'https://api.twitter.com/1.1/statuses/user_timeline.json?screen_name=vitormcruzbr' 
														 	  using: (ZnOAuth1TwitterAccessToken new secret: (OSProcess thisOSProcess environmentAt: #TWITTER_CHALLENGE_ACCESSTOKEN_SECRET); 
			  													 												 value: (OSProcess thisOSProcess environmentAt: #TWITTER_CHALLENGE_ACCESSTOKEN_CONSUMER))).
			  
	tweets collect: [ :tweet | DictionaryTweet newFromDictionary: tweet ] into: underlyingTweetsCache.
	
	^ underlyingTweetsCache 