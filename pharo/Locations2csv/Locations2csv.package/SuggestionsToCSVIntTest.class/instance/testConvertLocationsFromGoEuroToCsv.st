tests
testConvertLocationsFromGoEuroToCsv
	| locationsExpected locationsObtained |
	
	locationsExpected := self locations forCity: 'rio de janeiro'.
	locationsExpected 	asCsvNamed: 'LocationsForRio.csv'.
	locationsObtained := self locationFromCsvFile: locationsExpected csvPath, 'LocationsForRio.csv'.
	self assert: locationsExpected asSet equals: locationsObtained asSet