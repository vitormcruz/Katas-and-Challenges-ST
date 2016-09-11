server handling
extractLimitFrom: request
	^ (request at: 'limit' ifAbsent: [ TweetsService maxTweetsToUse ]) asInteger