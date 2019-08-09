# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::QnamakerRuntime::V4_0
  module Models
    #
    # POST body schema to query the knowledgebase.
    #
    class QueryDTO

      include MsRestAzure

      # @return [String] Exact qnaId to fetch from the knowledgebase, this
      # field takes priority over question.
      attr_accessor :qna_id

      # @return [String] User question to query against the knowledge base.
      attr_accessor :question

      # @return [Integer] Max number of answers to be returned for the
      # question.
      attr_accessor :top

      # @return [String] Unique identifier for the user.
      attr_accessor :user_id

      # @return [Boolean] Query against the test index.
      attr_accessor :is_test

      # @return [Float] Threshold for answers returned based on score.
      attr_accessor :score_threshold

      # @return [QueryDTOContext] Context object with previous QnA's
      # information.
      attr_accessor :context

      # @return [Array<MetadataDTO>] Find only answers that contain these
      # metadata.
      attr_accessor :strict_filters


      #
      # Mapper for QueryDTO class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'QueryDTO',
          type: {
            name: 'Composite',
            class_name: 'QueryDTO',
            model_properties: {
              qna_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'qnaId',
                type: {
                  name: 'String'
                }
              },
              question: {
                client_side_validation: true,
                required: false,
                serialized_name: 'question',
                type: {
                  name: 'String'
                }
              },
              top: {
                client_side_validation: true,
                required: false,
                serialized_name: 'top',
                type: {
                  name: 'Number'
                }
              },
              user_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'userId',
                type: {
                  name: 'String'
                }
              },
              is_test: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isTest',
                type: {
                  name: 'Boolean'
                }
              },
              score_threshold: {
                client_side_validation: true,
                required: false,
                serialized_name: 'scoreThreshold',
                type: {
                  name: 'Double'
                }
              },
              context: {
                client_side_validation: true,
                required: false,
                serialized_name: 'context',
                type: {
                  name: 'Composite',
                  class_name: 'QueryDTOContext'
                }
              },
              strict_filters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'strictFilters',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MetadataDTOElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MetadataDTO'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end