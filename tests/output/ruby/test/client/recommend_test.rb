# Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
require "algolia"
require "test/unit"

class TestClientRecommendClient < Test::Unit::TestCase
  # calls api with correct read host
  def test_api0

    client = Algolia::RecommendClient.create(
      "test-app-id",
      "test-api-key",

      {requester: Algolia::Transport::EchoRequester.new}
    )
    req = client.custom_get_with_http_info("test")
    assert_equal("test-app-id-dsn.algolia.net", req.host.url)
  end

  # calls api with correct write host
  def test_api1

    client = Algolia::RecommendClient.create(
      "test-app-id",
      "test-api-key",

      {requester: Algolia::Transport::EchoRequester.new}
    )
    req = client.custom_post_with_http_info("test")
    assert_equal("test-app-id.algolia.net", req.host.url)
  end

  # calls api with correct user agent
  def test_common_api0
    client = Algolia::RecommendClient.create(
      "APP_ID",
      "API_KEY",

      {requester: Algolia::Transport::EchoRequester.new}
    )
    req = client.custom_post_with_http_info("1/test")
    assert(
      req.headers["user-agent"].match(
        /^Algolia for Ruby \(\d+\.\d+\.\d+(-?.*)?\)(; [a-zA-Z. ]+ (\(\d+((\.\d+)?\.\d+)?(-?.*)?\))?)*(; Recommend (\(\d+\.\d+\.\d+(-?.*)?\)))(; [a-zA-Z. ]+ (\(\d+((\.\d+)?\.\d+)?(-?.*)?\))?)*$/
      )
    )
  end

  # the user agent contains the latest version
  def test_common_api1
    client = Algolia::RecommendClient.create(
      "APP_ID",
      "API_KEY",

      {requester: Algolia::Transport::EchoRequester.new}
    )
    req = client.custom_post_with_http_info("1/test")
    assert(req.headers["user-agent"].match(/^Algolia for Ruby \(3.9.0\).*/))
  end

  # switch API key
  def test_set_client_api_key0
    client = Algolia::RecommendClient.create_with_config(
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
        "recommendClient"
      )
    )
    req = client.custom_get("check-api-key/1")
    assert_equal({:"headerAPIKeyValue" => "test-api-key"}, req.is_a?(Array) ? req.map(&:to_hash) : req.to_hash)
    client.set_client_api_key("updated-api-key")
    req = client.custom_get("check-api-key/2")
    assert_equal({:"headerAPIKeyValue" => "updated-api-key"}, req.is_a?(Array) ? req.map(&:to_hash) : req.to_hash)
  end

end
