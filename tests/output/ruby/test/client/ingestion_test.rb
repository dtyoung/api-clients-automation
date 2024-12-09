# Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
require "algolia"
require "test/unit"

class TestClientIngestionClient < Test::Unit::TestCase
  # can handle HTML error
  def test_api0
    client = Algolia::IngestionClient.create_with_config(
      Algolia::Configuration.new(
        "test-app-id",
        "test-api-key",
        [
          Algolia::Transport::StatefulHost.new(
            ENV.fetch("CI", nil) == "true" ? "localhost" : "host.docker.internal",
            protocol: "http://",
            port: 6676,
            accept: CallType::READ | CallType::WRITE
          )
        ],
        "ingestionClient"
      )
    )
    begin
      client.custom_get("1/html-error")
      assert(false, "An error should have been raised")
    rescue => e
      assert_equal(
        "429: Too Many Requests".sub(
          "%localhost%",
          ENV.fetch("CI", nil) == "true" ? "localhost" : "host.docker.internal"
        ),
        e.message
      )
    end
  end

  # calls api with default read timeouts
  def test_api1
    client = Algolia::IngestionClient.create(
      "APP_ID",
      "API_KEY",
      "us",
      {requester: Algolia::Transport::EchoRequester.new}
    )
    req = client.custom_get_with_http_info("1/test")
    assert_equal(25000, req.connect_timeout)
    assert_equal(25000, req.timeout)
  end

  # calls api with default write timeouts
  def test_api2
    client = Algolia::IngestionClient.create(
      "APP_ID",
      "API_KEY",
      "us",
      {requester: Algolia::Transport::EchoRequester.new}
    )
    req = client.custom_post_with_http_info("1/test")
    assert_equal(25000, req.connect_timeout)
    assert_equal(25000, req.timeout)
  end

  # calls api with correct user agent
  def test_common_api0
    client = Algolia::IngestionClient.create(
      "APP_ID",
      "API_KEY",
      "us",
      {requester: Algolia::Transport::EchoRequester.new}
    )
    req = client.custom_post_with_http_info("1/test")
    assert(
      req.headers["user-agent"].match(
        /^Algolia for Ruby \(\d+\.\d+\.\d+(-?.*)?\)(; [a-zA-Z. ]+ (\(\d+((\.\d+)?\.\d+)?(-?.*)?\))?)*(; Ingestion (\(\d+\.\d+\.\d+(-?.*)?\)))(; [a-zA-Z. ]+ (\(\d+((\.\d+)?\.\d+)?(-?.*)?\))?)*$/
      )
    )
  end

  # the user agent contains the latest version
  def test_common_api1
    client = Algolia::IngestionClient.create(
      "APP_ID",
      "API_KEY",
      "us",
      {requester: Algolia::Transport::EchoRequester.new}
    )
    req = client.custom_post_with_http_info("1/test")
    assert(req.headers["user-agent"].match(/^Algolia for Ruby \(3.9.0\).*/))
  end

  # uses the correct region
  def test_parameters0

    client = Algolia::IngestionClient.create(
      "my-app-id",
      "my-api-key",
      "us",
      {requester: Algolia::Transport::EchoRequester.new}
    )
    req = client.get_source_with_http_info("6c02aeb1-775e-418e-870b-1faccd4b2c0f")
    assert_equal("data.us.algolia.com", req.host.url)
  end

  # throws when incorrect region is given
  def test_parameters1
    begin

      Algolia::IngestionClient.create(
        "my-app-id",
        "my-api-key",
        "not_a_region",
        {requester: Algolia::Transport::EchoRequester.new}
      )
      assert(false, "An error should have been raised")
    rescue => e
      assert_equal(
        "`region` is required and must be one of the following: eu, us".sub(
          "%localhost%",
          ENV.fetch("CI", nil) == "true" ? "localhost" : "host.docker.internal"
        ),
        e.message
      )
    end
  end

  # switch API key
  def test_set_client_api_key0
    client = Algolia::IngestionClient.create_with_config(
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
        "ingestionClient"
      )
    )
    req = client.custom_get("check-api-key/1")
    assert_equal({:"headerAPIKeyValue" => "test-api-key"}, req.is_a?(Array) ? req.map(&:to_hash) : req.to_hash)
    client.set_client_api_key("updated-api-key")
    req = client.custom_get("check-api-key/2")
    assert_equal({:"headerAPIKeyValue" => "updated-api-key"}, req.is_a?(Array) ? req.map(&:to_hash) : req.to_hash)
  end

end
