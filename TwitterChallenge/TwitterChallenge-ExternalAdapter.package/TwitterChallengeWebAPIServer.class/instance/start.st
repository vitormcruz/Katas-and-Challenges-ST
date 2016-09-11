server handling
start
	teapot GET: '\/handle\-analysis\/(.*)\/(toptentags$|toptentags\.json)' asRegex -> [ :request | 
					tweetsServiceClass new hashesTop: 10	usingLastTweetsUpTo: (self extractLimitFrom: request) fromHandler: (request at: 1).
	];	start