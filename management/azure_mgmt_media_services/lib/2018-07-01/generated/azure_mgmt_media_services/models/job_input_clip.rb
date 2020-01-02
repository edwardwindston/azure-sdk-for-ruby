# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_07_01
  module Models
    #
    # Represents input files for a Job.
    #
    class JobInputClip < JobInput

      include MsRestAzure


      def initialize
        @odatatype = "#Microsoft.Media.JobInputClip"
      end

      attr_accessor :odatatype

      # @return [Array<String>] List of files. Required for JobInputHttp.
      # Maximum of 4000 characters each.
      attr_accessor :files

      # @return [ClipTime] Defines a point on the timeline of the input media
      # at which processing will start. Defaults to the beginning of the input
      # media.
      attr_accessor :start

      # @return [ClipTime] Defines a point on the timeline of the input media
      # at which processing will end. Defaults to the end of the input media.
      attr_accessor :end_property

      # @return [String] A label that is assigned to a JobInputClip, that is
      # used to satisfy a reference used in the Transform. For example, a
      # Transform can be authored so as to take an image file with the label
      # 'xyz' and apply it as an overlay onto the input video before it is
      # encoded. When submitting a Job, exactly one of the JobInputs should be
      # the image file, and it should have the label 'xyz'.
      attr_accessor :label


      #
      # Mapper for JobInputClip class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: '#Microsoft.Media.JobInputClip',
          type: {
            name: 'Composite',
            class_name: 'JobInputClip',
            model_properties: {
              odatatype: {
                client_side_validation: true,
                required: true,
                serialized_name: '@odata\\.type',
                type: {
                  name: 'String'
                }
              },
              files: {
                client_side_validation: true,
                required: false,
                serialized_name: 'files',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              start: {
                client_side_validation: true,
                required: false,
                serialized_name: 'start',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: '@odata.type',
                  uber_parent: 'ClipTime',
                  class_name: 'ClipTime'
                }
              },
              end_property: {
                client_side_validation: true,
                required: false,
                serialized_name: 'end',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: '@odata.type',
                  uber_parent: 'ClipTime',
                  class_name: 'ClipTime'
                }
              },
              label: {
                client_side_validation: true,
                required: false,
                serialized_name: 'label',
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
