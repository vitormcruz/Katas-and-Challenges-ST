run
runWithDefaultConfiguration

	defaultRun ifNotNil: [defaultRun stop].
	defaultRun := TwitterChallengeWebAPIServer new tweetsRepositoryClass: TweetsRepositoryRestConsumer; start.
