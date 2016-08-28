initialization
initialize

	super initialize.
	teapot := Teapot configure: {
		#port -> 8080.
		#debugMode -> true
	}.