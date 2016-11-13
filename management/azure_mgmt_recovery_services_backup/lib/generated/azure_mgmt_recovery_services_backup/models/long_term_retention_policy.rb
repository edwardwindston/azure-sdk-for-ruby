# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup
  module Models
    #
    # Long-term retention policy.
    #
    class LongTermRetentionPolicy < RetentionPolicy

      include MsRestAzure


      def initialize
        @retentionPolicyType = "LongTermRetentionPolicy"
      end

      attr_accessor :retentionPolicyType

      # @return [DailyRetentionSchedule] Daily retention schedule of the backup
      # policy.
      attr_accessor :daily_schedule

      # @return [WeeklyRetentionSchedule] Weekly retention schedule of the
      # backup policy.
      attr_accessor :weekly_schedule

      # @return [MonthlyRetentionSchedule] Monthly retention schedule of the
      # backup policy.
      attr_accessor :monthly_schedule

      # @return [YearlyRetentionSchedule] Yearly retention schedule of the
      # backup policy.
      attr_accessor :yearly_schedule


      #
      # Mapper for LongTermRetentionPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'LongTermRetentionPolicy',
          type: {
            name: 'Composite',
            class_name: 'LongTermRetentionPolicy',
            model_properties: {
              retentionPolicyType: {
                required: true,
                serialized_name: 'retentionPolicyType',
                type: {
                  name: 'String'
                }
              },
              daily_schedule: {
                required: false,
                serialized_name: 'dailySchedule',
                type: {
                  name: 'Composite',
                  class_name: 'DailyRetentionSchedule'
                }
              },
              weekly_schedule: {
                required: false,
                serialized_name: 'weeklySchedule',
                type: {
                  name: 'Composite',
                  class_name: 'WeeklyRetentionSchedule'
                }
              },
              monthly_schedule: {
                required: false,
                serialized_name: 'monthlySchedule',
                type: {
                  name: 'Composite',
                  class_name: 'MonthlyRetentionSchedule'
                }
              },
              yearly_schedule: {
                required: false,
                serialized_name: 'yearlySchedule',
                type: {
                  name: 'Composite',
                  class_name: 'YearlyRetentionSchedule'
                }
              }
            }
          }
        }
      end
    end
  end
end
