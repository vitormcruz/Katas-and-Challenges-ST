class initialization
initialize

	Smalltalk addToStartUpList: self.
	OAuthProvider consumerkey: #TWITTER_CHALLENGE_CONSUMER.
	OAuthProvider consumerSecretKey: #TWITTER_CHALLENGE_SECRET.
	OAuthProvider accessTokenConsumerKey: #TWITTER_CHALLENGE_ACCESSTOKEN_CONSUMER.
	OAuthProvider accessTokenSecretKey: #TWITTER_CHALLENGE_ACCESSTOKEN_SECRET.
	self runWithDefaultConfiguration.
