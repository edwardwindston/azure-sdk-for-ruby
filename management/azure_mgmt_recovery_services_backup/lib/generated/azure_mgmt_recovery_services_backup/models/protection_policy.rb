# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup
  module Models
    #
    # The base class for a backup policy. Workload-specific backup policies are
    # derived from this class.
    #
    class ProtectionPolicy

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["AzureIaasVM"] = "AzureIaaSVMProtectionPolicy"
      @@discriminatorMap["MAB"] = "MabProtectionPolicy"
      @@discriminatorMap["AzureSql"] = "AzureSqlProtectionPolicy"

      def initialize
        @backupManagementType = "ProtectionPolicy"
      end

      attr_accessor :backupManagementType

      # @return [Integer] The number of items associated with this policy.
      attr_accessor :protected_items_count


      #
      # Mapper for ProtectionPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ProtectionPolicy',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'backupManagementType',
            uber_parent: 'ProtectionPolicy',
            class_name: 'ProtectionPolicy',
            model_properties: {
              protected_items_count: {
                required: false,
                serialized_name: 'protectedItemsCount',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
