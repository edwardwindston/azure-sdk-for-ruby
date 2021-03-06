# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Get Data Plane read only token response definition.
    #
    class AccessPolicyResponse

      include MsRestAzure

      # @return [UserAccessPolicy] The user access policy.
      attr_accessor :policy

      # @return [String] Data Plane read only access token.
      attr_accessor :access_token

      # @return [String] Data Plane service base URL.
      attr_accessor :data_plane_url


      #
      # Mapper for AccessPolicyResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AccessPolicyResponse',
          type: {
            name: 'Composite',
            class_name: 'AccessPolicyResponse',
            model_properties: {
              policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'policy',
                type: {
                  name: 'Composite',
                  class_name: 'UserAccessPolicy'
                }
              },
              access_token: {
                client_side_validation: true,
                required: false,
                serialized_name: 'accessToken',
                type: {
                  name: 'String'
                }
              },
              data_plane_url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dataPlaneUrl',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
