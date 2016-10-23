instance creation
for: anInteger

	^ busStops at: anInteger ifAbsentPut: [ self new ]