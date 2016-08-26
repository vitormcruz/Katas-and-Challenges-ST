run
runWithDefaultConfiguration

	defaultRun ifNotNil: [defaultRun stop].
	defaultRun := TwitterChallengeWebAPIServer new tweetsRepositoryClass: TweetsRepositoryRestConsumer; 
																 consumerString: consumerString; 
																 consumerSecretString: consumerSecretString; 
																 accessTokenConsumerString: accessTokenConsumerString; 
																 accessTokenSecretString: accessTokenSecretString; 
																 start.
