# Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
require "algolia"
require "test/unit"

class TestClientSearchClient < Test::Unit::TestCase
  # calls api with correct read host
  def test_api0

    client = Algolia::SearchClient.create(
      "test-app-id",
      "test-api-key",

      {requester: Algolia::Transport::EchoRequester.new}
    )
    req = client.custom_get_with_http_info("test")
    assert_equal("test-app-id-dsn.algolia.net", req.host.url)
  end

  # read transporter with POST method
  def test_api1

    client = Algolia::SearchClient.create(
      "test-app-id",
      "test-api-key",

      {requester: Algolia::Transport::EchoRequester.new}
    )
    req = client.search_single_index_with_http_info("indexName")
    assert_equal("test-app-id-dsn.algolia.net", req.host.url)
  end

  # calls api with correct write host
  def test_api2

    client = Algolia::SearchClient.create(
      "test-app-id",
      "test-api-key",

      {requester: Algolia::Transport::EchoRequester.new}
    )
    req = client.custom_post_with_http_info("test")
    assert_equal("test-app-id.algolia.net", req.host.url)
  end

  # tests the retry strategy
  def test_api3
    client = Algolia::SearchClient.create_with_config(
      Algolia::Configuration.new(
        "test-app-id",
        "test-api-key",
        [
          Algolia::Transport::StatefulHost.new(
            ENV.fetch("CI", nil) == "true" ? "localhost" : "host.docker.internal",
            protocol: "http://",
            port: 6676,
            accept: CallType::READ | CallType::WRITE
          ),
          Algolia::Transport::StatefulHost.new(
            ENV.fetch("CI", nil) == "true" ? "localhost" : "host.docker.internal",
            protocol: "http://",
            port: 6677,
            accept: CallType::READ | CallType::WRITE
          ),
          Algolia::Transport::StatefulHost.new(
            ENV.fetch("CI", nil) == "true" ? "localhost" : "host.docker.internal",
            protocol: "http://",
            port: 6678,
            accept: CallType::READ | CallType::WRITE
          )
        ],
        "searchClient"
      )
    )
    req = client.custom_get("1/test/retry/ruby")
    assert_equal({:"message" => "ok test server response"}, req.is_a?(Array) ? req.map(&:to_hash) : req.to_hash)
  end

  # tests the retry strategy error
  def test_api4
    client = Algolia::SearchClient.create_with_config(
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
        "searchClient"
      )
    )
    begin
      client.custom_get("1/test/hang/ruby")
      assert(false, "An error should have been raised")
    rescue => e
      assert_equal(
        "Unreachable hosts. Last error for %localhost%: Net::ReadTimeout with #<TCPSocket:(closed)>".sub(
          "%localhost%",
          ENV.fetch("CI", nil) == "true" ? "localhost" : "host.docker.internal"
        ),
        e.message
      )
    end
  end

  # test the compression strategy
  def test_api5
    client = Algolia::SearchClient.create_with_config(
      Algolia::Configuration.new(
        "test-app-id",
        "test-api-key",
        [
          Algolia::Transport::StatefulHost.new(
            ENV.fetch("CI", nil) == "true" ? "localhost" : "host.docker.internal",
            protocol: "http://",
            port: 6678,
            accept: CallType::READ | CallType::WRITE
          )
        ],
        "searchClient",
        compression_type: "gzip"
      )
    )
    req = client.custom_post("1/test/gzip", {}, {message: "this is a compressed body"})
    assert_equal(
      {:"message" => "ok compression test server response", :"body" => {:"message" => "this is a compressed body"}},
      req.is_a?(Array) ? req.map(&:to_hash) : req.to_hash
    )
  end

  # calls api with default read timeouts
  def test_api6
    client = Algolia::SearchClient.create(
      "APP_ID",
      "API_KEY",

      {requester: Algolia::Transport::EchoRequester.new}
    )
    req = client.custom_get_with_http_info("1/test")
    assert_equal(2000, req.connect_timeout)
    assert_equal(5000, req.timeout)
  end

  # calls api with default write timeouts
  def test_api7
    client = Algolia::SearchClient.create(
      "APP_ID",
      "API_KEY",

      {requester: Algolia::Transport::EchoRequester.new}
    )
    req = client.custom_post_with_http_info("1/test")
    assert_equal(2000, req.connect_timeout)
    assert_equal(30000, req.timeout)
  end

  # calls api with correct user agent
  def test_common_api0
    client = Algolia::SearchClient.create(
      "APP_ID",
      "API_KEY",

      {requester: Algolia::Transport::EchoRequester.new}
    )
    req = client.custom_post_with_http_info("1/test")
    assert(
      req.headers["user-agent"].match(
        /^Algolia for Ruby \(\d+\.\d+\.\d+(-?.*)?\)(; [a-zA-Z. ]+ (\(\d+((\.\d+)?\.\d+)?(-?.*)?\))?)*(; Search (\(\d+\.\d+\.\d+(-?.*)?\)))(; [a-zA-Z. ]+ (\(\d+((\.\d+)?\.\d+)?(-?.*)?\))?)*$/
      )
    )
  end

  # the user agent contains the latest version
  def test_common_api1
    client = Algolia::SearchClient.create(
      "APP_ID",
      "API_KEY",

      {requester: Algolia::Transport::EchoRequester.new}
    )
    req = client.custom_post_with_http_info("1/test")
    assert(req.headers["user-agent"].match(/^Algolia for Ruby \(3.9.0\).*/))
  end

  # call deleteObjects without error
  def test_delete_objects0
    client = Algolia::SearchClient.create_with_config(
      Algolia::Configuration.new(
        "test-app-id",
        "test-api-key",
        [
          Algolia::Transport::StatefulHost.new(
            ENV.fetch("CI", nil) == "true" ? "localhost" : "host.docker.internal",
            protocol: "http://",
            port: 6680,
            accept: CallType::READ | CallType::WRITE
          )
        ],
        "searchClient"
      )
    )
    req = client.delete_objects("cts_e2e_deleteObjects_ruby", ["1", "2"])
    assert_equal([{:"taskID" => 666, :"objectIDs" => ["1", "2"]}], req.is_a?(Array) ? req.map(&:to_hash) : req.to_hash)
  end

  # generate secured api key basic
  def test_generate_secured_api_key0
    client = Algolia::SearchClient.create(
      "APP_ID",
      "API_KEY",

      {requester: Algolia::Transport::EchoRequester.new}
    )
    req = client.generate_secured_api_key(
      "2640659426d5107b6e47d75db9cbaef8",
      Algolia::Search::SecuredApiKeyRestrictions.new(valid_until: 2524604400, restrict_indices: ["Movies"])
    )
    assert_equal(
      "NjFhZmE0OGEyMTI3OThiODc0OTlkOGM0YjcxYzljY2M2NmU2NDE5ZWY0NDZjMWJhNjA2NzBkMjAwOTI2YWQyZnJlc3RyaWN0SW5kaWNlcz1Nb3ZpZXMmdmFsaWRVbnRpbD0yNTI0NjA0NDAw",
      req
    )
  end

  # generate secured api key with searchParams
  def test_generate_secured_api_key1
    client = Algolia::SearchClient.create(
      "APP_ID",
      "API_KEY",

      {requester: Algolia::Transport::EchoRequester.new}
    )
    req = client.generate_secured_api_key(
      "2640659426d5107b6e47d75db9cbaef8",
      Algolia::Search::SecuredApiKeyRestrictions.new(
        valid_until: 2524604400,
        restrict_indices: ["Movies", "cts_e2e_settings"],
        restrict_sources: "192.168.1.0/24",
        filters: "category:Book OR category:Ebook AND _tags:published",
        user_token: "user123",
        search_params: Algolia::Search::SearchParamsObject.new(
          query: "batman",
          typo_tolerance: "strict",
          around_radius: "all",
          mode: "neuralSearch",
          hits_per_page: 10,
          optional_words: ["one", "two"]
        )
      )
    )
    assert_equal(
      "MzAxMDUwYjYyODMxODQ3ZWM1ZDYzNTkxZmNjNDg2OGZjMjAzYjQyOTZhMGQ1NDJhMDFiNGMzYTYzODRhNmMxZWFyb3VuZFJhZGl1cz1hbGwmZmlsdGVycz1jYXRlZ29yeSUzQUJvb2slMjBPUiUyMGNhdGVnb3J5JTNBRWJvb2slMjBBTkQlMjBfdGFncyUzQXB1Ymxpc2hlZCZoaXRzUGVyUGFnZT0xMCZtb2RlPW5ldXJhbFNlYXJjaCZvcHRpb25hbFdvcmRzPW9uZSUyQ3R3byZxdWVyeT1iYXRtYW4mcmVzdHJpY3RJbmRpY2VzPU1vdmllcyUyQ2N0c19lMmVfc2V0dGluZ3MmcmVzdHJpY3RTb3VyY2VzPTE5Mi4xNjguMS4wJTJGMjQmdHlwb1RvbGVyYW5jZT1zdHJpY3QmdXNlclRva2VuPXVzZXIxMjMmdmFsaWRVbnRpbD0yNTI0NjA0NDAw",
      req
    )
  end

  # indexExists
  def test_index_exists0
    client = Algolia::SearchClient.create_with_config(
      Algolia::Configuration.new(
        "test-app-id",
        "test-api-key",
        [
          Algolia::Transport::StatefulHost.new(
            ENV.fetch("CI", nil) == "true" ? "localhost" : "host.docker.internal",
            protocol: "http://",
            port: 6681,
            accept: CallType::READ | CallType::WRITE
          )
        ],
        "searchClient"
      )
    )
    req = client.index_exists?("indexExistsYES")
    assert_equal(true, req)
  end

  # indexNotExists
  def test_index_exists1
    client = Algolia::SearchClient.create_with_config(
      Algolia::Configuration.new(
        "test-app-id",
        "test-api-key",
        [
          Algolia::Transport::StatefulHost.new(
            ENV.fetch("CI", nil) == "true" ? "localhost" : "host.docker.internal",
            protocol: "http://",
            port: 6681,
            accept: CallType::READ | CallType::WRITE
          )
        ],
        "searchClient"
      )
    )
    req = client.index_exists?("indexExistsNO")
    assert_equal(false, req)
  end

  # indexExistsWithError
  def test_index_exists2
    client = Algolia::SearchClient.create_with_config(
      Algolia::Configuration.new(
        "test-app-id",
        "test-api-key",
        [
          Algolia::Transport::StatefulHost.new(
            ENV.fetch("CI", nil) == "true" ? "localhost" : "host.docker.internal",
            protocol: "http://",
            port: 6681,
            accept: CallType::READ | CallType::WRITE
          )
        ],
        "searchClient"
      )
    )
    begin
      client.index_exists?("indexExistsERROR")
      assert(false, "An error should have been raised")
    rescue => e
      assert_equal(
        "403: Invalid API key".sub("%localhost%", ENV.fetch("CI", nil) == "true" ? "localhost" : "host.docker.internal"),
        e.message
      )
    end
  end

  # client throws with invalid parameters
  def test_parameters0
    begin

      Algolia::SearchClient.create(
        "",
        "",

        {requester: Algolia::Transport::EchoRequester.new}
      )
      assert(false, "An error should have been raised")
    rescue => e
      assert_equal(
        "`app_id` is missing.".sub("%localhost%", ENV.fetch("CI", nil) == "true" ? "localhost" : "host.docker.internal"),
        e.message
      )
    end

    begin

      Algolia::SearchClient.create(
        "",
        "my-api-key",

        {requester: Algolia::Transport::EchoRequester.new}
      )
      assert(false, "An error should have been raised")
    rescue => e
      assert_equal(
        "`app_id` is missing.".sub("%localhost%", ENV.fetch("CI", nil) == "true" ? "localhost" : "host.docker.internal"),
        e.message
      )
    end

    begin

      Algolia::SearchClient.create(
        "my-app-id",
        "",

        {requester: Algolia::Transport::EchoRequester.new}
      )
      assert(false, "An error should have been raised")
    rescue => e
      assert_equal(
        "`api_key` is missing.".sub(
          "%localhost%",
          ENV.fetch("CI", nil) == "true" ? "localhost" : "host.docker.internal"
        ),
        e.message
      )
    end
  end

  # `addApiKey` throws with invalid parameters
  def test_parameters1
    client = Algolia::SearchClient.create(
      "APP_ID",
      "API_KEY",

      {requester: Algolia::Transport::EchoRequester.new}
    )
    begin
      client.add_api_key_with_http_info(nil)
      assert(false, "An error should have been raised")
    rescue => e
      assert_equal(
        "Parameter `api_key` is required when calling `add_api_key`.".sub(
          "%localhost%",
          ENV.fetch("CI", nil) == "true" ? "localhost" : "host.docker.internal"
        ),
        e.message
      )
    end
  end

  # `addOrUpdateObject` throws with invalid parameters
  def test_parameters2
    client = Algolia::SearchClient.create(
      "APP_ID",
      "API_KEY",

      {requester: Algolia::Transport::EchoRequester.new}
    )
    begin
      client.add_or_update_object_with_http_info(nil, "my-object-id", {})
      assert(false, "An error should have been raised")
    rescue => e
      assert_equal(
        "Parameter `index_name` is required when calling `add_or_update_object`.".sub(
          "%localhost%",
          ENV.fetch("CI", nil) == "true" ? "localhost" : "host.docker.internal"
        ),
        e.message
      )
    end

    begin
      client.add_or_update_object_with_http_info("my-index-name", nil, {})
      assert(false, "An error should have been raised")
    rescue => e
      assert_equal(
        "Parameter `object_id` is required when calling `add_or_update_object`.".sub(
          "%localhost%",
          ENV.fetch("CI", nil) == "true" ? "localhost" : "host.docker.internal"
        ),
        e.message
      )
    end

    begin
      client.add_or_update_object_with_http_info("my-index-name", "my-object-id", nil)
      assert(false, "An error should have been raised")
    rescue => e
      assert_equal(
        "Parameter `body` is required when calling `add_or_update_object`.".sub(
          "%localhost%",
          ENV.fetch("CI", nil) == "true" ? "localhost" : "host.docker.internal"
        ),
        e.message
      )
    end
  end

  # call partialUpdateObjects with createIfNotExists=true
  def test_partial_update_objects0
    client = Algolia::SearchClient.create_with_config(
      Algolia::Configuration.new(
        "test-app-id",
        "test-api-key",
        [
          Algolia::Transport::StatefulHost.new(
            ENV.fetch("CI", nil) == "true" ? "localhost" : "host.docker.internal",
            protocol: "http://",
            port: 6680,
            accept: CallType::READ | CallType::WRITE
          )
        ],
        "searchClient"
      )
    )
    req = client.partial_update_objects(
      "cts_e2e_partialUpdateObjects_ruby",
      [{objectID: "1", name: "Adam"}, {objectID: "2", name: "Benoit"}],
      true
    )
    assert_equal([{:"taskID" => 444, :"objectIDs" => ["1", "2"]}], req.is_a?(Array) ? req.map(&:to_hash) : req.to_hash)
  end

  # call partialUpdateObjects with createIfNotExists=false
  def test_partial_update_objects1
    client = Algolia::SearchClient.create_with_config(
      Algolia::Configuration.new(
        "test-app-id",
        "test-api-key",
        [
          Algolia::Transport::StatefulHost.new(
            ENV.fetch("CI", nil) == "true" ? "localhost" : "host.docker.internal",
            protocol: "http://",
            port: 6680,
            accept: CallType::READ | CallType::WRITE
          )
        ],
        "searchClient"
      )
    )
    req = client.partial_update_objects(
      "cts_e2e_partialUpdateObjects_ruby",
      [{objectID: "3", name: "Cyril"}, {objectID: "4", name: "David"}],
      false
    )
    assert_equal([{:"taskID" => 555, :"objectIDs" => ["3", "4"]}], req.is_a?(Array) ? req.map(&:to_hash) : req.to_hash)
  end

  # call replaceAllObjects without error
  def test_replace_all_objects0
    client = Algolia::SearchClient.create_with_config(
      Algolia::Configuration.new(
        "test-app-id",
        "test-api-key",
        [
          Algolia::Transport::StatefulHost.new(
            ENV.fetch("CI", nil) == "true" ? "localhost" : "host.docker.internal",
            protocol: "http://",
            port: 6679,
            accept: CallType::READ | CallType::WRITE
          )
        ],
        "searchClient"
      )
    )
    req = client.replace_all_objects(
      "cts_e2e_replace_all_objects_ruby",
      [
        {objectID: "1", name: "Adam"},
        {objectID: "2", name: "Benoit"},
        {objectID: "3", name: "Cyril"},
        {objectID: "4", name: "David"},
        {objectID: "5", name: "Eva"},
        {objectID: "6", name: "Fiona"},
        {objectID: "7", name: "Gael"},
        {objectID: "8", name: "Hugo"},
        {objectID: "9", name: "Igor"},
        {objectID: "10", name: "Julia"}
      ],
      3
    )
    assert_equal(
      {
        :"copyOperationResponse" => {:"taskID" => 125, :"updatedAt" => "2021-01-01T00:00:00.000Z"},
        :"batchResponses" => [
          {:"taskID" => 127, :"objectIDs" => ["1", "2", "3"]},
          {:"taskID" => 130, :"objectIDs" => ["4", "5", "6"]},
          {:"taskID" => 133, :"objectIDs" => ["7", "8", "9"]},
          {:"taskID" => 134, :"objectIDs" => ["10"]}
        ],
        :"moveOperationResponse" => {:"taskID" => 777, :"updatedAt" => "2021-01-01T00:00:00.000Z"}
      },
      req.is_a?(Array) ? req.map(&:to_hash) : req.to_hash
    )
  end

  # call saveObjects without error
  def test_save_objects0
    client = Algolia::SearchClient.create_with_config(
      Algolia::Configuration.new(
        "test-app-id",
        "test-api-key",
        [
          Algolia::Transport::StatefulHost.new(
            ENV.fetch("CI", nil) == "true" ? "localhost" : "host.docker.internal",
            protocol: "http://",
            port: 6680,
            accept: CallType::READ | CallType::WRITE
          )
        ],
        "searchClient"
      )
    )
    req = client.save_objects(
      "cts_e2e_saveObjects_ruby",
      [{objectID: "1", name: "Adam"}, {objectID: "2", name: "Benoit"}]
    )
    assert_equal([{:"taskID" => 333, :"objectIDs" => ["1", "2"]}], req.is_a?(Array) ? req.map(&:to_hash) : req.to_hash)
  end

  # saveObjects should report errors
  def test_save_objects1
    client = Algolia::SearchClient.create_with_config(
      Algolia::Configuration.new(
        "test-app-id",
        "wrong-api-key",
        [
          Algolia::Transport::StatefulHost.new(
            ENV.fetch("CI", nil) == "true" ? "localhost" : "host.docker.internal",
            protocol: "http://",
            port: 6680,
            accept: CallType::READ | CallType::WRITE
          )
        ],
        "searchClient"
      )
    )
    begin
      client.save_objects(
        "cts_e2e_saveObjects_ruby",
        [{objectID: "1", name: "Adam"}, {objectID: "2", name: "Benoit"}]
      )
      assert(false, "An error should have been raised")
    rescue => e
      assert_equal(
        "403: Invalid Application-ID or API key".sub(
          "%localhost%",
          ENV.fetch("CI", nil) == "true" ? "localhost" : "host.docker.internal"
        ),
        e.message
      )
    end
  end

  # switch API key
  def test_set_client_api_key0
    client = Algolia::SearchClient.create_with_config(
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
        "searchClient"
      )
    )
    req = client.custom_get("check-api-key/1")
    assert_equal({:"headerAPIKeyValue" => "test-api-key"}, req.is_a?(Array) ? req.map(&:to_hash) : req.to_hash)
    client.set_client_api_key("updated-api-key")
    req = client.custom_get("check-api-key/2")
    assert_equal({:"headerAPIKeyValue" => "updated-api-key"}, req.is_a?(Array) ? req.map(&:to_hash) : req.to_hash)
  end

  # wait for api key helper - add
  def test_wait_for_api_key0
    client = Algolia::SearchClient.create_with_config(
      Algolia::Configuration.new(
        "test-app-id",
        "test-api-key",
        [
          Algolia::Transport::StatefulHost.new(
            ENV.fetch("CI", nil) == "true" ? "localhost" : "host.docker.internal",
            protocol: "http://",
            port: 6681,
            accept: CallType::READ | CallType::WRITE
          )
        ],
        "searchClient"
      )
    )
    req = client.wait_for_api_key("api-key-add-operation-test-ruby", "add")
    assert_equal(
      {
        :"value" => "api-key-add-operation-test-ruby",
        :"description" => "my new api key",
        :"acl" => ["search", "addObject"],
        :"validity" => 300,
        :"maxQueriesPerIPPerHour" => 100,
        :"maxHitsPerQuery" => 20,
        :"createdAt" => 1720094400
      },
      req.is_a?(Array) ? req.map(&:to_hash) : req.to_hash
    )
  end

  # wait for api key - update
  def test_wait_for_api_key1
    client = Algolia::SearchClient.create_with_config(
      Algolia::Configuration.new(
        "test-app-id",
        "test-api-key",
        [
          Algolia::Transport::StatefulHost.new(
            ENV.fetch("CI", nil) == "true" ? "localhost" : "host.docker.internal",
            protocol: "http://",
            port: 6681,
            accept: CallType::READ | CallType::WRITE
          )
        ],
        "searchClient"
      )
    )
    req = client.wait_for_api_key(
      "api-key-update-operation-test-ruby",
      "update",
      Algolia::Search::ApiKey.new(
        description: "my updated api key",
        acl: ["search", "addObject", "deleteObject"],
        indexes: ["Movies", "Books"],
        referers: ["*google.com", "*algolia.com"],
        validity: 305,
        max_queries_per_ip_per_hour: 95,
        max_hits_per_query: 20
      )
    )
    assert_equal(
      {
        :"value" => "api-key-update-operation-test-ruby",
        :"description" => "my updated api key",
        :"acl" => ["search", "addObject", "deleteObject"],
        :"indexes" => ["Movies", "Books"],
        :"referers" => ["*google.com", "*algolia.com"],
        :"validity" => 305,
        :"maxQueriesPerIPPerHour" => 95,
        :"maxHitsPerQuery" => 20,
        :"createdAt" => 1720094400
      },
      req.is_a?(Array) ? req.map(&:to_hash) : req.to_hash
    )
  end

  # wait for api key - delete
  def test_wait_for_api_key2
    client = Algolia::SearchClient.create_with_config(
      Algolia::Configuration.new(
        "test-app-id",
        "test-api-key",
        [
          Algolia::Transport::StatefulHost.new(
            ENV.fetch("CI", nil) == "true" ? "localhost" : "host.docker.internal",
            protocol: "http://",
            port: 6681,
            accept: CallType::READ | CallType::WRITE
          )
        ],
        "searchClient"
      )
    )
    req = client.wait_for_api_key("api-key-delete-operation-test-ruby", "delete")
    assert_equal(nil, req)
  end

  # wait for an application-level task
  def test_wait_for_app_task0
    client = Algolia::SearchClient.create_with_config(
      Algolia::Configuration.new(
        "test-app-id",
        "test-api-key",
        [
          Algolia::Transport::StatefulHost.new(
            ENV.fetch("CI", nil) == "true" ? "localhost" : "host.docker.internal",
            protocol: "http://",
            port: 6681,
            accept: CallType::READ | CallType::WRITE
          )
        ],
        "searchClient"
      )
    )
    req = client.wait_for_app_task(123)
    assert_equal({:"status" => "published"}, req.is_a?(Array) ? req.map(&:to_hash) : req.to_hash)
  end

  # wait for task
  def test_wait_for_task0
    client = Algolia::SearchClient.create_with_config(
      Algolia::Configuration.new(
        "test-app-id",
        "test-api-key",
        [
          Algolia::Transport::StatefulHost.new(
            ENV.fetch("CI", nil) == "true" ? "localhost" : "host.docker.internal",
            protocol: "http://",
            port: 6681,
            accept: CallType::READ | CallType::WRITE
          )
        ],
        "searchClient"
      )
    )
    req = client.wait_for_task("wait-task-ruby", 123)
    assert_equal({:"status" => "published"}, req.is_a?(Array) ? req.map(&:to_hash) : req.to_hash)
  end

end
