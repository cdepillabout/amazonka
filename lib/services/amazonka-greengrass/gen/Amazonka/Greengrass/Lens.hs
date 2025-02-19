{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Greengrass.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Greengrass.Lens
  ( -- * Operations

    -- ** AssociateRoleToGroup
    associateRoleToGroup_groupId,
    associateRoleToGroup_roleArn,
    associateRoleToGroupResponse_associatedAt,
    associateRoleToGroupResponse_httpStatus,

    -- ** AssociateServiceRoleToAccount
    associateServiceRoleToAccount_roleArn,
    associateServiceRoleToAccountResponse_associatedAt,
    associateServiceRoleToAccountResponse_httpStatus,

    -- ** CreateConnectorDefinition
    createConnectorDefinition_tags,
    createConnectorDefinition_name,
    createConnectorDefinition_initialVersion,
    createConnectorDefinition_amznClientToken,
    createConnectorDefinitionResponse_lastUpdatedTimestamp,
    createConnectorDefinitionResponse_name,
    createConnectorDefinitionResponse_arn,
    createConnectorDefinitionResponse_latestVersion,
    createConnectorDefinitionResponse_id,
    createConnectorDefinitionResponse_creationTimestamp,
    createConnectorDefinitionResponse_latestVersionArn,
    createConnectorDefinitionResponse_httpStatus,

    -- ** CreateConnectorDefinitionVersion
    createConnectorDefinitionVersion_connectors,
    createConnectorDefinitionVersion_amznClientToken,
    createConnectorDefinitionVersion_connectorDefinitionId,
    createConnectorDefinitionVersionResponse_arn,
    createConnectorDefinitionVersionResponse_id,
    createConnectorDefinitionVersionResponse_creationTimestamp,
    createConnectorDefinitionVersionResponse_version,
    createConnectorDefinitionVersionResponse_httpStatus,

    -- ** CreateCoreDefinition
    createCoreDefinition_tags,
    createCoreDefinition_name,
    createCoreDefinition_initialVersion,
    createCoreDefinition_amznClientToken,
    createCoreDefinitionResponse_lastUpdatedTimestamp,
    createCoreDefinitionResponse_name,
    createCoreDefinitionResponse_arn,
    createCoreDefinitionResponse_latestVersion,
    createCoreDefinitionResponse_id,
    createCoreDefinitionResponse_creationTimestamp,
    createCoreDefinitionResponse_latestVersionArn,
    createCoreDefinitionResponse_httpStatus,

    -- ** CreateCoreDefinitionVersion
    createCoreDefinitionVersion_cores,
    createCoreDefinitionVersion_amznClientToken,
    createCoreDefinitionVersion_coreDefinitionId,
    createCoreDefinitionVersionResponse_arn,
    createCoreDefinitionVersionResponse_id,
    createCoreDefinitionVersionResponse_creationTimestamp,
    createCoreDefinitionVersionResponse_version,
    createCoreDefinitionVersionResponse_httpStatus,

    -- ** CreateDeployment
    createDeployment_deploymentId,
    createDeployment_groupVersionId,
    createDeployment_amznClientToken,
    createDeployment_groupId,
    createDeployment_deploymentType,
    createDeploymentResponse_deploymentId,
    createDeploymentResponse_deploymentArn,
    createDeploymentResponse_httpStatus,

    -- ** CreateDeviceDefinition
    createDeviceDefinition_tags,
    createDeviceDefinition_name,
    createDeviceDefinition_initialVersion,
    createDeviceDefinition_amznClientToken,
    createDeviceDefinitionResponse_lastUpdatedTimestamp,
    createDeviceDefinitionResponse_name,
    createDeviceDefinitionResponse_arn,
    createDeviceDefinitionResponse_latestVersion,
    createDeviceDefinitionResponse_id,
    createDeviceDefinitionResponse_creationTimestamp,
    createDeviceDefinitionResponse_latestVersionArn,
    createDeviceDefinitionResponse_httpStatus,

    -- ** CreateDeviceDefinitionVersion
    createDeviceDefinitionVersion_devices,
    createDeviceDefinitionVersion_amznClientToken,
    createDeviceDefinitionVersion_deviceDefinitionId,
    createDeviceDefinitionVersionResponse_arn,
    createDeviceDefinitionVersionResponse_id,
    createDeviceDefinitionVersionResponse_creationTimestamp,
    createDeviceDefinitionVersionResponse_version,
    createDeviceDefinitionVersionResponse_httpStatus,

    -- ** CreateFunctionDefinition
    createFunctionDefinition_tags,
    createFunctionDefinition_name,
    createFunctionDefinition_initialVersion,
    createFunctionDefinition_amznClientToken,
    createFunctionDefinitionResponse_lastUpdatedTimestamp,
    createFunctionDefinitionResponse_name,
    createFunctionDefinitionResponse_arn,
    createFunctionDefinitionResponse_latestVersion,
    createFunctionDefinitionResponse_id,
    createFunctionDefinitionResponse_creationTimestamp,
    createFunctionDefinitionResponse_latestVersionArn,
    createFunctionDefinitionResponse_httpStatus,

    -- ** CreateFunctionDefinitionVersion
    createFunctionDefinitionVersion_functions,
    createFunctionDefinitionVersion_defaultConfig,
    createFunctionDefinitionVersion_amznClientToken,
    createFunctionDefinitionVersion_functionDefinitionId,
    createFunctionDefinitionVersionResponse_arn,
    createFunctionDefinitionVersionResponse_id,
    createFunctionDefinitionVersionResponse_creationTimestamp,
    createFunctionDefinitionVersionResponse_version,
    createFunctionDefinitionVersionResponse_httpStatus,

    -- ** CreateGroup
    createGroup_tags,
    createGroup_initialVersion,
    createGroup_amznClientToken,
    createGroup_name,
    createGroupResponse_lastUpdatedTimestamp,
    createGroupResponse_name,
    createGroupResponse_arn,
    createGroupResponse_latestVersion,
    createGroupResponse_id,
    createGroupResponse_creationTimestamp,
    createGroupResponse_latestVersionArn,
    createGroupResponse_httpStatus,

    -- ** CreateGroupCertificateAuthority
    createGroupCertificateAuthority_amznClientToken,
    createGroupCertificateAuthority_groupId,
    createGroupCertificateAuthorityResponse_groupCertificateAuthorityArn,
    createGroupCertificateAuthorityResponse_httpStatus,

    -- ** CreateGroupVersion
    createGroupVersion_resourceDefinitionVersionArn,
    createGroupVersion_functionDefinitionVersionArn,
    createGroupVersion_subscriptionDefinitionVersionArn,
    createGroupVersion_connectorDefinitionVersionArn,
    createGroupVersion_loggerDefinitionVersionArn,
    createGroupVersion_coreDefinitionVersionArn,
    createGroupVersion_amznClientToken,
    createGroupVersion_deviceDefinitionVersionArn,
    createGroupVersion_groupId,
    createGroupVersionResponse_arn,
    createGroupVersionResponse_id,
    createGroupVersionResponse_creationTimestamp,
    createGroupVersionResponse_version,
    createGroupVersionResponse_httpStatus,

    -- ** CreateLoggerDefinition
    createLoggerDefinition_tags,
    createLoggerDefinition_name,
    createLoggerDefinition_initialVersion,
    createLoggerDefinition_amznClientToken,
    createLoggerDefinitionResponse_lastUpdatedTimestamp,
    createLoggerDefinitionResponse_name,
    createLoggerDefinitionResponse_arn,
    createLoggerDefinitionResponse_latestVersion,
    createLoggerDefinitionResponse_id,
    createLoggerDefinitionResponse_creationTimestamp,
    createLoggerDefinitionResponse_latestVersionArn,
    createLoggerDefinitionResponse_httpStatus,

    -- ** CreateLoggerDefinitionVersion
    createLoggerDefinitionVersion_loggers,
    createLoggerDefinitionVersion_amznClientToken,
    createLoggerDefinitionVersion_loggerDefinitionId,
    createLoggerDefinitionVersionResponse_arn,
    createLoggerDefinitionVersionResponse_id,
    createLoggerDefinitionVersionResponse_creationTimestamp,
    createLoggerDefinitionVersionResponse_version,
    createLoggerDefinitionVersionResponse_httpStatus,

    -- ** CreateResourceDefinition
    createResourceDefinition_tags,
    createResourceDefinition_name,
    createResourceDefinition_initialVersion,
    createResourceDefinition_amznClientToken,
    createResourceDefinitionResponse_lastUpdatedTimestamp,
    createResourceDefinitionResponse_name,
    createResourceDefinitionResponse_arn,
    createResourceDefinitionResponse_latestVersion,
    createResourceDefinitionResponse_id,
    createResourceDefinitionResponse_creationTimestamp,
    createResourceDefinitionResponse_latestVersionArn,
    createResourceDefinitionResponse_httpStatus,

    -- ** CreateResourceDefinitionVersion
    createResourceDefinitionVersion_resources,
    createResourceDefinitionVersion_amznClientToken,
    createResourceDefinitionVersion_resourceDefinitionId,
    createResourceDefinitionVersionResponse_arn,
    createResourceDefinitionVersionResponse_id,
    createResourceDefinitionVersionResponse_creationTimestamp,
    createResourceDefinitionVersionResponse_version,
    createResourceDefinitionVersionResponse_httpStatus,

    -- ** CreateSoftwareUpdateJob
    createSoftwareUpdateJob_updateAgentLogLevel,
    createSoftwareUpdateJob_amznClientToken,
    createSoftwareUpdateJob_s3UrlSignerRole,
    createSoftwareUpdateJob_updateTargetsArchitecture,
    createSoftwareUpdateJob_softwareToUpdate,
    createSoftwareUpdateJob_updateTargets,
    createSoftwareUpdateJob_updateTargetsOperatingSystem,
    createSoftwareUpdateJobResponse_iotJobArn,
    createSoftwareUpdateJobResponse_platformSoftwareVersion,
    createSoftwareUpdateJobResponse_iotJobId,
    createSoftwareUpdateJobResponse_httpStatus,

    -- ** CreateSubscriptionDefinition
    createSubscriptionDefinition_tags,
    createSubscriptionDefinition_name,
    createSubscriptionDefinition_initialVersion,
    createSubscriptionDefinition_amznClientToken,
    createSubscriptionDefinitionResponse_lastUpdatedTimestamp,
    createSubscriptionDefinitionResponse_name,
    createSubscriptionDefinitionResponse_arn,
    createSubscriptionDefinitionResponse_latestVersion,
    createSubscriptionDefinitionResponse_id,
    createSubscriptionDefinitionResponse_creationTimestamp,
    createSubscriptionDefinitionResponse_latestVersionArn,
    createSubscriptionDefinitionResponse_httpStatus,

    -- ** CreateSubscriptionDefinitionVersion
    createSubscriptionDefinitionVersion_subscriptions,
    createSubscriptionDefinitionVersion_amznClientToken,
    createSubscriptionDefinitionVersion_subscriptionDefinitionId,
    createSubscriptionDefinitionVersionResponse_arn,
    createSubscriptionDefinitionVersionResponse_id,
    createSubscriptionDefinitionVersionResponse_creationTimestamp,
    createSubscriptionDefinitionVersionResponse_version,
    createSubscriptionDefinitionVersionResponse_httpStatus,

    -- ** DeleteConnectorDefinition
    deleteConnectorDefinition_connectorDefinitionId,
    deleteConnectorDefinitionResponse_httpStatus,

    -- ** DeleteCoreDefinition
    deleteCoreDefinition_coreDefinitionId,
    deleteCoreDefinitionResponse_httpStatus,

    -- ** DeleteDeviceDefinition
    deleteDeviceDefinition_deviceDefinitionId,
    deleteDeviceDefinitionResponse_httpStatus,

    -- ** DeleteFunctionDefinition
    deleteFunctionDefinition_functionDefinitionId,
    deleteFunctionDefinitionResponse_httpStatus,

    -- ** DeleteGroup
    deleteGroup_groupId,
    deleteGroupResponse_httpStatus,

    -- ** DeleteLoggerDefinition
    deleteLoggerDefinition_loggerDefinitionId,
    deleteLoggerDefinitionResponse_httpStatus,

    -- ** DeleteResourceDefinition
    deleteResourceDefinition_resourceDefinitionId,
    deleteResourceDefinitionResponse_httpStatus,

    -- ** DeleteSubscriptionDefinition
    deleteSubscriptionDefinition_subscriptionDefinitionId,
    deleteSubscriptionDefinitionResponse_httpStatus,

    -- ** DisassociateRoleFromGroup
    disassociateRoleFromGroup_groupId,
    disassociateRoleFromGroupResponse_disassociatedAt,
    disassociateRoleFromGroupResponse_httpStatus,

    -- ** DisassociateServiceRoleFromAccount
    disassociateServiceRoleFromAccountResponse_disassociatedAt,
    disassociateServiceRoleFromAccountResponse_httpStatus,

    -- ** GetAssociatedRole
    getAssociatedRole_groupId,
    getAssociatedRoleResponse_roleArn,
    getAssociatedRoleResponse_associatedAt,
    getAssociatedRoleResponse_httpStatus,

    -- ** GetBulkDeploymentStatus
    getBulkDeploymentStatus_bulkDeploymentId,
    getBulkDeploymentStatusResponse_tags,
    getBulkDeploymentStatusResponse_errorMessage,
    getBulkDeploymentStatusResponse_errorDetails,
    getBulkDeploymentStatusResponse_bulkDeploymentStatus,
    getBulkDeploymentStatusResponse_bulkDeploymentMetrics,
    getBulkDeploymentStatusResponse_createdAt,
    getBulkDeploymentStatusResponse_httpStatus,

    -- ** GetConnectivityInfo
    getConnectivityInfo_thingName,
    getConnectivityInfoResponse_message,
    getConnectivityInfoResponse_connectivityInfo,
    getConnectivityInfoResponse_httpStatus,

    -- ** GetConnectorDefinition
    getConnectorDefinition_connectorDefinitionId,
    getConnectorDefinitionResponse_lastUpdatedTimestamp,
    getConnectorDefinitionResponse_tags,
    getConnectorDefinitionResponse_name,
    getConnectorDefinitionResponse_arn,
    getConnectorDefinitionResponse_latestVersion,
    getConnectorDefinitionResponse_id,
    getConnectorDefinitionResponse_creationTimestamp,
    getConnectorDefinitionResponse_latestVersionArn,
    getConnectorDefinitionResponse_httpStatus,

    -- ** GetConnectorDefinitionVersion
    getConnectorDefinitionVersion_nextToken,
    getConnectorDefinitionVersion_connectorDefinitionId,
    getConnectorDefinitionVersion_connectorDefinitionVersionId,
    getConnectorDefinitionVersionResponse_nextToken,
    getConnectorDefinitionVersionResponse_arn,
    getConnectorDefinitionVersionResponse_id,
    getConnectorDefinitionVersionResponse_creationTimestamp,
    getConnectorDefinitionVersionResponse_version,
    getConnectorDefinitionVersionResponse_definition,
    getConnectorDefinitionVersionResponse_httpStatus,

    -- ** GetCoreDefinition
    getCoreDefinition_coreDefinitionId,
    getCoreDefinitionResponse_lastUpdatedTimestamp,
    getCoreDefinitionResponse_tags,
    getCoreDefinitionResponse_name,
    getCoreDefinitionResponse_arn,
    getCoreDefinitionResponse_latestVersion,
    getCoreDefinitionResponse_id,
    getCoreDefinitionResponse_creationTimestamp,
    getCoreDefinitionResponse_latestVersionArn,
    getCoreDefinitionResponse_httpStatus,

    -- ** GetCoreDefinitionVersion
    getCoreDefinitionVersion_coreDefinitionId,
    getCoreDefinitionVersion_coreDefinitionVersionId,
    getCoreDefinitionVersionResponse_nextToken,
    getCoreDefinitionVersionResponse_arn,
    getCoreDefinitionVersionResponse_id,
    getCoreDefinitionVersionResponse_creationTimestamp,
    getCoreDefinitionVersionResponse_version,
    getCoreDefinitionVersionResponse_definition,
    getCoreDefinitionVersionResponse_httpStatus,

    -- ** GetDeploymentStatus
    getDeploymentStatus_groupId,
    getDeploymentStatus_deploymentId,
    getDeploymentStatusResponse_deploymentStatus,
    getDeploymentStatusResponse_errorMessage,
    getDeploymentStatusResponse_errorDetails,
    getDeploymentStatusResponse_deploymentType,
    getDeploymentStatusResponse_updatedAt,
    getDeploymentStatusResponse_httpStatus,

    -- ** GetDeviceDefinition
    getDeviceDefinition_deviceDefinitionId,
    getDeviceDefinitionResponse_lastUpdatedTimestamp,
    getDeviceDefinitionResponse_tags,
    getDeviceDefinitionResponse_name,
    getDeviceDefinitionResponse_arn,
    getDeviceDefinitionResponse_latestVersion,
    getDeviceDefinitionResponse_id,
    getDeviceDefinitionResponse_creationTimestamp,
    getDeviceDefinitionResponse_latestVersionArn,
    getDeviceDefinitionResponse_httpStatus,

    -- ** GetDeviceDefinitionVersion
    getDeviceDefinitionVersion_nextToken,
    getDeviceDefinitionVersion_deviceDefinitionVersionId,
    getDeviceDefinitionVersion_deviceDefinitionId,
    getDeviceDefinitionVersionResponse_nextToken,
    getDeviceDefinitionVersionResponse_arn,
    getDeviceDefinitionVersionResponse_id,
    getDeviceDefinitionVersionResponse_creationTimestamp,
    getDeviceDefinitionVersionResponse_version,
    getDeviceDefinitionVersionResponse_definition,
    getDeviceDefinitionVersionResponse_httpStatus,

    -- ** GetFunctionDefinition
    getFunctionDefinition_functionDefinitionId,
    getFunctionDefinitionResponse_lastUpdatedTimestamp,
    getFunctionDefinitionResponse_tags,
    getFunctionDefinitionResponse_name,
    getFunctionDefinitionResponse_arn,
    getFunctionDefinitionResponse_latestVersion,
    getFunctionDefinitionResponse_id,
    getFunctionDefinitionResponse_creationTimestamp,
    getFunctionDefinitionResponse_latestVersionArn,
    getFunctionDefinitionResponse_httpStatus,

    -- ** GetFunctionDefinitionVersion
    getFunctionDefinitionVersion_nextToken,
    getFunctionDefinitionVersion_functionDefinitionId,
    getFunctionDefinitionVersion_functionDefinitionVersionId,
    getFunctionDefinitionVersionResponse_nextToken,
    getFunctionDefinitionVersionResponse_arn,
    getFunctionDefinitionVersionResponse_id,
    getFunctionDefinitionVersionResponse_creationTimestamp,
    getFunctionDefinitionVersionResponse_version,
    getFunctionDefinitionVersionResponse_definition,
    getFunctionDefinitionVersionResponse_httpStatus,

    -- ** GetGroup
    getGroup_groupId,
    getGroupResponse_lastUpdatedTimestamp,
    getGroupResponse_tags,
    getGroupResponse_name,
    getGroupResponse_arn,
    getGroupResponse_latestVersion,
    getGroupResponse_id,
    getGroupResponse_creationTimestamp,
    getGroupResponse_latestVersionArn,
    getGroupResponse_httpStatus,

    -- ** GetGroupCertificateAuthority
    getGroupCertificateAuthority_certificateAuthorityId,
    getGroupCertificateAuthority_groupId,
    getGroupCertificateAuthorityResponse_groupCertificateAuthorityArn,
    getGroupCertificateAuthorityResponse_pemEncodedCertificate,
    getGroupCertificateAuthorityResponse_groupCertificateAuthorityId,
    getGroupCertificateAuthorityResponse_httpStatus,

    -- ** GetGroupCertificateConfiguration
    getGroupCertificateConfiguration_groupId,
    getGroupCertificateConfigurationResponse_certificateExpiryInMilliseconds,
    getGroupCertificateConfigurationResponse_certificateAuthorityExpiryInMilliseconds,
    getGroupCertificateConfigurationResponse_groupId,
    getGroupCertificateConfigurationResponse_httpStatus,

    -- ** GetGroupVersion
    getGroupVersion_groupVersionId,
    getGroupVersion_groupId,
    getGroupVersionResponse_arn,
    getGroupVersionResponse_id,
    getGroupVersionResponse_creationTimestamp,
    getGroupVersionResponse_version,
    getGroupVersionResponse_definition,
    getGroupVersionResponse_httpStatus,

    -- ** GetLoggerDefinition
    getLoggerDefinition_loggerDefinitionId,
    getLoggerDefinitionResponse_lastUpdatedTimestamp,
    getLoggerDefinitionResponse_tags,
    getLoggerDefinitionResponse_name,
    getLoggerDefinitionResponse_arn,
    getLoggerDefinitionResponse_latestVersion,
    getLoggerDefinitionResponse_id,
    getLoggerDefinitionResponse_creationTimestamp,
    getLoggerDefinitionResponse_latestVersionArn,
    getLoggerDefinitionResponse_httpStatus,

    -- ** GetLoggerDefinitionVersion
    getLoggerDefinitionVersion_nextToken,
    getLoggerDefinitionVersion_loggerDefinitionVersionId,
    getLoggerDefinitionVersion_loggerDefinitionId,
    getLoggerDefinitionVersionResponse_arn,
    getLoggerDefinitionVersionResponse_id,
    getLoggerDefinitionVersionResponse_creationTimestamp,
    getLoggerDefinitionVersionResponse_version,
    getLoggerDefinitionVersionResponse_definition,
    getLoggerDefinitionVersionResponse_httpStatus,

    -- ** GetResourceDefinition
    getResourceDefinition_resourceDefinitionId,
    getResourceDefinitionResponse_lastUpdatedTimestamp,
    getResourceDefinitionResponse_tags,
    getResourceDefinitionResponse_name,
    getResourceDefinitionResponse_arn,
    getResourceDefinitionResponse_latestVersion,
    getResourceDefinitionResponse_id,
    getResourceDefinitionResponse_creationTimestamp,
    getResourceDefinitionResponse_latestVersionArn,
    getResourceDefinitionResponse_httpStatus,

    -- ** GetResourceDefinitionVersion
    getResourceDefinitionVersion_resourceDefinitionVersionId,
    getResourceDefinitionVersion_resourceDefinitionId,
    getResourceDefinitionVersionResponse_arn,
    getResourceDefinitionVersionResponse_id,
    getResourceDefinitionVersionResponse_creationTimestamp,
    getResourceDefinitionVersionResponse_version,
    getResourceDefinitionVersionResponse_definition,
    getResourceDefinitionVersionResponse_httpStatus,

    -- ** GetServiceRoleForAccount
    getServiceRoleForAccountResponse_roleArn,
    getServiceRoleForAccountResponse_associatedAt,
    getServiceRoleForAccountResponse_httpStatus,

    -- ** GetSubscriptionDefinition
    getSubscriptionDefinition_subscriptionDefinitionId,
    getSubscriptionDefinitionResponse_lastUpdatedTimestamp,
    getSubscriptionDefinitionResponse_tags,
    getSubscriptionDefinitionResponse_name,
    getSubscriptionDefinitionResponse_arn,
    getSubscriptionDefinitionResponse_latestVersion,
    getSubscriptionDefinitionResponse_id,
    getSubscriptionDefinitionResponse_creationTimestamp,
    getSubscriptionDefinitionResponse_latestVersionArn,
    getSubscriptionDefinitionResponse_httpStatus,

    -- ** GetSubscriptionDefinitionVersion
    getSubscriptionDefinitionVersion_nextToken,
    getSubscriptionDefinitionVersion_subscriptionDefinitionId,
    getSubscriptionDefinitionVersion_subscriptionDefinitionVersionId,
    getSubscriptionDefinitionVersionResponse_nextToken,
    getSubscriptionDefinitionVersionResponse_arn,
    getSubscriptionDefinitionVersionResponse_id,
    getSubscriptionDefinitionVersionResponse_creationTimestamp,
    getSubscriptionDefinitionVersionResponse_version,
    getSubscriptionDefinitionVersionResponse_definition,
    getSubscriptionDefinitionVersionResponse_httpStatus,

    -- ** GetThingRuntimeConfiguration
    getThingRuntimeConfiguration_thingName,
    getThingRuntimeConfigurationResponse_runtimeConfiguration,
    getThingRuntimeConfigurationResponse_httpStatus,

    -- ** ListBulkDeploymentDetailedReports
    listBulkDeploymentDetailedReports_nextToken,
    listBulkDeploymentDetailedReports_maxResults,
    listBulkDeploymentDetailedReports_bulkDeploymentId,
    listBulkDeploymentDetailedReportsResponse_nextToken,
    listBulkDeploymentDetailedReportsResponse_deployments,
    listBulkDeploymentDetailedReportsResponse_httpStatus,

    -- ** ListBulkDeployments
    listBulkDeployments_nextToken,
    listBulkDeployments_maxResults,
    listBulkDeploymentsResponse_nextToken,
    listBulkDeploymentsResponse_bulkDeployments,
    listBulkDeploymentsResponse_httpStatus,

    -- ** ListConnectorDefinitionVersions
    listConnectorDefinitionVersions_nextToken,
    listConnectorDefinitionVersions_maxResults,
    listConnectorDefinitionVersions_connectorDefinitionId,
    listConnectorDefinitionVersionsResponse_nextToken,
    listConnectorDefinitionVersionsResponse_versions,
    listConnectorDefinitionVersionsResponse_httpStatus,

    -- ** ListConnectorDefinitions
    listConnectorDefinitions_nextToken,
    listConnectorDefinitions_maxResults,
    listConnectorDefinitionsResponse_nextToken,
    listConnectorDefinitionsResponse_definitions,
    listConnectorDefinitionsResponse_httpStatus,

    -- ** ListCoreDefinitionVersions
    listCoreDefinitionVersions_nextToken,
    listCoreDefinitionVersions_maxResults,
    listCoreDefinitionVersions_coreDefinitionId,
    listCoreDefinitionVersionsResponse_nextToken,
    listCoreDefinitionVersionsResponse_versions,
    listCoreDefinitionVersionsResponse_httpStatus,

    -- ** ListCoreDefinitions
    listCoreDefinitions_nextToken,
    listCoreDefinitions_maxResults,
    listCoreDefinitionsResponse_nextToken,
    listCoreDefinitionsResponse_definitions,
    listCoreDefinitionsResponse_httpStatus,

    -- ** ListDeployments
    listDeployments_nextToken,
    listDeployments_maxResults,
    listDeployments_groupId,
    listDeploymentsResponse_nextToken,
    listDeploymentsResponse_deployments,
    listDeploymentsResponse_httpStatus,

    -- ** ListDeviceDefinitionVersions
    listDeviceDefinitionVersions_nextToken,
    listDeviceDefinitionVersions_maxResults,
    listDeviceDefinitionVersions_deviceDefinitionId,
    listDeviceDefinitionVersionsResponse_nextToken,
    listDeviceDefinitionVersionsResponse_versions,
    listDeviceDefinitionVersionsResponse_httpStatus,

    -- ** ListDeviceDefinitions
    listDeviceDefinitions_nextToken,
    listDeviceDefinitions_maxResults,
    listDeviceDefinitionsResponse_nextToken,
    listDeviceDefinitionsResponse_definitions,
    listDeviceDefinitionsResponse_httpStatus,

    -- ** ListFunctionDefinitionVersions
    listFunctionDefinitionVersions_nextToken,
    listFunctionDefinitionVersions_maxResults,
    listFunctionDefinitionVersions_functionDefinitionId,
    listFunctionDefinitionVersionsResponse_nextToken,
    listFunctionDefinitionVersionsResponse_versions,
    listFunctionDefinitionVersionsResponse_httpStatus,

    -- ** ListFunctionDefinitions
    listFunctionDefinitions_nextToken,
    listFunctionDefinitions_maxResults,
    listFunctionDefinitionsResponse_nextToken,
    listFunctionDefinitionsResponse_definitions,
    listFunctionDefinitionsResponse_httpStatus,

    -- ** ListGroupCertificateAuthorities
    listGroupCertificateAuthorities_groupId,
    listGroupCertificateAuthoritiesResponse_groupCertificateAuthorities,
    listGroupCertificateAuthoritiesResponse_httpStatus,

    -- ** ListGroupVersions
    listGroupVersions_nextToken,
    listGroupVersions_maxResults,
    listGroupVersions_groupId,
    listGroupVersionsResponse_nextToken,
    listGroupVersionsResponse_versions,
    listGroupVersionsResponse_httpStatus,

    -- ** ListGroups
    listGroups_nextToken,
    listGroups_maxResults,
    listGroupsResponse_nextToken,
    listGroupsResponse_groups,
    listGroupsResponse_httpStatus,

    -- ** ListLoggerDefinitionVersions
    listLoggerDefinitionVersions_nextToken,
    listLoggerDefinitionVersions_maxResults,
    listLoggerDefinitionVersions_loggerDefinitionId,
    listLoggerDefinitionVersionsResponse_nextToken,
    listLoggerDefinitionVersionsResponse_versions,
    listLoggerDefinitionVersionsResponse_httpStatus,

    -- ** ListLoggerDefinitions
    listLoggerDefinitions_nextToken,
    listLoggerDefinitions_maxResults,
    listLoggerDefinitionsResponse_nextToken,
    listLoggerDefinitionsResponse_definitions,
    listLoggerDefinitionsResponse_httpStatus,

    -- ** ListResourceDefinitionVersions
    listResourceDefinitionVersions_nextToken,
    listResourceDefinitionVersions_maxResults,
    listResourceDefinitionVersions_resourceDefinitionId,
    listResourceDefinitionVersionsResponse_nextToken,
    listResourceDefinitionVersionsResponse_versions,
    listResourceDefinitionVersionsResponse_httpStatus,

    -- ** ListResourceDefinitions
    listResourceDefinitions_nextToken,
    listResourceDefinitions_maxResults,
    listResourceDefinitionsResponse_nextToken,
    listResourceDefinitionsResponse_definitions,
    listResourceDefinitionsResponse_httpStatus,

    -- ** ListSubscriptionDefinitionVersions
    listSubscriptionDefinitionVersions_nextToken,
    listSubscriptionDefinitionVersions_maxResults,
    listSubscriptionDefinitionVersions_subscriptionDefinitionId,
    listSubscriptionDefinitionVersionsResponse_nextToken,
    listSubscriptionDefinitionVersionsResponse_versions,
    listSubscriptionDefinitionVersionsResponse_httpStatus,

    -- ** ListSubscriptionDefinitions
    listSubscriptionDefinitions_nextToken,
    listSubscriptionDefinitions_maxResults,
    listSubscriptionDefinitionsResponse_nextToken,
    listSubscriptionDefinitionsResponse_definitions,
    listSubscriptionDefinitionsResponse_httpStatus,

    -- ** ListTagsForResource
    listTagsForResource_resourceArn,
    listTagsForResourceResponse_tags,
    listTagsForResourceResponse_httpStatus,

    -- ** ResetDeployments
    resetDeployments_force,
    resetDeployments_amznClientToken,
    resetDeployments_groupId,
    resetDeploymentsResponse_deploymentId,
    resetDeploymentsResponse_deploymentArn,
    resetDeploymentsResponse_httpStatus,

    -- ** StartBulkDeployment
    startBulkDeployment_tags,
    startBulkDeployment_amznClientToken,
    startBulkDeployment_executionRoleArn,
    startBulkDeployment_inputFileUri,
    startBulkDeploymentResponse_bulkDeploymentArn,
    startBulkDeploymentResponse_bulkDeploymentId,
    startBulkDeploymentResponse_httpStatus,

    -- ** StopBulkDeployment
    stopBulkDeployment_bulkDeploymentId,
    stopBulkDeploymentResponse_httpStatus,

    -- ** TagResource
    tagResource_tags,
    tagResource_resourceArn,

    -- ** UntagResource
    untagResource_tagKeys,
    untagResource_resourceArn,

    -- ** UpdateConnectivityInfo
    updateConnectivityInfo_connectivityInfo,
    updateConnectivityInfo_thingName,
    updateConnectivityInfoResponse_message,
    updateConnectivityInfoResponse_version,
    updateConnectivityInfoResponse_httpStatus,

    -- ** UpdateConnectorDefinition
    updateConnectorDefinition_name,
    updateConnectorDefinition_connectorDefinitionId,
    updateConnectorDefinitionResponse_httpStatus,

    -- ** UpdateCoreDefinition
    updateCoreDefinition_name,
    updateCoreDefinition_coreDefinitionId,
    updateCoreDefinitionResponse_httpStatus,

    -- ** UpdateDeviceDefinition
    updateDeviceDefinition_name,
    updateDeviceDefinition_deviceDefinitionId,
    updateDeviceDefinitionResponse_httpStatus,

    -- ** UpdateFunctionDefinition
    updateFunctionDefinition_name,
    updateFunctionDefinition_functionDefinitionId,
    updateFunctionDefinitionResponse_httpStatus,

    -- ** UpdateGroup
    updateGroup_name,
    updateGroup_groupId,
    updateGroupResponse_httpStatus,

    -- ** UpdateGroupCertificateConfiguration
    updateGroupCertificateConfiguration_certificateExpiryInMilliseconds,
    updateGroupCertificateConfiguration_groupId,
    updateGroupCertificateConfigurationResponse_certificateExpiryInMilliseconds,
    updateGroupCertificateConfigurationResponse_certificateAuthorityExpiryInMilliseconds,
    updateGroupCertificateConfigurationResponse_groupId,
    updateGroupCertificateConfigurationResponse_httpStatus,

    -- ** UpdateLoggerDefinition
    updateLoggerDefinition_name,
    updateLoggerDefinition_loggerDefinitionId,
    updateLoggerDefinitionResponse_httpStatus,

    -- ** UpdateResourceDefinition
    updateResourceDefinition_name,
    updateResourceDefinition_resourceDefinitionId,
    updateResourceDefinitionResponse_httpStatus,

    -- ** UpdateSubscriptionDefinition
    updateSubscriptionDefinition_name,
    updateSubscriptionDefinition_subscriptionDefinitionId,
    updateSubscriptionDefinitionResponse_httpStatus,

    -- ** UpdateThingRuntimeConfiguration
    updateThingRuntimeConfiguration_telemetryConfiguration,
    updateThingRuntimeConfiguration_thingName,
    updateThingRuntimeConfigurationResponse_httpStatus,

    -- * Types

    -- ** BulkDeployment
    bulkDeployment_bulkDeploymentArn,
    bulkDeployment_bulkDeploymentId,
    bulkDeployment_createdAt,

    -- ** BulkDeploymentMetrics
    bulkDeploymentMetrics_recordsProcessed,
    bulkDeploymentMetrics_retryAttempts,
    bulkDeploymentMetrics_invalidInputRecords,

    -- ** BulkDeploymentResult
    bulkDeploymentResult_deploymentStatus,
    bulkDeploymentResult_errorMessage,
    bulkDeploymentResult_deploymentId,
    bulkDeploymentResult_errorDetails,
    bulkDeploymentResult_deploymentType,
    bulkDeploymentResult_deploymentArn,
    bulkDeploymentResult_groupArn,
    bulkDeploymentResult_createdAt,

    -- ** ConnectivityInfo
    connectivityInfo_portNumber,
    connectivityInfo_metadata,
    connectivityInfo_id,
    connectivityInfo_hostAddress,

    -- ** Connector
    connector_parameters,
    connector_connectorArn,
    connector_id,

    -- ** ConnectorDefinitionVersion
    connectorDefinitionVersion_connectors,

    -- ** Core
    core_syncShadow,
    core_thingArn,
    core_id,
    core_certificateArn,

    -- ** CoreDefinitionVersion
    coreDefinitionVersion_cores,

    -- ** DefinitionInformation
    definitionInformation_tags,
    definitionInformation_lastUpdatedTimestamp,
    definitionInformation_name,
    definitionInformation_arn,
    definitionInformation_latestVersion,
    definitionInformation_id,
    definitionInformation_creationTimestamp,
    definitionInformation_latestVersionArn,

    -- ** Deployment
    deployment_deploymentId,
    deployment_deploymentType,
    deployment_deploymentArn,
    deployment_groupArn,
    deployment_createdAt,

    -- ** Device
    device_syncShadow,
    device_thingArn,
    device_id,
    device_certificateArn,

    -- ** DeviceDefinitionVersion
    deviceDefinitionVersion_devices,

    -- ** ErrorDetail
    errorDetail_detailedErrorCode,
    errorDetail_detailedErrorMessage,

    -- ** Function
    function_functionArn,
    function_functionConfiguration,
    function_id,

    -- ** FunctionConfiguration
    functionConfiguration_timeout,
    functionConfiguration_memorySize,
    functionConfiguration_execArgs,
    functionConfiguration_environment,
    functionConfiguration_executable,
    functionConfiguration_pinned,
    functionConfiguration_encodingType,

    -- ** FunctionConfigurationEnvironment
    functionConfigurationEnvironment_resourceAccessPolicies,
    functionConfigurationEnvironment_execution,
    functionConfigurationEnvironment_accessSysfs,
    functionConfigurationEnvironment_variables,

    -- ** FunctionDefaultConfig
    functionDefaultConfig_execution,

    -- ** FunctionDefaultExecutionConfig
    functionDefaultExecutionConfig_isolationMode,
    functionDefaultExecutionConfig_runAs,

    -- ** FunctionDefinitionVersion
    functionDefinitionVersion_functions,
    functionDefinitionVersion_defaultConfig,

    -- ** FunctionExecutionConfig
    functionExecutionConfig_isolationMode,
    functionExecutionConfig_runAs,

    -- ** FunctionRunAsConfig
    functionRunAsConfig_gid,
    functionRunAsConfig_uid,

    -- ** GreengrassLogger
    greengrassLogger_space,
    greengrassLogger_type,
    greengrassLogger_level,
    greengrassLogger_id,
    greengrassLogger_component,

    -- ** GroupCertificateAuthorityProperties
    groupCertificateAuthorityProperties_groupCertificateAuthorityArn,
    groupCertificateAuthorityProperties_groupCertificateAuthorityId,

    -- ** GroupInformation
    groupInformation_lastUpdatedTimestamp,
    groupInformation_name,
    groupInformation_arn,
    groupInformation_latestVersion,
    groupInformation_id,
    groupInformation_creationTimestamp,
    groupInformation_latestVersionArn,

    -- ** GroupOwnerSetting
    groupOwnerSetting_autoAddGroupOwner,
    groupOwnerSetting_groupOwner,

    -- ** GroupVersion
    groupVersion_resourceDefinitionVersionArn,
    groupVersion_functionDefinitionVersionArn,
    groupVersion_subscriptionDefinitionVersionArn,
    groupVersion_connectorDefinitionVersionArn,
    groupVersion_loggerDefinitionVersionArn,
    groupVersion_coreDefinitionVersionArn,
    groupVersion_deviceDefinitionVersionArn,

    -- ** LocalDeviceResourceData
    localDeviceResourceData_groupOwnerSetting,
    localDeviceResourceData_sourcePath,

    -- ** LocalVolumeResourceData
    localVolumeResourceData_destinationPath,
    localVolumeResourceData_groupOwnerSetting,
    localVolumeResourceData_sourcePath,

    -- ** LoggerDefinitionVersion
    loggerDefinitionVersion_loggers,

    -- ** Resource
    resource_resourceDataContainer,
    resource_id,
    resource_name,

    -- ** ResourceAccessPolicy
    resourceAccessPolicy_permission,
    resourceAccessPolicy_resourceId,

    -- ** ResourceDataContainer
    resourceDataContainer_localVolumeResourceData,
    resourceDataContainer_secretsManagerSecretResourceData,
    resourceDataContainer_s3MachineLearningModelResourceData,
    resourceDataContainer_sageMakerMachineLearningModelResourceData,
    resourceDataContainer_localDeviceResourceData,

    -- ** ResourceDefinitionVersion
    resourceDefinitionVersion_resources,

    -- ** ResourceDownloadOwnerSetting
    resourceDownloadOwnerSetting_groupOwner,
    resourceDownloadOwnerSetting_groupPermission,

    -- ** RuntimeConfiguration
    runtimeConfiguration_telemetryConfiguration,

    -- ** S3MachineLearningModelResourceData
    s3MachineLearningModelResourceData_destinationPath,
    s3MachineLearningModelResourceData_ownerSetting,
    s3MachineLearningModelResourceData_s3Uri,

    -- ** SageMakerMachineLearningModelResourceData
    sageMakerMachineLearningModelResourceData_destinationPath,
    sageMakerMachineLearningModelResourceData_sageMakerJobArn,
    sageMakerMachineLearningModelResourceData_ownerSetting,

    -- ** SecretsManagerSecretResourceData
    secretsManagerSecretResourceData_additionalStagingLabelsToDownload,
    secretsManagerSecretResourceData_arn,

    -- ** Subscription
    subscription_target,
    subscription_id,
    subscription_subject,
    subscription_source,

    -- ** SubscriptionDefinitionVersion
    subscriptionDefinitionVersion_subscriptions,

    -- ** TelemetryConfiguration
    telemetryConfiguration_configurationSyncStatus,
    telemetryConfiguration_telemetry,

    -- ** TelemetryConfigurationUpdate
    telemetryConfigurationUpdate_telemetry,

    -- ** VersionInformation
    versionInformation_arn,
    versionInformation_id,
    versionInformation_creationTimestamp,
    versionInformation_version,
  )
where

import Amazonka.Greengrass.AssociateRoleToGroup
import Amazonka.Greengrass.AssociateServiceRoleToAccount
import Amazonka.Greengrass.CreateConnectorDefinition
import Amazonka.Greengrass.CreateConnectorDefinitionVersion
import Amazonka.Greengrass.CreateCoreDefinition
import Amazonka.Greengrass.CreateCoreDefinitionVersion
import Amazonka.Greengrass.CreateDeployment
import Amazonka.Greengrass.CreateDeviceDefinition
import Amazonka.Greengrass.CreateDeviceDefinitionVersion
import Amazonka.Greengrass.CreateFunctionDefinition
import Amazonka.Greengrass.CreateFunctionDefinitionVersion
import Amazonka.Greengrass.CreateGroup
import Amazonka.Greengrass.CreateGroupCertificateAuthority
import Amazonka.Greengrass.CreateGroupVersion
import Amazonka.Greengrass.CreateLoggerDefinition
import Amazonka.Greengrass.CreateLoggerDefinitionVersion
import Amazonka.Greengrass.CreateResourceDefinition
import Amazonka.Greengrass.CreateResourceDefinitionVersion
import Amazonka.Greengrass.CreateSoftwareUpdateJob
import Amazonka.Greengrass.CreateSubscriptionDefinition
import Amazonka.Greengrass.CreateSubscriptionDefinitionVersion
import Amazonka.Greengrass.DeleteConnectorDefinition
import Amazonka.Greengrass.DeleteCoreDefinition
import Amazonka.Greengrass.DeleteDeviceDefinition
import Amazonka.Greengrass.DeleteFunctionDefinition
import Amazonka.Greengrass.DeleteGroup
import Amazonka.Greengrass.DeleteLoggerDefinition
import Amazonka.Greengrass.DeleteResourceDefinition
import Amazonka.Greengrass.DeleteSubscriptionDefinition
import Amazonka.Greengrass.DisassociateRoleFromGroup
import Amazonka.Greengrass.DisassociateServiceRoleFromAccount
import Amazonka.Greengrass.GetAssociatedRole
import Amazonka.Greengrass.GetBulkDeploymentStatus
import Amazonka.Greengrass.GetConnectivityInfo
import Amazonka.Greengrass.GetConnectorDefinition
import Amazonka.Greengrass.GetConnectorDefinitionVersion
import Amazonka.Greengrass.GetCoreDefinition
import Amazonka.Greengrass.GetCoreDefinitionVersion
import Amazonka.Greengrass.GetDeploymentStatus
import Amazonka.Greengrass.GetDeviceDefinition
import Amazonka.Greengrass.GetDeviceDefinitionVersion
import Amazonka.Greengrass.GetFunctionDefinition
import Amazonka.Greengrass.GetFunctionDefinitionVersion
import Amazonka.Greengrass.GetGroup
import Amazonka.Greengrass.GetGroupCertificateAuthority
import Amazonka.Greengrass.GetGroupCertificateConfiguration
import Amazonka.Greengrass.GetGroupVersion
import Amazonka.Greengrass.GetLoggerDefinition
import Amazonka.Greengrass.GetLoggerDefinitionVersion
import Amazonka.Greengrass.GetResourceDefinition
import Amazonka.Greengrass.GetResourceDefinitionVersion
import Amazonka.Greengrass.GetServiceRoleForAccount
import Amazonka.Greengrass.GetSubscriptionDefinition
import Amazonka.Greengrass.GetSubscriptionDefinitionVersion
import Amazonka.Greengrass.GetThingRuntimeConfiguration
import Amazonka.Greengrass.ListBulkDeploymentDetailedReports
import Amazonka.Greengrass.ListBulkDeployments
import Amazonka.Greengrass.ListConnectorDefinitionVersions
import Amazonka.Greengrass.ListConnectorDefinitions
import Amazonka.Greengrass.ListCoreDefinitionVersions
import Amazonka.Greengrass.ListCoreDefinitions
import Amazonka.Greengrass.ListDeployments
import Amazonka.Greengrass.ListDeviceDefinitionVersions
import Amazonka.Greengrass.ListDeviceDefinitions
import Amazonka.Greengrass.ListFunctionDefinitionVersions
import Amazonka.Greengrass.ListFunctionDefinitions
import Amazonka.Greengrass.ListGroupCertificateAuthorities
import Amazonka.Greengrass.ListGroupVersions
import Amazonka.Greengrass.ListGroups
import Amazonka.Greengrass.ListLoggerDefinitionVersions
import Amazonka.Greengrass.ListLoggerDefinitions
import Amazonka.Greengrass.ListResourceDefinitionVersions
import Amazonka.Greengrass.ListResourceDefinitions
import Amazonka.Greengrass.ListSubscriptionDefinitionVersions
import Amazonka.Greengrass.ListSubscriptionDefinitions
import Amazonka.Greengrass.ListTagsForResource
import Amazonka.Greengrass.ResetDeployments
import Amazonka.Greengrass.StartBulkDeployment
import Amazonka.Greengrass.StopBulkDeployment
import Amazonka.Greengrass.TagResource
import Amazonka.Greengrass.Types.BulkDeployment
import Amazonka.Greengrass.Types.BulkDeploymentMetrics
import Amazonka.Greengrass.Types.BulkDeploymentResult
import Amazonka.Greengrass.Types.ConnectivityInfo
import Amazonka.Greengrass.Types.Connector
import Amazonka.Greengrass.Types.ConnectorDefinitionVersion
import Amazonka.Greengrass.Types.Core
import Amazonka.Greengrass.Types.CoreDefinitionVersion
import Amazonka.Greengrass.Types.DefinitionInformation
import Amazonka.Greengrass.Types.Deployment
import Amazonka.Greengrass.Types.Device
import Amazonka.Greengrass.Types.DeviceDefinitionVersion
import Amazonka.Greengrass.Types.ErrorDetail
import Amazonka.Greengrass.Types.Function
import Amazonka.Greengrass.Types.FunctionConfiguration
import Amazonka.Greengrass.Types.FunctionConfigurationEnvironment
import Amazonka.Greengrass.Types.FunctionDefaultConfig
import Amazonka.Greengrass.Types.FunctionDefaultExecutionConfig
import Amazonka.Greengrass.Types.FunctionDefinitionVersion
import Amazonka.Greengrass.Types.FunctionExecutionConfig
import Amazonka.Greengrass.Types.FunctionRunAsConfig
import Amazonka.Greengrass.Types.GreengrassLogger
import Amazonka.Greengrass.Types.GroupCertificateAuthorityProperties
import Amazonka.Greengrass.Types.GroupInformation
import Amazonka.Greengrass.Types.GroupOwnerSetting
import Amazonka.Greengrass.Types.GroupVersion
import Amazonka.Greengrass.Types.LocalDeviceResourceData
import Amazonka.Greengrass.Types.LocalVolumeResourceData
import Amazonka.Greengrass.Types.LoggerDefinitionVersion
import Amazonka.Greengrass.Types.Resource
import Amazonka.Greengrass.Types.ResourceAccessPolicy
import Amazonka.Greengrass.Types.ResourceDataContainer
import Amazonka.Greengrass.Types.ResourceDefinitionVersion
import Amazonka.Greengrass.Types.ResourceDownloadOwnerSetting
import Amazonka.Greengrass.Types.RuntimeConfiguration
import Amazonka.Greengrass.Types.S3MachineLearningModelResourceData
import Amazonka.Greengrass.Types.SageMakerMachineLearningModelResourceData
import Amazonka.Greengrass.Types.SecretsManagerSecretResourceData
import Amazonka.Greengrass.Types.Subscription
import Amazonka.Greengrass.Types.SubscriptionDefinitionVersion
import Amazonka.Greengrass.Types.TelemetryConfiguration
import Amazonka.Greengrass.Types.TelemetryConfigurationUpdate
import Amazonka.Greengrass.Types.VersionInformation
import Amazonka.Greengrass.UntagResource
import Amazonka.Greengrass.UpdateConnectivityInfo
import Amazonka.Greengrass.UpdateConnectorDefinition
import Amazonka.Greengrass.UpdateCoreDefinition
import Amazonka.Greengrass.UpdateDeviceDefinition
import Amazonka.Greengrass.UpdateFunctionDefinition
import Amazonka.Greengrass.UpdateGroup
import Amazonka.Greengrass.UpdateGroupCertificateConfiguration
import Amazonka.Greengrass.UpdateLoggerDefinition
import Amazonka.Greengrass.UpdateResourceDefinition
import Amazonka.Greengrass.UpdateSubscriptionDefinition
import Amazonka.Greengrass.UpdateThingRuntimeConfiguration
