server handling
start
	teapot
		GET: '/handle-analysis/<handle>' -> [ :request |  
			| tweetsRepository |
			tweetsRepository := TweetsRepositoryRestConsumer forHandler: (request at: #handle).
			NeoJSONWriter toString: (tweetsRepository chain first: (request at: 'limit') asInteger; 
																		  hashesTop: 10).
		];
		start
		
