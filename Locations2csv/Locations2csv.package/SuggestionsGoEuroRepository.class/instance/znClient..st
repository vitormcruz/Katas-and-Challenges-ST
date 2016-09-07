accessing
znClient: aZnClient

	(aZnClient isNil or: [ aZnClient isEmpty ]) ifTrue: [ Error signal: 'znClient cannot be nil.' ].
	znClient := aZnClient.