// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
package client

import (
	"encoding/json"
	"regexp"
	"testing"

	"github.com/stretchr/testify/require"

	"gotests/tests"

	"github.com/algolia/algoliasearch-client-go/v4/algolia/call"
	"github.com/algolia/algoliasearch-client-go/v4/algolia/personalization"
	"github.com/algolia/algoliasearch-client-go/v4/algolia/transport"
)

func createPersonalizationClient(t *testing.T) (*personalization.APIClient, *tests.EchoRequester) {
	echo := &tests.EchoRequester{}
	cfg := personalization.PersonalizationConfiguration{
		Configuration: transport.Configuration{
			AppID:     "appID",
			ApiKey:    "apiKey",
			Requester: echo,
		},
		Region: personalization.US,
	}
	client, err := personalization.NewClientWithConfig(cfg)
	require.NoError(t, err)

	return client, echo
}

// calls api with correct user agent
func TestPersonalizationcommonApi0(t *testing.T) {
	var err error
	var res any
	_ = res
	client, echo := createPersonalizationClient(t)
	_ = echo
	res, err = client.CustomPost(client.NewApiCustomPostRequest(
		"1/test",
	))
	require.NoError(t, err)
	require.Regexp(t, regexp.MustCompile(`^Algolia for Go \(\d+\.\d+\.\d+(-?.*)?\)(; [a-zA-Z. ]+ (\(\d+((\.\d+)?\.\d+)?(-?.*)?\))?)*(; Personalization (\(\d+\.\d+\.\d+(-?.*)?\)))(; [a-zA-Z. ]+ (\(\d+((\.\d+)?\.\d+)?(-?.*)?\))?)*$`), echo.Header.Get("User-Agent"))
}

// the user agent contains the latest version
func TestPersonalizationcommonApi1(t *testing.T) {
	var err error
	var res any
	_ = res
	client, echo := createPersonalizationClient(t)
	_ = echo
	res, err = client.CustomPost(client.NewApiCustomPostRequest(
		"1/test",
	))
	require.NoError(t, err)
	require.Regexp(t, regexp.MustCompile(`^Algolia for Go \(4.9.0\).*`), echo.Header.Get("User-Agent"))
}

// throws when region is not given
func TestPersonalizationparameters0(t *testing.T) {
	var err error
	var res any
	_ = res
	echo := &tests.EchoRequester{}
	var client *personalization.APIClient
	var cfg personalization.PersonalizationConfiguration
	_ = client
	_ = echo
	cfg = personalization.PersonalizationConfiguration{
		Configuration: transport.Configuration{
			AppID:     "my-app-id",
			ApiKey:    "my-api-key",
			Requester: echo,
		},
		Region: personalization.Region(""),
	}
	client, err = personalization.NewClientWithConfig(cfg)
	require.EqualError(t, err, "`region` is required and must be one of the following: eu, us")
}

// throws when incorrect region is given
func TestPersonalizationparameters1(t *testing.T) {
	var err error
	var res any
	_ = res
	echo := &tests.EchoRequester{}
	var client *personalization.APIClient
	var cfg personalization.PersonalizationConfiguration
	_ = client
	_ = echo
	cfg = personalization.PersonalizationConfiguration{
		Configuration: transport.Configuration{
			AppID:     "my-app-id",
			ApiKey:    "my-api-key",
			Requester: echo,
		},
		Region: personalization.Region("not_a_region"),
	}
	client, err = personalization.NewClientWithConfig(cfg)
	require.EqualError(t, err, "`region` is required and must be one of the following: eu, us")
}

// does not throw when region is given
func TestPersonalizationparameters2(t *testing.T) {
	var err error
	var res any
	_ = res
	echo := &tests.EchoRequester{}
	var client *personalization.APIClient
	var cfg personalization.PersonalizationConfiguration
	_ = client
	_ = echo
	cfg = personalization.PersonalizationConfiguration{
		Configuration: transport.Configuration{
			AppID:     "my-app-id",
			ApiKey:    "my-api-key",
			Requester: echo,
		},
		Region: personalization.Region("us"),
	}
	client, err = personalization.NewClientWithConfig(cfg)
	require.NoError(t, err)
}

// switch API key
func TestPersonalizationsetClientApiKey0(t *testing.T) {
	var err error
	var res any
	_ = res
	echo := &tests.EchoRequester{}
	var client *personalization.APIClient
	var cfg personalization.PersonalizationConfiguration
	_ = client
	_ = echo
	cfg = personalization.PersonalizationConfiguration{
		Configuration: transport.Configuration{
			AppID:  "test-app-id",
			ApiKey: "test-api-key",
			Hosts:  []transport.StatefulHost{transport.NewStatefulHost("http", tests.GetLocalhost()+":6683", call.IsReadWrite)},
		},
		Region: personalization.Region("us"),
	}
	client, err = personalization.NewClientWithConfig(cfg)
	require.NoError(t, err)
	{
		res, err = client.CustomGet(client.NewApiCustomGetRequest(
			"check-api-key/1",
		))
		require.NoError(t, err)
		rawBody, err := json.Marshal(res)
		require.NoError(t, err)
		require.JSONEq(t, `{"headerAPIKeyValue":"test-api-key"}`, string(rawBody))
	}
	{
		err = client.SetClientApiKey(
			"updated-api-key",
		)
		require.NoError(t, err)
	}
	{
		res, err = client.CustomGet(client.NewApiCustomGetRequest(
			"check-api-key/2",
		))
		require.NoError(t, err)
		rawBody, err := json.Marshal(res)
		require.NoError(t, err)
		require.JSONEq(t, `{"headerAPIKeyValue":"updated-api-key"}`, string(rawBody))
	}
}
