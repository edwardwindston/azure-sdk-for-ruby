# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Appconfiguration::Mgmt::V2019_11_01_preview
  module Models
    #
    # The result of a request to retrieve a key-value from the specified
    # configuration store.
    #
    class KeyValue

      include MsRestAzure

      # @return [String] The primary identifier of a key-value.
      # The key is used in unison with the label to uniquely identify a
      # key-value.
      attr_accessor :key

      # @return [String] A value used to group key-values.
      # The label is used in unison with the key to uniquely identify a
      # key-value.
      attr_accessor :label

      # @return [String] The value of the key-value.
      attr_accessor :value

      # @return [String] The content type of the key-value's value.
      # Providing a proper content-type can enable transformations of values
      # when they are retrieved by applications.
      attr_accessor :content_type

      # @return [String] An ETag indicating the state of a key-value within a
      # configuration store.
      attr_accessor :e_tag

      # @return [DateTime] The last time a modifying operation was performed on
      # the given key-value.
      attr_accessor :last_modified

      # @return [Boolean] A value indicating whether the key-value is locked.
      # A locked key-value may not be modified until it is unlocked.
      attr_accessor :locked

      # @return [Hash{String => String}] A dictionary of tags that can help
      # identify what a key-value may be applicable for.
      attr_accessor :tags


      #
      # Mapper for KeyValue class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'KeyValue',
          type: {
            name: 'Composite',
            class_name: 'KeyValue',
            model_properties: {
              key: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'key',
                type: {
                  name: 'String'
                }
              },
              label: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'label',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'value',
                type: {
                  name: 'String'
                }
              },
              content_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'contentType',
                type: {
                  name: 'String'
                }
              },
              e_tag: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'eTag',
                type: {
                  name: 'String'
                }
              },
              last_modified: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'lastModified',
                type: {
                  name: 'DateTime'
                }
              },
              locked: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'locked',
                type: {
                  name: 'Boolean'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
