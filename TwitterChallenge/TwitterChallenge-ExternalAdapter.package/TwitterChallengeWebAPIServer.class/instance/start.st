server handling
start
	teapot GET: '/handle-analysis/<handle>/toptentags.json' -> [ :request | 
					tweetsServiceClass new hashesTop: 10	usingLastTweetsUpTo: (self extractLimitFrom: request) fromHandler: (request at: #handle) 
	];	start