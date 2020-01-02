# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_07_01
  module Models
    #
    # A Job resource type. The progress and state can be obtained by polling a
    # Job or subscribing to events using EventGrid.
    #
    class Job < ProxyResource

      include MsRestAzure

      # @return [DateTime] The UTC date and time when the Job was created, in
      # 'YYYY-MM-DDThh:mm:ssZ' format.
      attr_accessor :created

      # @return [JobState] The current state of the job. Possible values
      # include: 'Canceled', 'Canceling', 'Error', 'Finished', 'Processing',
      # 'Queued', 'Scheduled'
      attr_accessor :state

      # @return [String] Optional customer supplied description of the Job.
      attr_accessor :description

      # @return [JobInput] The inputs for the Job.
      attr_accessor :input

      # @return [DateTime] The UTC date and time when the Job was last updated,
      # in 'YYYY-MM-DDThh:mm:ssZ' format.
      attr_accessor :last_modified

      # @return [Array<JobOutput>] The outputs for the Job.
      attr_accessor :outputs

      # @return [Priority] Priority with which the job should be processed.
      # Higher priority jobs are processed before lower priority jobs. If not
      # set, the default is normal. Possible values include: 'Low', 'Normal',
      # 'High'
      attr_accessor :priority

      # @return [Hash{String => String}] Customer provided key, value pairs
      # that will be returned in Job and JobOutput state events.
      attr_accessor :correlation_data

      # @return [DateTime] The UTC date and time at which this Job began
      # processing.
      attr_accessor :start_time

      # @return [DateTime] The UTC date and time at which this Job finished
      # processing.
      attr_accessor :end_time


      #
      # Mapper for Job class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Job',
          type: {
            name: 'Composite',
            class_name: 'Job',
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
              created: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.created',
                type: {
                  name: 'DateTime'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.state',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              input: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.input',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: '@odata.type',
                  uber_parent: 'JobInput',
                  class_name: 'JobInput'
                }
              },
              last_modified: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.lastModified',
                type: {
                  name: 'DateTime'
                }
              },
              outputs: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.outputs',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'JobOutputElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: '@odata.type',
                        uber_parent: 'JobOutput',
                        class_name: 'JobOutput'
                      }
                  }
                }
              },
              priority: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.priority',
                type: {
                  name: 'String'
                }
              },
              correlation_data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.correlationData',
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
              },
              start_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.endTime',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
