// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
package requests

import (
	"encoding/json"
	"testing"

	"github.com/kinbiko/jsonassert"
	"github.com/stretchr/testify/require"

	"gotests/tests"

	"github.com/algolia/algoliasearch-client-go/v4/algolia/insights"
	"github.com/algolia/algoliasearch-client-go/v4/algolia/transport"
)

func createInsightsClient(t *testing.T) (*insights.APIClient, *tests.EchoRequester) {
	t.Helper()

	echo := &tests.EchoRequester{}
	cfg := insights.InsightsConfiguration{
		Configuration: transport.Configuration{
			AppID:     "appID",
			ApiKey:    "apiKey",
			Requester: echo,
		},
		Region: insights.US,
	}
	client, err := insights.NewClientWithConfig(cfg)
	require.NoError(t, err)

	return client, echo
}

func TestInsights_CustomDelete(t *testing.T) {
	client, echo := createInsightsClient(t)
	_ = echo

	t.Run("allow del method for a custom path with minimal parameters", func(t *testing.T) {
		_, err := client.CustomDelete(client.NewApiCustomDeleteRequest(
			"test/minimal",
		))
		require.NoError(t, err)

		require.Equal(t, "/test/minimal", echo.Path)
		require.Equal(t, "DELETE", echo.Method)

		require.Nil(t, echo.Body)
	})
	t.Run("allow del method for a custom path with all parameters", func(t *testing.T) {
		_, err := client.CustomDelete(client.NewApiCustomDeleteRequest(
			"test/all",
		).WithParameters(map[string]any{"query": "parameters"}))
		require.NoError(t, err)

		require.Equal(t, "/test/all", echo.Path)
		require.Equal(t, "DELETE", echo.Method)

		require.Nil(t, echo.Body)
		queryParams := map[string]string{}
		require.NoError(t, json.Unmarshal([]byte(`{"query":"parameters"}`), &queryParams))
		require.Len(t, queryParams, len(echo.Query))
		for k, v := range queryParams {
			require.Equal(t, v, echo.Query.Get(k))
		}
	})
}

func TestInsights_CustomGet(t *testing.T) {
	client, echo := createInsightsClient(t)
	_ = echo

	t.Run("allow get method for a custom path with minimal parameters", func(t *testing.T) {
		_, err := client.CustomGet(client.NewApiCustomGetRequest(
			"test/minimal",
		))
		require.NoError(t, err)

		require.Equal(t, "/test/minimal", echo.Path)
		require.Equal(t, "GET", echo.Method)

		require.Nil(t, echo.Body)
	})
	t.Run("allow get method for a custom path with all parameters", func(t *testing.T) {
		_, err := client.CustomGet(client.NewApiCustomGetRequest(
			"test/all",
		).WithParameters(map[string]any{"query": "parameters with space"}))
		require.NoError(t, err)

		require.Equal(t, "/test/all", echo.Path)
		require.Equal(t, "GET", echo.Method)

		require.Nil(t, echo.Body)
		queryParams := map[string]string{}
		require.NoError(t, json.Unmarshal([]byte(`{"query":"parameters%20with%20space"}`), &queryParams))
		require.Len(t, queryParams, len(echo.Query))
		for k, v := range queryParams {
			require.Equal(t, v, echo.Query.Get(k))
		}
	})
	t.Run("requestOptions should be escaped too", func(t *testing.T) {
		_, err := client.CustomGet(client.NewApiCustomGetRequest(
			"test/all",
		).WithParameters(map[string]any{"query": "to be overriden"}),
			insights.WithQueryParam("query", "parameters with space"), insights.WithQueryParam("and an array",
				[]string{"array", "with spaces"}), insights.WithHeaderParam("x-header-1", "spaces are left alone"),
		)
		require.NoError(t, err)

		require.Equal(t, "/test/all", echo.Path)
		require.Equal(t, "GET", echo.Method)

		require.Nil(t, echo.Body)
		headers := map[string]string{}
		require.NoError(t, json.Unmarshal([]byte(`{"x-header-1":"spaces are left alone"}`), &headers))
		for k, v := range headers {
			require.Equal(t, v, echo.Header.Get(k))
		}
		queryParams := map[string]string{}
		require.NoError(t, json.Unmarshal([]byte(`{"query":"parameters%20with%20space","and%20an%20array":"array%2Cwith%20spaces"}`), &queryParams))
		require.Len(t, queryParams, len(echo.Query))
		for k, v := range queryParams {
			require.Equal(t, v, echo.Query.Get(k))
		}
	})
}

func TestInsights_CustomPost(t *testing.T) {
	client, echo := createInsightsClient(t)
	_ = echo

	t.Run("allow post method for a custom path with minimal parameters", func(t *testing.T) {
		_, err := client.CustomPost(client.NewApiCustomPostRequest(
			"test/minimal",
		))
		require.NoError(t, err)

		require.Equal(t, "/test/minimal", echo.Path)
		require.Equal(t, "POST", echo.Method)

		ja := jsonassert.New(t)
		ja.Assertf(*echo.Body, `{}`)
	})
	t.Run("allow post method for a custom path with all parameters", func(t *testing.T) {
		_, err := client.CustomPost(client.NewApiCustomPostRequest(
			"test/all",
		).WithParameters(map[string]any{"query": "parameters"}).WithBody(map[string]any{"body": "parameters"}))
		require.NoError(t, err)

		require.Equal(t, "/test/all", echo.Path)
		require.Equal(t, "POST", echo.Method)

		ja := jsonassert.New(t)
		ja.Assertf(*echo.Body, `{"body":"parameters"}`)
		queryParams := map[string]string{}
		require.NoError(t, json.Unmarshal([]byte(`{"query":"parameters"}`), &queryParams))
		require.Len(t, queryParams, len(echo.Query))
		for k, v := range queryParams {
			require.Equal(t, v, echo.Query.Get(k))
		}
	})
	t.Run("requestOptions can override default query parameters", func(t *testing.T) {
		_, err := client.CustomPost(client.NewApiCustomPostRequest(
			"test/requestOptions",
		).WithParameters(map[string]any{"query": "parameters"}).WithBody(map[string]any{"facet": "filters"}),
			insights.WithQueryParam("query", "myQueryParameter"),
		)
		require.NoError(t, err)

		require.Equal(t, "/test/requestOptions", echo.Path)
		require.Equal(t, "POST", echo.Method)

		ja := jsonassert.New(t)
		ja.Assertf(*echo.Body, `{"facet":"filters"}`)
		queryParams := map[string]string{}
		require.NoError(t, json.Unmarshal([]byte(`{"query":"myQueryParameter"}`), &queryParams))
		require.Len(t, queryParams, len(echo.Query))
		for k, v := range queryParams {
			require.Equal(t, v, echo.Query.Get(k))
		}
	})
	t.Run("requestOptions merges query parameters with default ones", func(t *testing.T) {
		_, err := client.CustomPost(client.NewApiCustomPostRequest(
			"test/requestOptions",
		).WithParameters(map[string]any{"query": "parameters"}).WithBody(map[string]any{"facet": "filters"}),
			insights.WithQueryParam("query2", "myQueryParameter"),
		)
		require.NoError(t, err)

		require.Equal(t, "/test/requestOptions", echo.Path)
		require.Equal(t, "POST", echo.Method)

		ja := jsonassert.New(t)
		ja.Assertf(*echo.Body, `{"facet":"filters"}`)
		queryParams := map[string]string{}
		require.NoError(t, json.Unmarshal([]byte(`{"query":"parameters","query2":"myQueryParameter"}`), &queryParams))
		require.Len(t, queryParams, len(echo.Query))
		for k, v := range queryParams {
			require.Equal(t, v, echo.Query.Get(k))
		}
	})
	t.Run("requestOptions can override default headers", func(t *testing.T) {
		_, err := client.CustomPost(client.NewApiCustomPostRequest(
			"test/requestOptions",
		).WithParameters(map[string]any{"query": "parameters"}).WithBody(map[string]any{"facet": "filters"}),
			insights.WithHeaderParam("x-algolia-api-key", "myApiKey"),
		)
		require.NoError(t, err)

		require.Equal(t, "/test/requestOptions", echo.Path)
		require.Equal(t, "POST", echo.Method)

		ja := jsonassert.New(t)
		ja.Assertf(*echo.Body, `{"facet":"filters"}`)
		headers := map[string]string{}
		require.NoError(t, json.Unmarshal([]byte(`{"x-algolia-api-key":"myApiKey"}`), &headers))
		for k, v := range headers {
			require.Equal(t, v, echo.Header.Get(k))
		}
		queryParams := map[string]string{}
		require.NoError(t, json.Unmarshal([]byte(`{"query":"parameters"}`), &queryParams))
		require.Len(t, queryParams, len(echo.Query))
		for k, v := range queryParams {
			require.Equal(t, v, echo.Query.Get(k))
		}
	})
	t.Run("requestOptions merges headers with default ones", func(t *testing.T) {
		_, err := client.CustomPost(client.NewApiCustomPostRequest(
			"test/requestOptions",
		).WithParameters(map[string]any{"query": "parameters"}).WithBody(map[string]any{"facet": "filters"}),
			insights.WithHeaderParam("x-algolia-api-key", "myApiKey"),
		)
		require.NoError(t, err)

		require.Equal(t, "/test/requestOptions", echo.Path)
		require.Equal(t, "POST", echo.Method)

		ja := jsonassert.New(t)
		ja.Assertf(*echo.Body, `{"facet":"filters"}`)
		headers := map[string]string{}
		require.NoError(t, json.Unmarshal([]byte(`{"x-algolia-api-key":"myApiKey"}`), &headers))
		for k, v := range headers {
			require.Equal(t, v, echo.Header.Get(k))
		}
		queryParams := map[string]string{}
		require.NoError(t, json.Unmarshal([]byte(`{"query":"parameters"}`), &queryParams))
		require.Len(t, queryParams, len(echo.Query))
		for k, v := range queryParams {
			require.Equal(t, v, echo.Query.Get(k))
		}
	})
	t.Run("requestOptions queryParameters accepts booleans", func(t *testing.T) {
		_, err := client.CustomPost(client.NewApiCustomPostRequest(
			"test/requestOptions",
		).WithParameters(map[string]any{"query": "parameters"}).WithBody(map[string]any{"facet": "filters"}),
			insights.WithQueryParam("isItWorking", true),
		)
		require.NoError(t, err)

		require.Equal(t, "/test/requestOptions", echo.Path)
		require.Equal(t, "POST", echo.Method)

		ja := jsonassert.New(t)
		ja.Assertf(*echo.Body, `{"facet":"filters"}`)
		queryParams := map[string]string{}
		require.NoError(t, json.Unmarshal([]byte(`{"query":"parameters","isItWorking":"true"}`), &queryParams))
		require.Len(t, queryParams, len(echo.Query))
		for k, v := range queryParams {
			require.Equal(t, v, echo.Query.Get(k))
		}
	})
	t.Run("requestOptions queryParameters accepts integers", func(t *testing.T) {
		_, err := client.CustomPost(client.NewApiCustomPostRequest(
			"test/requestOptions",
		).WithParameters(map[string]any{"query": "parameters"}).WithBody(map[string]any{"facet": "filters"}),
			insights.WithQueryParam("myParam", 2),
		)
		require.NoError(t, err)

		require.Equal(t, "/test/requestOptions", echo.Path)
		require.Equal(t, "POST", echo.Method)

		ja := jsonassert.New(t)
		ja.Assertf(*echo.Body, `{"facet":"filters"}`)
		queryParams := map[string]string{}
		require.NoError(t, json.Unmarshal([]byte(`{"query":"parameters","myParam":"2"}`), &queryParams))
		require.Len(t, queryParams, len(echo.Query))
		for k, v := range queryParams {
			require.Equal(t, v, echo.Query.Get(k))
		}
	})
	t.Run("requestOptions queryParameters accepts list of string", func(t *testing.T) {
		_, err := client.CustomPost(client.NewApiCustomPostRequest(
			"test/requestOptions",
		).WithParameters(map[string]any{"query": "parameters"}).WithBody(map[string]any{"facet": "filters"}),
			insights.WithQueryParam("myParam",
				[]string{"b and c", "d"}),
		)
		require.NoError(t, err)

		require.Equal(t, "/test/requestOptions", echo.Path)
		require.Equal(t, "POST", echo.Method)

		ja := jsonassert.New(t)
		ja.Assertf(*echo.Body, `{"facet":"filters"}`)
		queryParams := map[string]string{}
		require.NoError(t, json.Unmarshal([]byte(`{"query":"parameters","myParam":"b%20and%20c%2Cd"}`), &queryParams))
		require.Len(t, queryParams, len(echo.Query))
		for k, v := range queryParams {
			require.Equal(t, v, echo.Query.Get(k))
		}
	})
	t.Run("requestOptions queryParameters accepts list of booleans", func(t *testing.T) {
		_, err := client.CustomPost(client.NewApiCustomPostRequest(
			"test/requestOptions",
		).WithParameters(map[string]any{"query": "parameters"}).WithBody(map[string]any{"facet": "filters"}),
			insights.WithQueryParam("myParam",
				[]bool{true, true, false}),
		)
		require.NoError(t, err)

		require.Equal(t, "/test/requestOptions", echo.Path)
		require.Equal(t, "POST", echo.Method)

		ja := jsonassert.New(t)
		ja.Assertf(*echo.Body, `{"facet":"filters"}`)
		queryParams := map[string]string{}
		require.NoError(t, json.Unmarshal([]byte(`{"query":"parameters","myParam":"true%2Ctrue%2Cfalse"}`), &queryParams))
		require.Len(t, queryParams, len(echo.Query))
		for k, v := range queryParams {
			require.Equal(t, v, echo.Query.Get(k))
		}
	})
	t.Run("requestOptions queryParameters accepts list of integers", func(t *testing.T) {
		_, err := client.CustomPost(client.NewApiCustomPostRequest(
			"test/requestOptions",
		).WithParameters(map[string]any{"query": "parameters"}).WithBody(map[string]any{"facet": "filters"}),
			insights.WithQueryParam("myParam",
				[]int32{1, 2}),
		)
		require.NoError(t, err)

		require.Equal(t, "/test/requestOptions", echo.Path)
		require.Equal(t, "POST", echo.Method)

		ja := jsonassert.New(t)
		ja.Assertf(*echo.Body, `{"facet":"filters"}`)
		queryParams := map[string]string{}
		require.NoError(t, json.Unmarshal([]byte(`{"query":"parameters","myParam":"1%2C2"}`), &queryParams))
		require.Len(t, queryParams, len(echo.Query))
		for k, v := range queryParams {
			require.Equal(t, v, echo.Query.Get(k))
		}
	})
}

func TestInsights_CustomPut(t *testing.T) {
	client, echo := createInsightsClient(t)
	_ = echo

	t.Run("allow put method for a custom path with minimal parameters", func(t *testing.T) {
		_, err := client.CustomPut(client.NewApiCustomPutRequest(
			"test/minimal",
		))
		require.NoError(t, err)

		require.Equal(t, "/test/minimal", echo.Path)
		require.Equal(t, "PUT", echo.Method)

		ja := jsonassert.New(t)
		ja.Assertf(*echo.Body, `{}`)
	})
	t.Run("allow put method for a custom path with all parameters", func(t *testing.T) {
		_, err := client.CustomPut(client.NewApiCustomPutRequest(
			"test/all",
		).WithParameters(map[string]any{"query": "parameters"}).WithBody(map[string]any{"body": "parameters"}))
		require.NoError(t, err)

		require.Equal(t, "/test/all", echo.Path)
		require.Equal(t, "PUT", echo.Method)

		ja := jsonassert.New(t)
		ja.Assertf(*echo.Body, `{"body":"parameters"}`)
		queryParams := map[string]string{}
		require.NoError(t, json.Unmarshal([]byte(`{"query":"parameters"}`), &queryParams))
		require.Len(t, queryParams, len(echo.Query))
		for k, v := range queryParams {
			require.Equal(t, v, echo.Query.Get(k))
		}
	})
}

func TestInsights_DeleteUserToken(t *testing.T) {
	client, echo := createInsightsClient(t)
	_ = echo

	t.Run("deleteUserToken", func(t *testing.T) {
		err := client.DeleteUserToken(client.NewApiDeleteUserTokenRequest(
			"test-user-1",
		))
		require.NoError(t, err)

		require.Equal(t, "/1/usertokens/test-user-1", echo.Path)
		require.Equal(t, "DELETE", echo.Method)

		require.Nil(t, echo.Body)
	})
}

func TestInsights_PushEvents(t *testing.T) {
	client, echo := createInsightsClient(t)
	_ = echo

	t.Run("pushEvents", func(t *testing.T) {
		_, err := client.PushEvents(client.NewApiPushEventsRequest(

			insights.NewEmptyInsightsEvents().SetEvents(
				[]insights.EventsItems{*insights.ClickedObjectIDsAfterSearchAsEventsItems(
					insights.NewEmptyClickedObjectIDsAfterSearch().SetEventType(insights.ClickEvent("click")).SetEventName("Product Clicked").SetIndex("products").SetUserToken("user-123456").SetAuthenticatedUserToken("user-123456").SetTimestamp(1641290601962).SetObjectIDs(
						[]string{"9780545139700", "9780439784542"}).SetQueryID("43b15df305339e827f0ac0bdc5ebcaa7").SetPositions(
						[]int32{7, 6}))}),
		))
		require.NoError(t, err)

		require.Equal(t, "/1/events", echo.Path)
		require.Equal(t, "POST", echo.Method)

		ja := jsonassert.New(t)
		ja.Assertf(*echo.Body, `{"events":[{"eventType":"click","eventName":"Product Clicked","index":"products","userToken":"user-123456","authenticatedUserToken":"user-123456","timestamp":1641290601962,"objectIDs":["9780545139700","9780439784542"],"queryID":"43b15df305339e827f0ac0bdc5ebcaa7","positions":[7,6]}]}`)
	})
	t.Run("Many events type", func(t *testing.T) {
		_, err := client.PushEvents(client.NewApiPushEventsRequest(

			insights.NewEmptyInsightsEvents().SetEvents(
				[]insights.EventsItems{*insights.ConvertedObjectIDsAfterSearchAsEventsItems(
					insights.NewEmptyConvertedObjectIDsAfterSearch().SetEventType(insights.ConversionEvent("conversion")).SetEventName("Product Purchased").SetIndex("products").SetUserToken("user-123456").SetAuthenticatedUserToken("user-123456").SetTimestamp(1726012800000).SetObjectIDs(
						[]string{"9780545139700", "9780439784542"}).SetQueryID("43b15df305339e827f0ac0bdc5ebcaa7")), *insights.ViewedObjectIDsAsEventsItems(
					insights.NewEmptyViewedObjectIDs().SetEventType(insights.ViewEvent("view")).SetEventName("Product Detail Page Viewed").SetIndex("products").SetUserToken("user-123456").SetAuthenticatedUserToken("user-123456").SetTimestamp(1726012800000).SetObjectIDs(
						[]string{"9780545139700", "9780439784542"}))}),
		))
		require.NoError(t, err)

		require.Equal(t, "/1/events", echo.Path)
		require.Equal(t, "POST", echo.Method)

		ja := jsonassert.New(t)
		ja.Assertf(*echo.Body, `{"events":[{"eventType":"conversion","eventName":"Product Purchased","index":"products","userToken":"user-123456","authenticatedUserToken":"user-123456","timestamp":1726012800000,"objectIDs":["9780545139700","9780439784542"],"queryID":"43b15df305339e827f0ac0bdc5ebcaa7"},{"eventType":"view","eventName":"Product Detail Page Viewed","index":"products","userToken":"user-123456","authenticatedUserToken":"user-123456","timestamp":1726012800000,"objectIDs":["9780545139700","9780439784542"]}]}`)
	})
	t.Run("ConvertedObjectIDsAfterSearch", func(t *testing.T) {
		_, err := client.PushEvents(client.NewApiPushEventsRequest(

			insights.NewEmptyInsightsEvents().SetEvents(
				[]insights.EventsItems{*insights.ConvertedObjectIDsAfterSearchAsEventsItems(
					insights.NewEmptyConvertedObjectIDsAfterSearch().SetEventType(insights.ConversionEvent("conversion")).SetEventName("Product Purchased").SetIndex("products").SetUserToken("user-123456").SetAuthenticatedUserToken("user-123456").SetTimestamp(1641290601962).SetObjectIDs(
						[]string{"9780545139700", "9780439784542"}).SetQueryID("43b15df305339e827f0ac0bdc5ebcaa7"))}),
		))
		require.NoError(t, err)

		require.Equal(t, "/1/events", echo.Path)
		require.Equal(t, "POST", echo.Method)

		ja := jsonassert.New(t)
		ja.Assertf(*echo.Body, `{"events":[{"eventType":"conversion","eventName":"Product Purchased","index":"products","userToken":"user-123456","authenticatedUserToken":"user-123456","timestamp":1641290601962,"objectIDs":["9780545139700","9780439784542"],"queryID":"43b15df305339e827f0ac0bdc5ebcaa7"}]}`)
	})
	t.Run("ViewedObjectIDs", func(t *testing.T) {
		_, err := client.PushEvents(client.NewApiPushEventsRequest(

			insights.NewEmptyInsightsEvents().SetEvents(
				[]insights.EventsItems{*insights.ViewedObjectIDsAsEventsItems(
					insights.NewEmptyViewedObjectIDs().SetEventType(insights.ViewEvent("view")).SetEventName("Product Detail Page Viewed").SetIndex("products").SetUserToken("user-123456").SetAuthenticatedUserToken("user-123456").SetTimestamp(1641290601962).SetObjectIDs(
						[]string{"9780545139700", "9780439784542"}))}),
		))
		require.NoError(t, err)

		require.Equal(t, "/1/events", echo.Path)
		require.Equal(t, "POST", echo.Method)

		ja := jsonassert.New(t)
		ja.Assertf(*echo.Body, `{"events":[{"eventType":"view","eventName":"Product Detail Page Viewed","index":"products","userToken":"user-123456","authenticatedUserToken":"user-123456","timestamp":1641290601962,"objectIDs":["9780545139700","9780439784542"]}]}`)
	})
	t.Run("AddedToCartObjectIDs", func(t *testing.T) {
		_, err := client.PushEvents(client.NewApiPushEventsRequest(

			insights.NewEmptyInsightsEvents().SetEvents(
				[]insights.EventsItems{*insights.AddedToCartObjectIDsAfterSearchAsEventsItems(
					insights.NewEmptyAddedToCartObjectIDsAfterSearch().SetEventType(insights.ConversionEvent("conversion")).SetEventSubtype(insights.AddToCartEvent("addToCart")).SetEventName("Product Added To Cart").SetIndex("products").SetQueryID("43b15df305339e827f0ac0bdc5ebcaa7").SetUserToken("user-123456").SetAuthenticatedUserToken("user-123456").SetTimestamp(1641290601962).SetObjectIDs(
						[]string{"9780545139700", "9780439784542"}).SetObjectData(
						[]insights.ObjectDataAfterSearch{*insights.NewEmptyObjectDataAfterSearch().SetPrice(insights.Float64AsPrice(19.99)).SetQuantity(10).SetDiscount(insights.Float64AsDiscount(2.5)), *insights.NewEmptyObjectDataAfterSearch().SetPrice(insights.StringAsPrice("8$")).SetQuantity(7).SetDiscount(insights.StringAsDiscount("30%"))}).SetCurrency("USD"))}),
		))
		require.NoError(t, err)

		require.Equal(t, "/1/events", echo.Path)
		require.Equal(t, "POST", echo.Method)

		ja := jsonassert.New(t)
		ja.Assertf(*echo.Body, `{"events":[{"eventType":"conversion","eventSubtype":"addToCart","eventName":"Product Added To Cart","index":"products","queryID":"43b15df305339e827f0ac0bdc5ebcaa7","userToken":"user-123456","authenticatedUserToken":"user-123456","timestamp":1641290601962,"objectIDs":["9780545139700","9780439784542"],"objectData":[{"price":19.99,"quantity":10,"discount":2.5},{"price":"8$","quantity":7,"discount":"30%%"}],"currency":"USD"}]}`)
	})
}
