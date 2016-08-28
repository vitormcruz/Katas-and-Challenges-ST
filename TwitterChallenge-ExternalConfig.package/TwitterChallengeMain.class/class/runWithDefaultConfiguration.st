run
runWithDefaultConfiguration

	| oAuthProvider |

	defaultRun ifNotNil: [defaultRun stop].
	oAuthProvider := OAuthProvider newForConsumer: consumerString secret: consumerSecretString withAccessTokenConsumer: accessTokenConsumerString andAccessTokenSecret: accessTokenSecretString.
	defaultRun := TwitterChallengeWebAPIServer new tweetsRepositoryClass: TweetsRepositoryRestConsumer; 
																 oAuthProvider: oAuthProvider; 
																 start.
