# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '2017-10-01-preview/generated/azure_mgmt_sql/module_definition'
require 'ms_rest_azure'

module Azure::SQL::Mgmt::V2017_10_01_preview
  autoload :DatabaseOperations,                                 '2017-10-01-preview/generated/azure_mgmt_sql/database_operations.rb'
  autoload :ElasticPoolOperations,                              '2017-10-01-preview/generated/azure_mgmt_sql/elastic_pool_operations.rb'
  autoload :DatabaseVulnerabilityAssessmentScans,               '2017-10-01-preview/generated/azure_mgmt_sql/database_vulnerability_assessment_scans.rb'
  autoload :Capabilities,                                       '2017-10-01-preview/generated/azure_mgmt_sql/capabilities.rb'
  autoload :Databases,                                          '2017-10-01-preview/generated/azure_mgmt_sql/databases.rb'
  autoload :ElasticPools,                                       '2017-10-01-preview/generated/azure_mgmt_sql/elastic_pools.rb'
  autoload :InstanceFailoverGroups,                             '2017-10-01-preview/generated/azure_mgmt_sql/instance_failover_groups.rb'
  autoload :BackupShortTermRetentionPolicies,                   '2017-10-01-preview/generated/azure_mgmt_sql/backup_short_term_retention_policies.rb'
  autoload :TdeCertificates,                                    '2017-10-01-preview/generated/azure_mgmt_sql/tde_certificates.rb'
  autoload :ManagedInstanceTdeCertificates,                     '2017-10-01-preview/generated/azure_mgmt_sql/managed_instance_tde_certificates.rb'
  autoload :SqlManagementClient,                                '2017-10-01-preview/generated/azure_mgmt_sql/sql_management_client.rb'

  module Models
    autoload :ElasticPoolEditionCapability,                       '2017-10-01-preview/generated/azure_mgmt_sql/models/elastic_pool_edition_capability.rb'
    autoload :ServiceObjectiveCapability,                         '2017-10-01-preview/generated/azure_mgmt_sql/models/service_objective_capability.rb'
    autoload :DatabaseOperationListResult,                        '2017-10-01-preview/generated/azure_mgmt_sql/models/database_operation_list_result.rb'
    autoload :EditionCapability,                                  '2017-10-01-preview/generated/azure_mgmt_sql/models/edition_capability.rb'
    autoload :Resource,                                           '2017-10-01-preview/generated/azure_mgmt_sql/models/resource.rb'
    autoload :ElasticPoolPerDatabaseMinPerformanceLevelCapability, '2017-10-01-preview/generated/azure_mgmt_sql/models/elastic_pool_per_database_min_performance_level_capability.rb'
    autoload :BackupShortTermRetentionPolicyListResult,           '2017-10-01-preview/generated/azure_mgmt_sql/models/backup_short_term_retention_policy_list_result.rb'
    autoload :ElasticPoolPerDatabaseMaxPerformanceLevelCapability, '2017-10-01-preview/generated/azure_mgmt_sql/models/elastic_pool_per_database_max_performance_level_capability.rb'
    autoload :VulnerabilityAssessmentRecurringScansProperties,    '2017-10-01-preview/generated/azure_mgmt_sql/models/vulnerability_assessment_recurring_scans_properties.rb'
    autoload :ElasticPoolPerformanceLevelCapability,              '2017-10-01-preview/generated/azure_mgmt_sql/models/elastic_pool_performance_level_capability.rb'
    autoload :VulnerabilityAssessmentScanError,                   '2017-10-01-preview/generated/azure_mgmt_sql/models/vulnerability_assessment_scan_error.rb'
    autoload :InstanceFailoverGroupReadOnlyEndpoint,              '2017-10-01-preview/generated/azure_mgmt_sql/models/instance_failover_group_read_only_endpoint.rb'
    autoload :VulnerabilityAssessmentScanRecordListResult,        '2017-10-01-preview/generated/azure_mgmt_sql/models/vulnerability_assessment_scan_record_list_result.rb'
    autoload :ServerVersionCapability,                            '2017-10-01-preview/generated/azure_mgmt_sql/models/server_version_capability.rb'
    autoload :MaxSizeCapability,                                  '2017-10-01-preview/generated/azure_mgmt_sql/models/max_size_capability.rb'
    autoload :ManagedInstanceVcoresCapability,                    '2017-10-01-preview/generated/azure_mgmt_sql/models/managed_instance_vcores_capability.rb'
    autoload :MaxSizeRangeCapability,                             '2017-10-01-preview/generated/azure_mgmt_sql/models/max_size_range_capability.rb'
    autoload :ManagedInstanceFamilyCapability,                    '2017-10-01-preview/generated/azure_mgmt_sql/models/managed_instance_family_capability.rb'
    autoload :Sku,                                                '2017-10-01-preview/generated/azure_mgmt_sql/models/sku.rb'
    autoload :ManagedInstanceEditionCapability,                   '2017-10-01-preview/generated/azure_mgmt_sql/models/managed_instance_edition_capability.rb'
    autoload :ManagedInstanceVersionCapability,                   '2017-10-01-preview/generated/azure_mgmt_sql/models/managed_instance_version_capability.rb'
    autoload :ElasticPoolOperationListResult,                     '2017-10-01-preview/generated/azure_mgmt_sql/models/elastic_pool_operation_list_result.rb'
    autoload :LocationCapabilities,                               '2017-10-01-preview/generated/azure_mgmt_sql/models/location_capabilities.rb'
    autoload :ManagedInstancePairInfo,                            '2017-10-01-preview/generated/azure_mgmt_sql/models/managed_instance_pair_info.rb'
    autoload :InstanceFailoverGroupReadWriteEndpoint,             '2017-10-01-preview/generated/azure_mgmt_sql/models/instance_failover_group_read_write_endpoint.rb'
    autoload :LogSizeCapability,                                  '2017-10-01-preview/generated/azure_mgmt_sql/models/log_size_capability.rb'
    autoload :DatabaseListResult,                                 '2017-10-01-preview/generated/azure_mgmt_sql/models/database_list_result.rb'
    autoload :LicenseTypeCapability,                              '2017-10-01-preview/generated/azure_mgmt_sql/models/license_type_capability.rb'
    autoload :DatabaseUpdate,                                     '2017-10-01-preview/generated/azure_mgmt_sql/models/database_update.rb'
    autoload :InstanceFailoverGroupListResult,                    '2017-10-01-preview/generated/azure_mgmt_sql/models/instance_failover_group_list_result.rb'
    autoload :ResourceMoveDefinition,                             '2017-10-01-preview/generated/azure_mgmt_sql/models/resource_move_definition.rb'
    autoload :PerformanceLevelCapability,                         '2017-10-01-preview/generated/azure_mgmt_sql/models/performance_level_capability.rb'
    autoload :ElasticPoolPerDatabaseSettings,                     '2017-10-01-preview/generated/azure_mgmt_sql/models/elastic_pool_per_database_settings.rb'
    autoload :PartnerRegionInfo,                                  '2017-10-01-preview/generated/azure_mgmt_sql/models/partner_region_info.rb'
    autoload :ElasticPoolUpdate,                                  '2017-10-01-preview/generated/azure_mgmt_sql/models/elastic_pool_update.rb'
    autoload :ElasticPoolListResult,                              '2017-10-01-preview/generated/azure_mgmt_sql/models/elastic_pool_list_result.rb'
    autoload :ProxyResource,                                      '2017-10-01-preview/generated/azure_mgmt_sql/models/proxy_resource.rb'
    autoload :DatabaseOperation,                                  '2017-10-01-preview/generated/azure_mgmt_sql/models/database_operation.rb'
    autoload :TrackedResource,                                    '2017-10-01-preview/generated/azure_mgmt_sql/models/tracked_resource.rb'
    autoload :ElasticPoolOperation,                               '2017-10-01-preview/generated/azure_mgmt_sql/models/elastic_pool_operation.rb'
    autoload :DatabaseVulnerabilityAssessment,                    '2017-10-01-preview/generated/azure_mgmt_sql/models/database_vulnerability_assessment.rb'
    autoload :VulnerabilityAssessmentScanRecord,                  '2017-10-01-preview/generated/azure_mgmt_sql/models/vulnerability_assessment_scan_record.rb'
    autoload :DatabaseVulnerabilityAssessmentScansExport,         '2017-10-01-preview/generated/azure_mgmt_sql/models/database_vulnerability_assessment_scans_export.rb'
    autoload :Database,                                           '2017-10-01-preview/generated/azure_mgmt_sql/models/database.rb'
    autoload :ElasticPool,                                        '2017-10-01-preview/generated/azure_mgmt_sql/models/elastic_pool.rb'
    autoload :InstanceFailoverGroup,                              '2017-10-01-preview/generated/azure_mgmt_sql/models/instance_failover_group.rb'
    autoload :BackupShortTermRetentionPolicy,                     '2017-10-01-preview/generated/azure_mgmt_sql/models/backup_short_term_retention_policy.rb'
    autoload :TdeCertificate,                                     '2017-10-01-preview/generated/azure_mgmt_sql/models/tde_certificate.rb'
    autoload :ManagementOperationState,                           '2017-10-01-preview/generated/azure_mgmt_sql/models/management_operation_state.rb'
    autoload :VulnerabilityAssessmentScanTriggerType,             '2017-10-01-preview/generated/azure_mgmt_sql/models/vulnerability_assessment_scan_trigger_type.rb'
    autoload :VulnerabilityAssessmentScanState,                   '2017-10-01-preview/generated/azure_mgmt_sql/models/vulnerability_assessment_scan_state.rb'
    autoload :MaxSizeUnit,                                        '2017-10-01-preview/generated/azure_mgmt_sql/models/max_size_unit.rb'
    autoload :LogSizeUnit,                                        '2017-10-01-preview/generated/azure_mgmt_sql/models/log_size_unit.rb'
    autoload :CapabilityStatus,                                   '2017-10-01-preview/generated/azure_mgmt_sql/models/capability_status.rb'
    autoload :PerformanceLevelUnit,                               '2017-10-01-preview/generated/azure_mgmt_sql/models/performance_level_unit.rb'
    autoload :CreateMode,                                         '2017-10-01-preview/generated/azure_mgmt_sql/models/create_mode.rb'
    autoload :SampleName,                                         '2017-10-01-preview/generated/azure_mgmt_sql/models/sample_name.rb'
    autoload :DatabaseStatus,                                     '2017-10-01-preview/generated/azure_mgmt_sql/models/database_status.rb'
    autoload :CatalogCollationType,                               '2017-10-01-preview/generated/azure_mgmt_sql/models/catalog_collation_type.rb'
    autoload :DatabaseLicenseType,                                '2017-10-01-preview/generated/azure_mgmt_sql/models/database_license_type.rb'
    autoload :DatabaseReadScale,                                  '2017-10-01-preview/generated/azure_mgmt_sql/models/database_read_scale.rb'
    autoload :ElasticPoolState,                                   '2017-10-01-preview/generated/azure_mgmt_sql/models/elastic_pool_state.rb'
    autoload :ElasticPoolLicenseType,                             '2017-10-01-preview/generated/azure_mgmt_sql/models/elastic_pool_license_type.rb'
    autoload :ReadWriteEndpointFailoverPolicy,                    '2017-10-01-preview/generated/azure_mgmt_sql/models/read_write_endpoint_failover_policy.rb'
    autoload :ReadOnlyEndpointFailoverPolicy,                     '2017-10-01-preview/generated/azure_mgmt_sql/models/read_only_endpoint_failover_policy.rb'
    autoload :InstanceFailoverGroupReplicationRole,               '2017-10-01-preview/generated/azure_mgmt_sql/models/instance_failover_group_replication_role.rb'
    autoload :CapabilityGroup,                                    '2017-10-01-preview/generated/azure_mgmt_sql/models/capability_group.rb'
  end
end