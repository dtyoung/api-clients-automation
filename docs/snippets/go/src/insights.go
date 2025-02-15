// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
package snippets

// >IMPORT
import "github.com/algolia/algoliasearch-client-go/v4/algolia/insights"

// IMPORT<

func SnippetForCustomDeleteOfInsights() {
	/*
	   Snippet for the customDelete method.

	   allow del method for a custom path with minimal parameters
	*/

	// >SEPARATOR customDelete default
	// Initialize the client with your application region, eg. insights.ALGOLIA_APPLICATION_REGION
	client, err := insights.NewClient("ALGOLIA_APPLICATION_ID", "ALGOLIA_API_KEY", insights.US)
	if err != nil {
		// The client can fail to initialize if you pass an invalid parameter.
		panic(err)
	}

	// Call the API
	response, err := client.CustomDelete(client.NewApiCustomDeleteRequest(
		"test/minimal",
	))
	if err != nil {
		// handle the eventual error
		panic(err)
	}

	// >LOG
	// use the model directly
	print(response)
	// SEPARATOR<
}
func SnippetForCustomGetOfInsights() {
	/*
	   Snippet for the customGet method.

	   allow get method for a custom path with minimal parameters
	*/

	// >SEPARATOR customGet default
	// Initialize the client with your application region, eg. insights.ALGOLIA_APPLICATION_REGION
	client, err := insights.NewClient("ALGOLIA_APPLICATION_ID", "ALGOLIA_API_KEY", insights.US)
	if err != nil {
		// The client can fail to initialize if you pass an invalid parameter.
		panic(err)
	}

	// Call the API
	response, err := client.CustomGet(client.NewApiCustomGetRequest(
		"test/minimal",
	))
	if err != nil {
		// handle the eventual error
		panic(err)
	}

	// >LOG
	// use the model directly
	print(response)
	// SEPARATOR<
}
func SnippetForCustomPostOfInsights() {
	/*
	   Snippet for the customPost method.

	   allow post method for a custom path with minimal parameters
	*/

	// >SEPARATOR customPost default
	// Initialize the client with your application region, eg. insights.ALGOLIA_APPLICATION_REGION
	client, err := insights.NewClient("ALGOLIA_APPLICATION_ID", "ALGOLIA_API_KEY", insights.US)
	if err != nil {
		// The client can fail to initialize if you pass an invalid parameter.
		panic(err)
	}

	// Call the API
	response, err := client.CustomPost(client.NewApiCustomPostRequest(
		"test/minimal",
	))
	if err != nil {
		// handle the eventual error
		panic(err)
	}

	// >LOG
	// use the model directly
	print(response)
	// SEPARATOR<
}
func SnippetForCustomPutOfInsights() {
	/*
	   Snippet for the customPut method.

	   allow put method for a custom path with minimal parameters
	*/

	// >SEPARATOR customPut default
	// Initialize the client with your application region, eg. insights.ALGOLIA_APPLICATION_REGION
	client, err := insights.NewClient("ALGOLIA_APPLICATION_ID", "ALGOLIA_API_KEY", insights.US)
	if err != nil {
		// The client can fail to initialize if you pass an invalid parameter.
		panic(err)
	}

	// Call the API
	response, err := client.CustomPut(client.NewApiCustomPutRequest(
		"test/minimal",
	))
	if err != nil {
		// handle the eventual error
		panic(err)
	}

	// >LOG
	// use the model directly
	print(response)
	// SEPARATOR<
}
func SnippetForDeleteUserTokenOfInsights() {
	/*
	   Snippet for the deleteUserToken method.

	   deleteUserToken
	*/

	// >SEPARATOR deleteUserToken default
	// Initialize the client with your application region, eg. insights.ALGOLIA_APPLICATION_REGION
	client, err := insights.NewClient("ALGOLIA_APPLICATION_ID", "ALGOLIA_API_KEY", insights.US)
	if err != nil {
		// The client can fail to initialize if you pass an invalid parameter.
		panic(err)
	}

	// Call the API
	err = client.DeleteUserToken(client.NewApiDeleteUserTokenRequest(
		"test-user-1",
	))
	if err != nil {
		// handle the eventual error
		panic(err)
	}

	// >LOG
	// SEPARATOR<
}
func SnippetForPushEventsOfInsights() {
	/*
	   Snippet for the pushEvents method.

	   pushEvents
	*/

	// >SEPARATOR pushEvents default
	// Initialize the client with your application region, eg. insights.ALGOLIA_APPLICATION_REGION
	client, err := insights.NewClient("ALGOLIA_APPLICATION_ID", "ALGOLIA_API_KEY", insights.US)
	if err != nil {
		// The client can fail to initialize if you pass an invalid parameter.
		panic(err)
	}

	// Call the API
	response, err := client.PushEvents(client.NewApiPushEventsRequest(

		insights.NewEmptyInsightsEvents().SetEvents(
			[]insights.EventsItems{*insights.ClickedObjectIDsAfterSearchAsEventsItems(
				insights.NewEmptyClickedObjectIDsAfterSearch().SetEventType(insights.ClickEvent("click")).SetEventName("Product Clicked").SetIndex("products").SetUserToken("user-123456").SetAuthenticatedUserToken("user-123456").SetTimestamp(1641290601962).SetObjectIDs(
					[]string{"9780545139700", "9780439784542"}).SetQueryID("43b15df305339e827f0ac0bdc5ebcaa7").SetPositions(
					[]int32{7, 6}))}),
	))
	if err != nil {
		// handle the eventual error
		panic(err)
	}

	// >LOG
	// use the model directly
	print(response)
	// SEPARATOR<
}
func SnippetForSetClientApiKeyOfInsights() {
	/*
	   Snippet for the setClientApiKey method.

	   switch API key
	*/

	// >SEPARATOR setClientApiKey default
	// Initialize the client with your application region, eg. insights.ALGOLIA_APPLICATION_REGION
	client, err := insights.NewClient("ALGOLIA_APPLICATION_ID", "ALGOLIA_API_KEY", insights.US)
	if err != nil {
		// The client can fail to initialize if you pass an invalid parameter.
		panic(err)
	}

	// Call the API
	err = client.SetClientApiKey(
		"updated-api-key",
	)
	if err != nil {
		// handle the eventual error
		panic(err)
	}

	// >LOG
	// SEPARATOR<
}
