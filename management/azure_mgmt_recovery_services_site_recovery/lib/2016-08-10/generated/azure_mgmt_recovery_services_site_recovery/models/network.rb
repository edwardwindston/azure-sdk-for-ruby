# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Network model.
    #
    class Network < Resource

      include MsRestAzure

      # @return [NetworkProperties] The Network Properties.
      attr_accessor :properties


      #
      # Mapper for Network class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Network',
          type: {
            name: 'Composite',
            class_name: 'Network',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              properties: {
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'NetworkProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end