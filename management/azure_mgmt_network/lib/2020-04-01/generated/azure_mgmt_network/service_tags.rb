# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_04_01
  #
  # ServiceTags
  #
  class ServiceTags
    include MsRestAzure

    #
    # Creates and initializes a new instance of the ServiceTags class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [NetworkManagementClient] reference to the NetworkManagementClient
    attr_reader :client

    #
    # Gets a list of service tag information resources.
    #
    # @param location [String] The location that will be used as a reference for
    # version (not as a filter based on location, you will get the list of service
    # tags with prefix details across all regions but limited to the cloud that
    # your subscription belongs to).
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ServiceTagsListResult] operation results.
    #
    def list(location, custom_headers:nil)
      response = list_async(location, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets a list of service tag information resources.
    #
    # @param location [String] The location that will be used as a reference for
    # version (not as a filter based on location, you will get the list of service
    # tags with prefix details across all regions but limited to the cloud that
    # your subscription belongs to).
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(location, custom_headers:nil)
      list_async(location, custom_headers:custom_headers).value!
    end

    #
    # Gets a list of service tag information resources.
    #
    # @param location [String] The location that will be used as a reference for
    # version (not as a filter based on location, you will get the list of service
    # tags with prefix details across all regions but limited to the cloud that
    # your subscription belongs to).
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(location, custom_headers:nil)
      fail ArgumentError, 'location is nil' if location.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.Network/locations/{location}/serviceTags'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'location' => location,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Network::Mgmt::V2020_04_01::Models::ServiceTagsListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end
