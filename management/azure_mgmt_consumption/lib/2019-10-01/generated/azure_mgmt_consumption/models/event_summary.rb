# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Consumption::Mgmt::V2019_10_01
  module Models
    #
    # An event summary resource.
    #
    class EventSummary < Resource

      include MsRestAzure

      # @return [DateTime] Transaction date.
      attr_accessor :transaction_date

      # @return [String] Transaction description.
      attr_accessor :description

      # @return [Amount] New Credit.
      attr_accessor :new_credit

      # @return [Amount] Adjustments amount.
      attr_accessor :adjustments

      # @return [Amount] Credit expired.
      attr_accessor :credit_expired

      # @return [Amount] Charges amount.
      attr_accessor :charges

      # @return [Amount] Closed balance.
      attr_accessor :closed_balance

      # @return [EventType] The type of event. Possible values include:
      # 'SettledCharges', 'PendingCharges', 'PendingAdjustments',
      # 'PendingNewCredit', 'PendingExpiredCredit', 'UnKnown', 'NewCredit'
      attr_accessor :event_type

      # @return [String] Invoice number.
      attr_accessor :invoice_number


      #
      # Mapper for EventSummary class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EventSummary',
          type: {
            name: 'Composite',
            class_name: 'EventSummary',
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
              tags: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'tags',
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
              transaction_date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.transactionDate',
                type: {
                  name: 'DateTime'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              new_credit: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.newCredit',
                type: {
                  name: 'Composite',
                  class_name: 'Amount'
                }
              },
              adjustments: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.adjustments',
                type: {
                  name: 'Composite',
                  class_name: 'Amount'
                }
              },
              credit_expired: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.creditExpired',
                type: {
                  name: 'Composite',
                  class_name: 'Amount'
                }
              },
              charges: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.charges',
                type: {
                  name: 'Composite',
                  class_name: 'Amount'
                }
              },
              closed_balance: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.closedBalance',
                type: {
                  name: 'Composite',
                  class_name: 'Amount'
                }
              },
              event_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.eventType',
                type: {
                  name: 'String'
                }
              },
              invoice_number: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.invoiceNumber',
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