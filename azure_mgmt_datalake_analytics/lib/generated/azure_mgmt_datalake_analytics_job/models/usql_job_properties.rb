# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DataLakeAnalytics::Job
  module Models
    #
    # Model object.
    #
    class USqlJobProperties < JobProperties

      include MsRestAzure


      def initialize
        @type = "USql"
      end

      attr_accessor :type

      # @return [Array<JobResource>] the list of resources that are required
      # by the job
      attr_accessor :resources

      # @return [JobStatistics] the job specific statistics.
      attr_accessor :statistics

      # @return [JobDataPath] the job specific debug data locations.
      attr_accessor :debug_data

      # @return [Array<Diagnostics>] the diagnostics for the job.
      attr_accessor :diagnostics

      # @return [String] the algebra file path after the job has completed
      attr_accessor :algebra_file_path

      # @return [Duration] the total time this job spent compiling. This value
      # should not be set by the user and will be ignored if it is.
      attr_accessor :total_compilation_time

      # @return [Duration] the total time this job spent paused. This value
      # should not be set by the user and will be ignored if it is.
      attr_accessor :total_pause_time

      # @return [Duration] the total time this job spent queued. This value
      # should not be set by the user and will be ignored if it is.
      attr_accessor :total_queued_time

      # @return [Duration] the total time this job spent executing. This value
      # should not be set by the user and will be ignored if it is.
      attr_accessor :total_running_time

      # @return [String] the ID used to identify the job manager coordinating
      # job execution. This value should not be set by the user and will be
      # ignored if it is.
      attr_accessor :root_process_node_id

      # @return [String] the ID used to identify the yarn application
      # executing the job. This value should not be set by the user and will
      # be ignored if it is.
      attr_accessor :yarn_application_id

      # @return [Integer] the timestamp (in ticks) for the yarn application
      # executing the job. This value should not be set by the user and will
      # be ignored if it is.
      attr_accessor :yarn_application_time_stamp

      # @return [CompileMode] the compile mode for the job. Possible values
      # include: 'Semantic', 'Full', 'SingleBox'
      attr_accessor :compile_mode


      #
      # Mapper for USqlJobProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'USql',
          type: {
            name: 'Composite',
            class_name: 'USqlJobProperties',
            model_properties: {
              runtime_version: {
                required: false,
                serialized_name: 'runtimeVersion',
                type: {
                  name: 'String'
                }
              },
              script: {
                required: true,
                serialized_name: 'script',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              resources: {
                required: false,
                serialized_name: 'resources',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'JobResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'JobResource'
                      }
                  }
                }
              },
              statistics: {
                required: false,
                serialized_name: 'statistics',
                type: {
                  name: 'Composite',
                  class_name: 'JobStatistics'
                }
              },
              debug_data: {
                required: false,
                serialized_name: 'debugData',
                type: {
                  name: 'Composite',
                  class_name: 'JobDataPath'
                }
              },
              diagnostics: {
                required: false,
                serialized_name: 'diagnostics',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'DiagnosticsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Diagnostics'
                      }
                  }
                }
              },
              algebra_file_path: {
                required: false,
                read_only: true,
                serialized_name: 'algebraFilePath',
                type: {
                  name: 'String'
                }
              },
              total_compilation_time: {
                required: false,
                read_only: true,
                serialized_name: 'totalCompilationTime',
                type: {
                  name: 'TimeSpan'
                }
              },
              total_pause_time: {
                required: false,
                read_only: true,
                serialized_name: 'totalPauseTime',
                type: {
                  name: 'TimeSpan'
                }
              },
              total_queued_time: {
                required: false,
                read_only: true,
                serialized_name: 'totalQueuedTime',
                type: {
                  name: 'TimeSpan'
                }
              },
              total_running_time: {
                required: false,
                read_only: true,
                serialized_name: 'totalRunningTime',
                type: {
                  name: 'TimeSpan'
                }
              },
              root_process_node_id: {
                required: false,
                read_only: true,
                serialized_name: 'rootProcessNodeId',
                type: {
                  name: 'String'
                }
              },
              yarn_application_id: {
                required: false,
                read_only: true,
                serialized_name: 'yarnApplicationId',
                type: {
                  name: 'String'
                }
              },
              yarn_application_time_stamp: {
                required: false,
                read_only: true,
                serialized_name: 'yarnApplicationTimeStamp',
                type: {
                  name: 'Number'
                }
              },
              compile_mode: {
                required: false,
                serialized_name: 'compileMode',
                type: {
                  name: 'Enum',
                  module: 'CompileMode'
                }
              }
            }
          }
        }
      end
    end
  end
end