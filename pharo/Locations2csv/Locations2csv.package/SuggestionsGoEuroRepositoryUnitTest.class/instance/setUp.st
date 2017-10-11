running
setUp

	znClientMock := Mock new.
	znClientMock stub new willReturn: znClientMock.
	znClientMock stub beOneShot willReturn: znClientMock.
	
	suggestionRepositoryBuilder := SuggestionsGoEuroRepository new znClient: znClientMock.