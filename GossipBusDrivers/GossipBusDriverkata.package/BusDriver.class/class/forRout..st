instance creation
forRout: routs

	routs ifEmpty: [ self error: 'Nowhere to go!'].
	^ super new rout: routs.
