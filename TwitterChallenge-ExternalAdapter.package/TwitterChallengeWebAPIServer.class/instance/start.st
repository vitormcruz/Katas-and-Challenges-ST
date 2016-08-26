server handling
start
	teapot
		GET: '/handle-analysis/<handle>/toptentags/' -> [ :request | 
			| limit |
			limit := (request at: 'limit' ifAbsent: [ nil ]).
			limit ifNotNil: [limit := limit asInteger].
					NeoJSONWriter toString: (tweetsRepositoryClass chain forHandler: (request at: #handle); 
																						 first: limit;
																						 hashesTop: 10) 
		];
		start