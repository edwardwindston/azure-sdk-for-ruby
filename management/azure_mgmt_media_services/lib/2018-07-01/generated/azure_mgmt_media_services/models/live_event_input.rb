# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_07_01
  module Models
    #
    # The Live Event input.
    #
    class LiveEventInput

      include MsRestAzure

      # @return [LiveEventInputProtocol] The streaming protocol for the Live
      # Event.  This is specified at creation time and cannot be updated.
      # Possible values include: 'FragmentedMP4', 'RTMP'
      attr_accessor :streaming_protocol

      # @return [LiveEventInputAccessControl] The access control for LiveEvent
      # Input.
      attr_accessor :access_control

      # @return [String] ISO 8601 timespan duration of the key frame interval
      # duration.
      attr_accessor :key_frame_interval_duration

      # @return [String] A unique identifier for a stream.  This can be
      # specified at creation time but cannot be updated.  If omitted, the
      # service will generate a unique value.
      attr_accessor :access_token

      # @return [Array<LiveEventEndpoint>] The input endpoints for the Live
      # Event.
      attr_accessor :endpoints


      #
      # Mapper for LiveEventInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LiveEventInput',
          type: {
            name: 'Composite',
            class_name: 'LiveEventInput',
            model_properties: {
              streaming_protocol: {
                client_side_validation: true,
                required: true,
                serialized_name: 'streamingProtocol',
                type: {
                  name: 'String'
                }
              },
              access_control: {
                client_side_validation: true,
                required: false,
                serialized_name: 'accessControl',
                type: {
                  name: 'Composite',
                  class_name: 'LiveEventInputAccessControl'
                }
              },
              key_frame_interval_duration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'keyFrameIntervalDuration',
                type: {
                  name: 'String'
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
              endpoints: {
                client_side_validation: true,
                required: false,
                serialized_name: 'endpoints',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'LiveEventEndpointElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'LiveEventEndpoint'
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
