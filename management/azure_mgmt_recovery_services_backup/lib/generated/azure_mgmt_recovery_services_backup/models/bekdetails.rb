# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup
  module Models
    #
    # BEK is Bitlocker Encrpytion Key.
    #
    class BEKDetails

      include MsRestAzure

      # @return [String] Secret refers to Bitlocker Encryption Key (BEK). The
      # Secret can be unlocked by the key (or KEK).
      attr_accessor :secret_url

      # @return [String] ID of the Key Vault where this Secret is stored.
      attr_accessor :secret_vault_id

      # @return [String] Bitlocker Encryption Key (BEK) data.
      attr_accessor :secret_data


      #
      # Mapper for BEKDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BEKDetails',
          type: {
            name: 'Composite',
            class_name: 'BEKDetails',
            model_properties: {
              secret_url: {
                required: false,
                serialized_name: 'secretUrl',
                type: {
                  name: 'String'
                }
              },
              secret_vault_id: {
                required: false,
                serialized_name: 'secretVaultId',
                type: {
                  name: 'String'
                }
              },
              secret_data: {
                required: false,
                serialized_name: 'secretData',
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
