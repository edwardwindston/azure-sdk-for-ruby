# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2015_02_01_preview
  module Models
    #
    # Model object.
    #
    #
    class WorkflowTriggerRecurrence

      include MsRestAzure

      # @return [RecurrenceFrequency] Gets or sets the frequency. Possible
      # values include: 'Second', 'Minute', 'Hour', 'Day', 'Week', 'Month',
      # 'Year'
      attr_accessor :frequency

      # @return [Integer] Gets or sets the interval.
      attr_accessor :interval

      # @return [DateTime] Gets or sets the start time.
      attr_accessor :start_time

      # @return [String] Gets or sets the time zone.
      attr_accessor :time_zone


      #
      # Mapper for WorkflowTriggerRecurrence class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'WorkflowTriggerRecurrence',
          type: {
            name: 'Composite',
            class_name: 'WorkflowTriggerRecurrence',
            model_properties: {
              frequency: {
                required: false,
                serialized_name: 'frequency',
                type: {
                  name: 'Enum',
                  module: 'RecurrenceFrequency'
                }
              },
              interval: {
                required: false,
                serialized_name: 'interval',
                type: {
                  name: 'Number'
                }
              },
              start_time: {
                required: false,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              time_zone: {
                required: false,
                serialized_name: 'timeZone',
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