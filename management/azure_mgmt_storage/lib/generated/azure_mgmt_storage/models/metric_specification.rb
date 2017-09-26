# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Storage
  module Models
    #
    # Metric specification of operation.
    #
    class MetricSpecification

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Name of metric specification.
      attr_accessor :name

      # @return [String] Display name of metric specification.
      attr_accessor :display_name

      # @return [String] Display description of metric specification.
      attr_accessor :display_description

      # @return [String] Unit could be Bytes or Count.
      attr_accessor :unit

      # @return [Array<Dimension>] Dimensions of blobs, including blob type and
      # access tier.
      attr_accessor :dimensions

      # @return [String] Aggregation type could be Average.
      attr_accessor :aggregation_type

      # @return [Boolean] The property to decide fill gap with zero or not.
      attr_accessor :fill_gap_with_zero

      # @return [String] The category this metric specification belong to,
      # could be Capacity.
      attr_accessor :category

      # @return [String] Account Resource Id.
      attr_accessor :resource_id_dimension_name_override


      #
      # Mapper for MetricSpecification class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'MetricSpecification',
          type: {
            name: 'Composite',
            class_name: 'MetricSpecification',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                required: false,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              display_description: {
                required: false,
                serialized_name: 'displayDescription',
                type: {
                  name: 'String'
                }
              },
              unit: {
                required: false,
                serialized_name: 'unit',
                type: {
                  name: 'String'
                }
              },
              dimensions: {
                required: false,
                serialized_name: 'dimensions',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'DimensionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Dimension'
                      }
                  }
                }
              },
              aggregation_type: {
                required: false,
                serialized_name: 'aggregationType',
                type: {
                  name: 'String'
                }
              },
              fill_gap_with_zero: {
                required: false,
                serialized_name: 'fillGapWithZero',
                type: {
                  name: 'Boolean'
                }
              },
              category: {
                required: false,
                serialized_name: 'category',
                type: {
                  name: 'String'
                }
              },
              resource_id_dimension_name_override: {
                required: false,
                serialized_name: 'resourceIdDimensionNameOverride',
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