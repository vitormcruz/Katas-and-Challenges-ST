fetching
nextIdQueryFor: intermediateResult

	intermediateResult ifNotEmpty: [ ^ '&max_id=' , ((intermediateResult last at: #id) asNumber - 1) asString ].
	
	^ ''
	