test-utility
newDictionaryDorId: anId name: cityName type: aType latitude: aLatitude longitude: aLongitude

 ^ {'_id' -> anId.
	 'name' -> cityName .
    'type' -> aType.
	 'geo_position' -> {'latitude' -> aLatitude. 'longitude' -> aLongitude.} asDictionary } asDictionary.