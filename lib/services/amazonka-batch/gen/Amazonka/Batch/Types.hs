{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Batch.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Batch.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _ClientException,
    _ServerException,

    -- * ArrayJobDependency
    ArrayJobDependency (..),

    -- * AssignPublicIp
    AssignPublicIp (..),

    -- * CEState
    CEState (..),

    -- * CEStatus
    CEStatus (..),

    -- * CEType
    CEType (..),

    -- * CRAllocationStrategy
    CRAllocationStrategy (..),

    -- * CRType
    CRType (..),

    -- * CRUpdateAllocationStrategy
    CRUpdateAllocationStrategy (..),

    -- * DeviceCgroupPermission
    DeviceCgroupPermission (..),

    -- * EFSAuthorizationConfigIAM
    EFSAuthorizationConfigIAM (..),

    -- * EFSTransitEncryption
    EFSTransitEncryption (..),

    -- * JQState
    JQState (..),

    -- * JQStatus
    JQStatus (..),

    -- * JobDefinitionType
    JobDefinitionType (..),

    -- * JobStatus
    JobStatus (..),

    -- * LogDriver
    LogDriver (..),

    -- * PlatformCapability
    PlatformCapability (..),

    -- * ResourceType
    ResourceType (..),

    -- * RetryAction
    RetryAction (..),

    -- * ArrayProperties
    ArrayProperties (..),
    newArrayProperties,
    arrayProperties_size,

    -- * ArrayPropertiesDetail
    ArrayPropertiesDetail (..),
    newArrayPropertiesDetail,
    arrayPropertiesDetail_index,
    arrayPropertiesDetail_size,
    arrayPropertiesDetail_statusSummary,

    -- * ArrayPropertiesSummary
    ArrayPropertiesSummary (..),
    newArrayPropertiesSummary,
    arrayPropertiesSummary_index,
    arrayPropertiesSummary_size,

    -- * AttemptContainerDetail
    AttemptContainerDetail (..),
    newAttemptContainerDetail,
    attemptContainerDetail_taskArn,
    attemptContainerDetail_reason,
    attemptContainerDetail_containerInstanceArn,
    attemptContainerDetail_exitCode,
    attemptContainerDetail_logStreamName,
    attemptContainerDetail_networkInterfaces,

    -- * AttemptDetail
    AttemptDetail (..),
    newAttemptDetail,
    attemptDetail_statusReason,
    attemptDetail_startedAt,
    attemptDetail_container,
    attemptDetail_stoppedAt,

    -- * ComputeEnvironmentDetail
    ComputeEnvironmentDetail (..),
    newComputeEnvironmentDetail,
    computeEnvironmentDetail_tags,
    computeEnvironmentDetail_type,
    computeEnvironmentDetail_ecsClusterArn,
    computeEnvironmentDetail_statusReason,
    computeEnvironmentDetail_state,
    computeEnvironmentDetail_status,
    computeEnvironmentDetail_serviceRole,
    computeEnvironmentDetail_updatePolicy,
    computeEnvironmentDetail_computeResources,
    computeEnvironmentDetail_unmanagedvCpus,
    computeEnvironmentDetail_computeEnvironmentName,
    computeEnvironmentDetail_computeEnvironmentArn,

    -- * ComputeEnvironmentOrder
    ComputeEnvironmentOrder (..),
    newComputeEnvironmentOrder,
    computeEnvironmentOrder_order,
    computeEnvironmentOrder_computeEnvironment,

    -- * ComputeResource
    ComputeResource (..),
    newComputeResource,
    computeResource_tags,
    computeResource_ec2KeyPair,
    computeResource_ec2Configuration,
    computeResource_minvCpus,
    computeResource_instanceTypes,
    computeResource_securityGroupIds,
    computeResource_desiredvCpus,
    computeResource_launchTemplate,
    computeResource_bidPercentage,
    computeResource_spotIamFleetRole,
    computeResource_instanceRole,
    computeResource_allocationStrategy,
    computeResource_placementGroup,
    computeResource_imageId,
    computeResource_type,
    computeResource_maxvCpus,
    computeResource_subnets,

    -- * ComputeResourceUpdate
    ComputeResourceUpdate (..),
    newComputeResourceUpdate,
    computeResourceUpdate_tags,
    computeResourceUpdate_updateToLatestImageVersion,
    computeResourceUpdate_ec2KeyPair,
    computeResourceUpdate_type,
    computeResourceUpdate_ec2Configuration,
    computeResourceUpdate_minvCpus,
    computeResourceUpdate_instanceTypes,
    computeResourceUpdate_securityGroupIds,
    computeResourceUpdate_desiredvCpus,
    computeResourceUpdate_maxvCpus,
    computeResourceUpdate_subnets,
    computeResourceUpdate_launchTemplate,
    computeResourceUpdate_bidPercentage,
    computeResourceUpdate_instanceRole,
    computeResourceUpdate_allocationStrategy,
    computeResourceUpdate_placementGroup,
    computeResourceUpdate_imageId,

    -- * ContainerDetail
    ContainerDetail (..),
    newContainerDetail,
    containerDetail_readonlyRootFilesystem,
    containerDetail_environment,
    containerDetail_logConfiguration,
    containerDetail_resourceRequirements,
    containerDetail_memory,
    containerDetail_user,
    containerDetail_taskArn,
    containerDetail_ulimits,
    containerDetail_jobRoleArn,
    containerDetail_fargatePlatformConfiguration,
    containerDetail_command,
    containerDetail_networkConfiguration,
    containerDetail_secrets,
    containerDetail_instanceType,
    containerDetail_volumes,
    containerDetail_privileged,
    containerDetail_reason,
    containerDetail_containerInstanceArn,
    containerDetail_vcpus,
    containerDetail_exitCode,
    containerDetail_executionRoleArn,
    containerDetail_mountPoints,
    containerDetail_logStreamName,
    containerDetail_image,
    containerDetail_linuxParameters,
    containerDetail_networkInterfaces,

    -- * ContainerOverrides
    ContainerOverrides (..),
    newContainerOverrides,
    containerOverrides_environment,
    containerOverrides_resourceRequirements,
    containerOverrides_memory,
    containerOverrides_command,
    containerOverrides_instanceType,
    containerOverrides_vcpus,

    -- * ContainerProperties
    ContainerProperties (..),
    newContainerProperties,
    containerProperties_readonlyRootFilesystem,
    containerProperties_environment,
    containerProperties_logConfiguration,
    containerProperties_resourceRequirements,
    containerProperties_memory,
    containerProperties_user,
    containerProperties_ulimits,
    containerProperties_jobRoleArn,
    containerProperties_fargatePlatformConfiguration,
    containerProperties_command,
    containerProperties_networkConfiguration,
    containerProperties_secrets,
    containerProperties_instanceType,
    containerProperties_volumes,
    containerProperties_privileged,
    containerProperties_vcpus,
    containerProperties_executionRoleArn,
    containerProperties_mountPoints,
    containerProperties_image,
    containerProperties_linuxParameters,

    -- * ContainerSummary
    ContainerSummary (..),
    newContainerSummary,
    containerSummary_reason,
    containerSummary_exitCode,

    -- * Device
    Device (..),
    newDevice,
    device_permissions,
    device_containerPath,
    device_hostPath,

    -- * EFSAuthorizationConfig
    EFSAuthorizationConfig (..),
    newEFSAuthorizationConfig,
    eFSAuthorizationConfig_iam,
    eFSAuthorizationConfig_accessPointId,

    -- * EFSVolumeConfiguration
    EFSVolumeConfiguration (..),
    newEFSVolumeConfiguration,
    eFSVolumeConfiguration_transitEncryptionPort,
    eFSVolumeConfiguration_rootDirectory,
    eFSVolumeConfiguration_transitEncryption,
    eFSVolumeConfiguration_authorizationConfig,
    eFSVolumeConfiguration_fileSystemId,

    -- * Ec2Configuration
    Ec2Configuration (..),
    newEc2Configuration,
    ec2Configuration_imageIdOverride,
    ec2Configuration_imageType,

    -- * EvaluateOnExit
    EvaluateOnExit (..),
    newEvaluateOnExit,
    evaluateOnExit_onReason,
    evaluateOnExit_onExitCode,
    evaluateOnExit_onStatusReason,
    evaluateOnExit_action,

    -- * FairsharePolicy
    FairsharePolicy (..),
    newFairsharePolicy,
    fairsharePolicy_shareDistribution,
    fairsharePolicy_shareDecaySeconds,
    fairsharePolicy_computeReservation,

    -- * FargatePlatformConfiguration
    FargatePlatformConfiguration (..),
    newFargatePlatformConfiguration,
    fargatePlatformConfiguration_platformVersion,

    -- * Host
    Host (..),
    newHost,
    host_sourcePath,

    -- * JobDefinition
    JobDefinition (..),
    newJobDefinition,
    jobDefinition_tags,
    jobDefinition_timeout,
    jobDefinition_containerProperties,
    jobDefinition_retryStrategy,
    jobDefinition_platformCapabilities,
    jobDefinition_status,
    jobDefinition_propagateTags,
    jobDefinition_nodeProperties,
    jobDefinition_schedulingPriority,
    jobDefinition_parameters,
    jobDefinition_jobDefinitionName,
    jobDefinition_jobDefinitionArn,
    jobDefinition_revision,
    jobDefinition_type,

    -- * JobDependency
    JobDependency (..),
    newJobDependency,
    jobDependency_type,
    jobDependency_jobId,

    -- * JobDetail
    JobDetail (..),
    newJobDetail,
    jobDetail_tags,
    jobDetail_timeout,
    jobDetail_dependsOn,
    jobDetail_shareIdentifier,
    jobDetail_retryStrategy,
    jobDetail_platformCapabilities,
    jobDetail_arrayProperties,
    jobDetail_nodeDetails,
    jobDetail_statusReason,
    jobDetail_startedAt,
    jobDetail_propagateTags,
    jobDetail_nodeProperties,
    jobDetail_container,
    jobDetail_schedulingPriority,
    jobDetail_attempts,
    jobDetail_stoppedAt,
    jobDetail_jobArn,
    jobDetail_createdAt,
    jobDetail_parameters,
    jobDetail_jobName,
    jobDetail_jobId,
    jobDetail_jobQueue,
    jobDetail_status,
    jobDetail_jobDefinition,

    -- * JobQueueDetail
    JobQueueDetail (..),
    newJobQueueDetail,
    jobQueueDetail_tags,
    jobQueueDetail_statusReason,
    jobQueueDetail_status,
    jobQueueDetail_schedulingPolicyArn,
    jobQueueDetail_jobQueueName,
    jobQueueDetail_jobQueueArn,
    jobQueueDetail_state,
    jobQueueDetail_priority,
    jobQueueDetail_computeEnvironmentOrder,

    -- * JobSummary
    JobSummary (..),
    newJobSummary,
    jobSummary_arrayProperties,
    jobSummary_statusReason,
    jobSummary_jobDefinition,
    jobSummary_status,
    jobSummary_startedAt,
    jobSummary_nodeProperties,
    jobSummary_container,
    jobSummary_stoppedAt,
    jobSummary_jobArn,
    jobSummary_createdAt,
    jobSummary_jobId,
    jobSummary_jobName,

    -- * JobTimeout
    JobTimeout (..),
    newJobTimeout,
    jobTimeout_attemptDurationSeconds,

    -- * KeyValuePair
    KeyValuePair (..),
    newKeyValuePair,
    keyValuePair_name,
    keyValuePair_value,

    -- * KeyValuesPair
    KeyValuesPair (..),
    newKeyValuesPair,
    keyValuesPair_name,
    keyValuesPair_values,

    -- * LaunchTemplateSpecification
    LaunchTemplateSpecification (..),
    newLaunchTemplateSpecification,
    launchTemplateSpecification_launchTemplateId,
    launchTemplateSpecification_version,
    launchTemplateSpecification_launchTemplateName,

    -- * LinuxParameters
    LinuxParameters (..),
    newLinuxParameters,
    linuxParameters_devices,
    linuxParameters_swappiness,
    linuxParameters_tmpfs,
    linuxParameters_initProcessEnabled,
    linuxParameters_maxSwap,
    linuxParameters_sharedMemorySize,

    -- * LogConfiguration
    LogConfiguration (..),
    newLogConfiguration,
    logConfiguration_secretOptions,
    logConfiguration_options,
    logConfiguration_logDriver,

    -- * MountPoint
    MountPoint (..),
    newMountPoint,
    mountPoint_sourceVolume,
    mountPoint_containerPath,
    mountPoint_readOnly,

    -- * NetworkConfiguration
    NetworkConfiguration (..),
    newNetworkConfiguration,
    networkConfiguration_assignPublicIp,

    -- * NetworkInterface
    NetworkInterface (..),
    newNetworkInterface,
    networkInterface_attachmentId,
    networkInterface_ipv6Address,
    networkInterface_privateIpv4Address,

    -- * NodeDetails
    NodeDetails (..),
    newNodeDetails,
    nodeDetails_isMainNode,
    nodeDetails_nodeIndex,

    -- * NodeOverrides
    NodeOverrides (..),
    newNodeOverrides,
    nodeOverrides_numNodes,
    nodeOverrides_nodePropertyOverrides,

    -- * NodeProperties
    NodeProperties (..),
    newNodeProperties,
    nodeProperties_numNodes,
    nodeProperties_mainNode,
    nodeProperties_nodeRangeProperties,

    -- * NodePropertiesSummary
    NodePropertiesSummary (..),
    newNodePropertiesSummary,
    nodePropertiesSummary_isMainNode,
    nodePropertiesSummary_nodeIndex,
    nodePropertiesSummary_numNodes,

    -- * NodePropertyOverride
    NodePropertyOverride (..),
    newNodePropertyOverride,
    nodePropertyOverride_containerOverrides,
    nodePropertyOverride_targetNodes,

    -- * NodeRangeProperty
    NodeRangeProperty (..),
    newNodeRangeProperty,
    nodeRangeProperty_container,
    nodeRangeProperty_targetNodes,

    -- * ResourceRequirement
    ResourceRequirement (..),
    newResourceRequirement,
    resourceRequirement_value,
    resourceRequirement_type,

    -- * RetryStrategy
    RetryStrategy (..),
    newRetryStrategy,
    retryStrategy_evaluateOnExit,
    retryStrategy_attempts,

    -- * SchedulingPolicyDetail
    SchedulingPolicyDetail (..),
    newSchedulingPolicyDetail,
    schedulingPolicyDetail_tags,
    schedulingPolicyDetail_fairsharePolicy,
    schedulingPolicyDetail_name,
    schedulingPolicyDetail_arn,

    -- * SchedulingPolicyListingDetail
    SchedulingPolicyListingDetail (..),
    newSchedulingPolicyListingDetail,
    schedulingPolicyListingDetail_arn,

    -- * Secret
    Secret (..),
    newSecret,
    secret_name,
    secret_valueFrom,

    -- * ShareAttributes
    ShareAttributes (..),
    newShareAttributes,
    shareAttributes_weightFactor,
    shareAttributes_shareIdentifier,

    -- * Tmpfs
    Tmpfs (..),
    newTmpfs,
    tmpfs_mountOptions,
    tmpfs_containerPath,
    tmpfs_size,

    -- * Ulimit
    Ulimit (..),
    newUlimit,
    ulimit_hardLimit,
    ulimit_name,
    ulimit_softLimit,

    -- * UpdatePolicy
    UpdatePolicy (..),
    newUpdatePolicy,
    updatePolicy_terminateJobsOnUpdate,
    updatePolicy_jobExecutionTimeoutMinutes,

    -- * Volume
    Volume (..),
    newVolume,
    volume_efsVolumeConfiguration,
    volume_name,
    volume_host,
  )
where

import Amazonka.Batch.Types.ArrayJobDependency
import Amazonka.Batch.Types.ArrayProperties
import Amazonka.Batch.Types.ArrayPropertiesDetail
import Amazonka.Batch.Types.ArrayPropertiesSummary
import Amazonka.Batch.Types.AssignPublicIp
import Amazonka.Batch.Types.AttemptContainerDetail
import Amazonka.Batch.Types.AttemptDetail
import Amazonka.Batch.Types.CEState
import Amazonka.Batch.Types.CEStatus
import Amazonka.Batch.Types.CEType
import Amazonka.Batch.Types.CRAllocationStrategy
import Amazonka.Batch.Types.CRType
import Amazonka.Batch.Types.CRUpdateAllocationStrategy
import Amazonka.Batch.Types.ComputeEnvironmentDetail
import Amazonka.Batch.Types.ComputeEnvironmentOrder
import Amazonka.Batch.Types.ComputeResource
import Amazonka.Batch.Types.ComputeResourceUpdate
import Amazonka.Batch.Types.ContainerDetail
import Amazonka.Batch.Types.ContainerOverrides
import Amazonka.Batch.Types.ContainerProperties
import Amazonka.Batch.Types.ContainerSummary
import Amazonka.Batch.Types.Device
import Amazonka.Batch.Types.DeviceCgroupPermission
import Amazonka.Batch.Types.EFSAuthorizationConfig
import Amazonka.Batch.Types.EFSAuthorizationConfigIAM
import Amazonka.Batch.Types.EFSTransitEncryption
import Amazonka.Batch.Types.EFSVolumeConfiguration
import Amazonka.Batch.Types.Ec2Configuration
import Amazonka.Batch.Types.EvaluateOnExit
import Amazonka.Batch.Types.FairsharePolicy
import Amazonka.Batch.Types.FargatePlatformConfiguration
import Amazonka.Batch.Types.Host
import Amazonka.Batch.Types.JQState
import Amazonka.Batch.Types.JQStatus
import Amazonka.Batch.Types.JobDefinition
import Amazonka.Batch.Types.JobDefinitionType
import Amazonka.Batch.Types.JobDependency
import Amazonka.Batch.Types.JobDetail
import Amazonka.Batch.Types.JobQueueDetail
import Amazonka.Batch.Types.JobStatus
import Amazonka.Batch.Types.JobSummary
import Amazonka.Batch.Types.JobTimeout
import Amazonka.Batch.Types.KeyValuePair
import Amazonka.Batch.Types.KeyValuesPair
import Amazonka.Batch.Types.LaunchTemplateSpecification
import Amazonka.Batch.Types.LinuxParameters
import Amazonka.Batch.Types.LogConfiguration
import Amazonka.Batch.Types.LogDriver
import Amazonka.Batch.Types.MountPoint
import Amazonka.Batch.Types.NetworkConfiguration
import Amazonka.Batch.Types.NetworkInterface
import Amazonka.Batch.Types.NodeDetails
import Amazonka.Batch.Types.NodeOverrides
import Amazonka.Batch.Types.NodeProperties
import Amazonka.Batch.Types.NodePropertiesSummary
import Amazonka.Batch.Types.NodePropertyOverride
import Amazonka.Batch.Types.NodeRangeProperty
import Amazonka.Batch.Types.PlatformCapability
import Amazonka.Batch.Types.ResourceRequirement
import Amazonka.Batch.Types.ResourceType
import Amazonka.Batch.Types.RetryAction
import Amazonka.Batch.Types.RetryStrategy
import Amazonka.Batch.Types.SchedulingPolicyDetail
import Amazonka.Batch.Types.SchedulingPolicyListingDetail
import Amazonka.Batch.Types.Secret
import Amazonka.Batch.Types.ShareAttributes
import Amazonka.Batch.Types.Tmpfs
import Amazonka.Batch.Types.Ulimit
import Amazonka.Batch.Types.UpdatePolicy
import Amazonka.Batch.Types.Volume
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2016-08-10@ of the Amazon Batch SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "Batch",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "batch",
      Core._serviceSigningName = "batch",
      Core._serviceVersion = "2016-08-10",
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError = Core.parseJSONError "Batch",
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

-- | These errors are usually caused by a client action, such as using an
-- action or resource on behalf of a user that doesn\'t have permissions to
-- use the action or resource, or specifying an identifier that\'s not
-- valid.
_ClientException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ClientException =
  Core._MatchServiceError
    defaultService
    "ClientException"
    Prelude.. Core.hasStatus 400

-- | These errors are usually caused by a server issue.
_ServerException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ServerException =
  Core._MatchServiceError
    defaultService
    "ServerException"
    Prelude.. Core.hasStatus 500
