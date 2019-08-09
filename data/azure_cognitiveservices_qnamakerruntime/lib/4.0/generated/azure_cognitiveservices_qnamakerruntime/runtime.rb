# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::QnamakerRuntime::V4_0
  #
  # An API for QnAMaker runtime
  #
  class Runtime
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Runtime class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [QnamakerRuntimeClient] reference to the QnamakerRuntimeClient
    attr_reader :client

    #
    # GenerateAnswer call to query the knowledgebase.
    #
    # @param kb_id [String] Knowledgebase id.
    # @param generate_answer_payload [QueryDTO] Post body of the request.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [QnASearchResultList] operation results.
    #
    def generate_answer(kb_id, generate_answer_payload, custom_headers:nil)
      response = generate_answer_async(kb_id, generate_answer_payload, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # GenerateAnswer call to query the knowledgebase.
    #
    # @param kb_id [String] Knowledgebase id.
    # @param generate_answer_payload [QueryDTO] Post body of the request.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def generate_answer_with_http_info(kb_id, generate_answer_payload, custom_headers:nil)
      generate_answer_async(kb_id, generate_answer_payload, custom_headers:custom_headers).value!
    end

    #
    # GenerateAnswer call to query the knowledgebase.
    #
    # @param kb_id [String] Knowledgebase id.
    # @param generate_answer_payload [QueryDTO] Post body of the request.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def generate_answer_async(kb_id, generate_answer_payload, custom_headers:nil)
      fail ArgumentError, '@client.runtime_endpoint is nil' if @client.runtime_endpoint.nil?
      fail ArgumentError, 'kb_id is nil' if kb_id.nil?
      fail ArgumentError, 'generate_answer_payload is nil' if generate_answer_payload.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::CognitiveServices::QnamakerRuntime::V4_0::Models::QueryDTO.mapper()
      request_content = @client.serialize(request_mapper,  generate_answer_payload)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'knowledgebases/{kbId}/generateAnswer'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{RuntimeEndpoint}', @client.runtime_endpoint)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'kbId' => kb_id},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CognitiveServices::QnamakerRuntime::V4_0::Models::QnASearchResultList.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Train call to add suggestions to the knowledgebase.
    #
    # @param kb_id [String] Knowledgebase id.
    # @param train_payload [FeedbackRecordsDTO] Post body of the request.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def train(kb_id, train_payload, custom_headers:nil)
      response = train_async(kb_id, train_payload, custom_headers:custom_headers).value!
      nil
    end

    #
    # Train call to add suggestions to the knowledgebase.
    #
    # @param kb_id [String] Knowledgebase id.
    # @param train_payload [FeedbackRecordsDTO] Post body of the request.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def train_with_http_info(kb_id, train_payload, custom_headers:nil)
      train_async(kb_id, train_payload, custom_headers:custom_headers).value!
    end

    #
    # Train call to add suggestions to the knowledgebase.
    #
    # @param kb_id [String] Knowledgebase id.
    # @param train_payload [FeedbackRecordsDTO] Post body of the request.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def train_async(kb_id, train_payload, custom_headers:nil)
      fail ArgumentError, '@client.runtime_endpoint is nil' if @client.runtime_endpoint.nil?
      fail ArgumentError, 'kb_id is nil' if kb_id.nil?
      fail ArgumentError, 'train_payload is nil' if train_payload.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::CognitiveServices::QnamakerRuntime::V4_0::Models::FeedbackRecordsDTO.mapper()
      request_content = @client.serialize(request_mapper,  train_payload)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'knowledgebases/{kbId}/train'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{RuntimeEndpoint}', @client.runtime_endpoint)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'kbId' => kb_id},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 204
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?

        result
      end

      promise.execute
    end

  end
end