{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.IoT.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoT.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _ResourceAlreadyExistsException,
    _InvalidResponseException,
    _SqlParseException,
    _MalformedPolicyException,
    _CertificateConflictException,
    _ConflictingResourceUpdateException,
    _InternalServerException,
    _UnauthorizedException,
    _InvalidAggregationException,
    _ServiceUnavailableException,
    _IndexNotReadyException,
    _ResourceNotFoundException,
    _RegistrationCodeValidationException,
    _CertificateStateException,
    _InvalidQueryException,
    _LimitExceededException,
    _TransferAlreadyCompletedException,
    _TaskAlreadyExistsException,
    _ConflictException,
    _ThrottlingException,
    _InvalidStateTransitionException,
    _InternalException,
    _NotConfiguredException,
    _ResourceRegistrationFailureException,
    _TransferConflictException,
    _DeleteConflictException,
    _VersionsLimitExceededException,
    _VersionConflictException,
    _InvalidRequestException,
    _CertificateValidationException,
    _InternalFailureException,

    -- * AbortAction
    AbortAction (..),

    -- * ActionType
    ActionType (..),

    -- * AggregationTypeName
    AggregationTypeName (..),

    -- * AlertTargetType
    AlertTargetType (..),

    -- * AuditCheckRunStatus
    AuditCheckRunStatus (..),

    -- * AuditFindingSeverity
    AuditFindingSeverity (..),

    -- * AuditFrequency
    AuditFrequency (..),

    -- * AuditMitigationActionsExecutionStatus
    AuditMitigationActionsExecutionStatus (..),

    -- * AuditMitigationActionsTaskStatus
    AuditMitigationActionsTaskStatus (..),

    -- * AuditNotificationType
    AuditNotificationType (..),

    -- * AuditTaskStatus
    AuditTaskStatus (..),

    -- * AuditTaskType
    AuditTaskType (..),

    -- * AuthDecision
    AuthDecision (..),

    -- * AuthorizerStatus
    AuthorizerStatus (..),

    -- * AutoRegistrationStatus
    AutoRegistrationStatus (..),

    -- * AwsJobAbortCriteriaAbortAction
    AwsJobAbortCriteriaAbortAction (..),

    -- * AwsJobAbortCriteriaFailureType
    AwsJobAbortCriteriaFailureType (..),

    -- * BehaviorCriteriaType
    BehaviorCriteriaType (..),

    -- * CACertificateStatus
    CACertificateStatus (..),

    -- * CACertificateUpdateAction
    CACertificateUpdateAction (..),

    -- * CannedAccessControlList
    CannedAccessControlList (..),

    -- * CertificateMode
    CertificateMode (..),

    -- * CertificateStatus
    CertificateStatus (..),

    -- * ComparisonOperator
    ComparisonOperator (..),

    -- * ConfidenceLevel
    ConfidenceLevel (..),

    -- * CustomMetricType
    CustomMetricType (..),

    -- * DayOfWeek
    DayOfWeek (..),

    -- * DetectMitigationActionExecutionStatus
    DetectMitigationActionExecutionStatus (..),

    -- * DetectMitigationActionsTaskStatus
    DetectMitigationActionsTaskStatus (..),

    -- * DeviceCertificateUpdateAction
    DeviceCertificateUpdateAction (..),

    -- * DeviceDefenderIndexingMode
    DeviceDefenderIndexingMode (..),

    -- * DimensionType
    DimensionType (..),

    -- * DimensionValueOperator
    DimensionValueOperator (..),

    -- * DomainConfigurationStatus
    DomainConfigurationStatus (..),

    -- * DomainType
    DomainType (..),

    -- * DynamicGroupStatus
    DynamicGroupStatus (..),

    -- * DynamoKeyType
    DynamoKeyType (..),

    -- * EventType
    EventType (..),

    -- * FieldType
    FieldType (..),

    -- * FleetMetricUnit
    FleetMetricUnit (..),

    -- * IndexStatus
    IndexStatus (..),

    -- * JobExecutionFailureType
    JobExecutionFailureType (..),

    -- * JobExecutionStatus
    JobExecutionStatus (..),

    -- * JobStatus
    JobStatus (..),

    -- * LogLevel
    LogLevel (..),

    -- * LogTargetType
    LogTargetType (..),

    -- * MessageFormat
    MessageFormat (..),

    -- * MitigationActionType
    MitigationActionType (..),

    -- * ModelStatus
    ModelStatus (..),

    -- * NamedShadowIndexingMode
    NamedShadowIndexingMode (..),

    -- * OTAUpdateStatus
    OTAUpdateStatus (..),

    -- * PolicyTemplateName
    PolicyTemplateName (..),

    -- * Protocol
    Protocol (..),

    -- * ReportType
    ReportType (..),

    -- * ResourceType
    ResourceType (..),

    -- * RetryableFailureType
    RetryableFailureType (..),

    -- * ServerCertificateStatus
    ServerCertificateStatus (..),

    -- * ServiceType
    ServiceType (..),

    -- * TargetSelection
    TargetSelection (..),

    -- * TaskStatus
    TaskStatus (..),

    -- * TemplateType
    TemplateType (..),

    -- * ThingConnectivityIndexingMode
    ThingConnectivityIndexingMode (..),

    -- * ThingGroupIndexingMode
    ThingGroupIndexingMode (..),

    -- * ThingIndexingMode
    ThingIndexingMode (..),

    -- * TopicRuleDestinationStatus
    TopicRuleDestinationStatus (..),

    -- * VerificationState
    VerificationState (..),

    -- * ViolationEventType
    ViolationEventType (..),

    -- * AbortConfig
    AbortConfig (..),
    newAbortConfig,
    abortConfig_criteriaList,

    -- * AbortCriteria
    AbortCriteria (..),
    newAbortCriteria,
    abortCriteria_failureType,
    abortCriteria_action,
    abortCriteria_thresholdPercentage,
    abortCriteria_minNumberOfExecutedThings,

    -- * Action
    Action (..),
    newAction,
    action_kinesis,
    action_cloudwatchAlarm,
    action_http,
    action_firehose,
    action_cloudwatchLogs,
    action_s3,
    action_salesforce,
    action_dynamoDBv2,
    action_kafka,
    action_dynamoDB,
    action_cloudwatchMetric,
    action_republish,
    action_timestream,
    action_lambda,
    action_iotEvents,
    action_sqs,
    action_iotSiteWise,
    action_stepFunctions,
    action_sns,
    action_openSearch,
    action_elasticsearch,
    action_iotAnalytics,

    -- * ActiveViolation
    ActiveViolation (..),
    newActiveViolation,
    activeViolation_thingName,
    activeViolation_violationId,
    activeViolation_violationEventAdditionalInfo,
    activeViolation_lastViolationTime,
    activeViolation_lastViolationValue,
    activeViolation_violationStartTime,
    activeViolation_securityProfileName,
    activeViolation_verificationStateDescription,
    activeViolation_verificationState,
    activeViolation_behavior,

    -- * AddThingsToThingGroupParams
    AddThingsToThingGroupParams (..),
    newAddThingsToThingGroupParams,
    addThingsToThingGroupParams_overrideDynamicGroups,
    addThingsToThingGroupParams_thingGroupNames,

    -- * AggregationType
    AggregationType (..),
    newAggregationType,
    aggregationType_values,
    aggregationType_name,

    -- * AlertTarget
    AlertTarget (..),
    newAlertTarget,
    alertTarget_alertTargetArn,
    alertTarget_roleArn,

    -- * Allowed
    Allowed (..),
    newAllowed,
    allowed_policies,

    -- * AssetPropertyTimestamp
    AssetPropertyTimestamp (..),
    newAssetPropertyTimestamp,
    assetPropertyTimestamp_offsetInNanos,
    assetPropertyTimestamp_timeInSeconds,

    -- * AssetPropertyValue
    AssetPropertyValue (..),
    newAssetPropertyValue,
    assetPropertyValue_quality,
    assetPropertyValue_value,
    assetPropertyValue_timestamp,

    -- * AssetPropertyVariant
    AssetPropertyVariant (..),
    newAssetPropertyVariant,
    assetPropertyVariant_integerValue,
    assetPropertyVariant_doubleValue,
    assetPropertyVariant_booleanValue,
    assetPropertyVariant_stringValue,

    -- * AttributePayload
    AttributePayload (..),
    newAttributePayload,
    attributePayload_merge,
    attributePayload_attributes,

    -- * AuditCheckConfiguration
    AuditCheckConfiguration (..),
    newAuditCheckConfiguration,
    auditCheckConfiguration_enabled,

    -- * AuditCheckDetails
    AuditCheckDetails (..),
    newAuditCheckDetails,
    auditCheckDetails_message,
    auditCheckDetails_totalResourcesCount,
    auditCheckDetails_checkCompliant,
    auditCheckDetails_nonCompliantResourcesCount,
    auditCheckDetails_errorCode,
    auditCheckDetails_checkRunStatus,
    auditCheckDetails_suppressedNonCompliantResourcesCount,

    -- * AuditFinding
    AuditFinding (..),
    newAuditFinding,
    auditFinding_nonCompliantResource,
    auditFinding_relatedResources,
    auditFinding_severity,
    auditFinding_taskStartTime,
    auditFinding_reasonForNonCompliance,
    auditFinding_taskId,
    auditFinding_checkName,
    auditFinding_isSuppressed,
    auditFinding_findingTime,
    auditFinding_reasonForNonComplianceCode,
    auditFinding_findingId,

    -- * AuditMitigationActionExecutionMetadata
    AuditMitigationActionExecutionMetadata (..),
    newAuditMitigationActionExecutionMetadata,
    auditMitigationActionExecutionMetadata_message,
    auditMitigationActionExecutionMetadata_actionName,
    auditMitigationActionExecutionMetadata_taskId,
    auditMitigationActionExecutionMetadata_status,
    auditMitigationActionExecutionMetadata_endTime,
    auditMitigationActionExecutionMetadata_actionId,
    auditMitigationActionExecutionMetadata_errorCode,
    auditMitigationActionExecutionMetadata_startTime,
    auditMitigationActionExecutionMetadata_findingId,

    -- * AuditMitigationActionsTaskMetadata
    AuditMitigationActionsTaskMetadata (..),
    newAuditMitigationActionsTaskMetadata,
    auditMitigationActionsTaskMetadata_taskId,
    auditMitigationActionsTaskMetadata_taskStatus,
    auditMitigationActionsTaskMetadata_startTime,

    -- * AuditMitigationActionsTaskTarget
    AuditMitigationActionsTaskTarget (..),
    newAuditMitigationActionsTaskTarget,
    auditMitigationActionsTaskTarget_auditCheckToReasonCodeFilter,
    auditMitigationActionsTaskTarget_auditTaskId,
    auditMitigationActionsTaskTarget_findingIds,

    -- * AuditNotificationTarget
    AuditNotificationTarget (..),
    newAuditNotificationTarget,
    auditNotificationTarget_roleArn,
    auditNotificationTarget_targetArn,
    auditNotificationTarget_enabled,

    -- * AuditSuppression
    AuditSuppression (..),
    newAuditSuppression,
    auditSuppression_description,
    auditSuppression_expirationDate,
    auditSuppression_suppressIndefinitely,
    auditSuppression_checkName,
    auditSuppression_resourceIdentifier,

    -- * AuditTaskMetadata
    AuditTaskMetadata (..),
    newAuditTaskMetadata,
    auditTaskMetadata_taskId,
    auditTaskMetadata_taskStatus,
    auditTaskMetadata_taskType,

    -- * AuthInfo
    AuthInfo (..),
    newAuthInfo,
    authInfo_actionType,
    authInfo_resources,

    -- * AuthResult
    AuthResult (..),
    newAuthResult,
    authResult_allowed,
    authResult_denied,
    authResult_missingContextValues,
    authResult_authInfo,
    authResult_authDecision,

    -- * AuthorizerConfig
    AuthorizerConfig (..),
    newAuthorizerConfig,
    authorizerConfig_defaultAuthorizerName,
    authorizerConfig_allowAuthorizerOverride,

    -- * AuthorizerDescription
    AuthorizerDescription (..),
    newAuthorizerDescription,
    authorizerDescription_lastModifiedDate,
    authorizerDescription_tokenKeyName,
    authorizerDescription_creationDate,
    authorizerDescription_status,
    authorizerDescription_authorizerFunctionArn,
    authorizerDescription_signingDisabled,
    authorizerDescription_tokenSigningPublicKeys,
    authorizerDescription_authorizerArn,
    authorizerDescription_enableCachingForHttp,
    authorizerDescription_authorizerName,

    -- * AuthorizerSummary
    AuthorizerSummary (..),
    newAuthorizerSummary,
    authorizerSummary_authorizerArn,
    authorizerSummary_authorizerName,

    -- * AwsJobAbortConfig
    AwsJobAbortConfig (..),
    newAwsJobAbortConfig,
    awsJobAbortConfig_abortCriteriaList,

    -- * AwsJobAbortCriteria
    AwsJobAbortCriteria (..),
    newAwsJobAbortCriteria,
    awsJobAbortCriteria_failureType,
    awsJobAbortCriteria_action,
    awsJobAbortCriteria_thresholdPercentage,
    awsJobAbortCriteria_minNumberOfExecutedThings,

    -- * AwsJobExecutionsRolloutConfig
    AwsJobExecutionsRolloutConfig (..),
    newAwsJobExecutionsRolloutConfig,
    awsJobExecutionsRolloutConfig_maximumPerMinute,
    awsJobExecutionsRolloutConfig_exponentialRate,

    -- * AwsJobExponentialRolloutRate
    AwsJobExponentialRolloutRate (..),
    newAwsJobExponentialRolloutRate,
    awsJobExponentialRolloutRate_baseRatePerMinute,
    awsJobExponentialRolloutRate_incrementFactor,
    awsJobExponentialRolloutRate_rateIncreaseCriteria,

    -- * AwsJobPresignedUrlConfig
    AwsJobPresignedUrlConfig (..),
    newAwsJobPresignedUrlConfig,
    awsJobPresignedUrlConfig_expiresInSec,

    -- * AwsJobRateIncreaseCriteria
    AwsJobRateIncreaseCriteria (..),
    newAwsJobRateIncreaseCriteria,
    awsJobRateIncreaseCriteria_numberOfSucceededThings,
    awsJobRateIncreaseCriteria_numberOfNotifiedThings,

    -- * AwsJobTimeoutConfig
    AwsJobTimeoutConfig (..),
    newAwsJobTimeoutConfig,
    awsJobTimeoutConfig_inProgressTimeoutInMinutes,

    -- * Behavior
    Behavior (..),
    newBehavior,
    behavior_suppressAlerts,
    behavior_criteria,
    behavior_metricDimension,
    behavior_metric,
    behavior_name,

    -- * BehaviorCriteria
    BehaviorCriteria (..),
    newBehaviorCriteria,
    behaviorCriteria_consecutiveDatapointsToClear,
    behaviorCriteria_consecutiveDatapointsToAlarm,
    behaviorCriteria_durationSeconds,
    behaviorCriteria_mlDetectionConfig,
    behaviorCriteria_statisticalThreshold,
    behaviorCriteria_comparisonOperator,
    behaviorCriteria_value,

    -- * BehaviorModelTrainingSummary
    BehaviorModelTrainingSummary (..),
    newBehaviorModelTrainingSummary,
    behaviorModelTrainingSummary_modelStatus,
    behaviorModelTrainingSummary_behaviorName,
    behaviorModelTrainingSummary_securityProfileName,
    behaviorModelTrainingSummary_trainingDataCollectionStartDate,
    behaviorModelTrainingSummary_datapointsCollectionPercentage,
    behaviorModelTrainingSummary_lastModelRefreshDate,

    -- * BillingGroupMetadata
    BillingGroupMetadata (..),
    newBillingGroupMetadata,
    billingGroupMetadata_creationDate,

    -- * BillingGroupProperties
    BillingGroupProperties (..),
    newBillingGroupProperties,
    billingGroupProperties_billingGroupDescription,

    -- * Bucket
    Bucket (..),
    newBucket,
    bucket_count,
    bucket_keyValue,

    -- * BucketsAggregationType
    BucketsAggregationType (..),
    newBucketsAggregationType,
    bucketsAggregationType_termsAggregation,

    -- * CACertificate
    CACertificate (..),
    newCACertificate,
    cACertificate_creationDate,
    cACertificate_status,
    cACertificate_certificateArn,
    cACertificate_certificateId,

    -- * CACertificateDescription
    CACertificateDescription (..),
    newCACertificateDescription,
    cACertificateDescription_customerVersion,
    cACertificateDescription_lastModifiedDate,
    cACertificateDescription_creationDate,
    cACertificateDescription_status,
    cACertificateDescription_certificateArn,
    cACertificateDescription_certificateId,
    cACertificateDescription_certificatePem,
    cACertificateDescription_autoRegistrationStatus,
    cACertificateDescription_generationId,
    cACertificateDescription_certificateMode,
    cACertificateDescription_ownedBy,
    cACertificateDescription_validity,

    -- * Certificate
    Certificate (..),
    newCertificate,
    certificate_creationDate,
    certificate_status,
    certificate_certificateArn,
    certificate_certificateId,
    certificate_certificateMode,

    -- * CertificateDescription
    CertificateDescription (..),
    newCertificateDescription,
    certificateDescription_customerVersion,
    certificateDescription_lastModifiedDate,
    certificateDescription_creationDate,
    certificateDescription_status,
    certificateDescription_caCertificateId,
    certificateDescription_certificateArn,
    certificateDescription_certificateId,
    certificateDescription_certificatePem,
    certificateDescription_transferData,
    certificateDescription_generationId,
    certificateDescription_previousOwnedBy,
    certificateDescription_certificateMode,
    certificateDescription_ownedBy,
    certificateDescription_validity,

    -- * CertificateValidity
    CertificateValidity (..),
    newCertificateValidity,
    certificateValidity_notBefore,
    certificateValidity_notAfter,

    -- * CloudwatchAlarmAction
    CloudwatchAlarmAction (..),
    newCloudwatchAlarmAction,
    cloudwatchAlarmAction_roleArn,
    cloudwatchAlarmAction_alarmName,
    cloudwatchAlarmAction_stateReason,
    cloudwatchAlarmAction_stateValue,

    -- * CloudwatchLogsAction
    CloudwatchLogsAction (..),
    newCloudwatchLogsAction,
    cloudwatchLogsAction_roleArn,
    cloudwatchLogsAction_logGroupName,

    -- * CloudwatchMetricAction
    CloudwatchMetricAction (..),
    newCloudwatchMetricAction,
    cloudwatchMetricAction_metricTimestamp,
    cloudwatchMetricAction_roleArn,
    cloudwatchMetricAction_metricNamespace,
    cloudwatchMetricAction_metricName,
    cloudwatchMetricAction_metricValue,
    cloudwatchMetricAction_metricUnit,

    -- * CodeSigning
    CodeSigning (..),
    newCodeSigning,
    codeSigning_awsSignerJobId,
    codeSigning_startSigningJobParameter,
    codeSigning_customCodeSigning,

    -- * CodeSigningCertificateChain
    CodeSigningCertificateChain (..),
    newCodeSigningCertificateChain,
    codeSigningCertificateChain_certificateName,
    codeSigningCertificateChain_inlineDocument,

    -- * CodeSigningSignature
    CodeSigningSignature (..),
    newCodeSigningSignature,
    codeSigningSignature_inlineDocument,

    -- * Configuration
    Configuration (..),
    newConfiguration,
    configuration_enabled,

    -- * CustomCodeSigning
    CustomCodeSigning (..),
    newCustomCodeSigning,
    customCodeSigning_hashAlgorithm,
    customCodeSigning_signatureAlgorithm,
    customCodeSigning_certificateChain,
    customCodeSigning_signature,

    -- * Denied
    Denied (..),
    newDenied,
    denied_explicitDeny,
    denied_implicitDeny,

    -- * Destination
    Destination (..),
    newDestination,
    destination_s3Destination,

    -- * DetectMitigationActionExecution
    DetectMitigationActionExecution (..),
    newDetectMitigationActionExecution,
    detectMitigationActionExecution_message,
    detectMitigationActionExecution_actionName,
    detectMitigationActionExecution_thingName,
    detectMitigationActionExecution_violationId,
    detectMitigationActionExecution_taskId,
    detectMitigationActionExecution_executionStartDate,
    detectMitigationActionExecution_status,
    detectMitigationActionExecution_executionEndDate,
    detectMitigationActionExecution_errorCode,

    -- * DetectMitigationActionsTaskStatistics
    DetectMitigationActionsTaskStatistics (..),
    newDetectMitigationActionsTaskStatistics,
    detectMitigationActionsTaskStatistics_actionsExecuted,
    detectMitigationActionsTaskStatistics_actionsFailed,
    detectMitigationActionsTaskStatistics_actionsSkipped,

    -- * DetectMitigationActionsTaskSummary
    DetectMitigationActionsTaskSummary (..),
    newDetectMitigationActionsTaskSummary,
    detectMitigationActionsTaskSummary_suppressedAlertsIncluded,
    detectMitigationActionsTaskSummary_taskStartTime,
    detectMitigationActionsTaskSummary_taskId,
    detectMitigationActionsTaskSummary_taskStatus,
    detectMitigationActionsTaskSummary_target,
    detectMitigationActionsTaskSummary_actionsDefinition,
    detectMitigationActionsTaskSummary_onlyActiveViolationsIncluded,
    detectMitigationActionsTaskSummary_violationEventOccurrenceRange,
    detectMitigationActionsTaskSummary_taskStatistics,
    detectMitigationActionsTaskSummary_taskEndTime,

    -- * DetectMitigationActionsTaskTarget
    DetectMitigationActionsTaskTarget (..),
    newDetectMitigationActionsTaskTarget,
    detectMitigationActionsTaskTarget_behaviorName,
    detectMitigationActionsTaskTarget_violationIds,
    detectMitigationActionsTaskTarget_securityProfileName,

    -- * DocumentParameter
    DocumentParameter (..),
    newDocumentParameter,
    documentParameter_key,
    documentParameter_example,
    documentParameter_regex,
    documentParameter_description,
    documentParameter_optional,

    -- * DomainConfigurationSummary
    DomainConfigurationSummary (..),
    newDomainConfigurationSummary,
    domainConfigurationSummary_domainConfigurationArn,
    domainConfigurationSummary_serviceType,
    domainConfigurationSummary_domainConfigurationName,

    -- * DynamoDBAction
    DynamoDBAction (..),
    newDynamoDBAction,
    dynamoDBAction_rangeKeyType,
    dynamoDBAction_rangeKeyValue,
    dynamoDBAction_hashKeyType,
    dynamoDBAction_rangeKeyField,
    dynamoDBAction_operation,
    dynamoDBAction_payloadField,
    dynamoDBAction_tableName,
    dynamoDBAction_roleArn,
    dynamoDBAction_hashKeyField,
    dynamoDBAction_hashKeyValue,

    -- * DynamoDBv2Action
    DynamoDBv2Action (..),
    newDynamoDBv2Action,
    dynamoDBv2Action_roleArn,
    dynamoDBv2Action_putItem,

    -- * EffectivePolicy
    EffectivePolicy (..),
    newEffectivePolicy,
    effectivePolicy_policyName,
    effectivePolicy_policyDocument,
    effectivePolicy_policyArn,

    -- * ElasticsearchAction
    ElasticsearchAction (..),
    newElasticsearchAction,
    elasticsearchAction_roleArn,
    elasticsearchAction_endpoint,
    elasticsearchAction_index,
    elasticsearchAction_type,
    elasticsearchAction_id,

    -- * EnableIoTLoggingParams
    EnableIoTLoggingParams (..),
    newEnableIoTLoggingParams,
    enableIoTLoggingParams_roleArnForLogging,
    enableIoTLoggingParams_logLevel,

    -- * ErrorInfo
    ErrorInfo (..),
    newErrorInfo,
    errorInfo_message,
    errorInfo_code,

    -- * ExplicitDeny
    ExplicitDeny (..),
    newExplicitDeny,
    explicitDeny_policies,

    -- * ExponentialRolloutRate
    ExponentialRolloutRate (..),
    newExponentialRolloutRate,
    exponentialRolloutRate_baseRatePerMinute,
    exponentialRolloutRate_incrementFactor,
    exponentialRolloutRate_rateIncreaseCriteria,

    -- * Field
    Field (..),
    newField,
    field_name,
    field_type,

    -- * FileLocation
    FileLocation (..),
    newFileLocation,
    fileLocation_s3Location,
    fileLocation_stream,

    -- * FirehoseAction
    FirehoseAction (..),
    newFirehoseAction,
    firehoseAction_separator,
    firehoseAction_batchMode,
    firehoseAction_roleArn,
    firehoseAction_deliveryStreamName,

    -- * FleetMetricNameAndArn
    FleetMetricNameAndArn (..),
    newFleetMetricNameAndArn,
    fleetMetricNameAndArn_metricArn,
    fleetMetricNameAndArn_metricName,

    -- * GroupNameAndArn
    GroupNameAndArn (..),
    newGroupNameAndArn,
    groupNameAndArn_groupName,
    groupNameAndArn_groupArn,

    -- * HttpAction
    HttpAction (..),
    newHttpAction,
    httpAction_confirmationUrl,
    httpAction_headers,
    httpAction_auth,
    httpAction_url,

    -- * HttpActionHeader
    HttpActionHeader (..),
    newHttpActionHeader,
    httpActionHeader_key,
    httpActionHeader_value,

    -- * HttpAuthorization
    HttpAuthorization (..),
    newHttpAuthorization,
    httpAuthorization_sigv4,

    -- * HttpContext
    HttpContext (..),
    newHttpContext,
    httpContext_headers,
    httpContext_queryString,

    -- * HttpUrlDestinationConfiguration
    HttpUrlDestinationConfiguration (..),
    newHttpUrlDestinationConfiguration,
    httpUrlDestinationConfiguration_confirmationUrl,

    -- * HttpUrlDestinationProperties
    HttpUrlDestinationProperties (..),
    newHttpUrlDestinationProperties,
    httpUrlDestinationProperties_confirmationUrl,

    -- * HttpUrlDestinationSummary
    HttpUrlDestinationSummary (..),
    newHttpUrlDestinationSummary,
    httpUrlDestinationSummary_confirmationUrl,

    -- * ImplicitDeny
    ImplicitDeny (..),
    newImplicitDeny,
    implicitDeny_policies,

    -- * IndexingFilter
    IndexingFilter (..),
    newIndexingFilter,
    indexingFilter_namedShadowNames,

    -- * IotAnalyticsAction
    IotAnalyticsAction (..),
    newIotAnalyticsAction,
    iotAnalyticsAction_roleArn,
    iotAnalyticsAction_channelName,
    iotAnalyticsAction_channelArn,
    iotAnalyticsAction_batchMode,

    -- * IotEventsAction
    IotEventsAction (..),
    newIotEventsAction,
    iotEventsAction_messageId,
    iotEventsAction_batchMode,
    iotEventsAction_inputName,
    iotEventsAction_roleArn,

    -- * IotSiteWiseAction
    IotSiteWiseAction (..),
    newIotSiteWiseAction,
    iotSiteWiseAction_putAssetPropertyValueEntries,
    iotSiteWiseAction_roleArn,

    -- * Job
    Job (..),
    newJob,
    job_jobExecutionsRolloutConfig,
    job_abortConfig,
    job_lastUpdatedAt,
    job_documentParameters,
    job_isConcurrent,
    job_jobTemplateArn,
    job_targetSelection,
    job_jobId,
    job_forceCanceled,
    job_status,
    job_targets,
    job_description,
    job_comment,
    job_presignedUrlConfig,
    job_reasonCode,
    job_namespaceId,
    job_jobArn,
    job_jobExecutionsRetryConfig,
    job_jobProcessDetails,
    job_completedAt,
    job_timeoutConfig,
    job_createdAt,

    -- * JobExecution
    JobExecution (..),
    newJobExecution,
    jobExecution_executionNumber,
    jobExecution_thingArn,
    jobExecution_lastUpdatedAt,
    jobExecution_statusDetails,
    jobExecution_jobId,
    jobExecution_forceCanceled,
    jobExecution_status,
    jobExecution_startedAt,
    jobExecution_versionNumber,
    jobExecution_queuedAt,
    jobExecution_approximateSecondsBeforeTimedOut,

    -- * JobExecutionStatusDetails
    JobExecutionStatusDetails (..),
    newJobExecutionStatusDetails,
    jobExecutionStatusDetails_detailsMap,

    -- * JobExecutionSummary
    JobExecutionSummary (..),
    newJobExecutionSummary,
    jobExecutionSummary_executionNumber,
    jobExecutionSummary_lastUpdatedAt,
    jobExecutionSummary_status,
    jobExecutionSummary_startedAt,
    jobExecutionSummary_queuedAt,
    jobExecutionSummary_retryAttempt,

    -- * JobExecutionSummaryForJob
    JobExecutionSummaryForJob (..),
    newJobExecutionSummaryForJob,
    jobExecutionSummaryForJob_thingArn,
    jobExecutionSummaryForJob_jobExecutionSummary,

    -- * JobExecutionSummaryForThing
    JobExecutionSummaryForThing (..),
    newJobExecutionSummaryForThing,
    jobExecutionSummaryForThing_jobId,
    jobExecutionSummaryForThing_jobExecutionSummary,

    -- * JobExecutionsRetryConfig
    JobExecutionsRetryConfig (..),
    newJobExecutionsRetryConfig,
    jobExecutionsRetryConfig_criteriaList,

    -- * JobExecutionsRolloutConfig
    JobExecutionsRolloutConfig (..),
    newJobExecutionsRolloutConfig,
    jobExecutionsRolloutConfig_maximumPerMinute,
    jobExecutionsRolloutConfig_exponentialRate,

    -- * JobProcessDetails
    JobProcessDetails (..),
    newJobProcessDetails,
    jobProcessDetails_numberOfSucceededThings,
    jobProcessDetails_numberOfFailedThings,
    jobProcessDetails_numberOfRejectedThings,
    jobProcessDetails_numberOfTimedOutThings,
    jobProcessDetails_numberOfCanceledThings,
    jobProcessDetails_numberOfInProgressThings,
    jobProcessDetails_processingTargets,
    jobProcessDetails_numberOfRemovedThings,
    jobProcessDetails_numberOfQueuedThings,

    -- * JobSummary
    JobSummary (..),
    newJobSummary,
    jobSummary_lastUpdatedAt,
    jobSummary_isConcurrent,
    jobSummary_targetSelection,
    jobSummary_jobId,
    jobSummary_status,
    jobSummary_jobArn,
    jobSummary_completedAt,
    jobSummary_thingGroupId,
    jobSummary_createdAt,

    -- * JobTemplateSummary
    JobTemplateSummary (..),
    newJobTemplateSummary,
    jobTemplateSummary_jobTemplateArn,
    jobTemplateSummary_jobTemplateId,
    jobTemplateSummary_description,
    jobTemplateSummary_createdAt,

    -- * KafkaAction
    KafkaAction (..),
    newKafkaAction,
    kafkaAction_key,
    kafkaAction_partition,
    kafkaAction_destinationArn,
    kafkaAction_topic,
    kafkaAction_clientProperties,

    -- * KeyPair
    KeyPair (..),
    newKeyPair,
    keyPair_publicKey,
    keyPair_privateKey,

    -- * KinesisAction
    KinesisAction (..),
    newKinesisAction,
    kinesisAction_partitionKey,
    kinesisAction_roleArn,
    kinesisAction_streamName,

    -- * LambdaAction
    LambdaAction (..),
    newLambdaAction,
    lambdaAction_functionArn,

    -- * LogTarget
    LogTarget (..),
    newLogTarget,
    logTarget_targetName,
    logTarget_targetType,

    -- * LogTargetConfiguration
    LogTargetConfiguration (..),
    newLogTargetConfiguration,
    logTargetConfiguration_logLevel,
    logTargetConfiguration_logTarget,

    -- * LoggingOptionsPayload
    LoggingOptionsPayload (..),
    newLoggingOptionsPayload,
    loggingOptionsPayload_logLevel,
    loggingOptionsPayload_roleArn,

    -- * MachineLearningDetectionConfig
    MachineLearningDetectionConfig (..),
    newMachineLearningDetectionConfig,
    machineLearningDetectionConfig_confidenceLevel,

    -- * ManagedJobTemplateSummary
    ManagedJobTemplateSummary (..),
    newManagedJobTemplateSummary,
    managedJobTemplateSummary_templateName,
    managedJobTemplateSummary_environments,
    managedJobTemplateSummary_description,
    managedJobTemplateSummary_templateVersion,
    managedJobTemplateSummary_templateArn,

    -- * MetricDatum
    MetricDatum (..),
    newMetricDatum,
    metricDatum_timestamp,
    metricDatum_value,

    -- * MetricDimension
    MetricDimension (..),
    newMetricDimension,
    metricDimension_operator,
    metricDimension_dimensionName,

    -- * MetricToRetain
    MetricToRetain (..),
    newMetricToRetain,
    metricToRetain_metricDimension,
    metricToRetain_metric,

    -- * MetricValue
    MetricValue (..),
    newMetricValue,
    metricValue_numbers,
    metricValue_number,
    metricValue_ports,
    metricValue_cidrs,
    metricValue_count,
    metricValue_strings,

    -- * MitigationAction
    MitigationAction (..),
    newMitigationAction,
    mitigationAction_name,
    mitigationAction_roleArn,
    mitigationAction_id,
    mitigationAction_actionParams,

    -- * MitigationActionIdentifier
    MitigationActionIdentifier (..),
    newMitigationActionIdentifier,
    mitigationActionIdentifier_actionName,
    mitigationActionIdentifier_creationDate,
    mitigationActionIdentifier_actionArn,

    -- * MitigationActionParams
    MitigationActionParams (..),
    newMitigationActionParams,
    mitigationActionParams_replaceDefaultPolicyVersionParams,
    mitigationActionParams_updateDeviceCertificateParams,
    mitigationActionParams_publishFindingToSnsParams,
    mitigationActionParams_updateCACertificateParams,
    mitigationActionParams_enableIoTLoggingParams,
    mitigationActionParams_addThingsToThingGroupParams,

    -- * MqttContext
    MqttContext (..),
    newMqttContext,
    mqttContext_clientId,
    mqttContext_password,
    mqttContext_username,

    -- * NonCompliantResource
    NonCompliantResource (..),
    newNonCompliantResource,
    nonCompliantResource_resourceType,
    nonCompliantResource_additionalInfo,
    nonCompliantResource_resourceIdentifier,

    -- * OTAUpdateFile
    OTAUpdateFile (..),
    newOTAUpdateFile,
    oTAUpdateFile_fileVersion,
    oTAUpdateFile_fileName,
    oTAUpdateFile_fileLocation,
    oTAUpdateFile_attributes,
    oTAUpdateFile_fileType,
    oTAUpdateFile_codeSigning,

    -- * OTAUpdateInfo
    OTAUpdateInfo (..),
    newOTAUpdateInfo,
    oTAUpdateInfo_awsIotJobId,
    oTAUpdateInfo_awsJobExecutionsRolloutConfig,
    oTAUpdateInfo_lastModifiedDate,
    oTAUpdateInfo_targetSelection,
    oTAUpdateInfo_creationDate,
    oTAUpdateInfo_awsIotJobArn,
    oTAUpdateInfo_otaUpdateStatus,
    oTAUpdateInfo_protocols,
    oTAUpdateInfo_targets,
    oTAUpdateInfo_description,
    oTAUpdateInfo_additionalParameters,
    oTAUpdateInfo_otaUpdateFiles,
    oTAUpdateInfo_otaUpdateArn,
    oTAUpdateInfo_awsJobPresignedUrlConfig,
    oTAUpdateInfo_errorInfo,
    oTAUpdateInfo_otaUpdateId,

    -- * OTAUpdateSummary
    OTAUpdateSummary (..),
    newOTAUpdateSummary,
    oTAUpdateSummary_creationDate,
    oTAUpdateSummary_otaUpdateArn,
    oTAUpdateSummary_otaUpdateId,

    -- * OpenSearchAction
    OpenSearchAction (..),
    newOpenSearchAction,
    openSearchAction_roleArn,
    openSearchAction_endpoint,
    openSearchAction_index,
    openSearchAction_type,
    openSearchAction_id,

    -- * OutgoingCertificate
    OutgoingCertificate (..),
    newOutgoingCertificate,
    outgoingCertificate_transferDate,
    outgoingCertificate_transferredTo,
    outgoingCertificate_transferMessage,
    outgoingCertificate_creationDate,
    outgoingCertificate_certificateArn,
    outgoingCertificate_certificateId,

    -- * PercentPair
    PercentPair (..),
    newPercentPair,
    percentPair_percent,
    percentPair_value,

    -- * Policy
    Policy (..),
    newPolicy,
    policy_policyName,
    policy_policyArn,

    -- * PolicyVersion
    PolicyVersion (..),
    newPolicyVersion,
    policyVersion_isDefaultVersion,
    policyVersion_createDate,
    policyVersion_versionId,

    -- * PolicyVersionIdentifier
    PolicyVersionIdentifier (..),
    newPolicyVersionIdentifier,
    policyVersionIdentifier_policyName,
    policyVersionIdentifier_policyVersionId,

    -- * PresignedUrlConfig
    PresignedUrlConfig (..),
    newPresignedUrlConfig,
    presignedUrlConfig_roleArn,
    presignedUrlConfig_expiresInSec,

    -- * ProvisioningHook
    ProvisioningHook (..),
    newProvisioningHook,
    provisioningHook_payloadVersion,
    provisioningHook_targetArn,

    -- * ProvisioningTemplateSummary
    ProvisioningTemplateSummary (..),
    newProvisioningTemplateSummary,
    provisioningTemplateSummary_templateName,
    provisioningTemplateSummary_type,
    provisioningTemplateSummary_lastModifiedDate,
    provisioningTemplateSummary_creationDate,
    provisioningTemplateSummary_description,
    provisioningTemplateSummary_enabled,
    provisioningTemplateSummary_templateArn,

    -- * ProvisioningTemplateVersionSummary
    ProvisioningTemplateVersionSummary (..),
    newProvisioningTemplateVersionSummary,
    provisioningTemplateVersionSummary_isDefaultVersion,
    provisioningTemplateVersionSummary_creationDate,
    provisioningTemplateVersionSummary_versionId,

    -- * PublishFindingToSnsParams
    PublishFindingToSnsParams (..),
    newPublishFindingToSnsParams,
    publishFindingToSnsParams_topicArn,

    -- * PutAssetPropertyValueEntry
    PutAssetPropertyValueEntry (..),
    newPutAssetPropertyValueEntry,
    putAssetPropertyValueEntry_propertyAlias,
    putAssetPropertyValueEntry_assetId,
    putAssetPropertyValueEntry_entryId,
    putAssetPropertyValueEntry_propertyId,
    putAssetPropertyValueEntry_propertyValues,

    -- * PutItemInput
    PutItemInput (..),
    newPutItemInput,
    putItemInput_tableName,

    -- * RateIncreaseCriteria
    RateIncreaseCriteria (..),
    newRateIncreaseCriteria,
    rateIncreaseCriteria_numberOfSucceededThings,
    rateIncreaseCriteria_numberOfNotifiedThings,

    -- * RegistrationConfig
    RegistrationConfig (..),
    newRegistrationConfig,
    registrationConfig_templateName,
    registrationConfig_roleArn,
    registrationConfig_templateBody,

    -- * RelatedResource
    RelatedResource (..),
    newRelatedResource,
    relatedResource_resourceType,
    relatedResource_additionalInfo,
    relatedResource_resourceIdentifier,

    -- * ReplaceDefaultPolicyVersionParams
    ReplaceDefaultPolicyVersionParams (..),
    newReplaceDefaultPolicyVersionParams,
    replaceDefaultPolicyVersionParams_templateName,

    -- * RepublishAction
    RepublishAction (..),
    newRepublishAction,
    republishAction_qos,
    republishAction_roleArn,
    republishAction_topic,

    -- * ResourceIdentifier
    ResourceIdentifier (..),
    newResourceIdentifier,
    resourceIdentifier_clientId,
    resourceIdentifier_account,
    resourceIdentifier_policyVersionIdentifier,
    resourceIdentifier_deviceCertificateId,
    resourceIdentifier_caCertificateId,
    resourceIdentifier_iamRoleArn,
    resourceIdentifier_roleAliasArn,
    resourceIdentifier_cognitoIdentityPoolId,

    -- * RetryCriteria
    RetryCriteria (..),
    newRetryCriteria,
    retryCriteria_failureType,
    retryCriteria_numberOfRetries,

    -- * RoleAliasDescription
    RoleAliasDescription (..),
    newRoleAliasDescription,
    roleAliasDescription_roleArn,
    roleAliasDescription_lastModifiedDate,
    roleAliasDescription_roleAlias,
    roleAliasDescription_credentialDurationSeconds,
    roleAliasDescription_creationDate,
    roleAliasDescription_owner,
    roleAliasDescription_roleAliasArn,

    -- * S3Action
    S3Action (..),
    newS3Action,
    s3Action_cannedAcl,
    s3Action_roleArn,
    s3Action_bucketName,
    s3Action_key,

    -- * S3Destination
    S3Destination (..),
    newS3Destination,
    s3Destination_bucket,
    s3Destination_prefix,

    -- * S3Location
    S3Location (..),
    newS3Location,
    s3Location_key,
    s3Location_bucket,
    s3Location_version,

    -- * SalesforceAction
    SalesforceAction (..),
    newSalesforceAction,
    salesforceAction_token,
    salesforceAction_url,

    -- * ScheduledAuditMetadata
    ScheduledAuditMetadata (..),
    newScheduledAuditMetadata,
    scheduledAuditMetadata_frequency,
    scheduledAuditMetadata_dayOfWeek,
    scheduledAuditMetadata_dayOfMonth,
    scheduledAuditMetadata_scheduledAuditArn,
    scheduledAuditMetadata_scheduledAuditName,

    -- * SecurityProfileIdentifier
    SecurityProfileIdentifier (..),
    newSecurityProfileIdentifier,
    securityProfileIdentifier_name,
    securityProfileIdentifier_arn,

    -- * SecurityProfileTarget
    SecurityProfileTarget (..),
    newSecurityProfileTarget,
    securityProfileTarget_arn,

    -- * SecurityProfileTargetMapping
    SecurityProfileTargetMapping (..),
    newSecurityProfileTargetMapping,
    securityProfileTargetMapping_securityProfileIdentifier,
    securityProfileTargetMapping_target,

    -- * ServerCertificateSummary
    ServerCertificateSummary (..),
    newServerCertificateSummary,
    serverCertificateSummary_serverCertificateArn,
    serverCertificateSummary_serverCertificateStatus,
    serverCertificateSummary_serverCertificateStatusDetail,

    -- * SigV4Authorization
    SigV4Authorization (..),
    newSigV4Authorization,
    sigV4Authorization_signingRegion,
    sigV4Authorization_serviceName,
    sigV4Authorization_roleArn,

    -- * SigningProfileParameter
    SigningProfileParameter (..),
    newSigningProfileParameter,
    signingProfileParameter_platform,
    signingProfileParameter_certificateArn,
    signingProfileParameter_certificatePathOnDevice,

    -- * SnsAction
    SnsAction (..),
    newSnsAction,
    snsAction_messageFormat,
    snsAction_targetArn,
    snsAction_roleArn,

    -- * SqsAction
    SqsAction (..),
    newSqsAction,
    sqsAction_useBase64,
    sqsAction_roleArn,
    sqsAction_queueUrl,

    -- * StartSigningJobParameter
    StartSigningJobParameter (..),
    newStartSigningJobParameter,
    startSigningJobParameter_destination,
    startSigningJobParameter_signingProfileName,
    startSigningJobParameter_signingProfileParameter,

    -- * StatisticalThreshold
    StatisticalThreshold (..),
    newStatisticalThreshold,
    statisticalThreshold_statistic,

    -- * Statistics
    Statistics (..),
    newStatistics,
    statistics_minimum,
    statistics_average,
    statistics_sumOfSquares,
    statistics_count,
    statistics_stdDeviation,
    statistics_sum,
    statistics_variance,
    statistics_maximum,

    -- * StepFunctionsAction
    StepFunctionsAction (..),
    newStepFunctionsAction,
    stepFunctionsAction_executionNamePrefix,
    stepFunctionsAction_stateMachineName,
    stepFunctionsAction_roleArn,

    -- * Stream
    Stream (..),
    newStream,
    stream_fileId,
    stream_streamId,

    -- * StreamFile
    StreamFile (..),
    newStreamFile,
    streamFile_fileId,
    streamFile_s3Location,

    -- * StreamInfo
    StreamInfo (..),
    newStreamInfo,
    streamInfo_files,
    streamInfo_roleArn,
    streamInfo_lastUpdatedAt,
    streamInfo_streamId,
    streamInfo_description,
    streamInfo_streamVersion,
    streamInfo_streamArn,
    streamInfo_createdAt,

    -- * StreamSummary
    StreamSummary (..),
    newStreamSummary,
    streamSummary_streamId,
    streamSummary_description,
    streamSummary_streamVersion,
    streamSummary_streamArn,

    -- * Tag
    Tag (..),
    newTag,
    tag_value,
    tag_key,

    -- * TaskStatistics
    TaskStatistics (..),
    newTaskStatistics,
    taskStatistics_waitingForDataCollectionChecks,
    taskStatistics_compliantChecks,
    taskStatistics_nonCompliantChecks,
    taskStatistics_inProgressChecks,
    taskStatistics_totalChecks,
    taskStatistics_canceledChecks,
    taskStatistics_failedChecks,

    -- * TaskStatisticsForAuditCheck
    TaskStatisticsForAuditCheck (..),
    newTaskStatisticsForAuditCheck,
    taskStatisticsForAuditCheck_totalFindingsCount,
    taskStatisticsForAuditCheck_failedFindingsCount,
    taskStatisticsForAuditCheck_canceledFindingsCount,
    taskStatisticsForAuditCheck_skippedFindingsCount,
    taskStatisticsForAuditCheck_succeededFindingsCount,

    -- * TermsAggregation
    TermsAggregation (..),
    newTermsAggregation,
    termsAggregation_maxBuckets,

    -- * ThingAttribute
    ThingAttribute (..),
    newThingAttribute,
    thingAttribute_thingName,
    thingAttribute_thingArn,
    thingAttribute_thingTypeName,
    thingAttribute_attributes,
    thingAttribute_version,

    -- * ThingConnectivity
    ThingConnectivity (..),
    newThingConnectivity,
    thingConnectivity_timestamp,
    thingConnectivity_connected,
    thingConnectivity_disconnectReason,

    -- * ThingDocument
    ThingDocument (..),
    newThingDocument,
    thingDocument_thingName,
    thingDocument_thingId,
    thingDocument_deviceDefender,
    thingDocument_shadow,
    thingDocument_thingTypeName,
    thingDocument_thingGroupNames,
    thingDocument_attributes,
    thingDocument_connectivity,

    -- * ThingGroupDocument
    ThingGroupDocument (..),
    newThingGroupDocument,
    thingGroupDocument_thingGroupDescription,
    thingGroupDocument_thingGroupName,
    thingGroupDocument_parentGroupNames,
    thingGroupDocument_attributes,
    thingGroupDocument_thingGroupId,

    -- * ThingGroupIndexingConfiguration
    ThingGroupIndexingConfiguration (..),
    newThingGroupIndexingConfiguration,
    thingGroupIndexingConfiguration_managedFields,
    thingGroupIndexingConfiguration_customFields,
    thingGroupIndexingConfiguration_thingGroupIndexingMode,

    -- * ThingGroupMetadata
    ThingGroupMetadata (..),
    newThingGroupMetadata,
    thingGroupMetadata_rootToParentThingGroups,
    thingGroupMetadata_creationDate,
    thingGroupMetadata_parentGroupName,

    -- * ThingGroupProperties
    ThingGroupProperties (..),
    newThingGroupProperties,
    thingGroupProperties_thingGroupDescription,
    thingGroupProperties_attributePayload,

    -- * ThingIndexingConfiguration
    ThingIndexingConfiguration (..),
    newThingIndexingConfiguration,
    thingIndexingConfiguration_deviceDefenderIndexingMode,
    thingIndexingConfiguration_filter,
    thingIndexingConfiguration_thingConnectivityIndexingMode,
    thingIndexingConfiguration_managedFields,
    thingIndexingConfiguration_namedShadowIndexingMode,
    thingIndexingConfiguration_customFields,
    thingIndexingConfiguration_thingIndexingMode,

    -- * ThingTypeDefinition
    ThingTypeDefinition (..),
    newThingTypeDefinition,
    thingTypeDefinition_thingTypeMetadata,
    thingTypeDefinition_thingTypeName,
    thingTypeDefinition_thingTypeArn,
    thingTypeDefinition_thingTypeProperties,

    -- * ThingTypeMetadata
    ThingTypeMetadata (..),
    newThingTypeMetadata,
    thingTypeMetadata_deprecated,
    thingTypeMetadata_creationDate,
    thingTypeMetadata_deprecationDate,

    -- * ThingTypeProperties
    ThingTypeProperties (..),
    newThingTypeProperties,
    thingTypeProperties_searchableAttributes,
    thingTypeProperties_thingTypeDescription,

    -- * TimeoutConfig
    TimeoutConfig (..),
    newTimeoutConfig,
    timeoutConfig_inProgressTimeoutInMinutes,

    -- * TimestreamAction
    TimestreamAction (..),
    newTimestreamAction,
    timestreamAction_timestamp,
    timestreamAction_roleArn,
    timestreamAction_databaseName,
    timestreamAction_tableName,
    timestreamAction_dimensions,

    -- * TimestreamDimension
    TimestreamDimension (..),
    newTimestreamDimension,
    timestreamDimension_name,
    timestreamDimension_value,

    -- * TimestreamTimestamp
    TimestreamTimestamp (..),
    newTimestreamTimestamp,
    timestreamTimestamp_value,
    timestreamTimestamp_unit,

    -- * TlsContext
    TlsContext (..),
    newTlsContext,
    tlsContext_serverName,

    -- * TopicRule
    TopicRule (..),
    newTopicRule,
    topicRule_errorAction,
    topicRule_awsIotSqlVersion,
    topicRule_description,
    topicRule_ruleName,
    topicRule_sql,
    topicRule_createdAt,
    topicRule_ruleDisabled,
    topicRule_actions,

    -- * TopicRuleDestination
    TopicRuleDestination (..),
    newTopicRuleDestination,
    topicRuleDestination_lastUpdatedAt,
    topicRuleDestination_arn,
    topicRuleDestination_statusReason,
    topicRuleDestination_status,
    topicRuleDestination_httpUrlProperties,
    topicRuleDestination_createdAt,
    topicRuleDestination_vpcProperties,

    -- * TopicRuleDestinationConfiguration
    TopicRuleDestinationConfiguration (..),
    newTopicRuleDestinationConfiguration,
    topicRuleDestinationConfiguration_vpcConfiguration,
    topicRuleDestinationConfiguration_httpUrlConfiguration,

    -- * TopicRuleDestinationSummary
    TopicRuleDestinationSummary (..),
    newTopicRuleDestinationSummary,
    topicRuleDestinationSummary_vpcDestinationSummary,
    topicRuleDestinationSummary_httpUrlSummary,
    topicRuleDestinationSummary_lastUpdatedAt,
    topicRuleDestinationSummary_arn,
    topicRuleDestinationSummary_statusReason,
    topicRuleDestinationSummary_status,
    topicRuleDestinationSummary_createdAt,

    -- * TopicRuleListItem
    TopicRuleListItem (..),
    newTopicRuleListItem,
    topicRuleListItem_ruleArn,
    topicRuleListItem_topicPattern,
    topicRuleListItem_ruleName,
    topicRuleListItem_createdAt,
    topicRuleListItem_ruleDisabled,

    -- * TopicRulePayload
    TopicRulePayload (..),
    newTopicRulePayload,
    topicRulePayload_errorAction,
    topicRulePayload_awsIotSqlVersion,
    topicRulePayload_description,
    topicRulePayload_ruleDisabled,
    topicRulePayload_sql,
    topicRulePayload_actions,

    -- * TransferData
    TransferData (..),
    newTransferData,
    transferData_transferDate,
    transferData_rejectReason,
    transferData_transferMessage,
    transferData_rejectDate,
    transferData_acceptDate,

    -- * UpdateCACertificateParams
    UpdateCACertificateParams (..),
    newUpdateCACertificateParams,
    updateCACertificateParams_action,

    -- * UpdateDeviceCertificateParams
    UpdateDeviceCertificateParams (..),
    newUpdateDeviceCertificateParams,
    updateDeviceCertificateParams_action,

    -- * ValidationError
    ValidationError (..),
    newValidationError,
    validationError_errorMessage,

    -- * ViolationEvent
    ViolationEvent (..),
    newViolationEvent,
    violationEvent_thingName,
    violationEvent_violationEventTime,
    violationEvent_violationId,
    violationEvent_metricValue,
    violationEvent_violationEventAdditionalInfo,
    violationEvent_securityProfileName,
    violationEvent_verificationStateDescription,
    violationEvent_verificationState,
    violationEvent_violationEventType,
    violationEvent_behavior,

    -- * ViolationEventAdditionalInfo
    ViolationEventAdditionalInfo (..),
    newViolationEventAdditionalInfo,
    violationEventAdditionalInfo_confidenceLevel,

    -- * ViolationEventOccurrenceRange
    ViolationEventOccurrenceRange (..),
    newViolationEventOccurrenceRange,
    violationEventOccurrenceRange_startTime,
    violationEventOccurrenceRange_endTime,

    -- * VpcDestinationConfiguration
    VpcDestinationConfiguration (..),
    newVpcDestinationConfiguration,
    vpcDestinationConfiguration_securityGroups,
    vpcDestinationConfiguration_subnetIds,
    vpcDestinationConfiguration_vpcId,
    vpcDestinationConfiguration_roleArn,

    -- * VpcDestinationProperties
    VpcDestinationProperties (..),
    newVpcDestinationProperties,
    vpcDestinationProperties_roleArn,
    vpcDestinationProperties_securityGroups,
    vpcDestinationProperties_vpcId,
    vpcDestinationProperties_subnetIds,

    -- * VpcDestinationSummary
    VpcDestinationSummary (..),
    newVpcDestinationSummary,
    vpcDestinationSummary_roleArn,
    vpcDestinationSummary_securityGroups,
    vpcDestinationSummary_vpcId,
    vpcDestinationSummary_subnetIds,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IoT.Types.AbortAction
import Amazonka.IoT.Types.AbortConfig
import Amazonka.IoT.Types.AbortCriteria
import Amazonka.IoT.Types.Action
import Amazonka.IoT.Types.ActionType
import Amazonka.IoT.Types.ActiveViolation
import Amazonka.IoT.Types.AddThingsToThingGroupParams
import Amazonka.IoT.Types.AggregationType
import Amazonka.IoT.Types.AggregationTypeName
import Amazonka.IoT.Types.AlertTarget
import Amazonka.IoT.Types.AlertTargetType
import Amazonka.IoT.Types.Allowed
import Amazonka.IoT.Types.AssetPropertyTimestamp
import Amazonka.IoT.Types.AssetPropertyValue
import Amazonka.IoT.Types.AssetPropertyVariant
import Amazonka.IoT.Types.AttributePayload
import Amazonka.IoT.Types.AuditCheckConfiguration
import Amazonka.IoT.Types.AuditCheckDetails
import Amazonka.IoT.Types.AuditCheckRunStatus
import Amazonka.IoT.Types.AuditFinding
import Amazonka.IoT.Types.AuditFindingSeverity
import Amazonka.IoT.Types.AuditFrequency
import Amazonka.IoT.Types.AuditMitigationActionExecutionMetadata
import Amazonka.IoT.Types.AuditMitigationActionsExecutionStatus
import Amazonka.IoT.Types.AuditMitigationActionsTaskMetadata
import Amazonka.IoT.Types.AuditMitigationActionsTaskStatus
import Amazonka.IoT.Types.AuditMitigationActionsTaskTarget
import Amazonka.IoT.Types.AuditNotificationTarget
import Amazonka.IoT.Types.AuditNotificationType
import Amazonka.IoT.Types.AuditSuppression
import Amazonka.IoT.Types.AuditTaskMetadata
import Amazonka.IoT.Types.AuditTaskStatus
import Amazonka.IoT.Types.AuditTaskType
import Amazonka.IoT.Types.AuthDecision
import Amazonka.IoT.Types.AuthInfo
import Amazonka.IoT.Types.AuthResult
import Amazonka.IoT.Types.AuthorizerConfig
import Amazonka.IoT.Types.AuthorizerDescription
import Amazonka.IoT.Types.AuthorizerStatus
import Amazonka.IoT.Types.AuthorizerSummary
import Amazonka.IoT.Types.AutoRegistrationStatus
import Amazonka.IoT.Types.AwsJobAbortConfig
import Amazonka.IoT.Types.AwsJobAbortCriteria
import Amazonka.IoT.Types.AwsJobAbortCriteriaAbortAction
import Amazonka.IoT.Types.AwsJobAbortCriteriaFailureType
import Amazonka.IoT.Types.AwsJobExecutionsRolloutConfig
import Amazonka.IoT.Types.AwsJobExponentialRolloutRate
import Amazonka.IoT.Types.AwsJobPresignedUrlConfig
import Amazonka.IoT.Types.AwsJobRateIncreaseCriteria
import Amazonka.IoT.Types.AwsJobTimeoutConfig
import Amazonka.IoT.Types.Behavior
import Amazonka.IoT.Types.BehaviorCriteria
import Amazonka.IoT.Types.BehaviorCriteriaType
import Amazonka.IoT.Types.BehaviorModelTrainingSummary
import Amazonka.IoT.Types.BillingGroupMetadata
import Amazonka.IoT.Types.BillingGroupProperties
import Amazonka.IoT.Types.Bucket
import Amazonka.IoT.Types.BucketsAggregationType
import Amazonka.IoT.Types.CACertificate
import Amazonka.IoT.Types.CACertificateDescription
import Amazonka.IoT.Types.CACertificateStatus
import Amazonka.IoT.Types.CACertificateUpdateAction
import Amazonka.IoT.Types.CannedAccessControlList
import Amazonka.IoT.Types.Certificate
import Amazonka.IoT.Types.CertificateDescription
import Amazonka.IoT.Types.CertificateMode
import Amazonka.IoT.Types.CertificateStatus
import Amazonka.IoT.Types.CertificateValidity
import Amazonka.IoT.Types.CloudwatchAlarmAction
import Amazonka.IoT.Types.CloudwatchLogsAction
import Amazonka.IoT.Types.CloudwatchMetricAction
import Amazonka.IoT.Types.CodeSigning
import Amazonka.IoT.Types.CodeSigningCertificateChain
import Amazonka.IoT.Types.CodeSigningSignature
import Amazonka.IoT.Types.ComparisonOperator
import Amazonka.IoT.Types.ConfidenceLevel
import Amazonka.IoT.Types.Configuration
import Amazonka.IoT.Types.CustomCodeSigning
import Amazonka.IoT.Types.CustomMetricType
import Amazonka.IoT.Types.DayOfWeek
import Amazonka.IoT.Types.Denied
import Amazonka.IoT.Types.Destination
import Amazonka.IoT.Types.DetectMitigationActionExecution
import Amazonka.IoT.Types.DetectMitigationActionExecutionStatus
import Amazonka.IoT.Types.DetectMitigationActionsTaskStatistics
import Amazonka.IoT.Types.DetectMitigationActionsTaskStatus
import Amazonka.IoT.Types.DetectMitigationActionsTaskSummary
import Amazonka.IoT.Types.DetectMitigationActionsTaskTarget
import Amazonka.IoT.Types.DeviceCertificateUpdateAction
import Amazonka.IoT.Types.DeviceDefenderIndexingMode
import Amazonka.IoT.Types.DimensionType
import Amazonka.IoT.Types.DimensionValueOperator
import Amazonka.IoT.Types.DocumentParameter
import Amazonka.IoT.Types.DomainConfigurationStatus
import Amazonka.IoT.Types.DomainConfigurationSummary
import Amazonka.IoT.Types.DomainType
import Amazonka.IoT.Types.DynamicGroupStatus
import Amazonka.IoT.Types.DynamoDBAction
import Amazonka.IoT.Types.DynamoDBv2Action
import Amazonka.IoT.Types.DynamoKeyType
import Amazonka.IoT.Types.EffectivePolicy
import Amazonka.IoT.Types.ElasticsearchAction
import Amazonka.IoT.Types.EnableIoTLoggingParams
import Amazonka.IoT.Types.ErrorInfo
import Amazonka.IoT.Types.EventType
import Amazonka.IoT.Types.ExplicitDeny
import Amazonka.IoT.Types.ExponentialRolloutRate
import Amazonka.IoT.Types.Field
import Amazonka.IoT.Types.FieldType
import Amazonka.IoT.Types.FileLocation
import Amazonka.IoT.Types.FirehoseAction
import Amazonka.IoT.Types.FleetMetricNameAndArn
import Amazonka.IoT.Types.FleetMetricUnit
import Amazonka.IoT.Types.GroupNameAndArn
import Amazonka.IoT.Types.HttpAction
import Amazonka.IoT.Types.HttpActionHeader
import Amazonka.IoT.Types.HttpAuthorization
import Amazonka.IoT.Types.HttpContext
import Amazonka.IoT.Types.HttpUrlDestinationConfiguration
import Amazonka.IoT.Types.HttpUrlDestinationProperties
import Amazonka.IoT.Types.HttpUrlDestinationSummary
import Amazonka.IoT.Types.ImplicitDeny
import Amazonka.IoT.Types.IndexStatus
import Amazonka.IoT.Types.IndexingFilter
import Amazonka.IoT.Types.IotAnalyticsAction
import Amazonka.IoT.Types.IotEventsAction
import Amazonka.IoT.Types.IotSiteWiseAction
import Amazonka.IoT.Types.Job
import Amazonka.IoT.Types.JobExecution
import Amazonka.IoT.Types.JobExecutionFailureType
import Amazonka.IoT.Types.JobExecutionStatus
import Amazonka.IoT.Types.JobExecutionStatusDetails
import Amazonka.IoT.Types.JobExecutionSummary
import Amazonka.IoT.Types.JobExecutionSummaryForJob
import Amazonka.IoT.Types.JobExecutionSummaryForThing
import Amazonka.IoT.Types.JobExecutionsRetryConfig
import Amazonka.IoT.Types.JobExecutionsRolloutConfig
import Amazonka.IoT.Types.JobProcessDetails
import Amazonka.IoT.Types.JobStatus
import Amazonka.IoT.Types.JobSummary
import Amazonka.IoT.Types.JobTemplateSummary
import Amazonka.IoT.Types.KafkaAction
import Amazonka.IoT.Types.KeyPair
import Amazonka.IoT.Types.KinesisAction
import Amazonka.IoT.Types.LambdaAction
import Amazonka.IoT.Types.LogLevel
import Amazonka.IoT.Types.LogTarget
import Amazonka.IoT.Types.LogTargetConfiguration
import Amazonka.IoT.Types.LogTargetType
import Amazonka.IoT.Types.LoggingOptionsPayload
import Amazonka.IoT.Types.MachineLearningDetectionConfig
import Amazonka.IoT.Types.ManagedJobTemplateSummary
import Amazonka.IoT.Types.MessageFormat
import Amazonka.IoT.Types.MetricDatum
import Amazonka.IoT.Types.MetricDimension
import Amazonka.IoT.Types.MetricToRetain
import Amazonka.IoT.Types.MetricValue
import Amazonka.IoT.Types.MitigationAction
import Amazonka.IoT.Types.MitigationActionIdentifier
import Amazonka.IoT.Types.MitigationActionParams
import Amazonka.IoT.Types.MitigationActionType
import Amazonka.IoT.Types.ModelStatus
import Amazonka.IoT.Types.MqttContext
import Amazonka.IoT.Types.NamedShadowIndexingMode
import Amazonka.IoT.Types.NonCompliantResource
import Amazonka.IoT.Types.OTAUpdateFile
import Amazonka.IoT.Types.OTAUpdateInfo
import Amazonka.IoT.Types.OTAUpdateStatus
import Amazonka.IoT.Types.OTAUpdateSummary
import Amazonka.IoT.Types.OpenSearchAction
import Amazonka.IoT.Types.OutgoingCertificate
import Amazonka.IoT.Types.PercentPair
import Amazonka.IoT.Types.Policy
import Amazonka.IoT.Types.PolicyTemplateName
import Amazonka.IoT.Types.PolicyVersion
import Amazonka.IoT.Types.PolicyVersionIdentifier
import Amazonka.IoT.Types.PresignedUrlConfig
import Amazonka.IoT.Types.Protocol
import Amazonka.IoT.Types.ProvisioningHook
import Amazonka.IoT.Types.ProvisioningTemplateSummary
import Amazonka.IoT.Types.ProvisioningTemplateVersionSummary
import Amazonka.IoT.Types.PublishFindingToSnsParams
import Amazonka.IoT.Types.PutAssetPropertyValueEntry
import Amazonka.IoT.Types.PutItemInput
import Amazonka.IoT.Types.RateIncreaseCriteria
import Amazonka.IoT.Types.RegistrationConfig
import Amazonka.IoT.Types.RelatedResource
import Amazonka.IoT.Types.ReplaceDefaultPolicyVersionParams
import Amazonka.IoT.Types.ReportType
import Amazonka.IoT.Types.RepublishAction
import Amazonka.IoT.Types.ResourceIdentifier
import Amazonka.IoT.Types.ResourceType
import Amazonka.IoT.Types.RetryCriteria
import Amazonka.IoT.Types.RetryableFailureType
import Amazonka.IoT.Types.RoleAliasDescription
import Amazonka.IoT.Types.S3Action
import Amazonka.IoT.Types.S3Destination
import Amazonka.IoT.Types.S3Location
import Amazonka.IoT.Types.SalesforceAction
import Amazonka.IoT.Types.ScheduledAuditMetadata
import Amazonka.IoT.Types.SecurityProfileIdentifier
import Amazonka.IoT.Types.SecurityProfileTarget
import Amazonka.IoT.Types.SecurityProfileTargetMapping
import Amazonka.IoT.Types.ServerCertificateStatus
import Amazonka.IoT.Types.ServerCertificateSummary
import Amazonka.IoT.Types.ServiceType
import Amazonka.IoT.Types.SigV4Authorization
import Amazonka.IoT.Types.SigningProfileParameter
import Amazonka.IoT.Types.SnsAction
import Amazonka.IoT.Types.SqsAction
import Amazonka.IoT.Types.StartSigningJobParameter
import Amazonka.IoT.Types.StatisticalThreshold
import Amazonka.IoT.Types.Statistics
import Amazonka.IoT.Types.StepFunctionsAction
import Amazonka.IoT.Types.Stream
import Amazonka.IoT.Types.StreamFile
import Amazonka.IoT.Types.StreamInfo
import Amazonka.IoT.Types.StreamSummary
import Amazonka.IoT.Types.Tag
import Amazonka.IoT.Types.TargetSelection
import Amazonka.IoT.Types.TaskStatistics
import Amazonka.IoT.Types.TaskStatisticsForAuditCheck
import Amazonka.IoT.Types.TaskStatus
import Amazonka.IoT.Types.TemplateType
import Amazonka.IoT.Types.TermsAggregation
import Amazonka.IoT.Types.ThingAttribute
import Amazonka.IoT.Types.ThingConnectivity
import Amazonka.IoT.Types.ThingConnectivityIndexingMode
import Amazonka.IoT.Types.ThingDocument
import Amazonka.IoT.Types.ThingGroupDocument
import Amazonka.IoT.Types.ThingGroupIndexingConfiguration
import Amazonka.IoT.Types.ThingGroupIndexingMode
import Amazonka.IoT.Types.ThingGroupMetadata
import Amazonka.IoT.Types.ThingGroupProperties
import Amazonka.IoT.Types.ThingIndexingConfiguration
import Amazonka.IoT.Types.ThingIndexingMode
import Amazonka.IoT.Types.ThingTypeDefinition
import Amazonka.IoT.Types.ThingTypeMetadata
import Amazonka.IoT.Types.ThingTypeProperties
import Amazonka.IoT.Types.TimeoutConfig
import Amazonka.IoT.Types.TimestreamAction
import Amazonka.IoT.Types.TimestreamDimension
import Amazonka.IoT.Types.TimestreamTimestamp
import Amazonka.IoT.Types.TlsContext
import Amazonka.IoT.Types.TopicRule
import Amazonka.IoT.Types.TopicRuleDestination
import Amazonka.IoT.Types.TopicRuleDestinationConfiguration
import Amazonka.IoT.Types.TopicRuleDestinationStatus
import Amazonka.IoT.Types.TopicRuleDestinationSummary
import Amazonka.IoT.Types.TopicRuleListItem
import Amazonka.IoT.Types.TopicRulePayload
import Amazonka.IoT.Types.TransferData
import Amazonka.IoT.Types.UpdateCACertificateParams
import Amazonka.IoT.Types.UpdateDeviceCertificateParams
import Amazonka.IoT.Types.ValidationError
import Amazonka.IoT.Types.VerificationState
import Amazonka.IoT.Types.ViolationEvent
import Amazonka.IoT.Types.ViolationEventAdditionalInfo
import Amazonka.IoT.Types.ViolationEventOccurrenceRange
import Amazonka.IoT.Types.ViolationEventType
import Amazonka.IoT.Types.VpcDestinationConfiguration
import Amazonka.IoT.Types.VpcDestinationProperties
import Amazonka.IoT.Types.VpcDestinationSummary
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2015-05-28@ of the Amazon IoT SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "IoT",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "iot",
      Core._serviceSigningName = "execute-api",
      Core._serviceVersion = "2015-05-28",
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError = Core.parseJSONError "IoT",
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

-- | The resource already exists.
_ResourceAlreadyExistsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceAlreadyExistsException =
  Core._MatchServiceError
    defaultService
    "ResourceAlreadyExistsException"
    Prelude.. Core.hasStatus 409

-- | The response is invalid.
_InvalidResponseException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidResponseException =
  Core._MatchServiceError
    defaultService
    "InvalidResponseException"
    Prelude.. Core.hasStatus 400

-- | The Rule-SQL expression can\'t be parsed correctly.
_SqlParseException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_SqlParseException =
  Core._MatchServiceError
    defaultService
    "SqlParseException"
    Prelude.. Core.hasStatus 400

-- | The policy documentation is not valid.
_MalformedPolicyException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_MalformedPolicyException =
  Core._MatchServiceError
    defaultService
    "MalformedPolicyException"
    Prelude.. Core.hasStatus 400

-- | Unable to verify the CA certificate used to sign the device certificate
-- you are attempting to register. This is happens when you have registered
-- more than one CA certificate that has the same subject field and public
-- key.
_CertificateConflictException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_CertificateConflictException =
  Core._MatchServiceError
    defaultService
    "CertificateConflictException"
    Prelude.. Core.hasStatus 409

-- | A conflicting resource update exception. This exception is thrown when
-- two pending updates cause a conflict.
_ConflictingResourceUpdateException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ConflictingResourceUpdateException =
  Core._MatchServiceError
    defaultService
    "ConflictingResourceUpdateException"
    Prelude.. Core.hasStatus 409

-- | Internal error from the service that indicates an unexpected error or
-- that the service is unavailable.
_InternalServerException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalServerException =
  Core._MatchServiceError
    defaultService
    "InternalServerException"
    Prelude.. Core.hasStatus 500

-- | You are not authorized to perform this operation.
_UnauthorizedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_UnauthorizedException =
  Core._MatchServiceError
    defaultService
    "UnauthorizedException"
    Prelude.. Core.hasStatus 401

-- | The aggregation is invalid.
_InvalidAggregationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidAggregationException =
  Core._MatchServiceError
    defaultService
    "InvalidAggregationException"
    Prelude.. Core.hasStatus 400

-- | The service is temporarily unavailable.
_ServiceUnavailableException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ServiceUnavailableException =
  Core._MatchServiceError
    defaultService
    "ServiceUnavailableException"
    Prelude.. Core.hasStatus 503

-- | The index is not ready.
_IndexNotReadyException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_IndexNotReadyException =
  Core._MatchServiceError
    defaultService
    "IndexNotReadyException"
    Prelude.. Core.hasStatus 400

-- | The specified resource does not exist.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"
    Prelude.. Core.hasStatus 404

-- | The registration code is invalid.
_RegistrationCodeValidationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_RegistrationCodeValidationException =
  Core._MatchServiceError
    defaultService
    "RegistrationCodeValidationException"
    Prelude.. Core.hasStatus 400

-- | The certificate operation is not allowed.
_CertificateStateException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_CertificateStateException =
  Core._MatchServiceError
    defaultService
    "CertificateStateException"
    Prelude.. Core.hasStatus 406

-- | The query is invalid.
_InvalidQueryException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidQueryException =
  Core._MatchServiceError
    defaultService
    "InvalidQueryException"
    Prelude.. Core.hasStatus 400

-- | A limit has been exceeded.
_LimitExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_LimitExceededException =
  Core._MatchServiceError
    defaultService
    "LimitExceededException"
    Prelude.. Core.hasStatus 410

-- | You can\'t revert the certificate transfer because the transfer is
-- already complete.
_TransferAlreadyCompletedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_TransferAlreadyCompletedException =
  Core._MatchServiceError
    defaultService
    "TransferAlreadyCompletedException"
    Prelude.. Core.hasStatus 410

-- | This exception occurs if you attempt to start a task with the same
-- task-id as an existing task but with a different clientRequestToken.
_TaskAlreadyExistsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_TaskAlreadyExistsException =
  Core._MatchServiceError
    defaultService
    "TaskAlreadyExistsException"
    Prelude.. Core.hasStatus 400

-- | A resource with the same name already exists.
_ConflictException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ConflictException =
  Core._MatchServiceError
    defaultService
    "ConflictException"
    Prelude.. Core.hasStatus 409

-- | The rate exceeds the limit.
_ThrottlingException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ThrottlingException =
  Core._MatchServiceError
    defaultService
    "ThrottlingException"
    Prelude.. Core.hasStatus 400

-- | An attempt was made to change to an invalid state, for example by
-- deleting a job or a job execution which is \"IN_PROGRESS\" without
-- setting the @force@ parameter.
_InvalidStateTransitionException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidStateTransitionException =
  Core._MatchServiceError
    defaultService
    "InvalidStateTransitionException"
    Prelude.. Core.hasStatus 409

-- | An unexpected error has occurred.
_InternalException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalException =
  Core._MatchServiceError
    defaultService
    "InternalException"
    Prelude.. Core.hasStatus 500

-- | The resource is not configured.
_NotConfiguredException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NotConfiguredException =
  Core._MatchServiceError
    defaultService
    "NotConfiguredException"
    Prelude.. Core.hasStatus 404

-- | The resource registration failed.
_ResourceRegistrationFailureException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceRegistrationFailureException =
  Core._MatchServiceError
    defaultService
    "ResourceRegistrationFailureException"
    Prelude.. Core.hasStatus 400

-- | You can\'t transfer the certificate because authorization policies are
-- still attached.
_TransferConflictException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_TransferConflictException =
  Core._MatchServiceError
    defaultService
    "TransferConflictException"
    Prelude.. Core.hasStatus 409

-- | You can\'t delete the resource because it is attached to one or more
-- resources.
_DeleteConflictException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_DeleteConflictException =
  Core._MatchServiceError
    defaultService
    "DeleteConflictException"
    Prelude.. Core.hasStatus 409

-- | The number of policy versions exceeds the limit.
_VersionsLimitExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_VersionsLimitExceededException =
  Core._MatchServiceError
    defaultService
    "VersionsLimitExceededException"
    Prelude.. Core.hasStatus 409

-- | An exception thrown when the version of an entity specified with the
-- @expectedVersion@ parameter does not match the latest version in the
-- system.
_VersionConflictException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_VersionConflictException =
  Core._MatchServiceError
    defaultService
    "VersionConflictException"
    Prelude.. Core.hasStatus 409

-- | The request is not valid.
_InvalidRequestException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidRequestException =
  Core._MatchServiceError
    defaultService
    "InvalidRequestException"
    Prelude.. Core.hasStatus 400

-- | The certificate is invalid.
_CertificateValidationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_CertificateValidationException =
  Core._MatchServiceError
    defaultService
    "CertificateValidationException"
    Prelude.. Core.hasStatus 400

-- | An unexpected error has occurred.
_InternalFailureException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalFailureException =
  Core._MatchServiceError
    defaultService
    "InternalFailureException"
    Prelude.. Core.hasStatus 500
