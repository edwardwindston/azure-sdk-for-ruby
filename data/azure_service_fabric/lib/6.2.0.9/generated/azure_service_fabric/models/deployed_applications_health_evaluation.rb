# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_2_0_9
  module Models
    #
    # Represents health evaluation for deployed applications, containing health
    # evaluations for each unhealthy deployed application that impacted current
    # aggregated health state.
    # Can be returned when evaluating application health and the aggregated
    # health state is either Error or Warning.
    #
    class DeployedApplicationsHealthEvaluation < HealthEvaluation

      include MsRestAzure


      def initialize
        @Kind = "DeployedApplications"
      end

      attr_accessor :Kind

      # @return [Integer] Maximum allowed percentage of unhealthy deployed
      # applications from the ApplicationHealthPolicy.
      attr_accessor :max_percent_unhealthy_deployed_applications

      # @return [Integer] Total number of deployed applications of the
      # application in the health store.
      attr_accessor :total_count

      # @return [Array<HealthEvaluationWrapper>] List of unhealthy evaluations
      # that led to the aggregated health state. Includes all the unhealthy
      # DeployedApplicationHealthEvaluation that impacted the aggregated
      # health.
      attr_accessor :unhealthy_evaluations


      #
      # Mapper for DeployedApplicationsHealthEvaluation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DeployedApplications',
          type: {
            name: 'Composite',
            class_name: 'DeployedApplicationsHealthEvaluation',
            model_properties: {
              aggregated_health_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'AggregatedHealthState',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Description',
                type: {
                  name: 'String'
                }
              },
              Kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Kind',
                type: {
                  name: 'String'
                }
              },
              max_percent_unhealthy_deployed_applications: {
                client_side_validation: true,
                required: false,
                serialized_name: 'MaxPercentUnhealthyDeployedApplications',
                type: {
                  name: 'Number'
                }
              },
              total_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'TotalCount',
                type: {
                  name: 'Number'
                }
              },
              unhealthy_evaluations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'UnhealthyEvaluations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'HealthEvaluationWrapperElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'HealthEvaluationWrapper'
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
