# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2019_11_01
  module Models
    #
    # Application gateway web application firewall configuration.
    #
    class ApplicationGatewayWebApplicationFirewallConfiguration

      include MsRestAzure

      # @return [Boolean] Whether the web application firewall is enabled or
      # not.
      attr_accessor :enabled

      # @return [ApplicationGatewayFirewallMode] Web application firewall mode.
      # Possible values include: 'Detection', 'Prevention'
      attr_accessor :firewall_mode

      # @return [String] The type of the web application firewall rule set.
      # Possible values are: 'OWASP'.
      attr_accessor :rule_set_type

      # @return [String] The version of the rule set type.
      attr_accessor :rule_set_version

      # @return [Array<ApplicationGatewayFirewallDisabledRuleGroup>] The
      # disabled rule groups.
      attr_accessor :disabled_rule_groups

      # @return [Boolean] Whether allow WAF to check request Body.
      attr_accessor :request_body_check

      # @return [Integer] Maximum request body size for WAF.
      attr_accessor :max_request_body_size

      # @return [Integer] Maximum request body size in Kb for WAF.
      attr_accessor :max_request_body_size_in_kb

      # @return [Integer] Maximum file upload size in Mb for WAF.
      attr_accessor :file_upload_limit_in_mb

      # @return [Array<ApplicationGatewayFirewallExclusion>] The exclusion
      # list.
      attr_accessor :exclusions


      #
      # Mapper for ApplicationGatewayWebApplicationFirewallConfiguration class
      # as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationGatewayWebApplicationFirewallConfiguration',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayWebApplicationFirewallConfiguration',
            model_properties: {
              enabled: {
                client_side_validation: true,
                required: true,
                serialized_name: 'enabled',
                type: {
                  name: 'Boolean'
                }
              },
              firewall_mode: {
                client_side_validation: true,
                required: true,
                serialized_name: 'firewallMode',
                type: {
                  name: 'String'
                }
              },
              rule_set_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ruleSetType',
                type: {
                  name: 'String'
                }
              },
              rule_set_version: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ruleSetVersion',
                type: {
                  name: 'String'
                }
              },
              disabled_rule_groups: {
                client_side_validation: true,
                required: false,
                serialized_name: 'disabledRuleGroups',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ApplicationGatewayFirewallDisabledRuleGroupElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationGatewayFirewallDisabledRuleGroup'
                      }
                  }
                }
              },
              request_body_check: {
                client_side_validation: true,
                required: false,
                serialized_name: 'requestBodyCheck',
                type: {
                  name: 'Boolean'
                }
              },
              max_request_body_size: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxRequestBodySize',
                constraints: {
                  InclusiveMaximum: 128,
                  InclusiveMinimum: 8
                },
                type: {
                  name: 'Number'
                }
              },
              max_request_body_size_in_kb: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxRequestBodySizeInKb',
                constraints: {
                  InclusiveMaximum: 128,
                  InclusiveMinimum: 8
                },
                type: {
                  name: 'Number'
                }
              },
              file_upload_limit_in_mb: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fileUploadLimitInMb',
                constraints: {
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              },
              exclusions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'exclusions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ApplicationGatewayFirewallExclusionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationGatewayFirewallExclusion'
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