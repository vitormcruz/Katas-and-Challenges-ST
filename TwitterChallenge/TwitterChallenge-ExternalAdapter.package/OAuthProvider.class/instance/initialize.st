initialization
initialize

	service := ZnOAuth1Service new providerAccount: (ZnOAuth1ConsumerData newForTwitterAuthentication 
																						  consumer: (self getEnvKey: consumerKey);
																						  consumerSecret: (self getEnvKey: consumerSecretKey); yourself).
																						
	accessToken := ZnOAuth1TwitterAccessToken new secret: (self getEnvKey: accessTokenSecretKey); 
													  	     value: (self getEnvKey: accessTokenConsumerKey).
