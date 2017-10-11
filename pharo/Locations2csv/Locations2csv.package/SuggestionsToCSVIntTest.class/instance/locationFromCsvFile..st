tests
locationFromCsvFile: aCsvFile

	^ ((FileSystem disk workingDirectory / aCsvFile) readStreamDo: [ :fileStream | 
								(NeoCSVReader  on: fileStream)
								 				  skipHeader;
								 				  recordClass: Dictionary;
												  addIntegerFieldAt: #_id;
												  addFieldAt: #name;
												  addFieldAt: #type;
												  addIntegerFieldAt: #latitude;
												  addIntegerFieldAt: #longitude;
												  upToEnd 
							 ] )collect: [ :it | SuggestionGoEuro newForDictionary: it ]