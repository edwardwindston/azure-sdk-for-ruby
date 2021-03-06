# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2018_11_27_preview
  module Models
    #
    # VM Insights onboarding status for a resource.
    #
    class VMInsightsOnboardingStatus < ProxyResource

      include MsRestAzure

      # @return [String] Azure Resource Manager identifier of the resource
      # whose onboarding status is being represented.
      attr_accessor :resource_id

      # @return [OnboardingStatus] The onboarding status for the resource. Note
      # that, a higher level scope, e.g., resource group or subscription, is
      # considered onboarded if at least one resource under it is onboarded.
      # Possible values include: 'onboarded', 'notOnboarded', 'unknown'
      attr_accessor :onboarding_status

      # @return [DataStatus] The status of VM Insights data from the resource.
      # When reported as `present` the data array will contain information
      # about the data containers to which data for the specified resource is
      # being routed. Possible values include: 'present', 'notPresent'
      attr_accessor :data_status

      # @return [Array<DataContainer>] Containers that currently store VM
      # Insights data for the specified resource.
      attr_accessor :data


      #
      # Mapper for VMInsightsOnboardingStatus class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VMInsightsOnboardingStatus',
          type: {
            name: 'Composite',
            class_name: 'VMInsightsOnboardingStatus',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.resourceId',
                type: {
                  name: 'String'
                }
              },
              onboarding_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.onboardingStatus',
                type: {
                  name: 'String'
                }
              },
              data_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.dataStatus',
                type: {
                  name: 'String'
                }
              },
              data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.data',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DataContainerElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DataContainer'
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
