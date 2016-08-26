instance creation
newForConsumer: aConsumerString secret: aConsumerSecretString withAccessTokenConsumer: anAccessTokenConsumerString andAccessTokenSecret: anAccessTokenSecretString

	service := ZnOAuth1Service new providerAccount: (ZnOAuth1ConsumerData newForTwitterAuthentication 
																						  consumer: aConsumerString;
																						  consumerSecret: aConsumerSecretString; yourself).
																						
	accessToken := ZnOAuth1TwitterAccessToken new secret: anAccessTokenSecretString; 
													  	     value: anAccessTokenConsumerString.
