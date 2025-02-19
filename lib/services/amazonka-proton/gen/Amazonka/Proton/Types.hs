{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Proton.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Proton.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _AccessDeniedException,
    _InternalServerException,
    _ServiceQuotaExceededException,
    _ResourceNotFoundException,
    _ConflictException,
    _ThrottlingException,
    _ValidationException,

    -- * ComponentDeploymentUpdateType
    ComponentDeploymentUpdateType (..),

    -- * DeploymentStatus
    DeploymentStatus (..),

    -- * DeploymentUpdateType
    DeploymentUpdateType (..),

    -- * EnvironmentAccountConnectionRequesterAccountType
    EnvironmentAccountConnectionRequesterAccountType (..),

    -- * EnvironmentAccountConnectionStatus
    EnvironmentAccountConnectionStatus (..),

    -- * ProvisionedResourceEngine
    ProvisionedResourceEngine (..),

    -- * Provisioning
    Provisioning (..),

    -- * RepositoryProvider
    RepositoryProvider (..),

    -- * RepositorySyncStatus
    RepositorySyncStatus (..),

    -- * ResourceDeploymentStatus
    ResourceDeploymentStatus (..),

    -- * ResourceSyncStatus
    ResourceSyncStatus (..),

    -- * ServiceStatus
    ServiceStatus (..),

    -- * ServiceTemplateSupportedComponentSourceType
    ServiceTemplateSupportedComponentSourceType (..),

    -- * SyncType
    SyncType (..),

    -- * TemplateType
    TemplateType (..),

    -- * TemplateVersionStatus
    TemplateVersionStatus (..),

    -- * AccountSettings
    AccountSettings (..),
    newAccountSettings,
    accountSettings_pipelineProvisioningRepository,
    accountSettings_pipelineServiceRoleArn,

    -- * CompatibleEnvironmentTemplate
    CompatibleEnvironmentTemplate (..),
    newCompatibleEnvironmentTemplate,
    compatibleEnvironmentTemplate_majorVersion,
    compatibleEnvironmentTemplate_templateName,

    -- * CompatibleEnvironmentTemplateInput
    CompatibleEnvironmentTemplateInput (..),
    newCompatibleEnvironmentTemplateInput,
    compatibleEnvironmentTemplateInput_majorVersion,
    compatibleEnvironmentTemplateInput_templateName,

    -- * Component
    Component (..),
    newComponent,
    component_lastDeploymentAttemptedAt,
    component_serviceSpec,
    component_description,
    component_deploymentStatusMessage,
    component_serviceName,
    component_serviceInstanceName,
    component_lastDeploymentSucceededAt,
    component_arn,
    component_createdAt,
    component_deploymentStatus,
    component_environmentName,
    component_lastModifiedAt,
    component_name,

    -- * ComponentSummary
    ComponentSummary (..),
    newComponentSummary,
    componentSummary_lastDeploymentAttemptedAt,
    componentSummary_deploymentStatusMessage,
    componentSummary_serviceName,
    componentSummary_serviceInstanceName,
    componentSummary_lastDeploymentSucceededAt,
    componentSummary_arn,
    componentSummary_createdAt,
    componentSummary_deploymentStatus,
    componentSummary_environmentName,
    componentSummary_lastModifiedAt,
    componentSummary_name,

    -- * Environment
    Environment (..),
    newEnvironment,
    environment_provisioning,
    environment_provisioningRepository,
    environment_description,
    environment_deploymentStatusMessage,
    environment_spec,
    environment_protonServiceRoleArn,
    environment_environmentAccountId,
    environment_componentRoleArn,
    environment_environmentAccountConnectionId,
    environment_arn,
    environment_createdAt,
    environment_deploymentStatus,
    environment_lastDeploymentAttemptedAt,
    environment_lastDeploymentSucceededAt,
    environment_name,
    environment_templateMajorVersion,
    environment_templateMinorVersion,
    environment_templateName,

    -- * EnvironmentAccountConnection
    EnvironmentAccountConnection (..),
    newEnvironmentAccountConnection,
    environmentAccountConnection_componentRoleArn,
    environmentAccountConnection_arn,
    environmentAccountConnection_environmentAccountId,
    environmentAccountConnection_environmentName,
    environmentAccountConnection_id,
    environmentAccountConnection_lastModifiedAt,
    environmentAccountConnection_managementAccountId,
    environmentAccountConnection_requestedAt,
    environmentAccountConnection_roleArn,
    environmentAccountConnection_status,

    -- * EnvironmentAccountConnectionSummary
    EnvironmentAccountConnectionSummary (..),
    newEnvironmentAccountConnectionSummary,
    environmentAccountConnectionSummary_componentRoleArn,
    environmentAccountConnectionSummary_arn,
    environmentAccountConnectionSummary_environmentAccountId,
    environmentAccountConnectionSummary_environmentName,
    environmentAccountConnectionSummary_id,
    environmentAccountConnectionSummary_lastModifiedAt,
    environmentAccountConnectionSummary_managementAccountId,
    environmentAccountConnectionSummary_requestedAt,
    environmentAccountConnectionSummary_roleArn,
    environmentAccountConnectionSummary_status,

    -- * EnvironmentSummary
    EnvironmentSummary (..),
    newEnvironmentSummary,
    environmentSummary_provisioning,
    environmentSummary_description,
    environmentSummary_deploymentStatusMessage,
    environmentSummary_protonServiceRoleArn,
    environmentSummary_environmentAccountId,
    environmentSummary_componentRoleArn,
    environmentSummary_environmentAccountConnectionId,
    environmentSummary_arn,
    environmentSummary_createdAt,
    environmentSummary_deploymentStatus,
    environmentSummary_lastDeploymentAttemptedAt,
    environmentSummary_lastDeploymentSucceededAt,
    environmentSummary_name,
    environmentSummary_templateMajorVersion,
    environmentSummary_templateMinorVersion,
    environmentSummary_templateName,

    -- * EnvironmentTemplate
    EnvironmentTemplate (..),
    newEnvironmentTemplate,
    environmentTemplate_recommendedVersion,
    environmentTemplate_provisioning,
    environmentTemplate_displayName,
    environmentTemplate_description,
    environmentTemplate_encryptionKey,
    environmentTemplate_arn,
    environmentTemplate_createdAt,
    environmentTemplate_lastModifiedAt,
    environmentTemplate_name,

    -- * EnvironmentTemplateFilter
    EnvironmentTemplateFilter (..),
    newEnvironmentTemplateFilter,
    environmentTemplateFilter_majorVersion,
    environmentTemplateFilter_templateName,

    -- * EnvironmentTemplateSummary
    EnvironmentTemplateSummary (..),
    newEnvironmentTemplateSummary,
    environmentTemplateSummary_recommendedVersion,
    environmentTemplateSummary_provisioning,
    environmentTemplateSummary_displayName,
    environmentTemplateSummary_description,
    environmentTemplateSummary_arn,
    environmentTemplateSummary_createdAt,
    environmentTemplateSummary_lastModifiedAt,
    environmentTemplateSummary_name,

    -- * EnvironmentTemplateVersion
    EnvironmentTemplateVersion (..),
    newEnvironmentTemplateVersion,
    environmentTemplateVersion_description,
    environmentTemplateVersion_recommendedMinorVersion,
    environmentTemplateVersion_schema,
    environmentTemplateVersion_statusMessage,
    environmentTemplateVersion_arn,
    environmentTemplateVersion_createdAt,
    environmentTemplateVersion_lastModifiedAt,
    environmentTemplateVersion_majorVersion,
    environmentTemplateVersion_minorVersion,
    environmentTemplateVersion_status,
    environmentTemplateVersion_templateName,

    -- * EnvironmentTemplateVersionSummary
    EnvironmentTemplateVersionSummary (..),
    newEnvironmentTemplateVersionSummary,
    environmentTemplateVersionSummary_description,
    environmentTemplateVersionSummary_recommendedMinorVersion,
    environmentTemplateVersionSummary_statusMessage,
    environmentTemplateVersionSummary_arn,
    environmentTemplateVersionSummary_createdAt,
    environmentTemplateVersionSummary_lastModifiedAt,
    environmentTemplateVersionSummary_majorVersion,
    environmentTemplateVersionSummary_minorVersion,
    environmentTemplateVersionSummary_status,
    environmentTemplateVersionSummary_templateName,

    -- * Output
    Output (..),
    newOutput,
    output_key,
    output_valueString,

    -- * ProvisionedResource
    ProvisionedResource (..),
    newProvisionedResource,
    provisionedResource_provisioningEngine,
    provisionedResource_name,
    provisionedResource_identifier,

    -- * Repository
    Repository (..),
    newRepository,
    repository_encryptionKey,
    repository_arn,
    repository_connectionArn,
    repository_name,
    repository_provider,

    -- * RepositoryBranch
    RepositoryBranch (..),
    newRepositoryBranch,
    repositoryBranch_arn,
    repositoryBranch_branch,
    repositoryBranch_name,
    repositoryBranch_provider,

    -- * RepositoryBranchInput
    RepositoryBranchInput (..),
    newRepositoryBranchInput,
    repositoryBranchInput_branch,
    repositoryBranchInput_name,
    repositoryBranchInput_provider,

    -- * RepositorySummary
    RepositorySummary (..),
    newRepositorySummary,
    repositorySummary_arn,
    repositorySummary_name,
    repositorySummary_provider,

    -- * RepositorySyncAttempt
    RepositorySyncAttempt (..),
    newRepositorySyncAttempt,
    repositorySyncAttempt_events,
    repositorySyncAttempt_startedAt,
    repositorySyncAttempt_status,

    -- * RepositorySyncDefinition
    RepositorySyncDefinition (..),
    newRepositorySyncDefinition,
    repositorySyncDefinition_branch,
    repositorySyncDefinition_directory,
    repositorySyncDefinition_parent,
    repositorySyncDefinition_target,

    -- * RepositorySyncEvent
    RepositorySyncEvent (..),
    newRepositorySyncEvent,
    repositorySyncEvent_externalId,
    repositorySyncEvent_event,
    repositorySyncEvent_time,
    repositorySyncEvent_type,

    -- * ResourceSyncAttempt
    ResourceSyncAttempt (..),
    newResourceSyncAttempt,
    resourceSyncAttempt_events,
    resourceSyncAttempt_initialRevision,
    resourceSyncAttempt_startedAt,
    resourceSyncAttempt_status,
    resourceSyncAttempt_target,
    resourceSyncAttempt_targetRevision,

    -- * ResourceSyncEvent
    ResourceSyncEvent (..),
    newResourceSyncEvent,
    resourceSyncEvent_externalId,
    resourceSyncEvent_event,
    resourceSyncEvent_time,
    resourceSyncEvent_type,

    -- * Revision
    Revision (..),
    newRevision,
    revision_branch,
    revision_directory,
    revision_repositoryName,
    revision_repositoryProvider,
    revision_sha,

    -- * S3ObjectSource
    S3ObjectSource (..),
    newS3ObjectSource,
    s3ObjectSource_bucket,
    s3ObjectSource_key,

    -- * Service
    Service (..),
    newService,
    service_repositoryConnectionArn,
    service_branchName,
    service_description,
    service_repositoryId,
    service_statusMessage,
    service_pipeline,
    service_arn,
    service_createdAt,
    service_lastModifiedAt,
    service_name,
    service_spec,
    service_status,
    service_templateName,

    -- * ServiceInstance
    ServiceInstance (..),
    newServiceInstance,
    serviceInstance_deploymentStatusMessage,
    serviceInstance_spec,
    serviceInstance_arn,
    serviceInstance_createdAt,
    serviceInstance_deploymentStatus,
    serviceInstance_environmentName,
    serviceInstance_lastDeploymentAttemptedAt,
    serviceInstance_lastDeploymentSucceededAt,
    serviceInstance_name,
    serviceInstance_serviceName,
    serviceInstance_templateMajorVersion,
    serviceInstance_templateMinorVersion,
    serviceInstance_templateName,

    -- * ServiceInstanceSummary
    ServiceInstanceSummary (..),
    newServiceInstanceSummary,
    serviceInstanceSummary_deploymentStatusMessage,
    serviceInstanceSummary_arn,
    serviceInstanceSummary_createdAt,
    serviceInstanceSummary_deploymentStatus,
    serviceInstanceSummary_environmentName,
    serviceInstanceSummary_lastDeploymentAttemptedAt,
    serviceInstanceSummary_lastDeploymentSucceededAt,
    serviceInstanceSummary_name,
    serviceInstanceSummary_serviceName,
    serviceInstanceSummary_templateMajorVersion,
    serviceInstanceSummary_templateMinorVersion,
    serviceInstanceSummary_templateName,

    -- * ServicePipeline
    ServicePipeline (..),
    newServicePipeline,
    servicePipeline_deploymentStatusMessage,
    servicePipeline_spec,
    servicePipeline_arn,
    servicePipeline_createdAt,
    servicePipeline_deploymentStatus,
    servicePipeline_lastDeploymentAttemptedAt,
    servicePipeline_lastDeploymentSucceededAt,
    servicePipeline_templateMajorVersion,
    servicePipeline_templateMinorVersion,
    servicePipeline_templateName,

    -- * ServiceSummary
    ServiceSummary (..),
    newServiceSummary,
    serviceSummary_description,
    serviceSummary_statusMessage,
    serviceSummary_arn,
    serviceSummary_createdAt,
    serviceSummary_lastModifiedAt,
    serviceSummary_name,
    serviceSummary_status,
    serviceSummary_templateName,

    -- * ServiceTemplate
    ServiceTemplate (..),
    newServiceTemplate,
    serviceTemplate_recommendedVersion,
    serviceTemplate_displayName,
    serviceTemplate_description,
    serviceTemplate_pipelineProvisioning,
    serviceTemplate_encryptionKey,
    serviceTemplate_arn,
    serviceTemplate_createdAt,
    serviceTemplate_lastModifiedAt,
    serviceTemplate_name,

    -- * ServiceTemplateSummary
    ServiceTemplateSummary (..),
    newServiceTemplateSummary,
    serviceTemplateSummary_recommendedVersion,
    serviceTemplateSummary_displayName,
    serviceTemplateSummary_description,
    serviceTemplateSummary_pipelineProvisioning,
    serviceTemplateSummary_arn,
    serviceTemplateSummary_createdAt,
    serviceTemplateSummary_lastModifiedAt,
    serviceTemplateSummary_name,

    -- * ServiceTemplateVersion
    ServiceTemplateVersion (..),
    newServiceTemplateVersion,
    serviceTemplateVersion_supportedComponentSources,
    serviceTemplateVersion_description,
    serviceTemplateVersion_recommendedMinorVersion,
    serviceTemplateVersion_schema,
    serviceTemplateVersion_statusMessage,
    serviceTemplateVersion_arn,
    serviceTemplateVersion_compatibleEnvironmentTemplates,
    serviceTemplateVersion_createdAt,
    serviceTemplateVersion_lastModifiedAt,
    serviceTemplateVersion_majorVersion,
    serviceTemplateVersion_minorVersion,
    serviceTemplateVersion_status,
    serviceTemplateVersion_templateName,

    -- * ServiceTemplateVersionSummary
    ServiceTemplateVersionSummary (..),
    newServiceTemplateVersionSummary,
    serviceTemplateVersionSummary_description,
    serviceTemplateVersionSummary_recommendedMinorVersion,
    serviceTemplateVersionSummary_statusMessage,
    serviceTemplateVersionSummary_arn,
    serviceTemplateVersionSummary_createdAt,
    serviceTemplateVersionSummary_lastModifiedAt,
    serviceTemplateVersionSummary_majorVersion,
    serviceTemplateVersionSummary_minorVersion,
    serviceTemplateVersionSummary_status,
    serviceTemplateVersionSummary_templateName,

    -- * Tag
    Tag (..),
    newTag,
    tag_key,
    tag_value,

    -- * TemplateSyncConfig
    TemplateSyncConfig (..),
    newTemplateSyncConfig,
    templateSyncConfig_subdirectory,
    templateSyncConfig_branch,
    templateSyncConfig_repositoryName,
    templateSyncConfig_repositoryProvider,
    templateSyncConfig_templateName,
    templateSyncConfig_templateType,

    -- * TemplateVersionSourceInput
    TemplateVersionSourceInput (..),
    newTemplateVersionSourceInput,
    templateVersionSourceInput_s3,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Proton.Types.AccountSettings
import Amazonka.Proton.Types.CompatibleEnvironmentTemplate
import Amazonka.Proton.Types.CompatibleEnvironmentTemplateInput
import Amazonka.Proton.Types.Component
import Amazonka.Proton.Types.ComponentDeploymentUpdateType
import Amazonka.Proton.Types.ComponentSummary
import Amazonka.Proton.Types.DeploymentStatus
import Amazonka.Proton.Types.DeploymentUpdateType
import Amazonka.Proton.Types.Environment
import Amazonka.Proton.Types.EnvironmentAccountConnection
import Amazonka.Proton.Types.EnvironmentAccountConnectionRequesterAccountType
import Amazonka.Proton.Types.EnvironmentAccountConnectionStatus
import Amazonka.Proton.Types.EnvironmentAccountConnectionSummary
import Amazonka.Proton.Types.EnvironmentSummary
import Amazonka.Proton.Types.EnvironmentTemplate
import Amazonka.Proton.Types.EnvironmentTemplateFilter
import Amazonka.Proton.Types.EnvironmentTemplateSummary
import Amazonka.Proton.Types.EnvironmentTemplateVersion
import Amazonka.Proton.Types.EnvironmentTemplateVersionSummary
import Amazonka.Proton.Types.Output
import Amazonka.Proton.Types.ProvisionedResource
import Amazonka.Proton.Types.ProvisionedResourceEngine
import Amazonka.Proton.Types.Provisioning
import Amazonka.Proton.Types.Repository
import Amazonka.Proton.Types.RepositoryBranch
import Amazonka.Proton.Types.RepositoryBranchInput
import Amazonka.Proton.Types.RepositoryProvider
import Amazonka.Proton.Types.RepositorySummary
import Amazonka.Proton.Types.RepositorySyncAttempt
import Amazonka.Proton.Types.RepositorySyncDefinition
import Amazonka.Proton.Types.RepositorySyncEvent
import Amazonka.Proton.Types.RepositorySyncStatus
import Amazonka.Proton.Types.ResourceDeploymentStatus
import Amazonka.Proton.Types.ResourceSyncAttempt
import Amazonka.Proton.Types.ResourceSyncEvent
import Amazonka.Proton.Types.ResourceSyncStatus
import Amazonka.Proton.Types.Revision
import Amazonka.Proton.Types.S3ObjectSource
import Amazonka.Proton.Types.Service
import Amazonka.Proton.Types.ServiceInstance
import Amazonka.Proton.Types.ServiceInstanceSummary
import Amazonka.Proton.Types.ServicePipeline
import Amazonka.Proton.Types.ServiceStatus
import Amazonka.Proton.Types.ServiceSummary
import Amazonka.Proton.Types.ServiceTemplate
import Amazonka.Proton.Types.ServiceTemplateSummary
import Amazonka.Proton.Types.ServiceTemplateSupportedComponentSourceType
import Amazonka.Proton.Types.ServiceTemplateVersion
import Amazonka.Proton.Types.ServiceTemplateVersionSummary
import Amazonka.Proton.Types.SyncType
import Amazonka.Proton.Types.Tag
import Amazonka.Proton.Types.TemplateSyncConfig
import Amazonka.Proton.Types.TemplateType
import Amazonka.Proton.Types.TemplateVersionSourceInput
import Amazonka.Proton.Types.TemplateVersionStatus
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2020-07-20@ of the Amazon Proton SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "Proton",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "proton",
      Core._serviceSigningName = "proton",
      Core._serviceVersion = "2020-07-20",
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError = Core.parseJSONError "Proton",
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

-- | There /isn\'t/ sufficient access for performing this action.
_AccessDeniedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_AccessDeniedException =
  Core._MatchServiceError
    defaultService
    "AccessDeniedException"

-- | The request failed to register with the service.
_InternalServerException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalServerException =
  Core._MatchServiceError
    defaultService
    "InternalServerException"

-- | A quota was exceeded. For more information, see
-- <https://docs.aws.amazon.com/proton/latest/adminguide/ag-limits.html Proton Quotas>
-- in the /Proton Administrator Guide/.
_ServiceQuotaExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ServiceQuotaExceededException =
  Core._MatchServiceError
    defaultService
    "ServiceQuotaExceededException"

-- | The requested resource /wasn\'t/ found.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"

-- | The request /couldn\'t/ be made due to a conflicting operation or
-- resource.
_ConflictException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ConflictException =
  Core._MatchServiceError
    defaultService
    "ConflictException"

-- | The request was denied due to request throttling.
_ThrottlingException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ThrottlingException =
  Core._MatchServiceError
    defaultService
    "ThrottlingException"

-- | The input is invalid or an out-of-range value was supplied for the input
-- parameter.
_ValidationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ValidationException =
  Core._MatchServiceError
    defaultService
    "ValidationException"
