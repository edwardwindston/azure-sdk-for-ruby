# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Qnamaker::V4_0
  module Models
    #
    # Collection of knowledgebases owned by a user.
    #
    class KnowledgebasesDTO

      include MsRestAzure

      # @return [Array<KnowledgebaseDTO>] Collection of knowledgebase records.
      attr_accessor :knowledgebases


      #
      # Mapper for KnowledgebasesDTO class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'KnowledgebasesDTO',
          type: {
            name: 'Composite',
            class_name: 'KnowledgebasesDTO',
            model_properties: {
              knowledgebases: {
                client_side_validation: true,
                required: false,
                serialized_name: 'knowledgebases',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'KnowledgebaseDTOElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'KnowledgebaseDTO'
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