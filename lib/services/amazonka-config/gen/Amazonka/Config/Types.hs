{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Config.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Config.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _InvalidExpressionException,
    _InvalidConfigurationRecorderNameException,
    _MaxActiveResourcesExceededException,
    _NoSuchRetentionConfigurationException,
    _MaxNumberOfConfigurationRecordersExceededException,
    _ConformancePackTemplateValidationException,
    _InvalidRecordingGroupException,
    _InsufficientPermissionsException,
    _MaxNumberOfDeliveryChannelsExceededException,
    _TooManyTagsException,
    _InvalidRoleException,
    _ResourceNotFoundException,
    _NoSuchRemediationConfigurationException,
    _ResourceInUseException,
    _InvalidDeliveryChannelNameException,
    _LimitExceededException,
    _OrganizationAllFeaturesNotEnabledException,
    _InvalidLimitException,
    _InvalidS3KeyPrefixException,
    _OrganizationConformancePackTemplateValidationException,
    _NoSuchConfigurationRecorderException,
    _InvalidSNSTopicARNException,
    _InvalidNextTokenException,
    _NoSuchBucketException,
    _NoRunningConfigurationRecorderException,
    _NoSuchOrganizationConformancePackException,
    _MaxNumberOfRetentionConfigurationsExceededException,
    _NoAvailableDeliveryChannelException,
    _NoAvailableConfigurationRecorderException,
    _InsufficientDeliveryPolicyException,
    _MaxNumberOfOrganizationConfigRulesExceededException,
    _OrganizationAccessDeniedException,
    _LastDeliveryChannelDeleteFailedException,
    _InvalidS3KmsKeyArnException,
    _NoSuchConfigRuleException,
    _MaxNumberOfConfigRulesExceededException,
    _ValidationException,
    _InvalidResultTokenException,
    _ResourceConcurrentModificationException,
    _MaxNumberOfOrganizationConformancePacksExceededException,
    _NoSuchConfigRuleInConformancePackException,
    _InvalidTimeRangeException,
    _RemediationInProgressException,
    _OversizedConfigurationItemException,
    _NoSuchConfigurationAggregatorException,
    _NoAvailableOrganizationException,
    _ResourceNotDiscoveredException,
    _MaxNumberOfConformancePacksExceededException,
    _NoSuchConformancePackException,
    _NoSuchRemediationExceptionException,
    _NoSuchDeliveryChannelException,
    _InvalidParameterValueException,
    _NoSuchOrganizationConfigRuleException,

    -- * AggregateConformancePackComplianceSummaryGroupKey
    AggregateConformancePackComplianceSummaryGroupKey (..),

    -- * AggregatedSourceStatusType
    AggregatedSourceStatusType (..),

    -- * AggregatedSourceType
    AggregatedSourceType (..),

    -- * ChronologicalOrder
    ChronologicalOrder (..),

    -- * ComplianceType
    ComplianceType (..),

    -- * ConfigRuleComplianceSummaryGroupKey
    ConfigRuleComplianceSummaryGroupKey (..),

    -- * ConfigRuleState
    ConfigRuleState (..),

    -- * ConfigurationItemStatus
    ConfigurationItemStatus (..),

    -- * ConformancePackComplianceType
    ConformancePackComplianceType (..),

    -- * ConformancePackState
    ConformancePackState (..),

    -- * DeliveryStatus
    DeliveryStatus (..),

    -- * EventSource
    EventSource (..),

    -- * MaximumExecutionFrequency
    MaximumExecutionFrequency (..),

    -- * MemberAccountRuleStatus
    MemberAccountRuleStatus (..),

    -- * MessageType
    MessageType (..),

    -- * OrganizationConfigRuleTriggerType
    OrganizationConfigRuleTriggerType (..),

    -- * OrganizationConfigRuleTriggerTypeNoSN
    OrganizationConfigRuleTriggerTypeNoSN (..),

    -- * OrganizationResourceDetailedStatus
    OrganizationResourceDetailedStatus (..),

    -- * OrganizationResourceStatus
    OrganizationResourceStatus (..),

    -- * OrganizationRuleStatus
    OrganizationRuleStatus (..),

    -- * Owner
    Owner (..),

    -- * RecorderStatus
    RecorderStatus (..),

    -- * RemediationExecutionState
    RemediationExecutionState (..),

    -- * RemediationExecutionStepState
    RemediationExecutionStepState (..),

    -- * RemediationTargetType
    RemediationTargetType (..),

    -- * ResourceCountGroupKey
    ResourceCountGroupKey (..),

    -- * ResourceType
    ResourceType (..),

    -- * ResourceValueType
    ResourceValueType (..),

    -- * SortBy
    SortBy (..),

    -- * SortOrder
    SortOrder (..),

    -- * AccountAggregationSource
    AccountAggregationSource (..),
    newAccountAggregationSource,
    accountAggregationSource_awsRegions,
    accountAggregationSource_allAwsRegions,
    accountAggregationSource_accountIds,

    -- * AggregateComplianceByConfigRule
    AggregateComplianceByConfigRule (..),
    newAggregateComplianceByConfigRule,
    aggregateComplianceByConfigRule_configRuleName,
    aggregateComplianceByConfigRule_accountId,
    aggregateComplianceByConfigRule_awsRegion,
    aggregateComplianceByConfigRule_compliance,

    -- * AggregateComplianceByConformancePack
    AggregateComplianceByConformancePack (..),
    newAggregateComplianceByConformancePack,
    aggregateComplianceByConformancePack_conformancePackName,
    aggregateComplianceByConformancePack_accountId,
    aggregateComplianceByConformancePack_awsRegion,
    aggregateComplianceByConformancePack_compliance,

    -- * AggregateComplianceCount
    AggregateComplianceCount (..),
    newAggregateComplianceCount,
    aggregateComplianceCount_groupName,
    aggregateComplianceCount_complianceSummary,

    -- * AggregateConformancePackCompliance
    AggregateConformancePackCompliance (..),
    newAggregateConformancePackCompliance,
    aggregateConformancePackCompliance_nonCompliantRuleCount,
    aggregateConformancePackCompliance_totalRuleCount,
    aggregateConformancePackCompliance_compliantRuleCount,
    aggregateConformancePackCompliance_complianceType,

    -- * AggregateConformancePackComplianceCount
    AggregateConformancePackComplianceCount (..),
    newAggregateConformancePackComplianceCount,
    aggregateConformancePackComplianceCount_compliantConformancePackCount,
    aggregateConformancePackComplianceCount_nonCompliantConformancePackCount,

    -- * AggregateConformancePackComplianceFilters
    AggregateConformancePackComplianceFilters (..),
    newAggregateConformancePackComplianceFilters,
    aggregateConformancePackComplianceFilters_conformancePackName,
    aggregateConformancePackComplianceFilters_accountId,
    aggregateConformancePackComplianceFilters_awsRegion,
    aggregateConformancePackComplianceFilters_complianceType,

    -- * AggregateConformancePackComplianceSummary
    AggregateConformancePackComplianceSummary (..),
    newAggregateConformancePackComplianceSummary,
    aggregateConformancePackComplianceSummary_groupName,
    aggregateConformancePackComplianceSummary_complianceSummary,

    -- * AggregateConformancePackComplianceSummaryFilters
    AggregateConformancePackComplianceSummaryFilters (..),
    newAggregateConformancePackComplianceSummaryFilters,
    aggregateConformancePackComplianceSummaryFilters_accountId,
    aggregateConformancePackComplianceSummaryFilters_awsRegion,

    -- * AggregateEvaluationResult
    AggregateEvaluationResult (..),
    newAggregateEvaluationResult,
    aggregateEvaluationResult_evaluationResultIdentifier,
    aggregateEvaluationResult_configRuleInvokedTime,
    aggregateEvaluationResult_resultRecordedTime,
    aggregateEvaluationResult_annotation,
    aggregateEvaluationResult_accountId,
    aggregateEvaluationResult_awsRegion,
    aggregateEvaluationResult_complianceType,

    -- * AggregateResourceIdentifier
    AggregateResourceIdentifier (..),
    newAggregateResourceIdentifier,
    aggregateResourceIdentifier_resourceName,
    aggregateResourceIdentifier_sourceAccountId,
    aggregateResourceIdentifier_sourceRegion,
    aggregateResourceIdentifier_resourceId,
    aggregateResourceIdentifier_resourceType,

    -- * AggregatedSourceStatus
    AggregatedSourceStatus (..),
    newAggregatedSourceStatus,
    aggregatedSourceStatus_lastErrorCode,
    aggregatedSourceStatus_sourceId,
    aggregatedSourceStatus_sourceType,
    aggregatedSourceStatus_awsRegion,
    aggregatedSourceStatus_lastUpdateStatus,
    aggregatedSourceStatus_lastUpdateTime,
    aggregatedSourceStatus_lastErrorMessage,

    -- * AggregationAuthorization
    AggregationAuthorization (..),
    newAggregationAuthorization,
    aggregationAuthorization_authorizedAwsRegion,
    aggregationAuthorization_authorizedAccountId,
    aggregationAuthorization_aggregationAuthorizationArn,
    aggregationAuthorization_creationTime,

    -- * BaseConfigurationItem
    BaseConfigurationItem (..),
    newBaseConfigurationItem,
    baseConfigurationItem_resourceId,
    baseConfigurationItem_resourceType,
    baseConfigurationItem_resourceName,
    baseConfigurationItem_resourceCreationTime,
    baseConfigurationItem_supplementaryConfiguration,
    baseConfigurationItem_configurationStateId,
    baseConfigurationItem_configuration,
    baseConfigurationItem_arn,
    baseConfigurationItem_configurationItemStatus,
    baseConfigurationItem_availabilityZone,
    baseConfigurationItem_accountId,
    baseConfigurationItem_awsRegion,
    baseConfigurationItem_version,
    baseConfigurationItem_configurationItemCaptureTime,

    -- * Compliance
    Compliance (..),
    newCompliance,
    compliance_complianceContributorCount,
    compliance_complianceType,

    -- * ComplianceByConfigRule
    ComplianceByConfigRule (..),
    newComplianceByConfigRule,
    complianceByConfigRule_configRuleName,
    complianceByConfigRule_compliance,

    -- * ComplianceByResource
    ComplianceByResource (..),
    newComplianceByResource,
    complianceByResource_resourceId,
    complianceByResource_resourceType,
    complianceByResource_compliance,

    -- * ComplianceContributorCount
    ComplianceContributorCount (..),
    newComplianceContributorCount,
    complianceContributorCount_cappedCount,
    complianceContributorCount_capExceeded,

    -- * ComplianceSummary
    ComplianceSummary (..),
    newComplianceSummary,
    complianceSummary_compliantResourceCount,
    complianceSummary_complianceSummaryTimestamp,
    complianceSummary_nonCompliantResourceCount,

    -- * ComplianceSummaryByResourceType
    ComplianceSummaryByResourceType (..),
    newComplianceSummaryByResourceType,
    complianceSummaryByResourceType_resourceType,
    complianceSummaryByResourceType_complianceSummary,

    -- * ConfigExportDeliveryInfo
    ConfigExportDeliveryInfo (..),
    newConfigExportDeliveryInfo,
    configExportDeliveryInfo_lastErrorCode,
    configExportDeliveryInfo_nextDeliveryTime,
    configExportDeliveryInfo_lastStatus,
    configExportDeliveryInfo_lastSuccessfulTime,
    configExportDeliveryInfo_lastErrorMessage,
    configExportDeliveryInfo_lastAttemptTime,

    -- * ConfigRule
    ConfigRule (..),
    newConfigRule,
    configRule_maximumExecutionFrequency,
    configRule_inputParameters,
    configRule_configRuleArn,
    configRule_description,
    configRule_configRuleId,
    configRule_configRuleName,
    configRule_scope,
    configRule_configRuleState,
    configRule_createdBy,
    configRule_source,

    -- * ConfigRuleComplianceFilters
    ConfigRuleComplianceFilters (..),
    newConfigRuleComplianceFilters,
    configRuleComplianceFilters_configRuleName,
    configRuleComplianceFilters_accountId,
    configRuleComplianceFilters_awsRegion,
    configRuleComplianceFilters_complianceType,

    -- * ConfigRuleComplianceSummaryFilters
    ConfigRuleComplianceSummaryFilters (..),
    newConfigRuleComplianceSummaryFilters,
    configRuleComplianceSummaryFilters_accountId,
    configRuleComplianceSummaryFilters_awsRegion,

    -- * ConfigRuleEvaluationStatus
    ConfigRuleEvaluationStatus (..),
    newConfigRuleEvaluationStatus,
    configRuleEvaluationStatus_lastDebugLogDeliveryStatus,
    configRuleEvaluationStatus_lastDebugLogDeliveryStatusReason,
    configRuleEvaluationStatus_firstEvaluationStarted,
    configRuleEvaluationStatus_lastErrorCode,
    configRuleEvaluationStatus_lastSuccessfulEvaluationTime,
    configRuleEvaluationStatus_lastFailedEvaluationTime,
    configRuleEvaluationStatus_lastFailedInvocationTime,
    configRuleEvaluationStatus_lastDeactivatedTime,
    configRuleEvaluationStatus_configRuleArn,
    configRuleEvaluationStatus_firstActivatedTime,
    configRuleEvaluationStatus_configRuleId,
    configRuleEvaluationStatus_configRuleName,
    configRuleEvaluationStatus_lastDebugLogDeliveryTime,
    configRuleEvaluationStatus_lastSuccessfulInvocationTime,
    configRuleEvaluationStatus_lastErrorMessage,

    -- * ConfigSnapshotDeliveryProperties
    ConfigSnapshotDeliveryProperties (..),
    newConfigSnapshotDeliveryProperties,
    configSnapshotDeliveryProperties_deliveryFrequency,

    -- * ConfigStreamDeliveryInfo
    ConfigStreamDeliveryInfo (..),
    newConfigStreamDeliveryInfo,
    configStreamDeliveryInfo_lastErrorCode,
    configStreamDeliveryInfo_lastStatus,
    configStreamDeliveryInfo_lastStatusChangeTime,
    configStreamDeliveryInfo_lastErrorMessage,

    -- * ConfigurationAggregator
    ConfigurationAggregator (..),
    newConfigurationAggregator,
    configurationAggregator_configurationAggregatorArn,
    configurationAggregator_accountAggregationSources,
    configurationAggregator_lastUpdatedTime,
    configurationAggregator_configurationAggregatorName,
    configurationAggregator_organizationAggregationSource,
    configurationAggregator_creationTime,
    configurationAggregator_createdBy,

    -- * ConfigurationItem
    ConfigurationItem (..),
    newConfigurationItem,
    configurationItem_tags,
    configurationItem_resourceId,
    configurationItem_resourceType,
    configurationItem_resourceName,
    configurationItem_resourceCreationTime,
    configurationItem_supplementaryConfiguration,
    configurationItem_configurationStateId,
    configurationItem_configurationItemMD5Hash,
    configurationItem_configuration,
    configurationItem_arn,
    configurationItem_configurationItemStatus,
    configurationItem_availabilityZone,
    configurationItem_accountId,
    configurationItem_awsRegion,
    configurationItem_relatedEvents,
    configurationItem_relationships,
    configurationItem_version,
    configurationItem_configurationItemCaptureTime,

    -- * ConfigurationRecorder
    ConfigurationRecorder (..),
    newConfigurationRecorder,
    configurationRecorder_name,
    configurationRecorder_roleARN,
    configurationRecorder_recordingGroup,

    -- * ConfigurationRecorderStatus
    ConfigurationRecorderStatus (..),
    newConfigurationRecorderStatus,
    configurationRecorderStatus_name,
    configurationRecorderStatus_lastErrorCode,
    configurationRecorderStatus_lastStartTime,
    configurationRecorderStatus_lastStatus,
    configurationRecorderStatus_lastStatusChangeTime,
    configurationRecorderStatus_recording,
    configurationRecorderStatus_lastStopTime,
    configurationRecorderStatus_lastErrorMessage,

    -- * ConformancePackComplianceFilters
    ConformancePackComplianceFilters (..),
    newConformancePackComplianceFilters,
    conformancePackComplianceFilters_configRuleNames,
    conformancePackComplianceFilters_complianceType,

    -- * ConformancePackComplianceScore
    ConformancePackComplianceScore (..),
    newConformancePackComplianceScore,
    conformancePackComplianceScore_score,
    conformancePackComplianceScore_conformancePackName,
    conformancePackComplianceScore_lastUpdatedTime,

    -- * ConformancePackComplianceScoresFilters
    ConformancePackComplianceScoresFilters (..),
    newConformancePackComplianceScoresFilters,
    conformancePackComplianceScoresFilters_conformancePackNames,

    -- * ConformancePackComplianceSummary
    ConformancePackComplianceSummary (..),
    newConformancePackComplianceSummary,
    conformancePackComplianceSummary_conformancePackName,
    conformancePackComplianceSummary_conformancePackComplianceStatus,

    -- * ConformancePackDetail
    ConformancePackDetail (..),
    newConformancePackDetail,
    conformancePackDetail_lastUpdateRequestedTime,
    conformancePackDetail_conformancePackInputParameters,
    conformancePackDetail_deliveryS3Bucket,
    conformancePackDetail_createdBy,
    conformancePackDetail_deliveryS3KeyPrefix,
    conformancePackDetail_conformancePackName,
    conformancePackDetail_conformancePackArn,
    conformancePackDetail_conformancePackId,

    -- * ConformancePackEvaluationFilters
    ConformancePackEvaluationFilters (..),
    newConformancePackEvaluationFilters,
    conformancePackEvaluationFilters_resourceType,
    conformancePackEvaluationFilters_resourceIds,
    conformancePackEvaluationFilters_configRuleNames,
    conformancePackEvaluationFilters_complianceType,

    -- * ConformancePackEvaluationResult
    ConformancePackEvaluationResult (..),
    newConformancePackEvaluationResult,
    conformancePackEvaluationResult_annotation,
    conformancePackEvaluationResult_complianceType,
    conformancePackEvaluationResult_evaluationResultIdentifier,
    conformancePackEvaluationResult_configRuleInvokedTime,
    conformancePackEvaluationResult_resultRecordedTime,

    -- * ConformancePackInputParameter
    ConformancePackInputParameter (..),
    newConformancePackInputParameter,
    conformancePackInputParameter_parameterName,
    conformancePackInputParameter_parameterValue,

    -- * ConformancePackRuleCompliance
    ConformancePackRuleCompliance (..),
    newConformancePackRuleCompliance,
    conformancePackRuleCompliance_configRuleName,
    conformancePackRuleCompliance_controls,
    conformancePackRuleCompliance_complianceType,

    -- * ConformancePackStatusDetail
    ConformancePackStatusDetail (..),
    newConformancePackStatusDetail,
    conformancePackStatusDetail_conformancePackStatusReason,
    conformancePackStatusDetail_lastUpdateCompletedTime,
    conformancePackStatusDetail_conformancePackName,
    conformancePackStatusDetail_conformancePackId,
    conformancePackStatusDetail_conformancePackArn,
    conformancePackStatusDetail_conformancePackState,
    conformancePackStatusDetail_stackArn,
    conformancePackStatusDetail_lastUpdateRequestedTime,

    -- * CustomPolicyDetails
    CustomPolicyDetails (..),
    newCustomPolicyDetails,
    customPolicyDetails_enableDebugLogDelivery,
    customPolicyDetails_policyRuntime,
    customPolicyDetails_policyText,

    -- * DeliveryChannel
    DeliveryChannel (..),
    newDeliveryChannel,
    deliveryChannel_s3KeyPrefix,
    deliveryChannel_name,
    deliveryChannel_s3BucketName,
    deliveryChannel_snsTopicARN,
    deliveryChannel_configSnapshotDeliveryProperties,
    deliveryChannel_s3KmsKeyArn,

    -- * DeliveryChannelStatus
    DeliveryChannelStatus (..),
    newDeliveryChannelStatus,
    deliveryChannelStatus_name,
    deliveryChannelStatus_configHistoryDeliveryInfo,
    deliveryChannelStatus_configSnapshotDeliveryInfo,
    deliveryChannelStatus_configStreamDeliveryInfo,

    -- * Evaluation
    Evaluation (..),
    newEvaluation,
    evaluation_annotation,
    evaluation_complianceResourceType,
    evaluation_complianceResourceId,
    evaluation_complianceType,
    evaluation_orderingTimestamp,

    -- * EvaluationResult
    EvaluationResult (..),
    newEvaluationResult,
    evaluationResult_evaluationResultIdentifier,
    evaluationResult_configRuleInvokedTime,
    evaluationResult_resultToken,
    evaluationResult_resultRecordedTime,
    evaluationResult_annotation,
    evaluationResult_complianceType,

    -- * EvaluationResultIdentifier
    EvaluationResultIdentifier (..),
    newEvaluationResultIdentifier,
    evaluationResultIdentifier_orderingTimestamp,
    evaluationResultIdentifier_evaluationResultQualifier,

    -- * EvaluationResultQualifier
    EvaluationResultQualifier (..),
    newEvaluationResultQualifier,
    evaluationResultQualifier_resourceId,
    evaluationResultQualifier_resourceType,
    evaluationResultQualifier_configRuleName,

    -- * ExecutionControls
    ExecutionControls (..),
    newExecutionControls,
    executionControls_ssmControls,

    -- * ExternalEvaluation
    ExternalEvaluation (..),
    newExternalEvaluation,
    externalEvaluation_annotation,
    externalEvaluation_complianceResourceType,
    externalEvaluation_complianceResourceId,
    externalEvaluation_complianceType,
    externalEvaluation_orderingTimestamp,

    -- * FailedDeleteRemediationExceptionsBatch
    FailedDeleteRemediationExceptionsBatch (..),
    newFailedDeleteRemediationExceptionsBatch,
    failedDeleteRemediationExceptionsBatch_failedItems,
    failedDeleteRemediationExceptionsBatch_failureMessage,

    -- * FailedRemediationBatch
    FailedRemediationBatch (..),
    newFailedRemediationBatch,
    failedRemediationBatch_failedItems,
    failedRemediationBatch_failureMessage,

    -- * FailedRemediationExceptionBatch
    FailedRemediationExceptionBatch (..),
    newFailedRemediationExceptionBatch,
    failedRemediationExceptionBatch_failedItems,
    failedRemediationExceptionBatch_failureMessage,

    -- * FieldInfo
    FieldInfo (..),
    newFieldInfo,
    fieldInfo_name,

    -- * GroupedResourceCount
    GroupedResourceCount (..),
    newGroupedResourceCount,
    groupedResourceCount_groupName,
    groupedResourceCount_resourceCount,

    -- * MemberAccountStatus
    MemberAccountStatus (..),
    newMemberAccountStatus,
    memberAccountStatus_errorMessage,
    memberAccountStatus_errorCode,
    memberAccountStatus_lastUpdateTime,
    memberAccountStatus_accountId,
    memberAccountStatus_configRuleName,
    memberAccountStatus_memberAccountRuleStatus,

    -- * OrganizationAggregationSource
    OrganizationAggregationSource (..),
    newOrganizationAggregationSource,
    organizationAggregationSource_awsRegions,
    organizationAggregationSource_allAwsRegions,
    organizationAggregationSource_roleArn,

    -- * OrganizationConfigRule
    OrganizationConfigRule (..),
    newOrganizationConfigRule,
    organizationConfigRule_organizationCustomPolicyRuleMetadata,
    organizationConfigRule_excludedAccounts,
    organizationConfigRule_lastUpdateTime,
    organizationConfigRule_organizationManagedRuleMetadata,
    organizationConfigRule_organizationCustomRuleMetadata,
    organizationConfigRule_organizationConfigRuleName,
    organizationConfigRule_organizationConfigRuleArn,

    -- * OrganizationConfigRuleStatus
    OrganizationConfigRuleStatus (..),
    newOrganizationConfigRuleStatus,
    organizationConfigRuleStatus_errorMessage,
    organizationConfigRuleStatus_errorCode,
    organizationConfigRuleStatus_lastUpdateTime,
    organizationConfigRuleStatus_organizationConfigRuleName,
    organizationConfigRuleStatus_organizationRuleStatus,

    -- * OrganizationConformancePack
    OrganizationConformancePack (..),
    newOrganizationConformancePack,
    organizationConformancePack_excludedAccounts,
    organizationConformancePack_conformancePackInputParameters,
    organizationConformancePack_deliveryS3Bucket,
    organizationConformancePack_deliveryS3KeyPrefix,
    organizationConformancePack_organizationConformancePackName,
    organizationConformancePack_organizationConformancePackArn,
    organizationConformancePack_lastUpdateTime,

    -- * OrganizationConformancePackDetailedStatus
    OrganizationConformancePackDetailedStatus (..),
    newOrganizationConformancePackDetailedStatus,
    organizationConformancePackDetailedStatus_errorMessage,
    organizationConformancePackDetailedStatus_errorCode,
    organizationConformancePackDetailedStatus_lastUpdateTime,
    organizationConformancePackDetailedStatus_accountId,
    organizationConformancePackDetailedStatus_conformancePackName,
    organizationConformancePackDetailedStatus_status,

    -- * OrganizationConformancePackStatus
    OrganizationConformancePackStatus (..),
    newOrganizationConformancePackStatus,
    organizationConformancePackStatus_errorMessage,
    organizationConformancePackStatus_errorCode,
    organizationConformancePackStatus_lastUpdateTime,
    organizationConformancePackStatus_organizationConformancePackName,
    organizationConformancePackStatus_status,

    -- * OrganizationCustomPolicyRuleMetadata
    OrganizationCustomPolicyRuleMetadata (..),
    newOrganizationCustomPolicyRuleMetadata,
    organizationCustomPolicyRuleMetadata_maximumExecutionFrequency,
    organizationCustomPolicyRuleMetadata_resourceTypesScope,
    organizationCustomPolicyRuleMetadata_inputParameters,
    organizationCustomPolicyRuleMetadata_tagValueScope,
    organizationCustomPolicyRuleMetadata_resourceIdScope,
    organizationCustomPolicyRuleMetadata_debugLogDeliveryAccounts,
    organizationCustomPolicyRuleMetadata_description,
    organizationCustomPolicyRuleMetadata_organizationConfigRuleTriggerTypes,
    organizationCustomPolicyRuleMetadata_tagKeyScope,
    organizationCustomPolicyRuleMetadata_policyRuntime,
    organizationCustomPolicyRuleMetadata_policyText,

    -- * OrganizationCustomPolicyRuleMetadataNoPolicy
    OrganizationCustomPolicyRuleMetadataNoPolicy (..),
    newOrganizationCustomPolicyRuleMetadataNoPolicy,
    organizationCustomPolicyRuleMetadataNoPolicy_maximumExecutionFrequency,
    organizationCustomPolicyRuleMetadataNoPolicy_resourceTypesScope,
    organizationCustomPolicyRuleMetadataNoPolicy_inputParameters,
    organizationCustomPolicyRuleMetadataNoPolicy_tagValueScope,
    organizationCustomPolicyRuleMetadataNoPolicy_resourceIdScope,
    organizationCustomPolicyRuleMetadataNoPolicy_debugLogDeliveryAccounts,
    organizationCustomPolicyRuleMetadataNoPolicy_description,
    organizationCustomPolicyRuleMetadataNoPolicy_organizationConfigRuleTriggerTypes,
    organizationCustomPolicyRuleMetadataNoPolicy_policyRuntime,
    organizationCustomPolicyRuleMetadataNoPolicy_tagKeyScope,

    -- * OrganizationCustomRuleMetadata
    OrganizationCustomRuleMetadata (..),
    newOrganizationCustomRuleMetadata,
    organizationCustomRuleMetadata_maximumExecutionFrequency,
    organizationCustomRuleMetadata_resourceTypesScope,
    organizationCustomRuleMetadata_inputParameters,
    organizationCustomRuleMetadata_tagValueScope,
    organizationCustomRuleMetadata_resourceIdScope,
    organizationCustomRuleMetadata_description,
    organizationCustomRuleMetadata_tagKeyScope,
    organizationCustomRuleMetadata_lambdaFunctionArn,
    organizationCustomRuleMetadata_organizationConfigRuleTriggerTypes,

    -- * OrganizationManagedRuleMetadata
    OrganizationManagedRuleMetadata (..),
    newOrganizationManagedRuleMetadata,
    organizationManagedRuleMetadata_maximumExecutionFrequency,
    organizationManagedRuleMetadata_resourceTypesScope,
    organizationManagedRuleMetadata_inputParameters,
    organizationManagedRuleMetadata_tagValueScope,
    organizationManagedRuleMetadata_resourceIdScope,
    organizationManagedRuleMetadata_description,
    organizationManagedRuleMetadata_tagKeyScope,
    organizationManagedRuleMetadata_ruleIdentifier,

    -- * OrganizationResourceDetailedStatusFilters
    OrganizationResourceDetailedStatusFilters (..),
    newOrganizationResourceDetailedStatusFilters,
    organizationResourceDetailedStatusFilters_status,
    organizationResourceDetailedStatusFilters_accountId,

    -- * PendingAggregationRequest
    PendingAggregationRequest (..),
    newPendingAggregationRequest,
    pendingAggregationRequest_requesterAwsRegion,
    pendingAggregationRequest_requesterAccountId,

    -- * QueryInfo
    QueryInfo (..),
    newQueryInfo,
    queryInfo_selectFields,

    -- * RecordingGroup
    RecordingGroup (..),
    newRecordingGroup,
    recordingGroup_includeGlobalResourceTypes,
    recordingGroup_resourceTypes,
    recordingGroup_allSupported,

    -- * Relationship
    Relationship (..),
    newRelationship,
    relationship_resourceId,
    relationship_resourceType,
    relationship_resourceName,
    relationship_relationshipName,

    -- * RemediationConfiguration
    RemediationConfiguration (..),
    newRemediationConfiguration,
    remediationConfiguration_resourceType,
    remediationConfiguration_maximumAutomaticAttempts,
    remediationConfiguration_arn,
    remediationConfiguration_executionControls,
    remediationConfiguration_automatic,
    remediationConfiguration_targetVersion,
    remediationConfiguration_createdByService,
    remediationConfiguration_retryAttemptSeconds,
    remediationConfiguration_parameters,
    remediationConfiguration_configRuleName,
    remediationConfiguration_targetType,
    remediationConfiguration_targetId,

    -- * RemediationException
    RemediationException (..),
    newRemediationException,
    remediationException_message,
    remediationException_expirationTime,
    remediationException_configRuleName,
    remediationException_resourceType,
    remediationException_resourceId,

    -- * RemediationExceptionResourceKey
    RemediationExceptionResourceKey (..),
    newRemediationExceptionResourceKey,
    remediationExceptionResourceKey_resourceId,
    remediationExceptionResourceKey_resourceType,

    -- * RemediationExecutionStatus
    RemediationExecutionStatus (..),
    newRemediationExecutionStatus,
    remediationExecutionStatus_stepDetails,
    remediationExecutionStatus_invocationTime,
    remediationExecutionStatus_state,
    remediationExecutionStatus_lastUpdatedTime,
    remediationExecutionStatus_resourceKey,

    -- * RemediationExecutionStep
    RemediationExecutionStep (..),
    newRemediationExecutionStep,
    remediationExecutionStep_name,
    remediationExecutionStep_errorMessage,
    remediationExecutionStep_stopTime,
    remediationExecutionStep_state,
    remediationExecutionStep_startTime,

    -- * RemediationParameterValue
    RemediationParameterValue (..),
    newRemediationParameterValue,
    remediationParameterValue_staticValue,
    remediationParameterValue_resourceValue,

    -- * ResourceCount
    ResourceCount (..),
    newResourceCount,
    resourceCount_resourceType,
    resourceCount_count,

    -- * ResourceCountFilters
    ResourceCountFilters (..),
    newResourceCountFilters,
    resourceCountFilters_resourceType,
    resourceCountFilters_region,
    resourceCountFilters_accountId,

    -- * ResourceFilters
    ResourceFilters (..),
    newResourceFilters,
    resourceFilters_resourceId,
    resourceFilters_resourceName,
    resourceFilters_region,
    resourceFilters_accountId,

    -- * ResourceIdentifier
    ResourceIdentifier (..),
    newResourceIdentifier,
    resourceIdentifier_resourceId,
    resourceIdentifier_resourceType,
    resourceIdentifier_resourceName,
    resourceIdentifier_resourceDeletionTime,

    -- * ResourceKey
    ResourceKey (..),
    newResourceKey,
    resourceKey_resourceType,
    resourceKey_resourceId,

    -- * ResourceValue
    ResourceValue (..),
    newResourceValue,
    resourceValue_value,

    -- * RetentionConfiguration
    RetentionConfiguration (..),
    newRetentionConfiguration,
    retentionConfiguration_name,
    retentionConfiguration_retentionPeriodInDays,

    -- * Scope
    Scope (..),
    newScope,
    scope_tagValue,
    scope_tagKey,
    scope_complianceResourceId,
    scope_complianceResourceTypes,

    -- * Source
    Source (..),
    newSource,
    source_customPolicyDetails,
    source_sourceDetails,
    source_sourceIdentifier,
    source_owner,

    -- * SourceDetail
    SourceDetail (..),
    newSourceDetail,
    sourceDetail_maximumExecutionFrequency,
    sourceDetail_messageType,
    sourceDetail_eventSource,

    -- * SsmControls
    SsmControls (..),
    newSsmControls,
    ssmControls_concurrentExecutionRatePercentage,
    ssmControls_errorPercentage,

    -- * StaticValue
    StaticValue (..),
    newStaticValue,
    staticValue_values,

    -- * StatusDetailFilters
    StatusDetailFilters (..),
    newStatusDetailFilters,
    statusDetailFilters_memberAccountRuleStatus,
    statusDetailFilters_accountId,

    -- * StoredQuery
    StoredQuery (..),
    newStoredQuery,
    storedQuery_queryId,
    storedQuery_description,
    storedQuery_expression,
    storedQuery_queryArn,
    storedQuery_queryName,

    -- * StoredQueryMetadata
    StoredQueryMetadata (..),
    newStoredQueryMetadata,
    storedQueryMetadata_description,
    storedQueryMetadata_queryId,
    storedQueryMetadata_queryArn,
    storedQueryMetadata_queryName,

    -- * Tag
    Tag (..),
    newTag,
    tag_key,
    tag_value,
  )
where

import Amazonka.Config.Types.AccountAggregationSource
import Amazonka.Config.Types.AggregateComplianceByConfigRule
import Amazonka.Config.Types.AggregateComplianceByConformancePack
import Amazonka.Config.Types.AggregateComplianceCount
import Amazonka.Config.Types.AggregateConformancePackCompliance
import Amazonka.Config.Types.AggregateConformancePackComplianceCount
import Amazonka.Config.Types.AggregateConformancePackComplianceFilters
import Amazonka.Config.Types.AggregateConformancePackComplianceSummary
import Amazonka.Config.Types.AggregateConformancePackComplianceSummaryFilters
import Amazonka.Config.Types.AggregateConformancePackComplianceSummaryGroupKey
import Amazonka.Config.Types.AggregateEvaluationResult
import Amazonka.Config.Types.AggregateResourceIdentifier
import Amazonka.Config.Types.AggregatedSourceStatus
import Amazonka.Config.Types.AggregatedSourceStatusType
import Amazonka.Config.Types.AggregatedSourceType
import Amazonka.Config.Types.AggregationAuthorization
import Amazonka.Config.Types.BaseConfigurationItem
import Amazonka.Config.Types.ChronologicalOrder
import Amazonka.Config.Types.Compliance
import Amazonka.Config.Types.ComplianceByConfigRule
import Amazonka.Config.Types.ComplianceByResource
import Amazonka.Config.Types.ComplianceContributorCount
import Amazonka.Config.Types.ComplianceSummary
import Amazonka.Config.Types.ComplianceSummaryByResourceType
import Amazonka.Config.Types.ComplianceType
import Amazonka.Config.Types.ConfigExportDeliveryInfo
import Amazonka.Config.Types.ConfigRule
import Amazonka.Config.Types.ConfigRuleComplianceFilters
import Amazonka.Config.Types.ConfigRuleComplianceSummaryFilters
import Amazonka.Config.Types.ConfigRuleComplianceSummaryGroupKey
import Amazonka.Config.Types.ConfigRuleEvaluationStatus
import Amazonka.Config.Types.ConfigRuleState
import Amazonka.Config.Types.ConfigSnapshotDeliveryProperties
import Amazonka.Config.Types.ConfigStreamDeliveryInfo
import Amazonka.Config.Types.ConfigurationAggregator
import Amazonka.Config.Types.ConfigurationItem
import Amazonka.Config.Types.ConfigurationItemStatus
import Amazonka.Config.Types.ConfigurationRecorder
import Amazonka.Config.Types.ConfigurationRecorderStatus
import Amazonka.Config.Types.ConformancePackComplianceFilters
import Amazonka.Config.Types.ConformancePackComplianceScore
import Amazonka.Config.Types.ConformancePackComplianceScoresFilters
import Amazonka.Config.Types.ConformancePackComplianceSummary
import Amazonka.Config.Types.ConformancePackComplianceType
import Amazonka.Config.Types.ConformancePackDetail
import Amazonka.Config.Types.ConformancePackEvaluationFilters
import Amazonka.Config.Types.ConformancePackEvaluationResult
import Amazonka.Config.Types.ConformancePackInputParameter
import Amazonka.Config.Types.ConformancePackRuleCompliance
import Amazonka.Config.Types.ConformancePackState
import Amazonka.Config.Types.ConformancePackStatusDetail
import Amazonka.Config.Types.CustomPolicyDetails
import Amazonka.Config.Types.DeliveryChannel
import Amazonka.Config.Types.DeliveryChannelStatus
import Amazonka.Config.Types.DeliveryStatus
import Amazonka.Config.Types.Evaluation
import Amazonka.Config.Types.EvaluationResult
import Amazonka.Config.Types.EvaluationResultIdentifier
import Amazonka.Config.Types.EvaluationResultQualifier
import Amazonka.Config.Types.EventSource
import Amazonka.Config.Types.ExecutionControls
import Amazonka.Config.Types.ExternalEvaluation
import Amazonka.Config.Types.FailedDeleteRemediationExceptionsBatch
import Amazonka.Config.Types.FailedRemediationBatch
import Amazonka.Config.Types.FailedRemediationExceptionBatch
import Amazonka.Config.Types.FieldInfo
import Amazonka.Config.Types.GroupedResourceCount
import Amazonka.Config.Types.MaximumExecutionFrequency
import Amazonka.Config.Types.MemberAccountRuleStatus
import Amazonka.Config.Types.MemberAccountStatus
import Amazonka.Config.Types.MessageType
import Amazonka.Config.Types.OrganizationAggregationSource
import Amazonka.Config.Types.OrganizationConfigRule
import Amazonka.Config.Types.OrganizationConfigRuleStatus
import Amazonka.Config.Types.OrganizationConfigRuleTriggerType
import Amazonka.Config.Types.OrganizationConfigRuleTriggerTypeNoSN
import Amazonka.Config.Types.OrganizationConformancePack
import Amazonka.Config.Types.OrganizationConformancePackDetailedStatus
import Amazonka.Config.Types.OrganizationConformancePackStatus
import Amazonka.Config.Types.OrganizationCustomPolicyRuleMetadata
import Amazonka.Config.Types.OrganizationCustomPolicyRuleMetadataNoPolicy
import Amazonka.Config.Types.OrganizationCustomRuleMetadata
import Amazonka.Config.Types.OrganizationManagedRuleMetadata
import Amazonka.Config.Types.OrganizationResourceDetailedStatus
import Amazonka.Config.Types.OrganizationResourceDetailedStatusFilters
import Amazonka.Config.Types.OrganizationResourceStatus
import Amazonka.Config.Types.OrganizationRuleStatus
import Amazonka.Config.Types.Owner
import Amazonka.Config.Types.PendingAggregationRequest
import Amazonka.Config.Types.QueryInfo
import Amazonka.Config.Types.RecorderStatus
import Amazonka.Config.Types.RecordingGroup
import Amazonka.Config.Types.Relationship
import Amazonka.Config.Types.RemediationConfiguration
import Amazonka.Config.Types.RemediationException
import Amazonka.Config.Types.RemediationExceptionResourceKey
import Amazonka.Config.Types.RemediationExecutionState
import Amazonka.Config.Types.RemediationExecutionStatus
import Amazonka.Config.Types.RemediationExecutionStep
import Amazonka.Config.Types.RemediationExecutionStepState
import Amazonka.Config.Types.RemediationParameterValue
import Amazonka.Config.Types.RemediationTargetType
import Amazonka.Config.Types.ResourceCount
import Amazonka.Config.Types.ResourceCountFilters
import Amazonka.Config.Types.ResourceCountGroupKey
import Amazonka.Config.Types.ResourceFilters
import Amazonka.Config.Types.ResourceIdentifier
import Amazonka.Config.Types.ResourceKey
import Amazonka.Config.Types.ResourceType
import Amazonka.Config.Types.ResourceValue
import Amazonka.Config.Types.ResourceValueType
import Amazonka.Config.Types.RetentionConfiguration
import Amazonka.Config.Types.Scope
import Amazonka.Config.Types.SortBy
import Amazonka.Config.Types.SortOrder
import Amazonka.Config.Types.Source
import Amazonka.Config.Types.SourceDetail
import Amazonka.Config.Types.SsmControls
import Amazonka.Config.Types.StaticValue
import Amazonka.Config.Types.StatusDetailFilters
import Amazonka.Config.Types.StoredQuery
import Amazonka.Config.Types.StoredQueryMetadata
import Amazonka.Config.Types.Tag
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2014-11-12@ of the Amazon Config SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "Config",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "config",
      Core._serviceSigningName = "config",
      Core._serviceVersion = "2014-11-12",
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError = Core.parseJSONError "Config",
      Core._serviceRetry = retry
    }
  where
    retry =
      Core.Exponential
        { Core._retryBase = 5.0e-2,
          Core._retryGrowth = 2,
          Core._retryAttempts = 5,
          Core._retryCheck = check
        }
    check e
      | Lens.has (Core.hasStatus 429) e =
        Prelude.Just "too_many_requests"
      | Lens.has
          ( Core.hasCode "RequestThrottledException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "request_throttled_exception"
      | Lens.has (Core.hasStatus 502) e =
        Prelude.Just "bad_gateway"
      | Lens.has (Core.hasStatus 500) e =
        Prelude.Just "general_server_error"
      | Lens.has
          ( Core.hasCode "Throttling"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throttling"
      | Lens.has (Core.hasStatus 503) e =
        Prelude.Just "service_unavailable"
      | Lens.has (Core.hasStatus 509) e =
        Prelude.Just "limit_exceeded"
      | Lens.has
          ( Core.hasCode "ThrottledException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throttled_exception"
      | Lens.has
          ( Core.hasCode "ThrottlingException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throttling_exception"
      | Lens.has (Core.hasStatus 504) e =
        Prelude.Just "gateway_timeout"
      | Lens.has
          ( Core.hasCode
              "ProvisionedThroughputExceededException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throughput_exceeded"
      | Prelude.otherwise = Prelude.Nothing

-- | The syntax of the query is incorrect.
_InvalidExpressionException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidExpressionException =
  Core._MatchServiceError
    defaultService
    "InvalidExpressionException"

-- | You have provided a configuration recorder name that is not valid.
_InvalidConfigurationRecorderNameException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidConfigurationRecorderNameException =
  Core._MatchServiceError
    defaultService
    "InvalidConfigurationRecorderNameException"

-- | You have reached the limit (100,000) of active custom resource types in
-- your account. Delete unused resources using @DeleteResourceConfig@.
_MaxActiveResourcesExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_MaxActiveResourcesExceededException =
  Core._MatchServiceError
    defaultService
    "MaxActiveResourcesExceededException"

-- | You have specified a retention configuration that does not exist.
_NoSuchRetentionConfigurationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NoSuchRetentionConfigurationException =
  Core._MatchServiceError
    defaultService
    "NoSuchRetentionConfigurationException"

-- | You have reached the limit of the number of recorders you can create.
_MaxNumberOfConfigurationRecordersExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_MaxNumberOfConfigurationRecordersExceededException =
  Core._MatchServiceError
    defaultService
    "MaxNumberOfConfigurationRecordersExceededException"

-- | You have specified a template that is not valid or supported.
_ConformancePackTemplateValidationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ConformancePackTemplateValidationException =
  Core._MatchServiceError
    defaultService
    "ConformancePackTemplateValidationException"

-- | Config throws an exception if the recording group does not contain a
-- valid list of resource types. Invalid values might also be incorrectly
-- formatted.
_InvalidRecordingGroupException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidRecordingGroupException =
  Core._MatchServiceError
    defaultService
    "InvalidRecordingGroupException"

-- | Indicates one of the following errors:
--
-- -   For PutConfigRule, the rule cannot be created because the IAM role
--     assigned to Config lacks permissions to perform the config:Put*
--     action.
--
-- -   For PutConfigRule, the Lambda function cannot be invoked. Check the
--     function ARN, and check the function\'s permissions.
--
-- -   For PutOrganizationConfigRule, organization Config rule cannot be
--     created because you do not have permissions to call IAM @GetRole@
--     action or create a service-linked role.
--
-- -   For PutConformancePack and PutOrganizationConformancePack, a
--     conformance pack cannot be created because you do not have
--     permissions:
--
--     -   To call IAM @GetRole@ action or create a service-linked role.
--
--     -   To read Amazon S3 bucket.
_InsufficientPermissionsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InsufficientPermissionsException =
  Core._MatchServiceError
    defaultService
    "InsufficientPermissionsException"

-- | You have reached the limit of the number of delivery channels you can
-- create.
_MaxNumberOfDeliveryChannelsExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_MaxNumberOfDeliveryChannelsExceededException =
  Core._MatchServiceError
    defaultService
    "MaxNumberOfDeliveryChannelsExceededException"

-- | You have reached the limit of the number of tags you can use. You have
-- more than 50 tags.
_TooManyTagsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_TooManyTagsException =
  Core._MatchServiceError
    defaultService
    "TooManyTagsException"

-- | You have provided a null or empty role ARN.
_InvalidRoleException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidRoleException =
  Core._MatchServiceError
    defaultService
    "InvalidRoleException"

-- | You have specified a resource that does not exist.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"

-- | You specified an Config rule without a remediation configuration.
_NoSuchRemediationConfigurationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NoSuchRemediationConfigurationException =
  Core._MatchServiceError
    defaultService
    "NoSuchRemediationConfigurationException"

-- | You see this exception in the following cases:
--
-- -   For DeleteConfigRule, Config is deleting this rule. Try your request
--     again later.
--
-- -   For DeleteConfigRule, the rule is deleting your evaluation results.
--     Try your request again later.
--
-- -   For DeleteConfigRule, a remediation action is associated with the
--     rule and Config cannot delete this rule. Delete the remediation
--     action associated with the rule before deleting the rule and try
--     your request again later.
--
-- -   For PutConfigOrganizationRule, organization Config rule deletion is
--     in progress. Try your request again later.
--
-- -   For DeleteOrganizationConfigRule, organization Config rule creation
--     is in progress. Try your request again later.
--
-- -   For PutConformancePack and PutOrganizationConformancePack, a
--     conformance pack creation, update, and deletion is in progress. Try
--     your request again later.
--
-- -   For DeleteConformancePack, a conformance pack creation, update, and
--     deletion is in progress. Try your request again later.
_ResourceInUseException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceInUseException =
  Core._MatchServiceError
    defaultService
    "ResourceInUseException"

-- | The specified delivery channel name is not valid.
_InvalidDeliveryChannelNameException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidDeliveryChannelNameException =
  Core._MatchServiceError
    defaultService
    "InvalidDeliveryChannelNameException"

-- | For @StartConfigRulesEvaluation@ API, this exception is thrown if an
-- evaluation is in progress or if you call the StartConfigRulesEvaluation
-- API more than once per minute.
--
-- For @PutConfigurationAggregator@ API, this exception is thrown if the
-- number of accounts and aggregators exceeds the limit.
_LimitExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_LimitExceededException =
  Core._MatchServiceError
    defaultService
    "LimitExceededException"

-- | Config resource cannot be created because your organization does not
-- have all features enabled.
_OrganizationAllFeaturesNotEnabledException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_OrganizationAllFeaturesNotEnabledException =
  Core._MatchServiceError
    defaultService
    "OrganizationAllFeaturesNotEnabledException"

-- | The specified limit is outside the allowable range.
_InvalidLimitException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidLimitException =
  Core._MatchServiceError
    defaultService
    "InvalidLimitException"

-- | The specified Amazon S3 key prefix is not valid.
_InvalidS3KeyPrefixException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidS3KeyPrefixException =
  Core._MatchServiceError
    defaultService
    "InvalidS3KeyPrefixException"

-- | You have specified a template that is not valid or supported.
_OrganizationConformancePackTemplateValidationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_OrganizationConformancePackTemplateValidationException =
  Core._MatchServiceError
    defaultService
    "OrganizationConformancePackTemplateValidationException"

-- | You have specified a configuration recorder that does not exist.
_NoSuchConfigurationRecorderException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NoSuchConfigurationRecorderException =
  Core._MatchServiceError
    defaultService
    "NoSuchConfigurationRecorderException"

-- | The specified Amazon SNS topic does not exist.
_InvalidSNSTopicARNException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidSNSTopicARNException =
  Core._MatchServiceError
    defaultService
    "InvalidSNSTopicARNException"

-- | The specified next token is invalid. Specify the @nextToken@ string that
-- was returned in the previous response to get the next page of results.
_InvalidNextTokenException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidNextTokenException =
  Core._MatchServiceError
    defaultService
    "InvalidNextTokenException"

-- | The specified Amazon S3 bucket does not exist.
_NoSuchBucketException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NoSuchBucketException =
  Core._MatchServiceError
    defaultService
    "NoSuchBucketException"

-- | There is no configuration recorder running.
_NoRunningConfigurationRecorderException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NoRunningConfigurationRecorderException =
  Core._MatchServiceError
    defaultService
    "NoRunningConfigurationRecorderException"

-- | Config organization conformance pack that you passed in the filter does
-- not exist.
--
-- For DeleteOrganizationConformancePack, you tried to delete an
-- organization conformance pack that does not exist.
_NoSuchOrganizationConformancePackException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NoSuchOrganizationConformancePackException =
  Core._MatchServiceError
    defaultService
    "NoSuchOrganizationConformancePackException"

-- | Failed to add the retention configuration because a retention
-- configuration with that name already exists.
_MaxNumberOfRetentionConfigurationsExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_MaxNumberOfRetentionConfigurationsExceededException =
  Core._MatchServiceError
    defaultService
    "MaxNumberOfRetentionConfigurationsExceededException"

-- | There is no delivery channel available to record configurations.
_NoAvailableDeliveryChannelException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NoAvailableDeliveryChannelException =
  Core._MatchServiceError
    defaultService
    "NoAvailableDeliveryChannelException"

-- | There are no configuration recorders available to provide the role
-- needed to describe your resources. Create a configuration recorder.
_NoAvailableConfigurationRecorderException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NoAvailableConfigurationRecorderException =
  Core._MatchServiceError
    defaultService
    "NoAvailableConfigurationRecorderException"

-- | Your Amazon S3 bucket policy does not permit Config to write to it.
_InsufficientDeliveryPolicyException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InsufficientDeliveryPolicyException =
  Core._MatchServiceError
    defaultService
    "InsufficientDeliveryPolicyException"

-- | You have reached the limit of the number of organization Config rules
-- you can create.
_MaxNumberOfOrganizationConfigRulesExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_MaxNumberOfOrganizationConfigRulesExceededException =
  Core._MatchServiceError
    defaultService
    "MaxNumberOfOrganizationConfigRulesExceededException"

-- | For @PutConfigurationAggregator@ API, you can see this exception for the
-- following reasons:
--
-- -   No permission to call @EnableAWSServiceAccess@ API
--
-- -   The configuration aggregator cannot be updated because your Amazon
--     Web Services Organization management account or the delegated
--     administrator role changed. Delete this aggregator and create a new
--     one with the current Amazon Web Services Organization.
--
-- -   The configuration aggregator is associated with a previous Amazon
--     Web Services Organization and Config cannot aggregate data with
--     current Amazon Web Services Organization. Delete this aggregator and
--     create a new one with the current Amazon Web Services Organization.
--
-- -   You are not a registered delegated administrator for Config with
--     permissions to call @ListDelegatedAdministrators@ API. Ensure that
--     the management account registers delagated administrator for Config
--     service principle name before the delegated administrator creates an
--     aggregator.
--
-- For all @OrganizationConfigRule@ and @OrganizationConformancePack@ APIs,
-- Config throws an exception if APIs are called from member accounts. All
-- APIs must be called from organization master account.
_OrganizationAccessDeniedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_OrganizationAccessDeniedException =
  Core._MatchServiceError
    defaultService
    "OrganizationAccessDeniedException"

-- | You cannot delete the delivery channel you specified because the
-- configuration recorder is running.
_LastDeliveryChannelDeleteFailedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_LastDeliveryChannelDeleteFailedException =
  Core._MatchServiceError
    defaultService
    "LastDeliveryChannelDeleteFailedException"

-- | The specified Amazon KMS Key ARN is not valid.
_InvalidS3KmsKeyArnException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidS3KmsKeyArnException =
  Core._MatchServiceError
    defaultService
    "InvalidS3KmsKeyArnException"

-- | The Config rule in the request is not valid. Verify that the rule is an
-- Config Custom Policy rule, that the rule name is correct, and that valid
-- Amazon Resouce Names (ARNs) are used before trying again.
_NoSuchConfigRuleException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NoSuchConfigRuleException =
  Core._MatchServiceError
    defaultService
    "NoSuchConfigRuleException"

-- | Failed to add the Config rule because the account already contains the
-- maximum number of 150 rules. Consider deleting any deactivated rules
-- before you add new rules.
_MaxNumberOfConfigRulesExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_MaxNumberOfConfigRulesExceededException =
  Core._MatchServiceError
    defaultService
    "MaxNumberOfConfigRulesExceededException"

-- | The requested action is not valid.
--
-- For PutStoredQuery, you will see this exception if there are missing
-- required fields or if the input value fails the validation, or if you
-- are trying to create more than 300 queries.
--
-- For GetStoredQuery, ListStoredQuery, and DeleteStoredQuery you will see
-- this exception if there are missing required fields or if the input
-- value fails the validation.
_ValidationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ValidationException =
  Core._MatchServiceError
    defaultService
    "ValidationException"

-- | The specified @ResultToken@ is invalid.
_InvalidResultTokenException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidResultTokenException =
  Core._MatchServiceError
    defaultService
    "InvalidResultTokenException"

-- | Two users are trying to modify the same query at the same time. Wait for
-- a moment and try again.
_ResourceConcurrentModificationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceConcurrentModificationException =
  Core._MatchServiceError
    defaultService
    "ResourceConcurrentModificationException"

-- | You have reached the limit (6) of the number of organization conformance
-- packs in an account (6 conformance pack with 25 Config rules per pack
-- per account).
_MaxNumberOfOrganizationConformancePacksExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_MaxNumberOfOrganizationConformancePacksExceededException =
  Core._MatchServiceError
    defaultService
    "MaxNumberOfOrganizationConformancePacksExceededException"

-- | Config rule that you passed in the filter does not exist.
_NoSuchConfigRuleInConformancePackException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NoSuchConfigRuleInConformancePackException =
  Core._MatchServiceError
    defaultService
    "NoSuchConfigRuleInConformancePackException"

-- | The specified time range is not valid. The earlier time is not
-- chronologically before the later time.
_InvalidTimeRangeException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidTimeRangeException =
  Core._MatchServiceError
    defaultService
    "InvalidTimeRangeException"

-- | Remediation action is in progress. You can either cancel execution in
-- Amazon Web Services Systems Manager or wait and try again later.
_RemediationInProgressException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_RemediationInProgressException =
  Core._MatchServiceError
    defaultService
    "RemediationInProgressException"

-- | The configuration item size is outside the allowable range.
_OversizedConfigurationItemException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_OversizedConfigurationItemException =
  Core._MatchServiceError
    defaultService
    "OversizedConfigurationItemException"

-- | You have specified a configuration aggregator that does not exist.
_NoSuchConfigurationAggregatorException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NoSuchConfigurationAggregatorException =
  Core._MatchServiceError
    defaultService
    "NoSuchConfigurationAggregatorException"

-- | Organization is no longer available.
_NoAvailableOrganizationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NoAvailableOrganizationException =
  Core._MatchServiceError
    defaultService
    "NoAvailableOrganizationException"

-- | You have specified a resource that is either unknown or has not been
-- discovered.
_ResourceNotDiscoveredException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotDiscoveredException =
  Core._MatchServiceError
    defaultService
    "ResourceNotDiscoveredException"

-- | You have reached the limit (6) of the number of conformance packs in an
-- account (6 conformance pack with 25 Config rules per pack).
_MaxNumberOfConformancePacksExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_MaxNumberOfConformancePacksExceededException =
  Core._MatchServiceError
    defaultService
    "MaxNumberOfConformancePacksExceededException"

-- | You specified one or more conformance packs that do not exist.
_NoSuchConformancePackException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NoSuchConformancePackException =
  Core._MatchServiceError
    defaultService
    "NoSuchConformancePackException"

-- | You tried to delete a remediation exception that does not exist.
_NoSuchRemediationExceptionException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NoSuchRemediationExceptionException =
  Core._MatchServiceError
    defaultService
    "NoSuchRemediationExceptionException"

-- | You have specified a delivery channel that does not exist.
_NoSuchDeliveryChannelException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NoSuchDeliveryChannelException =
  Core._MatchServiceError
    defaultService
    "NoSuchDeliveryChannelException"

-- | One or more of the specified parameters are invalid. Verify that your
-- parameters are valid and try again.
_InvalidParameterValueException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidParameterValueException =
  Core._MatchServiceError
    defaultService
    "InvalidParameterValueException"

-- | The Config rule in the request is not valid. Verify that the rule is an
-- organization Config Custom Policy rule, that the rule name is correct,
-- and that valid Amazon Resouce Names (ARNs) are used before trying again.
_NoSuchOrganizationConfigRuleException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NoSuchOrganizationConfigRuleException =
  Core._MatchServiceError
    defaultService
    "NoSuchOrganizationConfigRuleException"
