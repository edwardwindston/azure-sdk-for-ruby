# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup
  module Models
    #
    # The base class for additional information about the operation status.
    #
    class OperationStatusExtendedInfo

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["OperationStatusJobExtendedInfo"] = "OperationStatusJobExtendedInfo"
      @@discriminatorMap["OperationStatusProvisionILRExtendedInfo"] = "OperationStatusProvisionILRExtendedInfo"
      @@discriminatorMap["OperationStatusJobsExtendedInfo"] = "OperationStatusJobsExtendedInfo"

      def initialize
        @objectType = "OperationStatusExtendedInfo"
      end

      attr_accessor :objectType


      #
      # Mapper for OperationStatusExtendedInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'OperationStatusExtendedInfo',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'objectType',
            uber_parent: 'OperationStatusExtendedInfo',
            class_name: 'OperationStatusExtendedInfo',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
