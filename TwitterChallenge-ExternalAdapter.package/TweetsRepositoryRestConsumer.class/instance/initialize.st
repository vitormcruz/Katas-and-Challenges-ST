initialization
initialize
	super initialize.
	maxLimit := 2000.
	limit := maxLimit.
	oauthProvider := OAuthProvider newForConsumer: '' secret: '' withAccessTokenConsumer: '' andAccessTokenSecret: ''.