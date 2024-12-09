# Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
require "algolia"
require "test/unit"

class TestClientInsightsClient < Test::Unit::TestCase
  # calls api with correct user agent
  def test_common_api0
    client = Algolia::InsightsClient.create(
      "APP_ID",
      "API_KEY",
      "us",
      {requester: Algolia::Transport::EchoRequester.new}
    )
    req = client.custom_post_with_http_info("1/test")
    assert(
      req.headers["user-agent"].match(
        /^Algolia for Ruby \(\d+\.\d+\.\d+(-?.*)?\)(; [a-zA-Z. ]+ (\(\d+((\.\d+)?\.\d+)?(-?.*)?\))?)*(; Insights (\(\d+\.\d+\.\d+(-?.*)?\)))(; [a-zA-Z. ]+ (\(\d+((\.\d+)?\.\d+)?(-?.*)?\))?)*$/
      )
    )
  end

  # the user agent contains the latest version
  def test_common_api1
    client = Algolia::InsightsClient.create(
      "APP_ID",
      "API_KEY",
      "us",
      {requester: Algolia::Transport::EchoRequester.new}
    )
    req = client.custom_post_with_http_info("1/test")
    assert(req.headers["user-agent"].match(/^Algolia for Ruby \(3.9.0\).*/))
  end

  # fallbacks to the alias when region is not given
  def test_parameters0

    client = Algolia::InsightsClient.create(
      "my-app-id",
      "my-api-key",

      {requester: Algolia::Transport::EchoRequester.new}
    )
    req = client.push_events_with_http_info(
      Algolia::Insights::InsightsEvents.new(
        events: [
          Algolia::Insights::ClickedObjectIDsAfterSearch.new(
            event_type: "click",
            event_name: "Product Clicked",
            index: "products",
            user_token: "user-123456",
            authenticated_user_token: "user-123456",
            timestamp: 1641290601962,
            object_ids: ["9780545139700", "9780439784542"],
            query_id: "43b15df305339e827f0ac0bdc5ebcaa7",
            positions: [7, 6]
          )
        ]
      )
    )
    assert_equal("insights.algolia.io", req.host.url)
  end

  # uses the correct region
  def test_parameters1

    client = Algolia::InsightsClient.create(
      "my-app-id",
      "my-api-key",
      "us",
      {requester: Algolia::Transport::EchoRequester.new}
    )
    req = client.custom_delete_with_http_info("test")
    assert_equal("insights.us.algolia.io", req.host.url)
  end

  # throws when incorrect region is given
  def test_parameters2
    begin

      Algolia::InsightsClient.create(
        "my-app-id",
        "my-api-key",
        "not_a_region",
        {requester: Algolia::Transport::EchoRequester.new}
      )
      assert(false, "An error should have been raised")
    rescue => e
      assert_equal(
        "`region` must be one of the following: de, us".sub(
          "%localhost%",
          ENV.fetch("CI", nil) == "true" ? "localhost" : "host.docker.internal"
        ),
        e.message
      )
    end
  end

  # switch API key
  def test_set_client_api_key0
    client = Algolia::InsightsClient.create_with_config(
      Algolia::Configuration.new(
        "test-app-id",
        "test-api-key",
        [
          Algolia::Transport::StatefulHost.new(
            ENV.fetch("CI", nil) == "true" ? "localhost" : "host.docker.internal",
            protocol: "http://",
            port: 6683,
            accept: CallType::READ | CallType::WRITE
          )
        ],
        "insightsClient"
      )
    )
    req = client.custom_get("check-api-key/1")
    assert_equal({:"headerAPIKeyValue" => "test-api-key"}, req.is_a?(Array) ? req.map(&:to_hash) : req.to_hash)
    client.set_client_api_key("updated-api-key")
    req = client.custom_get("check-api-key/2")
    assert_equal({:"headerAPIKeyValue" => "updated-api-key"}, req.is_a?(Array) ? req.map(&:to_hash) : req.to_hash)
  end

end
