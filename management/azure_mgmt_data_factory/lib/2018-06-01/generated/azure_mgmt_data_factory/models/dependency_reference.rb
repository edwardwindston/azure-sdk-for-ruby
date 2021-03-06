# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Referenced dependency.
    #
    class DependencyReference

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["SelfDependencyTumblingWindowTriggerReference"] = "SelfDependencyTumblingWindowTriggerReference"
      @@discriminatorMap["TumblingWindowTriggerDependencyReference"] = "TumblingWindowTriggerDependencyReference"
      @@discriminatorMap["TriggerDependencyReference"] = "TriggerDependencyReference"

      def initialize
        @type = "DependencyReference"
      end

      attr_accessor :type


      #
      # Mapper for DependencyReference class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DependencyReference',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'type',
            uber_parent: 'DependencyReference',
            class_name: 'DependencyReference',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
