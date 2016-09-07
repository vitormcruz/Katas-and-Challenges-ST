run
runWithDefaultConfiguration
	
	defaultRun ifNotNil: [ defaultRun stop ].
	defaultRun := TwitterChallengeWebAPIServer new	 tweetsServiceClass: TweetsServiceRestConsumer; start.