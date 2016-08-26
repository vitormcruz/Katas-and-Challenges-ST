initialization
initialize

	super initialize.
	consumerString := ''.
	consumerSecretString := ''.
	accessTokenConsumerString := ''.
	accessTokenSecretString := ''.
	teapot := Teapot configure: {
		#port -> 8080.
		#debugMode -> false
	}.