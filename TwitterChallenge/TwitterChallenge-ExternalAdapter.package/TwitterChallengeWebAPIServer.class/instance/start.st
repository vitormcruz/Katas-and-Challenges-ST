server handling
start

	teapot
		GET: '/handle-analysis/<handle>/toptentags/' -> [ :request | 
			| maxLastTweetsToUse |
			maxLastTweetsToUse := (request at: 'limit' ifAbsent: [ nil ]).
			maxLastTweetsToUse ifNil: [ maxLastTweetsToUse :=  tweetsServiceClass maxTweetsToUse] 
			                   ifNotNil: [maxLastTweetsToUse := maxLastTweetsToUse asInteger].
			NeoJSONWriter toString: (tweetsServiceClass new hashesTop: 10 usingLastTweetsUpTo: maxLastTweetsToUse fromHandler: (request at: #handle)) 
		];
		start