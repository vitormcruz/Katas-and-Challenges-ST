instance creation
for: anInteger 

	^ busStops at: anInteger ifAbsent: [ busStops at: anInteger put: super new ].