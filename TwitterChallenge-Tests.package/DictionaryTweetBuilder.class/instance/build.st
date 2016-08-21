building
build

	| dictionary | 
	
	dictionary :=  Dictionary new.
	dictionary at: #entities put: {#hashTags -> (hashList collect: [ :hashTag |  #text -> hashTag ])} asDictionary.
	dictionary at: #text put: tweetText.
	^ DictionaryTweet newFromDictionary: dictionary 
