# Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.

require 'cgi'

module Algolia
  class AbtestingClient
    attr_accessor :api_client

    def initialize(config = nil)
      @api_client = Algolia::ApiClient.new(config)
    end

    def self.create(app_id, api_key, region = nil)
      hosts = []
      regions = ['de', 'us']

      if (region != '' && !regions.include?(region))
        raise "`region` must be one of the following: %s" % regions.join(', ')
      end

      hosts << Transport::StatefulHost.new(region.nil? ? "analytics.algolia.com" : "analytics.{region}.algolia.com".sub!('{region}', region), accept: CallType::READ | CallType::WRITE)
      
      config = Algolia::Configuration.new(app_id, api_key, hosts)
      create_with_config(config)
    end


    def self.create_with_config(config)
      new(config)
    end

    # Create an A/B test.
    # Creates an A/B test.
    # @param add_ab_tests_request [AddABTestsRequest] 
    # @param [Hash] opts the optional parameters
    # @return [ABTestResponse]
    def add_ab_tests(add_ab_tests_request, opts = {})
      data, _status_code, _headers = add_ab_tests_with_http_info(add_ab_tests_request, opts)
      data
    end

    # Create an A/B test.
    # Creates an A/B test.
    # @param add_ab_tests_request [AddABTestsRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ABTestResponse, Integer, Hash)>] ABTestResponse data, response status code and response headers
    def add_ab_tests_with_http_info(add_ab_tests_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AbtestingClient.add_ab_tests ...'
      end
      # verify the required parameter 'add_ab_tests_request' is set
      if @api_client.config.client_side_validation && add_ab_tests_request.nil?
        fail ArgumentError, "Missing the required parameter 'add_ab_tests_request' when calling AbtestingClient.add_ab_tests"
      end
      path = '/2/abtests'
      query_params = opts[:query_params] || {}
      header_params = opts[:header_params] || {}

      post_body = opts[:debug_body] || @api_client.object_to_http_body(add_ab_tests_request)

      return_type = opts[:debug_return_type] || 'Abtesting::ABTestResponse'

      new_options = opts.merge(
        :operation => :"AbtestingClient.add_ab_tests",
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AbtestingClient#add_ab_tests\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send requests to the Algolia REST API.
    # This method allow you to send requests to the Algolia REST API.
    # @param path [String] Path of the endpoint, anything after \&quot;/1\&quot; must be specified.
    # @param [Hash] opts the optional parameters
    # @option opts [Hash<String, Object>] :parameters Query parameters to apply to the current query.
    # @return [Object]
    def custom_delete(path, opts = {})
      data, _status_code, _headers = custom_delete_with_http_info(path, opts)
      data
    end

    # Send requests to the Algolia REST API.
    # This method allow you to send requests to the Algolia REST API.
    # @param path [String] Path of the endpoint, anything after \&quot;/1\&quot; must be specified.
    # @param [Hash] opts the optional parameters
    # @option opts [Hash<String, Object>] :parameters Query parameters to apply to the current query.
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def custom_delete_with_http_info(path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AbtestingClient.custom_delete ...'
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling AbtestingClient.custom_delete"
      end
      path = '/1{path}'.sub('{' + 'path' + '}', CGI.escape(path.to_s))
      query_params = opts[:query_params] || {}
      query_params[:'parameters'] = opts[:'parameters'] if !opts[:'parameters'].nil?
      header_params = opts[:header_params] || {}

      post_body = opts[:debug_body]

      return_type = opts[:debug_return_type] || 'Abtesting::Object'

      new_options = opts.merge(
        :operation => :"AbtestingClient.custom_delete",
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AbtestingClient#custom_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send requests to the Algolia REST API.
    # This method allow you to send requests to the Algolia REST API.
    # @param path [String] Path of the endpoint, anything after \&quot;/1\&quot; must be specified.
    # @param [Hash] opts the optional parameters
    # @option opts [Hash<String, Object>] :parameters Query parameters to apply to the current query.
    # @return [Object]
    def custom_get(path, opts = {})
      data, _status_code, _headers = custom_get_with_http_info(path, opts)
      data
    end

    # Send requests to the Algolia REST API.
    # This method allow you to send requests to the Algolia REST API.
    # @param path [String] Path of the endpoint, anything after \&quot;/1\&quot; must be specified.
    # @param [Hash] opts the optional parameters
    # @option opts [Hash<String, Object>] :parameters Query parameters to apply to the current query.
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def custom_get_with_http_info(path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AbtestingClient.custom_get ...'
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling AbtestingClient.custom_get"
      end
      path = '/1{path}'.sub('{' + 'path' + '}', CGI.escape(path.to_s))
      query_params = opts[:query_params] || {}
      query_params[:'parameters'] = opts[:'parameters'] if !opts[:'parameters'].nil?
      header_params = opts[:header_params] || {}

      post_body = opts[:debug_body]

      return_type = opts[:debug_return_type] || 'Abtesting::Object'

      new_options = opts.merge(
        :operation => :"AbtestingClient.custom_get",
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AbtestingClient#custom_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send requests to the Algolia REST API.
    # This method allow you to send requests to the Algolia REST API.
    # @param path [String] Path of the endpoint, anything after \&quot;/1\&quot; must be specified.
    # @param [Hash] opts the optional parameters
    # @option opts [Hash<String, Object>] :parameters Query parameters to apply to the current query.
    # @option opts [Object] :body Parameters to send with the custom request.
    # @return [Object]
    def custom_post(path, opts = {})
      data, _status_code, _headers = custom_post_with_http_info(path, opts)
      data
    end

    # Send requests to the Algolia REST API.
    # This method allow you to send requests to the Algolia REST API.
    # @param path [String] Path of the endpoint, anything after \&quot;/1\&quot; must be specified.
    # @param [Hash] opts the optional parameters
    # @option opts [Hash<String, Object>] :parameters Query parameters to apply to the current query.
    # @option opts [Object] :body Parameters to send with the custom request.
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def custom_post_with_http_info(path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AbtestingClient.custom_post ...'
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling AbtestingClient.custom_post"
      end
      path = '/1{path}'.sub('{' + 'path' + '}', CGI.escape(path.to_s))
      query_params = opts[:query_params] || {}
      query_params[:'parameters'] = opts[:'parameters'] if !opts[:'parameters'].nil?
      header_params = opts[:header_params] || {}

      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'body'])

      return_type = opts[:debug_return_type] || 'Abtesting::Object'

      new_options = opts.merge(
        :operation => :"AbtestingClient.custom_post",
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AbtestingClient#custom_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send requests to the Algolia REST API.
    # This method allow you to send requests to the Algolia REST API.
    # @param path [String] Path of the endpoint, anything after \&quot;/1\&quot; must be specified.
    # @param [Hash] opts the optional parameters
    # @option opts [Hash<String, Object>] :parameters Query parameters to apply to the current query.
    # @option opts [Object] :body Parameters to send with the custom request.
    # @return [Object]
    def custom_put(path, opts = {})
      data, _status_code, _headers = custom_put_with_http_info(path, opts)
      data
    end

    # Send requests to the Algolia REST API.
    # This method allow you to send requests to the Algolia REST API.
    # @param path [String] Path of the endpoint, anything after \&quot;/1\&quot; must be specified.
    # @param [Hash] opts the optional parameters
    # @option opts [Hash<String, Object>] :parameters Query parameters to apply to the current query.
    # @option opts [Object] :body Parameters to send with the custom request.
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def custom_put_with_http_info(path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AbtestingClient.custom_put ...'
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling AbtestingClient.custom_put"
      end
      path = '/1{path}'.sub('{' + 'path' + '}', CGI.escape(path.to_s))
      query_params = opts[:query_params] || {}
      query_params[:'parameters'] = opts[:'parameters'] if !opts[:'parameters'].nil?
      header_params = opts[:header_params] || {}

      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'body'])

      return_type = opts[:debug_return_type] || 'Abtesting::Object'

      new_options = opts.merge(
        :operation => :"AbtestingClient.custom_put",
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AbtestingClient#custom_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an A/B test.
    # Delete an A/B test. To determine the `id` for an A/B test, use the [`listABTests` operation](#tag/abtest/operation/listABTests). 
    # @param id [Integer] Unique A/B test ID.
    # @param [Hash] opts the optional parameters
    # @return [ABTestResponse]
    def delete_ab_test(id, opts = {})
      data, _status_code, _headers = delete_ab_test_with_http_info(id, opts)
      data
    end

    # Delete an A/B test.
    # Delete an A/B test. To determine the &#x60;id&#x60; for an A/B test, use the [&#x60;listABTests&#x60; operation](#tag/abtest/operation/listABTests). 
    # @param id [Integer] Unique A/B test ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ABTestResponse, Integer, Hash)>] ABTestResponse data, response status code and response headers
    def delete_ab_test_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AbtestingClient.delete_ab_test ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AbtestingClient.delete_ab_test"
      end
      path = '/2/abtests/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))
      query_params = opts[:query_params] || {}
      header_params = opts[:header_params] || {}

      post_body = opts[:debug_body]

      return_type = opts[:debug_return_type] || 'Abtesting::ABTestResponse'

      new_options = opts.merge(
        :operation => :"AbtestingClient.delete_ab_test",
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AbtestingClient#delete_ab_test\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get A/B test details.
    # Get specific details for an A/B test. To determine the `id` for an A/B test, use the [`listABTests` operation](#tag/abtest/operation/listABTests). 
    # @param id [Integer] Unique A/B test ID.
    # @param [Hash] opts the optional parameters
    # @return [ABTest]
    def get_ab_test(id, opts = {})
      data, _status_code, _headers = get_ab_test_with_http_info(id, opts)
      data
    end

    # Get A/B test details.
    # Get specific details for an A/B test. To determine the &#x60;id&#x60; for an A/B test, use the [&#x60;listABTests&#x60; operation](#tag/abtest/operation/listABTests). 
    # @param id [Integer] Unique A/B test ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ABTest, Integer, Hash)>] ABTest data, response status code and response headers
    def get_ab_test_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AbtestingClient.get_ab_test ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AbtestingClient.get_ab_test"
      end
      path = '/2/abtests/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))
      query_params = opts[:query_params] || {}
      header_params = opts[:header_params] || {}

      post_body = opts[:debug_body]

      return_type = opts[:debug_return_type] || 'Abtesting::ABTest'

      new_options = opts.merge(
        :operation => :"AbtestingClient.get_ab_test",
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AbtestingClient#get_ab_test\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all A/B tests.
    # List all A/B tests.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset Position of the starting record. Used for paging. 0 is the first record. (default to 0)
    # @option opts [Integer] :limit Number of records to return (page size). (default to 10)
    # @option opts [String] :index_prefix Only return A/B tests for indices starting with this prefix.
    # @option opts [String] :index_suffix Only return A/B tests for indices ending with this suffix.
    # @return [ListABTestsResponse]
    def list_ab_tests(opts = {})
      data, _status_code, _headers = list_ab_tests_with_http_info(opts)
      data
    end

    # List all A/B tests.
    # List all A/B tests.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset Position of the starting record. Used for paging. 0 is the first record. (default to 0)
    # @option opts [Integer] :limit Number of records to return (page size). (default to 10)
    # @option opts [String] :index_prefix Only return A/B tests for indices starting with this prefix.
    # @option opts [String] :index_suffix Only return A/B tests for indices ending with this suffix.
    # @return [Array<(ListABTestsResponse, Integer, Hash)>] ListABTestsResponse data, response status code and response headers
    def list_ab_tests_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AbtestingClient.list_ab_tests ...'
      end
      path = '/2/abtests'
      query_params = opts[:query_params] || {}
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'indexPrefix'] = opts[:'index_prefix'] if !opts[:'index_prefix'].nil?
      query_params[:'indexSuffix'] = opts[:'index_suffix'] if !opts[:'index_suffix'].nil?
      header_params = opts[:header_params] || {}

      post_body = opts[:debug_body]

      return_type = opts[:debug_return_type] || 'Abtesting::ListABTestsResponse'

      new_options = opts.merge(
        :operation => :"AbtestingClient.list_ab_tests",
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AbtestingClient#list_ab_tests\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Stop an A/B test.
    # If stopped, the test is over and can't be restarted. There is now only one index, receiving 100% of all search requests. The data gathered for stopped A/B tests is retained. To determine the `id` for an A/B test, use the [`listABTests` operation](#tag/abtest/operation/listABTests). 
    # @param id [Integer] Unique A/B test ID.
    # @param [Hash] opts the optional parameters
    # @return [ABTestResponse]
    def stop_ab_test(id, opts = {})
      data, _status_code, _headers = stop_ab_test_with_http_info(id, opts)
      data
    end

    # Stop an A/B test.
    # If stopped, the test is over and can&#39;t be restarted. There is now only one index, receiving 100% of all search requests. The data gathered for stopped A/B tests is retained. To determine the &#x60;id&#x60; for an A/B test, use the [&#x60;listABTests&#x60; operation](#tag/abtest/operation/listABTests). 
    # @param id [Integer] Unique A/B test ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ABTestResponse, Integer, Hash)>] ABTestResponse data, response status code and response headers
    def stop_ab_test_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AbtestingClient.stop_ab_test ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AbtestingClient.stop_ab_test"
      end
      path = '/2/abtests/{id}/stop'.sub('{' + 'id' + '}', CGI.escape(id.to_s))
      query_params = opts[:query_params] || {}
      header_params = opts[:header_params] || {}

      post_body = opts[:debug_body]

      return_type = opts[:debug_return_type] || 'Abtesting::ABTestResponse'

      new_options = opts.merge(
        :operation => :"AbtestingClient.stop_ab_test",
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AbtestingClient#stop_ab_test\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
