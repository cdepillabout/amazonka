{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Greengrass.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Greengrass.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _InternalServerErrorException,
    _BadRequestException,

    -- * BulkDeploymentStatus
    BulkDeploymentStatus (..),

    -- * ConfigurationSyncStatus
    ConfigurationSyncStatus (..),

    -- * DeploymentType
    DeploymentType (..),

    -- * EncodingType
    EncodingType (..),

    -- * FunctionIsolationMode
    FunctionIsolationMode (..),

    -- * LoggerComponent
    LoggerComponent (..),

    -- * LoggerLevel
    LoggerLevel (..),

    -- * LoggerType
    LoggerType (..),

    -- * Permission
    Permission (..),

    -- * SoftwareToUpdate
    SoftwareToUpdate (..),

    -- * Telemetry
    Telemetry (..),

    -- * UpdateAgentLogLevel
    UpdateAgentLogLevel (..),

    -- * UpdateTargetsArchitecture
    UpdateTargetsArchitecture (..),

    -- * UpdateTargetsOperatingSystem
    UpdateTargetsOperatingSystem (..),

    -- * BulkDeployment
    BulkDeployment (..),
    newBulkDeployment,
    bulkDeployment_bulkDeploymentArn,
    bulkDeployment_bulkDeploymentId,
    bulkDeployment_createdAt,

    -- * BulkDeploymentMetrics
    BulkDeploymentMetrics (..),
    newBulkDeploymentMetrics,
    bulkDeploymentMetrics_recordsProcessed,
    bulkDeploymentMetrics_retryAttempts,
    bulkDeploymentMetrics_invalidInputRecords,

    -- * BulkDeploymentResult
    BulkDeploymentResult (..),
    newBulkDeploymentResult,
    bulkDeploymentResult_deploymentStatus,
    bulkDeploymentResult_errorMessage,
    bulkDeploymentResult_deploymentId,
    bulkDeploymentResult_errorDetails,
    bulkDeploymentResult_deploymentType,
    bulkDeploymentResult_deploymentArn,
    bulkDeploymentResult_groupArn,
    bulkDeploymentResult_createdAt,

    -- * ConnectivityInfo
    ConnectivityInfo (..),
    newConnectivityInfo,
    connectivityInfo_portNumber,
    connectivityInfo_metadata,
    connectivityInfo_id,
    connectivityInfo_hostAddress,

    -- * Connector
    Connector (..),
    newConnector,
    connector_parameters,
    connector_connectorArn,
    connector_id,

    -- * ConnectorDefinitionVersion
    ConnectorDefinitionVersion (..),
    newConnectorDefinitionVersion,
    connectorDefinitionVersion_connectors,

    -- * Core
    Core (..),
    newCore,
    core_syncShadow,
    core_thingArn,
    core_id,
    core_certificateArn,

    -- * CoreDefinitionVersion
    CoreDefinitionVersion (..),
    newCoreDefinitionVersion,
    coreDefinitionVersion_cores,

    -- * DefinitionInformation
    DefinitionInformation (..),
    newDefinitionInformation,
    definitionInformation_tags,
    definitionInformation_lastUpdatedTimestamp,
    definitionInformation_name,
    definitionInformation_arn,
    definitionInformation_latestVersion,
    definitionInformation_id,
    definitionInformation_creationTimestamp,
    definitionInformation_latestVersionArn,

    -- * Deployment
    Deployment (..),
    newDeployment,
    deployment_deploymentId,
    deployment_deploymentType,
    deployment_deploymentArn,
    deployment_groupArn,
    deployment_createdAt,

    -- * Device
    Device (..),
    newDevice,
    device_syncShadow,
    device_thingArn,
    device_id,
    device_certificateArn,

    -- * DeviceDefinitionVersion
    DeviceDefinitionVersion (..),
    newDeviceDefinitionVersion,
    deviceDefinitionVersion_devices,

    -- * ErrorDetail
    ErrorDetail (..),
    newErrorDetail,
    errorDetail_detailedErrorCode,
    errorDetail_detailedErrorMessage,

    -- * Function
    Function (..),
    newFunction,
    function_functionArn,
    function_functionConfiguration,
    function_id,

    -- * FunctionConfiguration
    FunctionConfiguration (..),
    newFunctionConfiguration,
    functionConfiguration_timeout,
    functionConfiguration_memorySize,
    functionConfiguration_execArgs,
    functionConfiguration_environment,
    functionConfiguration_executable,
    functionConfiguration_pinned,
    functionConfiguration_encodingType,

    -- * FunctionConfigurationEnvironment
    FunctionConfigurationEnvironment (..),
    newFunctionConfigurationEnvironment,
    functionConfigurationEnvironment_resourceAccessPolicies,
    functionConfigurationEnvironment_execution,
    functionConfigurationEnvironment_accessSysfs,
    functionConfigurationEnvironment_variables,

    -- * FunctionDefaultConfig
    FunctionDefaultConfig (..),
    newFunctionDefaultConfig,
    functionDefaultConfig_execution,

    -- * FunctionDefaultExecutionConfig
    FunctionDefaultExecutionConfig (..),
    newFunctionDefaultExecutionConfig,
    functionDefaultExecutionConfig_isolationMode,
    functionDefaultExecutionConfig_runAs,

    -- * FunctionDefinitionVersion
    FunctionDefinitionVersion (..),
    newFunctionDefinitionVersion,
    functionDefinitionVersion_functions,
    functionDefinitionVersion_defaultConfig,

    -- * FunctionExecutionConfig
    FunctionExecutionConfig (..),
    newFunctionExecutionConfig,
    functionExecutionConfig_isolationMode,
    functionExecutionConfig_runAs,

    -- * FunctionRunAsConfig
    FunctionRunAsConfig (..),
    newFunctionRunAsConfig,
    functionRunAsConfig_gid,
    functionRunAsConfig_uid,

    -- * GreengrassLogger
    GreengrassLogger (..),
    newGreengrassLogger,
    greengrassLogger_space,
    greengrassLogger_type,
    greengrassLogger_level,
    greengrassLogger_id,
    greengrassLogger_component,

    -- * GroupCertificateAuthorityProperties
    GroupCertificateAuthorityProperties (..),
    newGroupCertificateAuthorityProperties,
    groupCertificateAuthorityProperties_groupCertificateAuthorityArn,
    groupCertificateAuthorityProperties_groupCertificateAuthorityId,

    -- * GroupInformation
    GroupInformation (..),
    newGroupInformation,
    groupInformation_lastUpdatedTimestamp,
    groupInformation_name,
    groupInformation_arn,
    groupInformation_latestVersion,
    groupInformation_id,
    groupInformation_creationTimestamp,
    groupInformation_latestVersionArn,

    -- * GroupOwnerSetting
    GroupOwnerSetting (..),
    newGroupOwnerSetting,
    groupOwnerSetting_autoAddGroupOwner,
    groupOwnerSetting_groupOwner,

    -- * GroupVersion
    GroupVersion (..),
    newGroupVersion,
    groupVersion_resourceDefinitionVersionArn,
    groupVersion_functionDefinitionVersionArn,
    groupVersion_subscriptionDefinitionVersionArn,
    groupVersion_connectorDefinitionVersionArn,
    groupVersion_loggerDefinitionVersionArn,
    groupVersion_coreDefinitionVersionArn,
    groupVersion_deviceDefinitionVersionArn,

    -- * LocalDeviceResourceData
    LocalDeviceResourceData (..),
    newLocalDeviceResourceData,
    localDeviceResourceData_groupOwnerSetting,
    localDeviceResourceData_sourcePath,

    -- * LocalVolumeResourceData
    LocalVolumeResourceData (..),
    newLocalVolumeResourceData,
    localVolumeResourceData_destinationPath,
    localVolumeResourceData_groupOwnerSetting,
    localVolumeResourceData_sourcePath,

    -- * LoggerDefinitionVersion
    LoggerDefinitionVersion (..),
    newLoggerDefinitionVersion,
    loggerDefinitionVersion_loggers,

    -- * Resource
    Resource (..),
    newResource,
    resource_resourceDataContainer,
    resource_id,
    resource_name,

    -- * ResourceAccessPolicy
    ResourceAccessPolicy (..),
    newResourceAccessPolicy,
    resourceAccessPolicy_permission,
    resourceAccessPolicy_resourceId,

    -- * ResourceDataContainer
    ResourceDataContainer (..),
    newResourceDataContainer,
    resourceDataContainer_localVolumeResourceData,
    resourceDataContainer_secretsManagerSecretResourceData,
    resourceDataContainer_s3MachineLearningModelResourceData,
    resourceDataContainer_sageMakerMachineLearningModelResourceData,
    resourceDataContainer_localDeviceResourceData,

    -- * ResourceDefinitionVersion
    ResourceDefinitionVersion (..),
    newResourceDefinitionVersion,
    resourceDefinitionVersion_resources,

    -- * ResourceDownloadOwnerSetting
    ResourceDownloadOwnerSetting (..),
    newResourceDownloadOwnerSetting,
    resourceDownloadOwnerSetting_groupOwner,
    resourceDownloadOwnerSetting_groupPermission,

    -- * RuntimeConfiguration
    RuntimeConfiguration (..),
    newRuntimeConfiguration,
    runtimeConfiguration_telemetryConfiguration,

    -- * S3MachineLearningModelResourceData
    S3MachineLearningModelResourceData (..),
    newS3MachineLearningModelResourceData,
    s3MachineLearningModelResourceData_destinationPath,
    s3MachineLearningModelResourceData_ownerSetting,
    s3MachineLearningModelResourceData_s3Uri,

    -- * SageMakerMachineLearningModelResourceData
    SageMakerMachineLearningModelResourceData (..),
    newSageMakerMachineLearningModelResourceData,
    sageMakerMachineLearningModelResourceData_destinationPath,
    sageMakerMachineLearningModelResourceData_sageMakerJobArn,
    sageMakerMachineLearningModelResourceData_ownerSetting,

    -- * SecretsManagerSecretResourceData
    SecretsManagerSecretResourceData (..),
    newSecretsManagerSecretResourceData,
    secretsManagerSecretResourceData_additionalStagingLabelsToDownload,
    secretsManagerSecretResourceData_arn,

    -- * Subscription
    Subscription (..),
    newSubscription,
    subscription_target,
    subscription_id,
    subscription_subject,
    subscription_source,

    -- * SubscriptionDefinitionVersion
    SubscriptionDefinitionVersion (..),
    newSubscriptionDefinitionVersion,
    subscriptionDefinitionVersion_subscriptions,

    -- * TelemetryConfiguration
    TelemetryConfiguration (..),
    newTelemetryConfiguration,
    telemetryConfiguration_configurationSyncStatus,
    telemetryConfiguration_telemetry,

    -- * TelemetryConfigurationUpdate
    TelemetryConfigurationUpdate (..),
    newTelemetryConfigurationUpdate,
    telemetryConfigurationUpdate_telemetry,

    -- * VersionInformation
    VersionInformation (..),
    newVersionInformation,
    versionInformation_arn,
    versionInformation_id,
    versionInformation_creationTimestamp,
    versionInformation_version,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.Greengrass.Types.BulkDeployment
import Amazonka.Greengrass.Types.BulkDeploymentMetrics
import Amazonka.Greengrass.Types.BulkDeploymentResult
import Amazonka.Greengrass.Types.BulkDeploymentStatus
import Amazonka.Greengrass.Types.ConfigurationSyncStatus
import Amazonka.Greengrass.Types.ConnectivityInfo
import Amazonka.Greengrass.Types.Connector
import Amazonka.Greengrass.Types.ConnectorDefinitionVersion
import Amazonka.Greengrass.Types.Core
import Amazonka.Greengrass.Types.CoreDefinitionVersion
import Amazonka.Greengrass.Types.DefinitionInformation
import Amazonka.Greengrass.Types.Deployment
import Amazonka.Greengrass.Types.DeploymentType
import Amazonka.Greengrass.Types.Device
import Amazonka.Greengrass.Types.DeviceDefinitionVersion
import Amazonka.Greengrass.Types.EncodingType
import Amazonka.Greengrass.Types.ErrorDetail
import Amazonka.Greengrass.Types.Function
import Amazonka.Greengrass.Types.FunctionConfiguration
import Amazonka.Greengrass.Types.FunctionConfigurationEnvironment
import Amazonka.Greengrass.Types.FunctionDefaultConfig
import Amazonka.Greengrass.Types.FunctionDefaultExecutionConfig
import Amazonka.Greengrass.Types.FunctionDefinitionVersion
import Amazonka.Greengrass.Types.FunctionExecutionConfig
import Amazonka.Greengrass.Types.FunctionIsolationMode
import Amazonka.Greengrass.Types.FunctionRunAsConfig
import Amazonka.Greengrass.Types.GreengrassLogger
import Amazonka.Greengrass.Types.GroupCertificateAuthorityProperties
import Amazonka.Greengrass.Types.GroupInformation
import Amazonka.Greengrass.Types.GroupOwnerSetting
import Amazonka.Greengrass.Types.GroupVersion
import Amazonka.Greengrass.Types.LocalDeviceResourceData
import Amazonka.Greengrass.Types.LocalVolumeResourceData
import Amazonka.Greengrass.Types.LoggerComponent
import Amazonka.Greengrass.Types.LoggerDefinitionVersion
import Amazonka.Greengrass.Types.LoggerLevel
import Amazonka.Greengrass.Types.LoggerType
import Amazonka.Greengrass.Types.Permission
import Amazonka.Greengrass.Types.Resource
import Amazonka.Greengrass.Types.ResourceAccessPolicy
import Amazonka.Greengrass.Types.ResourceDataContainer
import Amazonka.Greengrass.Types.ResourceDefinitionVersion
import Amazonka.Greengrass.Types.ResourceDownloadOwnerSetting
import Amazonka.Greengrass.Types.RuntimeConfiguration
import Amazonka.Greengrass.Types.S3MachineLearningModelResourceData
import Amazonka.Greengrass.Types.SageMakerMachineLearningModelResourceData
import Amazonka.Greengrass.Types.SecretsManagerSecretResourceData
import Amazonka.Greengrass.Types.SoftwareToUpdate
import Amazonka.Greengrass.Types.Subscription
import Amazonka.Greengrass.Types.SubscriptionDefinitionVersion
import Amazonka.Greengrass.Types.Telemetry
import Amazonka.Greengrass.Types.TelemetryConfiguration
import Amazonka.Greengrass.Types.TelemetryConfigurationUpdate
import Amazonka.Greengrass.Types.UpdateAgentLogLevel
import Amazonka.Greengrass.Types.UpdateTargetsArchitecture
import Amazonka.Greengrass.Types.UpdateTargetsOperatingSystem
import Amazonka.Greengrass.Types.VersionInformation
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2017-06-07@ of the Amazon Greengrass SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "Greengrass",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "greengrass",
      Core._serviceSigningName = "greengrass",
      Core._serviceVersion = "2017-06-07",
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError =
        Core.parseJSONError "Greengrass",
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

-- | General error information.
_InternalServerErrorException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalServerErrorException =
  Core._MatchServiceError
    defaultService
    "InternalServerErrorException"
    Prelude.. Core.hasStatus 500

-- | General error information.
_BadRequestException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_BadRequestException =
  Core._MatchServiceError
    defaultService
    "BadRequestException"
    Prelude.. Core.hasStatus 400
