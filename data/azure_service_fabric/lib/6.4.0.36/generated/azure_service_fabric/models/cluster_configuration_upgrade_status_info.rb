# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_4_0_36
  module Models
    #
    # Information about a standalone cluster configuration upgrade status.
    #
    class ClusterConfigurationUpgradeStatusInfo

      include MsRestAzure

      # @return [UpgradeState] The state of the upgrade domain. Possible values
      # include: 'Invalid', 'RollingBackInProgress', 'RollingBackCompleted',
      # 'RollingForwardPending', 'RollingForwardInProgress',
      # 'RollingForwardCompleted', 'Failed'
      attr_accessor :upgrade_state

      # @return [Integer] The cluster manifest version.
      attr_accessor :progress_status

      # @return [String] The cluster configuration version.
      attr_accessor :config_version

      # @return [String] The cluster upgrade status details.
      attr_accessor :details


      #
      # Mapper for ClusterConfigurationUpgradeStatusInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ClusterConfigurationUpgradeStatusInfo',
          type: {
            name: 'Composite',
            class_name: 'ClusterConfigurationUpgradeStatusInfo',
            model_properties: {
              upgrade_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'UpgradeState',
                type: {
                  name: 'String'
                }
              },
              progress_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ProgressStatus',
                type: {
                  name: 'Number'
                }
              },
              config_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ConfigVersion',
                type: {
                  name: 'String'
                }
              },
              details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Details',
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
