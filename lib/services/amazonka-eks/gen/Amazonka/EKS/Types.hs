{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.EKS.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EKS.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _ClientException,
    _AccessDeniedException,
    _NotFoundException,
    _ServiceUnavailableException,
    _ResourceNotFoundException,
    _UnsupportedAvailabilityZoneException,
    _ResourceInUseException,
    _ResourceLimitExceededException,
    _BadRequestException,
    _ResourcePropagationDelayException,
    _InvalidRequestException,
    _ServerException,
    _InvalidParameterException,

    -- * AMITypes
    AMITypes (..),

    -- * AddonIssueCode
    AddonIssueCode (..),

    -- * AddonStatus
    AddonStatus (..),

    -- * CapacityTypes
    CapacityTypes (..),

    -- * ClusterStatus
    ClusterStatus (..),

    -- * ConfigStatus
    ConfigStatus (..),

    -- * ConnectorConfigProvider
    ConnectorConfigProvider (..),

    -- * EKSErrorCode
    EKSErrorCode (..),

    -- * FargateProfileStatus
    FargateProfileStatus (..),

    -- * IpFamily
    IpFamily (..),

    -- * LogType
    LogType (..),

    -- * NodegroupIssueCode
    NodegroupIssueCode (..),

    -- * NodegroupStatus
    NodegroupStatus (..),

    -- * ResolveConflicts
    ResolveConflicts (..),

    -- * TaintEffect
    TaintEffect (..),

    -- * UpdateParamType
    UpdateParamType (..),

    -- * UpdateStatus
    UpdateStatus (..),

    -- * UpdateType
    UpdateType (..),

    -- * Addon
    Addon (..),
    newAddon,
    addon_tags,
    addon_modifiedAt,
    addon_status,
    addon_addonName,
    addon_addonVersion,
    addon_health,
    addon_addonArn,
    addon_serviceAccountRoleArn,
    addon_clusterName,
    addon_createdAt,

    -- * AddonHealth
    AddonHealth (..),
    newAddonHealth,
    addonHealth_issues,

    -- * AddonInfo
    AddonInfo (..),
    newAddonInfo,
    addonInfo_type,
    addonInfo_addonVersions,
    addonInfo_addonName,

    -- * AddonIssue
    AddonIssue (..),
    newAddonIssue,
    addonIssue_message,
    addonIssue_code,
    addonIssue_resourceIds,

    -- * AddonVersionInfo
    AddonVersionInfo (..),
    newAddonVersionInfo,
    addonVersionInfo_addonVersion,
    addonVersionInfo_compatibilities,
    addonVersionInfo_architecture,

    -- * AutoScalingGroup
    AutoScalingGroup (..),
    newAutoScalingGroup,
    autoScalingGroup_name,

    -- * Certificate
    Certificate (..),
    newCertificate,
    certificate_data,

    -- * Cluster
    Cluster (..),
    newCluster,
    cluster_encryptionConfig,
    cluster_tags,
    cluster_name,
    cluster_roleArn,
    cluster_clientRequestToken,
    cluster_arn,
    cluster_status,
    cluster_logging,
    cluster_identity,
    cluster_kubernetesNetworkConfig,
    cluster_connectorConfig,
    cluster_platformVersion,
    cluster_certificateAuthority,
    cluster_endpoint,
    cluster_resourcesVpcConfig,
    cluster_createdAt,
    cluster_version,

    -- * Compatibility
    Compatibility (..),
    newCompatibility,
    compatibility_clusterVersion,
    compatibility_defaultVersion,
    compatibility_platformVersions,

    -- * ConnectorConfigRequest
    ConnectorConfigRequest (..),
    newConnectorConfigRequest,
    connectorConfigRequest_roleArn,
    connectorConfigRequest_provider,

    -- * ConnectorConfigResponse
    ConnectorConfigResponse (..),
    newConnectorConfigResponse,
    connectorConfigResponse_roleArn,
    connectorConfigResponse_provider,
    connectorConfigResponse_activationId,
    connectorConfigResponse_activationExpiry,
    connectorConfigResponse_activationCode,

    -- * EncryptionConfig
    EncryptionConfig (..),
    newEncryptionConfig,
    encryptionConfig_provider,
    encryptionConfig_resources,

    -- * ErrorDetail
    ErrorDetail (..),
    newErrorDetail,
    errorDetail_errorMessage,
    errorDetail_resourceIds,
    errorDetail_errorCode,

    -- * FargateProfile
    FargateProfile (..),
    newFargateProfile,
    fargateProfile_tags,
    fargateProfile_fargateProfileArn,
    fargateProfile_subnets,
    fargateProfile_fargateProfileName,
    fargateProfile_selectors,
    fargateProfile_status,
    fargateProfile_podExecutionRoleArn,
    fargateProfile_clusterName,
    fargateProfile_createdAt,

    -- * FargateProfileSelector
    FargateProfileSelector (..),
    newFargateProfileSelector,
    fargateProfileSelector_labels,
    fargateProfileSelector_namespace,

    -- * Identity
    Identity (..),
    newIdentity,
    identity_oidc,

    -- * IdentityProviderConfig
    IdentityProviderConfig (..),
    newIdentityProviderConfig,
    identityProviderConfig_type,
    identityProviderConfig_name,

    -- * IdentityProviderConfigResponse
    IdentityProviderConfigResponse (..),
    newIdentityProviderConfigResponse,
    identityProviderConfigResponse_oidc,

    -- * Issue
    Issue (..),
    newIssue,
    issue_message,
    issue_code,
    issue_resourceIds,

    -- * KubernetesNetworkConfigRequest
    KubernetesNetworkConfigRequest (..),
    newKubernetesNetworkConfigRequest,
    kubernetesNetworkConfigRequest_ipFamily,
    kubernetesNetworkConfigRequest_serviceIpv4Cidr,

    -- * KubernetesNetworkConfigResponse
    KubernetesNetworkConfigResponse (..),
    newKubernetesNetworkConfigResponse,
    kubernetesNetworkConfigResponse_ipFamily,
    kubernetesNetworkConfigResponse_serviceIpv6Cidr,
    kubernetesNetworkConfigResponse_serviceIpv4Cidr,

    -- * LaunchTemplateSpecification
    LaunchTemplateSpecification (..),
    newLaunchTemplateSpecification,
    launchTemplateSpecification_name,
    launchTemplateSpecification_id,
    launchTemplateSpecification_version,

    -- * LogSetup
    LogSetup (..),
    newLogSetup,
    logSetup_enabled,
    logSetup_types,

    -- * Logging
    Logging (..),
    newLogging,
    logging_clusterLogging,

    -- * Nodegroup
    Nodegroup (..),
    newNodegroup,
    nodegroup_tags,
    nodegroup_releaseVersion,
    nodegroup_modifiedAt,
    nodegroup_remoteAccess,
    nodegroup_instanceTypes,
    nodegroup_updateConfig,
    nodegroup_capacityType,
    nodegroup_amiType,
    nodegroup_diskSize,
    nodegroup_subnets,
    nodegroup_nodegroupArn,
    nodegroup_launchTemplate,
    nodegroup_nodegroupName,
    nodegroup_taints,
    nodegroup_nodeRole,
    nodegroup_status,
    nodegroup_labels,
    nodegroup_health,
    nodegroup_resources,
    nodegroup_scalingConfig,
    nodegroup_clusterName,
    nodegroup_createdAt,
    nodegroup_version,

    -- * NodegroupHealth
    NodegroupHealth (..),
    newNodegroupHealth,
    nodegroupHealth_issues,

    -- * NodegroupResources
    NodegroupResources (..),
    newNodegroupResources,
    nodegroupResources_autoScalingGroups,
    nodegroupResources_remoteAccessSecurityGroup,

    -- * NodegroupScalingConfig
    NodegroupScalingConfig (..),
    newNodegroupScalingConfig,
    nodegroupScalingConfig_desiredSize,
    nodegroupScalingConfig_minSize,
    nodegroupScalingConfig_maxSize,

    -- * NodegroupUpdateConfig
    NodegroupUpdateConfig (..),
    newNodegroupUpdateConfig,
    nodegroupUpdateConfig_maxUnavailable,
    nodegroupUpdateConfig_maxUnavailablePercentage,

    -- * OIDC
    OIDC (..),
    newOIDC,
    oidc_issuer,

    -- * OidcIdentityProviderConfig
    OidcIdentityProviderConfig (..),
    newOidcIdentityProviderConfig,
    oidcIdentityProviderConfig_tags,
    oidcIdentityProviderConfig_requiredClaims,
    oidcIdentityProviderConfig_clientId,
    oidcIdentityProviderConfig_identityProviderConfigName,
    oidcIdentityProviderConfig_status,
    oidcIdentityProviderConfig_usernamePrefix,
    oidcIdentityProviderConfig_groupsClaim,
    oidcIdentityProviderConfig_identityProviderConfigArn,
    oidcIdentityProviderConfig_issuerUrl,
    oidcIdentityProviderConfig_groupsPrefix,
    oidcIdentityProviderConfig_clusterName,
    oidcIdentityProviderConfig_usernameClaim,

    -- * OidcIdentityProviderConfigRequest
    OidcIdentityProviderConfigRequest (..),
    newOidcIdentityProviderConfigRequest,
    oidcIdentityProviderConfigRequest_requiredClaims,
    oidcIdentityProviderConfigRequest_usernamePrefix,
    oidcIdentityProviderConfigRequest_groupsClaim,
    oidcIdentityProviderConfigRequest_groupsPrefix,
    oidcIdentityProviderConfigRequest_usernameClaim,
    oidcIdentityProviderConfigRequest_identityProviderConfigName,
    oidcIdentityProviderConfigRequest_issuerUrl,
    oidcIdentityProviderConfigRequest_clientId,

    -- * Provider
    Provider (..),
    newProvider,
    provider_keyArn,

    -- * RemoteAccessConfig
    RemoteAccessConfig (..),
    newRemoteAccessConfig,
    remoteAccessConfig_sourceSecurityGroups,
    remoteAccessConfig_ec2SshKey,

    -- * Taint
    Taint (..),
    newTaint,
    taint_key,
    taint_effect,
    taint_value,

    -- * Update
    Update (..),
    newUpdate,
    update_type,
    update_status,
    update_id,
    update_errors,
    update_params,
    update_createdAt,

    -- * UpdateLabelsPayload
    UpdateLabelsPayload (..),
    newUpdateLabelsPayload,
    updateLabelsPayload_addOrUpdateLabels,
    updateLabelsPayload_removeLabels,

    -- * UpdateParam
    UpdateParam (..),
    newUpdateParam,
    updateParam_type,
    updateParam_value,

    -- * UpdateTaintsPayload
    UpdateTaintsPayload (..),
    newUpdateTaintsPayload,
    updateTaintsPayload_addOrUpdateTaints,
    updateTaintsPayload_removeTaints,

    -- * VpcConfigRequest
    VpcConfigRequest (..),
    newVpcConfigRequest,
    vpcConfigRequest_securityGroupIds,
    vpcConfigRequest_endpointPrivateAccess,
    vpcConfigRequest_publicAccessCidrs,
    vpcConfigRequest_endpointPublicAccess,
    vpcConfigRequest_subnetIds,

    -- * VpcConfigResponse
    VpcConfigResponse (..),
    newVpcConfigResponse,
    vpcConfigResponse_securityGroupIds,
    vpcConfigResponse_clusterSecurityGroupId,
    vpcConfigResponse_endpointPrivateAccess,
    vpcConfigResponse_publicAccessCidrs,
    vpcConfigResponse_vpcId,
    vpcConfigResponse_endpointPublicAccess,
    vpcConfigResponse_subnetIds,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EKS.Types.AMITypes
import Amazonka.EKS.Types.Addon
import Amazonka.EKS.Types.AddonHealth
import Amazonka.EKS.Types.AddonInfo
import Amazonka.EKS.Types.AddonIssue
import Amazonka.EKS.Types.AddonIssueCode
import Amazonka.EKS.Types.AddonStatus
import Amazonka.EKS.Types.AddonVersionInfo
import Amazonka.EKS.Types.AutoScalingGroup
import Amazonka.EKS.Types.CapacityTypes
import Amazonka.EKS.Types.Certificate
import Amazonka.EKS.Types.Cluster
import Amazonka.EKS.Types.ClusterStatus
import Amazonka.EKS.Types.Compatibility
import Amazonka.EKS.Types.ConfigStatus
import Amazonka.EKS.Types.ConnectorConfigProvider
import Amazonka.EKS.Types.ConnectorConfigRequest
import Amazonka.EKS.Types.ConnectorConfigResponse
import Amazonka.EKS.Types.EKSErrorCode
import Amazonka.EKS.Types.EncryptionConfig
import Amazonka.EKS.Types.ErrorDetail
import Amazonka.EKS.Types.FargateProfile
import Amazonka.EKS.Types.FargateProfileSelector
import Amazonka.EKS.Types.FargateProfileStatus
import Amazonka.EKS.Types.Identity
import Amazonka.EKS.Types.IdentityProviderConfig
import Amazonka.EKS.Types.IdentityProviderConfigResponse
import Amazonka.EKS.Types.IpFamily
import Amazonka.EKS.Types.Issue
import Amazonka.EKS.Types.KubernetesNetworkConfigRequest
import Amazonka.EKS.Types.KubernetesNetworkConfigResponse
import Amazonka.EKS.Types.LaunchTemplateSpecification
import Amazonka.EKS.Types.LogSetup
import Amazonka.EKS.Types.LogType
import Amazonka.EKS.Types.Logging
import Amazonka.EKS.Types.Nodegroup
import Amazonka.EKS.Types.NodegroupHealth
import Amazonka.EKS.Types.NodegroupIssueCode
import Amazonka.EKS.Types.NodegroupResources
import Amazonka.EKS.Types.NodegroupScalingConfig
import Amazonka.EKS.Types.NodegroupStatus
import Amazonka.EKS.Types.NodegroupUpdateConfig
import Amazonka.EKS.Types.OIDC
import Amazonka.EKS.Types.OidcIdentityProviderConfig
import Amazonka.EKS.Types.OidcIdentityProviderConfigRequest
import Amazonka.EKS.Types.Provider
import Amazonka.EKS.Types.RemoteAccessConfig
import Amazonka.EKS.Types.ResolveConflicts
import Amazonka.EKS.Types.Taint
import Amazonka.EKS.Types.TaintEffect
import Amazonka.EKS.Types.Update
import Amazonka.EKS.Types.UpdateLabelsPayload
import Amazonka.EKS.Types.UpdateParam
import Amazonka.EKS.Types.UpdateParamType
import Amazonka.EKS.Types.UpdateStatus
import Amazonka.EKS.Types.UpdateTaintsPayload
import Amazonka.EKS.Types.UpdateType
import Amazonka.EKS.Types.VpcConfigRequest
import Amazonka.EKS.Types.VpcConfigResponse
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2017-11-01@ of the Amazon Elastic Kubernetes Service SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "EKS",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "eks",
      Core._serviceSigningName = "eks",
      Core._serviceVersion = "2017-11-01",
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError = Core.parseJSONError "EKS",
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

-- | These errors are usually caused by a client action. Actions can include
-- using an action or resource on behalf of a user that doesn\'t have
-- permissions to use the action or resource or specifying an identifier
-- that is not valid.
_ClientException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ClientException =
  Core._MatchServiceError
    defaultService
    "ClientException"
    Prelude.. Core.hasStatus 400

-- | You don\'t have permissions to perform the requested operation. The user
-- or role that is making the request must have at least one IAM
-- permissions policy attached that grants the required permissions. For
-- more information, see
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/access.html Access Management>
-- in the /IAM User Guide/.
_AccessDeniedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_AccessDeniedException =
  Core._MatchServiceError
    defaultService
    "AccessDeniedException"
    Prelude.. Core.hasStatus 403

-- | A service resource associated with the request could not be found.
-- Clients should not retry such requests.
_NotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NotFoundException =
  Core._MatchServiceError
    defaultService
    "NotFoundException"
    Prelude.. Core.hasStatus 404

-- | The service is unavailable. Back off and retry the operation.
_ServiceUnavailableException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ServiceUnavailableException =
  Core._MatchServiceError
    defaultService
    "ServiceUnavailableException"
    Prelude.. Core.hasStatus 503

-- | The specified resource could not be found. You can view your available
-- clusters with ListClusters. You can view your available managed node
-- groups with ListNodegroups. Amazon EKS clusters and node groups are
-- Region-specific.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"
    Prelude.. Core.hasStatus 404

-- | At least one of your specified cluster subnets is in an Availability
-- Zone that does not support Amazon EKS. The exception output specifies
-- the supported Availability Zones for your account, from which you can
-- choose subnets for your cluster.
_UnsupportedAvailabilityZoneException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_UnsupportedAvailabilityZoneException =
  Core._MatchServiceError
    defaultService
    "UnsupportedAvailabilityZoneException"
    Prelude.. Core.hasStatus 400

-- | The specified resource is in use.
_ResourceInUseException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceInUseException =
  Core._MatchServiceError
    defaultService
    "ResourceInUseException"
    Prelude.. Core.hasStatus 409

-- | You have encountered a service limit on the specified resource.
_ResourceLimitExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceLimitExceededException =
  Core._MatchServiceError
    defaultService
    "ResourceLimitExceededException"
    Prelude.. Core.hasStatus 400

-- | This exception is thrown if the request contains a semantic error. The
-- precise meaning will depend on the API, and will be documented in the
-- error message.
_BadRequestException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_BadRequestException =
  Core._MatchServiceError
    defaultService
    "BadRequestException"
    Prelude.. Core.hasStatus 400

-- | Required resources (such as service-linked roles) were created and are
-- still propagating. Retry later.
_ResourcePropagationDelayException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourcePropagationDelayException =
  Core._MatchServiceError
    defaultService
    "ResourcePropagationDelayException"
    Prelude.. Core.hasStatus 428

-- | The request is invalid given the state of the cluster. Check the state
-- of the cluster and the associated operations.
_InvalidRequestException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidRequestException =
  Core._MatchServiceError
    defaultService
    "InvalidRequestException"
    Prelude.. Core.hasStatus 400

-- | These errors are usually caused by a server-side issue.
_ServerException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ServerException =
  Core._MatchServiceError
    defaultService
    "ServerException"
    Prelude.. Core.hasStatus 500

-- | The specified parameter is invalid. Review the available parameters for
-- the API request.
_InvalidParameterException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidParameterException =
  Core._MatchServiceError
    defaultService
    "InvalidParameterException"
    Prelude.. Core.hasStatus 400
