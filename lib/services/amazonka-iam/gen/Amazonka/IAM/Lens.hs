{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.IAM.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IAM.Lens
  ( -- * Operations

    -- ** AddClientIDToOpenIDConnectProvider
    addClientIDToOpenIDConnectProvider_openIDConnectProviderArn,
    addClientIDToOpenIDConnectProvider_clientID,

    -- ** AddRoleToInstanceProfile
    addRoleToInstanceProfile_instanceProfileName,
    addRoleToInstanceProfile_roleName,

    -- ** AddUserToGroup
    addUserToGroup_groupName,
    addUserToGroup_userName,

    -- ** AttachGroupPolicy
    attachGroupPolicy_groupName,
    attachGroupPolicy_policyArn,

    -- ** AttachRolePolicy
    attachRolePolicy_roleName,
    attachRolePolicy_policyArn,

    -- ** AttachUserPolicy
    attachUserPolicy_userName,
    attachUserPolicy_policyArn,

    -- ** ChangePassword
    changePassword_oldPassword,
    changePassword_newPassword,

    -- ** CreateAccessKey
    createAccessKey_userName,
    createAccessKeyResponse_httpStatus,
    createAccessKeyResponse_accessKey,

    -- ** CreateAccountAlias
    createAccountAlias_accountAlias,

    -- ** CreateGroup
    createGroup_path,
    createGroup_groupName,
    createGroupResponse_httpStatus,
    createGroupResponse_group,

    -- ** CreateInstanceProfile
    createInstanceProfile_tags,
    createInstanceProfile_path,
    createInstanceProfile_instanceProfileName,
    createInstanceProfileResponse_httpStatus,
    createInstanceProfileResponse_instanceProfile,

    -- ** CreateLoginProfile
    createLoginProfile_passwordResetRequired,
    createLoginProfile_userName,
    createLoginProfile_password,
    createLoginProfileResponse_httpStatus,
    createLoginProfileResponse_loginProfile,

    -- ** CreateOpenIDConnectProvider
    createOpenIDConnectProvider_tags,
    createOpenIDConnectProvider_clientIDList,
    createOpenIDConnectProvider_url,
    createOpenIDConnectProvider_thumbprintList,
    createOpenIDConnectProviderResponse_tags,
    createOpenIDConnectProviderResponse_openIDConnectProviderArn,
    createOpenIDConnectProviderResponse_httpStatus,

    -- ** CreatePolicy
    createPolicy_tags,
    createPolicy_path,
    createPolicy_description,
    createPolicy_policyName,
    createPolicy_policyDocument,
    createPolicyResponse_policy,
    createPolicyResponse_httpStatus,

    -- ** CreatePolicyVersion
    createPolicyVersion_setAsDefault,
    createPolicyVersion_policyArn,
    createPolicyVersion_policyDocument,
    createPolicyVersionResponse_policyVersion,
    createPolicyVersionResponse_httpStatus,

    -- ** CreateRole
    createRole_tags,
    createRole_path,
    createRole_description,
    createRole_permissionsBoundary,
    createRole_maxSessionDuration,
    createRole_roleName,
    createRole_assumeRolePolicyDocument,
    createRoleResponse_httpStatus,
    createRoleResponse_role,

    -- ** CreateSAMLProvider
    createSAMLProvider_tags,
    createSAMLProvider_sAMLMetadataDocument,
    createSAMLProvider_name,
    createSAMLProviderResponse_tags,
    createSAMLProviderResponse_sAMLProviderArn,
    createSAMLProviderResponse_httpStatus,

    -- ** CreateServiceLinkedRole
    createServiceLinkedRole_customSuffix,
    createServiceLinkedRole_description,
    createServiceLinkedRole_aWSServiceName,
    createServiceLinkedRoleResponse_role,
    createServiceLinkedRoleResponse_httpStatus,

    -- ** CreateServiceSpecificCredential
    createServiceSpecificCredential_userName,
    createServiceSpecificCredential_serviceName,
    createServiceSpecificCredentialResponse_serviceSpecificCredential,
    createServiceSpecificCredentialResponse_httpStatus,

    -- ** CreateUser
    createUser_tags,
    createUser_path,
    createUser_permissionsBoundary,
    createUser_userName,
    createUserResponse_user,
    createUserResponse_httpStatus,

    -- ** CreateVirtualMFADevice
    createVirtualMFADevice_tags,
    createVirtualMFADevice_path,
    createVirtualMFADevice_virtualMFADeviceName,
    createVirtualMFADeviceResponse_httpStatus,
    createVirtualMFADeviceResponse_virtualMFADevice,

    -- ** DeactivateMFADevice
    deactivateMFADevice_userName,
    deactivateMFADevice_serialNumber,

    -- ** DeleteAccessKey
    deleteAccessKey_userName,
    deleteAccessKey_accessKeyId,

    -- ** DeleteAccountAlias
    deleteAccountAlias_accountAlias,

    -- ** DeleteAccountPasswordPolicy

    -- ** DeleteGroup
    deleteGroup_groupName,

    -- ** DeleteGroupPolicy
    deleteGroupPolicy_groupName,
    deleteGroupPolicy_policyName,

    -- ** DeleteInstanceProfile
    deleteInstanceProfile_instanceProfileName,

    -- ** DeleteLoginProfile
    deleteLoginProfile_userName,

    -- ** DeleteOpenIDConnectProvider
    deleteOpenIDConnectProvider_openIDConnectProviderArn,

    -- ** DeletePolicy
    deletePolicy_policyArn,

    -- ** DeletePolicyVersion
    deletePolicyVersion_policyArn,
    deletePolicyVersion_versionId,

    -- ** DeleteRole
    deleteRole_roleName,

    -- ** DeleteRolePermissionsBoundary
    deleteRolePermissionsBoundary_roleName,

    -- ** DeleteRolePolicy
    deleteRolePolicy_roleName,
    deleteRolePolicy_policyName,

    -- ** DeleteSAMLProvider
    deleteSAMLProvider_sAMLProviderArn,

    -- ** DeleteSSHPublicKey
    deleteSSHPublicKey_userName,
    deleteSSHPublicKey_sSHPublicKeyId,

    -- ** DeleteServerCertificate
    deleteServerCertificate_serverCertificateName,

    -- ** DeleteServiceLinkedRole
    deleteServiceLinkedRole_roleName,
    deleteServiceLinkedRoleResponse_httpStatus,
    deleteServiceLinkedRoleResponse_deletionTaskId,

    -- ** DeleteServiceSpecificCredential
    deleteServiceSpecificCredential_userName,
    deleteServiceSpecificCredential_serviceSpecificCredentialId,

    -- ** DeleteSigningCertificate
    deleteSigningCertificate_userName,
    deleteSigningCertificate_certificateId,

    -- ** DeleteUser
    deleteUser_userName,

    -- ** DeleteUserPermissionsBoundary
    deleteUserPermissionsBoundary_userName,

    -- ** DeleteUserPolicy
    deleteUserPolicy_userName,
    deleteUserPolicy_policyName,

    -- ** DeleteVirtualMFADevice
    deleteVirtualMFADevice_serialNumber,

    -- ** DetachGroupPolicy
    detachGroupPolicy_groupName,
    detachGroupPolicy_policyArn,

    -- ** DetachRolePolicy
    detachRolePolicy_roleName,
    detachRolePolicy_policyArn,

    -- ** DetachUserPolicy
    detachUserPolicy_userName,
    detachUserPolicy_policyArn,

    -- ** EnableMFADevice
    enableMFADevice_userName,
    enableMFADevice_serialNumber,
    enableMFADevice_authenticationCode1,
    enableMFADevice_authenticationCode2,

    -- ** GenerateCredentialReport
    generateCredentialReportResponse_state,
    generateCredentialReportResponse_description,
    generateCredentialReportResponse_httpStatus,

    -- ** GenerateOrganizationsAccessReport
    generateOrganizationsAccessReport_organizationsPolicyId,
    generateOrganizationsAccessReport_entityPath,
    generateOrganizationsAccessReportResponse_jobId,
    generateOrganizationsAccessReportResponse_httpStatus,

    -- ** GenerateServiceLastAccessedDetails
    generateServiceLastAccessedDetails_granularity,
    generateServiceLastAccessedDetails_arn,
    generateServiceLastAccessedDetailsResponse_jobId,
    generateServiceLastAccessedDetailsResponse_httpStatus,

    -- ** GetAccessKeyLastUsed
    getAccessKeyLastUsed_accessKeyId,
    getAccessKeyLastUsedResponse_accessKeyLastUsed,
    getAccessKeyLastUsedResponse_userName,
    getAccessKeyLastUsedResponse_httpStatus,

    -- ** GetAccountAuthorizationDetails
    getAccountAuthorizationDetails_marker,
    getAccountAuthorizationDetails_maxItems,
    getAccountAuthorizationDetails_filter,
    getAccountAuthorizationDetailsResponse_marker,
    getAccountAuthorizationDetailsResponse_isTruncated,
    getAccountAuthorizationDetailsResponse_policies,
    getAccountAuthorizationDetailsResponse_roleDetailList,
    getAccountAuthorizationDetailsResponse_userDetailList,
    getAccountAuthorizationDetailsResponse_groupDetailList,
    getAccountAuthorizationDetailsResponse_httpStatus,

    -- ** GetAccountPasswordPolicy
    getAccountPasswordPolicyResponse_httpStatus,
    getAccountPasswordPolicyResponse_passwordPolicy,

    -- ** GetAccountSummary
    getAccountSummaryResponse_summaryMap,
    getAccountSummaryResponse_httpStatus,

    -- ** GetContextKeysForCustomPolicy
    getContextKeysForCustomPolicy_policyInputList,
    getContextKeysForPolicyResponse_contextKeyNames,

    -- ** GetContextKeysForPrincipalPolicy
    getContextKeysForPrincipalPolicy_policyInputList,
    getContextKeysForPrincipalPolicy_policySourceArn,
    getContextKeysForPolicyResponse_contextKeyNames,

    -- ** GetCredentialReport
    getCredentialReportResponse_reportFormat,
    getCredentialReportResponse_content,
    getCredentialReportResponse_generatedTime,
    getCredentialReportResponse_httpStatus,

    -- ** GetGroup
    getGroup_marker,
    getGroup_maxItems,
    getGroup_groupName,
    getGroupResponse_marker,
    getGroupResponse_isTruncated,
    getGroupResponse_httpStatus,
    getGroupResponse_group,
    getGroupResponse_users,

    -- ** GetGroupPolicy
    getGroupPolicy_groupName,
    getGroupPolicy_policyName,
    getGroupPolicyResponse_httpStatus,
    getGroupPolicyResponse_groupName,
    getGroupPolicyResponse_policyName,
    getGroupPolicyResponse_policyDocument,

    -- ** GetInstanceProfile
    getInstanceProfile_instanceProfileName,
    getInstanceProfileResponse_httpStatus,
    getInstanceProfileResponse_instanceProfile,

    -- ** GetLoginProfile
    getLoginProfile_userName,
    getLoginProfileResponse_httpStatus,
    getLoginProfileResponse_loginProfile,

    -- ** GetOpenIDConnectProvider
    getOpenIDConnectProvider_openIDConnectProviderArn,
    getOpenIDConnectProviderResponse_tags,
    getOpenIDConnectProviderResponse_clientIDList,
    getOpenIDConnectProviderResponse_thumbprintList,
    getOpenIDConnectProviderResponse_url,
    getOpenIDConnectProviderResponse_createDate,
    getOpenIDConnectProviderResponse_httpStatus,

    -- ** GetOrganizationsAccessReport
    getOrganizationsAccessReport_marker,
    getOrganizationsAccessReport_maxItems,
    getOrganizationsAccessReport_sortKey,
    getOrganizationsAccessReport_jobId,
    getOrganizationsAccessReportResponse_numberOfServicesNotAccessed,
    getOrganizationsAccessReportResponse_marker,
    getOrganizationsAccessReportResponse_accessDetails,
    getOrganizationsAccessReportResponse_errorDetails,
    getOrganizationsAccessReportResponse_isTruncated,
    getOrganizationsAccessReportResponse_numberOfServicesAccessible,
    getOrganizationsAccessReportResponse_jobCompletionDate,
    getOrganizationsAccessReportResponse_httpStatus,
    getOrganizationsAccessReportResponse_jobStatus,
    getOrganizationsAccessReportResponse_jobCreationDate,

    -- ** GetPolicy
    getPolicy_policyArn,
    getPolicyResponse_policy,
    getPolicyResponse_httpStatus,

    -- ** GetPolicyVersion
    getPolicyVersion_policyArn,
    getPolicyVersion_versionId,
    getPolicyVersionResponse_policyVersion,
    getPolicyVersionResponse_httpStatus,

    -- ** GetRole
    getRole_roleName,
    getRoleResponse_httpStatus,
    getRoleResponse_role,

    -- ** GetRolePolicy
    getRolePolicy_roleName,
    getRolePolicy_policyName,
    getRolePolicyResponse_httpStatus,
    getRolePolicyResponse_roleName,
    getRolePolicyResponse_policyName,
    getRolePolicyResponse_policyDocument,

    -- ** GetSAMLProvider
    getSAMLProvider_sAMLProviderArn,
    getSAMLProviderResponse_tags,
    getSAMLProviderResponse_sAMLMetadataDocument,
    getSAMLProviderResponse_createDate,
    getSAMLProviderResponse_validUntil,
    getSAMLProviderResponse_httpStatus,

    -- ** GetSSHPublicKey
    getSSHPublicKey_userName,
    getSSHPublicKey_sSHPublicKeyId,
    getSSHPublicKey_encoding,
    getSSHPublicKeyResponse_sSHPublicKey,
    getSSHPublicKeyResponse_httpStatus,

    -- ** GetServerCertificate
    getServerCertificate_serverCertificateName,
    getServerCertificateResponse_httpStatus,
    getServerCertificateResponse_serverCertificate,

    -- ** GetServiceLastAccessedDetails
    getServiceLastAccessedDetails_marker,
    getServiceLastAccessedDetails_maxItems,
    getServiceLastAccessedDetails_jobId,
    getServiceLastAccessedDetailsResponse_marker,
    getServiceLastAccessedDetailsResponse_isTruncated,
    getServiceLastAccessedDetailsResponse_error,
    getServiceLastAccessedDetailsResponse_jobType,
    getServiceLastAccessedDetailsResponse_httpStatus,
    getServiceLastAccessedDetailsResponse_jobStatus,
    getServiceLastAccessedDetailsResponse_jobCreationDate,
    getServiceLastAccessedDetailsResponse_servicesLastAccessed,
    getServiceLastAccessedDetailsResponse_jobCompletionDate,

    -- ** GetServiceLastAccessedDetailsWithEntities
    getServiceLastAccessedDetailsWithEntities_marker,
    getServiceLastAccessedDetailsWithEntities_maxItems,
    getServiceLastAccessedDetailsWithEntities_jobId,
    getServiceLastAccessedDetailsWithEntities_serviceNamespace,
    getServiceLastAccessedDetailsWithEntitiesResponse_marker,
    getServiceLastAccessedDetailsWithEntitiesResponse_isTruncated,
    getServiceLastAccessedDetailsWithEntitiesResponse_error,
    getServiceLastAccessedDetailsWithEntitiesResponse_httpStatus,
    getServiceLastAccessedDetailsWithEntitiesResponse_jobStatus,
    getServiceLastAccessedDetailsWithEntitiesResponse_jobCreationDate,
    getServiceLastAccessedDetailsWithEntitiesResponse_jobCompletionDate,
    getServiceLastAccessedDetailsWithEntitiesResponse_entityDetailsList,

    -- ** GetServiceLinkedRoleDeletionStatus
    getServiceLinkedRoleDeletionStatus_deletionTaskId,
    getServiceLinkedRoleDeletionStatusResponse_reason,
    getServiceLinkedRoleDeletionStatusResponse_httpStatus,
    getServiceLinkedRoleDeletionStatusResponse_status,

    -- ** GetUser
    getUser_userName,
    getUserResponse_httpStatus,
    getUserResponse_user,

    -- ** GetUserPolicy
    getUserPolicy_userName,
    getUserPolicy_policyName,
    getUserPolicyResponse_httpStatus,
    getUserPolicyResponse_userName,
    getUserPolicyResponse_policyName,
    getUserPolicyResponse_policyDocument,

    -- ** ListAccessKeys
    listAccessKeys_marker,
    listAccessKeys_userName,
    listAccessKeys_maxItems,
    listAccessKeysResponse_marker,
    listAccessKeysResponse_isTruncated,
    listAccessKeysResponse_httpStatus,
    listAccessKeysResponse_accessKeyMetadata,

    -- ** ListAccountAliases
    listAccountAliases_marker,
    listAccountAliases_maxItems,
    listAccountAliasesResponse_marker,
    listAccountAliasesResponse_isTruncated,
    listAccountAliasesResponse_httpStatus,
    listAccountAliasesResponse_accountAliases,

    -- ** ListAttachedGroupPolicies
    listAttachedGroupPolicies_marker,
    listAttachedGroupPolicies_maxItems,
    listAttachedGroupPolicies_pathPrefix,
    listAttachedGroupPolicies_groupName,
    listAttachedGroupPoliciesResponse_marker,
    listAttachedGroupPoliciesResponse_isTruncated,
    listAttachedGroupPoliciesResponse_attachedPolicies,
    listAttachedGroupPoliciesResponse_httpStatus,

    -- ** ListAttachedRolePolicies
    listAttachedRolePolicies_marker,
    listAttachedRolePolicies_maxItems,
    listAttachedRolePolicies_pathPrefix,
    listAttachedRolePolicies_roleName,
    listAttachedRolePoliciesResponse_marker,
    listAttachedRolePoliciesResponse_isTruncated,
    listAttachedRolePoliciesResponse_attachedPolicies,
    listAttachedRolePoliciesResponse_httpStatus,

    -- ** ListAttachedUserPolicies
    listAttachedUserPolicies_marker,
    listAttachedUserPolicies_maxItems,
    listAttachedUserPolicies_pathPrefix,
    listAttachedUserPolicies_userName,
    listAttachedUserPoliciesResponse_marker,
    listAttachedUserPoliciesResponse_isTruncated,
    listAttachedUserPoliciesResponse_attachedPolicies,
    listAttachedUserPoliciesResponse_httpStatus,

    -- ** ListEntitiesForPolicy
    listEntitiesForPolicy_marker,
    listEntitiesForPolicy_maxItems,
    listEntitiesForPolicy_entityFilter,
    listEntitiesForPolicy_policyUsageFilter,
    listEntitiesForPolicy_pathPrefix,
    listEntitiesForPolicy_policyArn,
    listEntitiesForPolicyResponse_marker,
    listEntitiesForPolicyResponse_policyRoles,
    listEntitiesForPolicyResponse_isTruncated,
    listEntitiesForPolicyResponse_policyGroups,
    listEntitiesForPolicyResponse_policyUsers,
    listEntitiesForPolicyResponse_httpStatus,

    -- ** ListGroupPolicies
    listGroupPolicies_marker,
    listGroupPolicies_maxItems,
    listGroupPolicies_groupName,
    listGroupPoliciesResponse_marker,
    listGroupPoliciesResponse_isTruncated,
    listGroupPoliciesResponse_httpStatus,
    listGroupPoliciesResponse_policyNames,

    -- ** ListGroups
    listGroups_marker,
    listGroups_maxItems,
    listGroups_pathPrefix,
    listGroupsResponse_marker,
    listGroupsResponse_isTruncated,
    listGroupsResponse_httpStatus,
    listGroupsResponse_groups,

    -- ** ListGroupsForUser
    listGroupsForUser_marker,
    listGroupsForUser_maxItems,
    listGroupsForUser_userName,
    listGroupsForUserResponse_marker,
    listGroupsForUserResponse_isTruncated,
    listGroupsForUserResponse_httpStatus,
    listGroupsForUserResponse_groups,

    -- ** ListInstanceProfileTags
    listInstanceProfileTags_marker,
    listInstanceProfileTags_maxItems,
    listInstanceProfileTags_instanceProfileName,
    listInstanceProfileTagsResponse_marker,
    listInstanceProfileTagsResponse_isTruncated,
    listInstanceProfileTagsResponse_httpStatus,
    listInstanceProfileTagsResponse_tags,

    -- ** ListInstanceProfiles
    listInstanceProfiles_marker,
    listInstanceProfiles_maxItems,
    listInstanceProfiles_pathPrefix,
    listInstanceProfilesResponse_marker,
    listInstanceProfilesResponse_isTruncated,
    listInstanceProfilesResponse_httpStatus,
    listInstanceProfilesResponse_instanceProfiles,

    -- ** ListInstanceProfilesForRole
    listInstanceProfilesForRole_marker,
    listInstanceProfilesForRole_maxItems,
    listInstanceProfilesForRole_roleName,
    listInstanceProfilesForRoleResponse_marker,
    listInstanceProfilesForRoleResponse_isTruncated,
    listInstanceProfilesForRoleResponse_httpStatus,
    listInstanceProfilesForRoleResponse_instanceProfiles,

    -- ** ListMFADeviceTags
    listMFADeviceTags_marker,
    listMFADeviceTags_maxItems,
    listMFADeviceTags_serialNumber,
    listMFADeviceTagsResponse_marker,
    listMFADeviceTagsResponse_isTruncated,
    listMFADeviceTagsResponse_httpStatus,
    listMFADeviceTagsResponse_tags,

    -- ** ListMFADevices
    listMFADevices_marker,
    listMFADevices_userName,
    listMFADevices_maxItems,
    listMFADevicesResponse_marker,
    listMFADevicesResponse_isTruncated,
    listMFADevicesResponse_httpStatus,
    listMFADevicesResponse_mfaDevices,

    -- ** ListOpenIDConnectProviderTags
    listOpenIDConnectProviderTags_marker,
    listOpenIDConnectProviderTags_maxItems,
    listOpenIDConnectProviderTags_openIDConnectProviderArn,
    listOpenIDConnectProviderTagsResponse_marker,
    listOpenIDConnectProviderTagsResponse_isTruncated,
    listOpenIDConnectProviderTagsResponse_httpStatus,
    listOpenIDConnectProviderTagsResponse_tags,

    -- ** ListOpenIDConnectProviders
    listOpenIDConnectProvidersResponse_openIDConnectProviderList,
    listOpenIDConnectProvidersResponse_httpStatus,

    -- ** ListPolicies
    listPolicies_marker,
    listPolicies_maxItems,
    listPolicies_scope,
    listPolicies_policyUsageFilter,
    listPolicies_onlyAttached,
    listPolicies_pathPrefix,
    listPoliciesResponse_marker,
    listPoliciesResponse_isTruncated,
    listPoliciesResponse_policies,
    listPoliciesResponse_httpStatus,

    -- ** ListPoliciesGrantingServiceAccess
    listPoliciesGrantingServiceAccess_marker,
    listPoliciesGrantingServiceAccess_arn,
    listPoliciesGrantingServiceAccess_serviceNamespaces,
    listPoliciesGrantingServiceAccessResponse_marker,
    listPoliciesGrantingServiceAccessResponse_isTruncated,
    listPoliciesGrantingServiceAccessResponse_httpStatus,
    listPoliciesGrantingServiceAccessResponse_policiesGrantingServiceAccess,

    -- ** ListPolicyTags
    listPolicyTags_marker,
    listPolicyTags_maxItems,
    listPolicyTags_policyArn,
    listPolicyTagsResponse_marker,
    listPolicyTagsResponse_isTruncated,
    listPolicyTagsResponse_httpStatus,
    listPolicyTagsResponse_tags,

    -- ** ListPolicyVersions
    listPolicyVersions_marker,
    listPolicyVersions_maxItems,
    listPolicyVersions_policyArn,
    listPolicyVersionsResponse_marker,
    listPolicyVersionsResponse_isTruncated,
    listPolicyVersionsResponse_versions,
    listPolicyVersionsResponse_httpStatus,

    -- ** ListRolePolicies
    listRolePolicies_marker,
    listRolePolicies_maxItems,
    listRolePolicies_roleName,
    listRolePoliciesResponse_marker,
    listRolePoliciesResponse_isTruncated,
    listRolePoliciesResponse_httpStatus,
    listRolePoliciesResponse_policyNames,

    -- ** ListRoleTags
    listRoleTags_marker,
    listRoleTags_maxItems,
    listRoleTags_roleName,
    listRoleTagsResponse_marker,
    listRoleTagsResponse_isTruncated,
    listRoleTagsResponse_httpStatus,
    listRoleTagsResponse_tags,

    -- ** ListRoles
    listRoles_marker,
    listRoles_maxItems,
    listRoles_pathPrefix,
    listRolesResponse_marker,
    listRolesResponse_isTruncated,
    listRolesResponse_httpStatus,
    listRolesResponse_roles,

    -- ** ListSAMLProviderTags
    listSAMLProviderTags_marker,
    listSAMLProviderTags_maxItems,
    listSAMLProviderTags_sAMLProviderArn,
    listSAMLProviderTagsResponse_marker,
    listSAMLProviderTagsResponse_isTruncated,
    listSAMLProviderTagsResponse_httpStatus,
    listSAMLProviderTagsResponse_tags,

    -- ** ListSAMLProviders
    listSAMLProvidersResponse_sAMLProviderList,
    listSAMLProvidersResponse_httpStatus,

    -- ** ListSSHPublicKeys
    listSSHPublicKeys_marker,
    listSSHPublicKeys_userName,
    listSSHPublicKeys_maxItems,
    listSSHPublicKeysResponse_marker,
    listSSHPublicKeysResponse_isTruncated,
    listSSHPublicKeysResponse_sSHPublicKeys,
    listSSHPublicKeysResponse_httpStatus,

    -- ** ListServerCertificateTags
    listServerCertificateTags_marker,
    listServerCertificateTags_maxItems,
    listServerCertificateTags_serverCertificateName,
    listServerCertificateTagsResponse_marker,
    listServerCertificateTagsResponse_isTruncated,
    listServerCertificateTagsResponse_httpStatus,
    listServerCertificateTagsResponse_tags,

    -- ** ListServerCertificates
    listServerCertificates_marker,
    listServerCertificates_maxItems,
    listServerCertificates_pathPrefix,
    listServerCertificatesResponse_marker,
    listServerCertificatesResponse_isTruncated,
    listServerCertificatesResponse_httpStatus,
    listServerCertificatesResponse_serverCertificateMetadataList,

    -- ** ListServiceSpecificCredentials
    listServiceSpecificCredentials_userName,
    listServiceSpecificCredentials_serviceName,
    listServiceSpecificCredentialsResponse_serviceSpecificCredentials,
    listServiceSpecificCredentialsResponse_httpStatus,

    -- ** ListSigningCertificates
    listSigningCertificates_marker,
    listSigningCertificates_userName,
    listSigningCertificates_maxItems,
    listSigningCertificatesResponse_marker,
    listSigningCertificatesResponse_isTruncated,
    listSigningCertificatesResponse_httpStatus,
    listSigningCertificatesResponse_certificates,

    -- ** ListUserPolicies
    listUserPolicies_marker,
    listUserPolicies_maxItems,
    listUserPolicies_userName,
    listUserPoliciesResponse_marker,
    listUserPoliciesResponse_isTruncated,
    listUserPoliciesResponse_httpStatus,
    listUserPoliciesResponse_policyNames,

    -- ** ListUserTags
    listUserTags_marker,
    listUserTags_maxItems,
    listUserTags_userName,
    listUserTagsResponse_marker,
    listUserTagsResponse_isTruncated,
    listUserTagsResponse_httpStatus,
    listUserTagsResponse_tags,

    -- ** ListUsers
    listUsers_marker,
    listUsers_maxItems,
    listUsers_pathPrefix,
    listUsersResponse_marker,
    listUsersResponse_isTruncated,
    listUsersResponse_httpStatus,
    listUsersResponse_users,

    -- ** ListVirtualMFADevices
    listVirtualMFADevices_marker,
    listVirtualMFADevices_maxItems,
    listVirtualMFADevices_assignmentStatus,
    listVirtualMFADevicesResponse_marker,
    listVirtualMFADevicesResponse_isTruncated,
    listVirtualMFADevicesResponse_httpStatus,
    listVirtualMFADevicesResponse_virtualMFADevices,

    -- ** PutGroupPolicy
    putGroupPolicy_groupName,
    putGroupPolicy_policyName,
    putGroupPolicy_policyDocument,

    -- ** PutRolePermissionsBoundary
    putRolePermissionsBoundary_roleName,
    putRolePermissionsBoundary_permissionsBoundary,

    -- ** PutRolePolicy
    putRolePolicy_roleName,
    putRolePolicy_policyName,
    putRolePolicy_policyDocument,

    -- ** PutUserPermissionsBoundary
    putUserPermissionsBoundary_userName,
    putUserPermissionsBoundary_permissionsBoundary,

    -- ** PutUserPolicy
    putUserPolicy_userName,
    putUserPolicy_policyName,
    putUserPolicy_policyDocument,

    -- ** RemoveClientIDFromOpenIDConnectProvider
    removeClientIDFromOpenIDConnectProvider_openIDConnectProviderArn,
    removeClientIDFromOpenIDConnectProvider_clientID,

    -- ** RemoveRoleFromInstanceProfile
    removeRoleFromInstanceProfile_instanceProfileName,
    removeRoleFromInstanceProfile_roleName,

    -- ** RemoveUserFromGroup
    removeUserFromGroup_groupName,
    removeUserFromGroup_userName,

    -- ** ResetServiceSpecificCredential
    resetServiceSpecificCredential_userName,
    resetServiceSpecificCredential_serviceSpecificCredentialId,
    resetServiceSpecificCredentialResponse_serviceSpecificCredential,
    resetServiceSpecificCredentialResponse_httpStatus,

    -- ** ResyncMFADevice
    resyncMFADevice_userName,
    resyncMFADevice_serialNumber,
    resyncMFADevice_authenticationCode1,
    resyncMFADevice_authenticationCode2,

    -- ** SetDefaultPolicyVersion
    setDefaultPolicyVersion_policyArn,
    setDefaultPolicyVersion_versionId,

    -- ** SetSecurityTokenServicePreferences
    setSecurityTokenServicePreferences_globalEndpointTokenVersion,

    -- ** SimulateCustomPolicy
    simulateCustomPolicy_permissionsBoundaryPolicyInputList,
    simulateCustomPolicy_marker,
    simulateCustomPolicy_contextEntries,
    simulateCustomPolicy_maxItems,
    simulateCustomPolicy_resourceOwner,
    simulateCustomPolicy_resourcePolicy,
    simulateCustomPolicy_callerArn,
    simulateCustomPolicy_resourceHandlingOption,
    simulateCustomPolicy_resourceArns,
    simulateCustomPolicy_policyInputList,
    simulateCustomPolicy_actionNames,
    simulatePolicyResponse_evaluationResults,
    simulatePolicyResponse_marker,
    simulatePolicyResponse_isTruncated,

    -- ** SimulatePrincipalPolicy
    simulatePrincipalPolicy_permissionsBoundaryPolicyInputList,
    simulatePrincipalPolicy_marker,
    simulatePrincipalPolicy_contextEntries,
    simulatePrincipalPolicy_maxItems,
    simulatePrincipalPolicy_resourceOwner,
    simulatePrincipalPolicy_resourcePolicy,
    simulatePrincipalPolicy_policyInputList,
    simulatePrincipalPolicy_callerArn,
    simulatePrincipalPolicy_resourceHandlingOption,
    simulatePrincipalPolicy_resourceArns,
    simulatePrincipalPolicy_policySourceArn,
    simulatePrincipalPolicy_actionNames,
    simulatePolicyResponse_evaluationResults,
    simulatePolicyResponse_marker,
    simulatePolicyResponse_isTruncated,

    -- ** TagInstanceProfile
    tagInstanceProfile_instanceProfileName,
    tagInstanceProfile_tags,

    -- ** TagMFADevice
    tagMFADevice_serialNumber,
    tagMFADevice_tags,

    -- ** TagOpenIDConnectProvider
    tagOpenIDConnectProvider_openIDConnectProviderArn,
    tagOpenIDConnectProvider_tags,

    -- ** TagPolicy
    tagPolicy_policyArn,
    tagPolicy_tags,

    -- ** TagRole
    tagRole_roleName,
    tagRole_tags,

    -- ** TagSAMLProvider
    tagSAMLProvider_sAMLProviderArn,
    tagSAMLProvider_tags,

    -- ** TagServerCertificate
    tagServerCertificate_serverCertificateName,
    tagServerCertificate_tags,

    -- ** TagUser
    tagUser_userName,
    tagUser_tags,

    -- ** UntagInstanceProfile
    untagInstanceProfile_instanceProfileName,
    untagInstanceProfile_tagKeys,

    -- ** UntagMFADevice
    untagMFADevice_serialNumber,
    untagMFADevice_tagKeys,

    -- ** UntagOpenIDConnectProvider
    untagOpenIDConnectProvider_openIDConnectProviderArn,
    untagOpenIDConnectProvider_tagKeys,

    -- ** UntagPolicy
    untagPolicy_policyArn,
    untagPolicy_tagKeys,

    -- ** UntagRole
    untagRole_roleName,
    untagRole_tagKeys,

    -- ** UntagSAMLProvider
    untagSAMLProvider_sAMLProviderArn,
    untagSAMLProvider_tagKeys,

    -- ** UntagServerCertificate
    untagServerCertificate_serverCertificateName,
    untagServerCertificate_tagKeys,

    -- ** UntagUser
    untagUser_userName,
    untagUser_tagKeys,

    -- ** UpdateAccessKey
    updateAccessKey_userName,
    updateAccessKey_accessKeyId,
    updateAccessKey_status,

    -- ** UpdateAccountPasswordPolicy
    updateAccountPasswordPolicy_maxPasswordAge,
    updateAccountPasswordPolicy_minimumPasswordLength,
    updateAccountPasswordPolicy_allowUsersToChangePassword,
    updateAccountPasswordPolicy_passwordReusePrevention,
    updateAccountPasswordPolicy_requireNumbers,
    updateAccountPasswordPolicy_requireLowercaseCharacters,
    updateAccountPasswordPolicy_requireSymbols,
    updateAccountPasswordPolicy_requireUppercaseCharacters,
    updateAccountPasswordPolicy_hardExpiry,

    -- ** UpdateAssumeRolePolicy
    updateAssumeRolePolicy_roleName,
    updateAssumeRolePolicy_policyDocument,

    -- ** UpdateGroup
    updateGroup_newGroupName,
    updateGroup_newPath,
    updateGroup_groupName,

    -- ** UpdateLoginProfile
    updateLoginProfile_password,
    updateLoginProfile_passwordResetRequired,
    updateLoginProfile_userName,

    -- ** UpdateOpenIDConnectProviderThumbprint
    updateOpenIDConnectProviderThumbprint_openIDConnectProviderArn,
    updateOpenIDConnectProviderThumbprint_thumbprintList,

    -- ** UpdateRole
    updateRole_description,
    updateRole_maxSessionDuration,
    updateRole_roleName,
    updateRoleResponse_httpStatus,

    -- ** UpdateRoleDescription
    updateRoleDescription_roleName,
    updateRoleDescription_description,
    updateRoleDescriptionResponse_role,
    updateRoleDescriptionResponse_httpStatus,

    -- ** UpdateSAMLProvider
    updateSAMLProvider_sAMLMetadataDocument,
    updateSAMLProvider_sAMLProviderArn,
    updateSAMLProviderResponse_sAMLProviderArn,
    updateSAMLProviderResponse_httpStatus,

    -- ** UpdateSSHPublicKey
    updateSSHPublicKey_userName,
    updateSSHPublicKey_sSHPublicKeyId,
    updateSSHPublicKey_status,

    -- ** UpdateServerCertificate
    updateServerCertificate_newServerCertificateName,
    updateServerCertificate_newPath,
    updateServerCertificate_serverCertificateName,

    -- ** UpdateServiceSpecificCredential
    updateServiceSpecificCredential_userName,
    updateServiceSpecificCredential_serviceSpecificCredentialId,
    updateServiceSpecificCredential_status,

    -- ** UpdateSigningCertificate
    updateSigningCertificate_userName,
    updateSigningCertificate_certificateId,
    updateSigningCertificate_status,

    -- ** UpdateUser
    updateUser_newUserName,
    updateUser_newPath,
    updateUser_userName,

    -- ** UploadSSHPublicKey
    uploadSSHPublicKey_userName,
    uploadSSHPublicKey_sSHPublicKeyBody,
    uploadSSHPublicKeyResponse_sSHPublicKey,
    uploadSSHPublicKeyResponse_httpStatus,

    -- ** UploadServerCertificate
    uploadServerCertificate_tags,
    uploadServerCertificate_path,
    uploadServerCertificate_certificateChain,
    uploadServerCertificate_serverCertificateName,
    uploadServerCertificate_certificateBody,
    uploadServerCertificate_privateKey,
    uploadServerCertificateResponse_tags,
    uploadServerCertificateResponse_serverCertificateMetadata,
    uploadServerCertificateResponse_httpStatus,

    -- ** UploadSigningCertificate
    uploadSigningCertificate_userName,
    uploadSigningCertificate_certificateBody,
    uploadSigningCertificateResponse_httpStatus,
    uploadSigningCertificateResponse_certificate,

    -- * Types

    -- ** AccessDetail
    accessDetail_totalAuthenticatedEntities,
    accessDetail_entityPath,
    accessDetail_region,
    accessDetail_lastAuthenticatedTime,
    accessDetail_serviceName,
    accessDetail_serviceNamespace,

    -- ** AccessKeyInfo
    accessKeyInfo_createDate,
    accessKeyInfo_userName,
    accessKeyInfo_accessKeyId,
    accessKeyInfo_status,
    accessKeyInfo_secretAccessKey,

    -- ** AccessKeyLastUsed
    accessKeyLastUsed_lastUsedDate,
    accessKeyLastUsed_serviceName,
    accessKeyLastUsed_region,

    -- ** AccessKeyMetadata
    accessKeyMetadata_userName,
    accessKeyMetadata_status,
    accessKeyMetadata_createDate,
    accessKeyMetadata_accessKeyId,

    -- ** AttachedPermissionsBoundary
    attachedPermissionsBoundary_permissionsBoundaryType,
    attachedPermissionsBoundary_permissionsBoundaryArn,

    -- ** AttachedPolicy
    attachedPolicy_policyName,
    attachedPolicy_policyArn,

    -- ** ContextEntry
    contextEntry_contextKeyName,
    contextEntry_contextKeyType,
    contextEntry_contextKeyValues,

    -- ** DeletionTaskFailureReasonType
    deletionTaskFailureReasonType_roleUsageList,
    deletionTaskFailureReasonType_reason,

    -- ** EntityDetails
    entityDetails_lastAuthenticated,
    entityDetails_entityInfo,

    -- ** EntityInfo
    entityInfo_path,
    entityInfo_arn,
    entityInfo_name,
    entityInfo_type,
    entityInfo_id,

    -- ** ErrorDetails
    errorDetails_message,
    errorDetails_code,

    -- ** EvaluationResult
    evaluationResult_evalResourceName,
    evaluationResult_permissionsBoundaryDecisionDetail,
    evaluationResult_missingContextValues,
    evaluationResult_resourceSpecificResults,
    evaluationResult_evalDecisionDetails,
    evaluationResult_matchedStatements,
    evaluationResult_organizationsDecisionDetail,
    evaluationResult_evalActionName,
    evaluationResult_evalDecision,

    -- ** GetContextKeysForPolicyResponse
    getContextKeysForPolicyResponse_contextKeyNames,

    -- ** Group
    group_path,
    group_groupName,
    group_groupId,
    group_arn,
    group_createDate,

    -- ** GroupDetail
    groupDetail_arn,
    groupDetail_path,
    groupDetail_groupName,
    groupDetail_attachedManagedPolicies,
    groupDetail_createDate,
    groupDetail_groupId,
    groupDetail_groupPolicyList,

    -- ** InstanceProfile
    instanceProfile_tags,
    instanceProfile_path,
    instanceProfile_instanceProfileName,
    instanceProfile_instanceProfileId,
    instanceProfile_arn,
    instanceProfile_createDate,
    instanceProfile_roles,

    -- ** ListPoliciesGrantingServiceAccessEntry
    listPoliciesGrantingServiceAccessEntry_serviceNamespace,
    listPoliciesGrantingServiceAccessEntry_policies,

    -- ** LoginProfile
    loginProfile_passwordResetRequired,
    loginProfile_userName,
    loginProfile_createDate,

    -- ** MFADevice
    mfaDevice_userName,
    mfaDevice_serialNumber,
    mfaDevice_enableDate,

    -- ** ManagedPolicyDetail
    managedPolicyDetail_policyName,
    managedPolicyDetail_policyId,
    managedPolicyDetail_defaultVersionId,
    managedPolicyDetail_arn,
    managedPolicyDetail_path,
    managedPolicyDetail_updateDate,
    managedPolicyDetail_policyVersionList,
    managedPolicyDetail_description,
    managedPolicyDetail_createDate,
    managedPolicyDetail_attachmentCount,
    managedPolicyDetail_permissionsBoundaryUsageCount,
    managedPolicyDetail_isAttachable,

    -- ** OpenIDConnectProviderListEntry
    openIDConnectProviderListEntry_arn,

    -- ** OrganizationsDecisionDetail
    organizationsDecisionDetail_allowedByOrganizations,

    -- ** PasswordPolicy
    passwordPolicy_maxPasswordAge,
    passwordPolicy_minimumPasswordLength,
    passwordPolicy_allowUsersToChangePassword,
    passwordPolicy_passwordReusePrevention,
    passwordPolicy_requireNumbers,
    passwordPolicy_requireLowercaseCharacters,
    passwordPolicy_expirePasswords,
    passwordPolicy_requireSymbols,
    passwordPolicy_requireUppercaseCharacters,
    passwordPolicy_hardExpiry,

    -- ** PermissionsBoundaryDecisionDetail
    permissionsBoundaryDecisionDetail_allowedByPermissionsBoundary,

    -- ** Policy
    policy_policyName,
    policy_tags,
    policy_policyId,
    policy_defaultVersionId,
    policy_arn,
    policy_path,
    policy_updateDate,
    policy_description,
    policy_createDate,
    policy_attachmentCount,
    policy_permissionsBoundaryUsageCount,
    policy_isAttachable,

    -- ** PolicyDetail
    policyDetail_policyName,
    policyDetail_policyDocument,

    -- ** PolicyGrantingServiceAccess
    policyGrantingServiceAccess_entityName,
    policyGrantingServiceAccess_entityType,
    policyGrantingServiceAccess_policyArn,
    policyGrantingServiceAccess_policyName,
    policyGrantingServiceAccess_policyType,

    -- ** PolicyGroup
    policyGroup_groupName,
    policyGroup_groupId,

    -- ** PolicyRole
    policyRole_roleName,
    policyRole_roleId,

    -- ** PolicyUser
    policyUser_userName,
    policyUser_userId,

    -- ** PolicyVersion
    policyVersion_isDefaultVersion,
    policyVersion_createDate,
    policyVersion_document,
    policyVersion_versionId,

    -- ** Position
    position_line,
    position_column,

    -- ** ResourceSpecificResult
    resourceSpecificResult_permissionsBoundaryDecisionDetail,
    resourceSpecificResult_missingContextValues,
    resourceSpecificResult_evalDecisionDetails,
    resourceSpecificResult_matchedStatements,
    resourceSpecificResult_evalResourceName,
    resourceSpecificResult_evalResourceDecision,

    -- ** Role
    role_tags,
    role_roleLastUsed,
    role_assumeRolePolicyDocument,
    role_description,
    role_permissionsBoundary,
    role_maxSessionDuration,
    role_path,
    role_roleName,
    role_roleId,
    role_arn,
    role_createDate,

    -- ** RoleDetail
    roleDetail_tags,
    roleDetail_roleLastUsed,
    roleDetail_roleName,
    roleDetail_arn,
    roleDetail_instanceProfileList,
    roleDetail_path,
    roleDetail_assumeRolePolicyDocument,
    roleDetail_attachedManagedPolicies,
    roleDetail_permissionsBoundary,
    roleDetail_createDate,
    roleDetail_roleId,
    roleDetail_rolePolicyList,

    -- ** RoleLastUsed
    roleLastUsed_lastUsedDate,
    roleLastUsed_region,

    -- ** RoleUsageType
    roleUsageType_region,
    roleUsageType_resources,

    -- ** SAMLProviderListEntry
    sAMLProviderListEntry_arn,
    sAMLProviderListEntry_createDate,
    sAMLProviderListEntry_validUntil,

    -- ** SSHPublicKey
    sSHPublicKey_uploadDate,
    sSHPublicKey_userName,
    sSHPublicKey_sSHPublicKeyId,
    sSHPublicKey_fingerprint,
    sSHPublicKey_sSHPublicKeyBody,
    sSHPublicKey_status,

    -- ** SSHPublicKeyMetadata
    sSHPublicKeyMetadata_userName,
    sSHPublicKeyMetadata_sSHPublicKeyId,
    sSHPublicKeyMetadata_status,
    sSHPublicKeyMetadata_uploadDate,

    -- ** ServerCertificate
    serverCertificate_tags,
    serverCertificate_certificateChain,
    serverCertificate_serverCertificateMetadata,
    serverCertificate_certificateBody,

    -- ** ServerCertificateMetadata
    serverCertificateMetadata_uploadDate,
    serverCertificateMetadata_expiration,
    serverCertificateMetadata_path,
    serverCertificateMetadata_serverCertificateName,
    serverCertificateMetadata_serverCertificateId,
    serverCertificateMetadata_arn,

    -- ** ServiceLastAccessed
    serviceLastAccessed_lastAuthenticatedEntity,
    serviceLastAccessed_totalAuthenticatedEntities,
    serviceLastAccessed_lastAuthenticated,
    serviceLastAccessed_trackedActionsLastAccessed,
    serviceLastAccessed_lastAuthenticatedRegion,
    serviceLastAccessed_serviceName,
    serviceLastAccessed_serviceNamespace,

    -- ** ServiceSpecificCredential
    serviceSpecificCredential_createDate,
    serviceSpecificCredential_serviceName,
    serviceSpecificCredential_serviceUserName,
    serviceSpecificCredential_servicePassword,
    serviceSpecificCredential_serviceSpecificCredentialId,
    serviceSpecificCredential_userName,
    serviceSpecificCredential_status,

    -- ** ServiceSpecificCredentialMetadata
    serviceSpecificCredentialMetadata_userName,
    serviceSpecificCredentialMetadata_status,
    serviceSpecificCredentialMetadata_serviceUserName,
    serviceSpecificCredentialMetadata_createDate,
    serviceSpecificCredentialMetadata_serviceSpecificCredentialId,
    serviceSpecificCredentialMetadata_serviceName,

    -- ** SigningCertificate
    signingCertificate_uploadDate,
    signingCertificate_userName,
    signingCertificate_certificateId,
    signingCertificate_certificateBody,
    signingCertificate_status,

    -- ** SimulatePolicyResponse
    simulatePolicyResponse_evaluationResults,
    simulatePolicyResponse_marker,
    simulatePolicyResponse_isTruncated,

    -- ** Statement
    statement_sourcePolicyId,
    statement_startPosition,
    statement_endPosition,
    statement_sourcePolicyType,

    -- ** Tag
    tag_key,
    tag_value,

    -- ** TrackedActionLastAccessed
    trackedActionLastAccessed_lastAccessedRegion,
    trackedActionLastAccessed_lastAccessedEntity,
    trackedActionLastAccessed_actionName,
    trackedActionLastAccessed_lastAccessedTime,

    -- ** User
    user_tags,
    user_path,
    user_passwordLastUsed,
    user_permissionsBoundary,
    user_userName,
    user_userId,
    user_arn,
    user_createDate,

    -- ** UserDetail
    userDetail_tags,
    userDetail_userName,
    userDetail_arn,
    userDetail_path,
    userDetail_groupList,
    userDetail_attachedManagedPolicies,
    userDetail_permissionsBoundary,
    userDetail_userId,
    userDetail_createDate,
    userDetail_userPolicyList,

    -- ** VirtualMFADevice
    virtualMFADevice_tags,
    virtualMFADevice_user,
    virtualMFADevice_base32StringSeed,
    virtualMFADevice_enableDate,
    virtualMFADevice_qRCodePNG,
    virtualMFADevice_serialNumber,
  )
where

import Amazonka.IAM.AddClientIDToOpenIDConnectProvider
import Amazonka.IAM.AddRoleToInstanceProfile
import Amazonka.IAM.AddUserToGroup
import Amazonka.IAM.AttachGroupPolicy
import Amazonka.IAM.AttachRolePolicy
import Amazonka.IAM.AttachUserPolicy
import Amazonka.IAM.ChangePassword
import Amazonka.IAM.CreateAccessKey
import Amazonka.IAM.CreateAccountAlias
import Amazonka.IAM.CreateGroup
import Amazonka.IAM.CreateInstanceProfile
import Amazonka.IAM.CreateLoginProfile
import Amazonka.IAM.CreateOpenIDConnectProvider
import Amazonka.IAM.CreatePolicy
import Amazonka.IAM.CreatePolicyVersion
import Amazonka.IAM.CreateRole
import Amazonka.IAM.CreateSAMLProvider
import Amazonka.IAM.CreateServiceLinkedRole
import Amazonka.IAM.CreateServiceSpecificCredential
import Amazonka.IAM.CreateUser
import Amazonka.IAM.CreateVirtualMFADevice
import Amazonka.IAM.DeactivateMFADevice
import Amazonka.IAM.DeleteAccessKey
import Amazonka.IAM.DeleteAccountAlias
import Amazonka.IAM.DeleteAccountPasswordPolicy
import Amazonka.IAM.DeleteGroup
import Amazonka.IAM.DeleteGroupPolicy
import Amazonka.IAM.DeleteInstanceProfile
import Amazonka.IAM.DeleteLoginProfile
import Amazonka.IAM.DeleteOpenIDConnectProvider
import Amazonka.IAM.DeletePolicy
import Amazonka.IAM.DeletePolicyVersion
import Amazonka.IAM.DeleteRole
import Amazonka.IAM.DeleteRolePermissionsBoundary
import Amazonka.IAM.DeleteRolePolicy
import Amazonka.IAM.DeleteSAMLProvider
import Amazonka.IAM.DeleteSSHPublicKey
import Amazonka.IAM.DeleteServerCertificate
import Amazonka.IAM.DeleteServiceLinkedRole
import Amazonka.IAM.DeleteServiceSpecificCredential
import Amazonka.IAM.DeleteSigningCertificate
import Amazonka.IAM.DeleteUser
import Amazonka.IAM.DeleteUserPermissionsBoundary
import Amazonka.IAM.DeleteUserPolicy
import Amazonka.IAM.DeleteVirtualMFADevice
import Amazonka.IAM.DetachGroupPolicy
import Amazonka.IAM.DetachRolePolicy
import Amazonka.IAM.DetachUserPolicy
import Amazonka.IAM.EnableMFADevice
import Amazonka.IAM.GenerateCredentialReport
import Amazonka.IAM.GenerateOrganizationsAccessReport
import Amazonka.IAM.GenerateServiceLastAccessedDetails
import Amazonka.IAM.GetAccessKeyLastUsed
import Amazonka.IAM.GetAccountAuthorizationDetails
import Amazonka.IAM.GetAccountPasswordPolicy
import Amazonka.IAM.GetAccountSummary
import Amazonka.IAM.GetContextKeysForCustomPolicy
import Amazonka.IAM.GetContextKeysForPrincipalPolicy
import Amazonka.IAM.GetCredentialReport
import Amazonka.IAM.GetGroup
import Amazonka.IAM.GetGroupPolicy
import Amazonka.IAM.GetInstanceProfile
import Amazonka.IAM.GetLoginProfile
import Amazonka.IAM.GetOpenIDConnectProvider
import Amazonka.IAM.GetOrganizationsAccessReport
import Amazonka.IAM.GetPolicy
import Amazonka.IAM.GetPolicyVersion
import Amazonka.IAM.GetRole
import Amazonka.IAM.GetRolePolicy
import Amazonka.IAM.GetSAMLProvider
import Amazonka.IAM.GetSSHPublicKey
import Amazonka.IAM.GetServerCertificate
import Amazonka.IAM.GetServiceLastAccessedDetails
import Amazonka.IAM.GetServiceLastAccessedDetailsWithEntities
import Amazonka.IAM.GetServiceLinkedRoleDeletionStatus
import Amazonka.IAM.GetUser
import Amazonka.IAM.GetUserPolicy
import Amazonka.IAM.ListAccessKeys
import Amazonka.IAM.ListAccountAliases
import Amazonka.IAM.ListAttachedGroupPolicies
import Amazonka.IAM.ListAttachedRolePolicies
import Amazonka.IAM.ListAttachedUserPolicies
import Amazonka.IAM.ListEntitiesForPolicy
import Amazonka.IAM.ListGroupPolicies
import Amazonka.IAM.ListGroups
import Amazonka.IAM.ListGroupsForUser
import Amazonka.IAM.ListInstanceProfileTags
import Amazonka.IAM.ListInstanceProfiles
import Amazonka.IAM.ListInstanceProfilesForRole
import Amazonka.IAM.ListMFADeviceTags
import Amazonka.IAM.ListMFADevices
import Amazonka.IAM.ListOpenIDConnectProviderTags
import Amazonka.IAM.ListOpenIDConnectProviders
import Amazonka.IAM.ListPolicies
import Amazonka.IAM.ListPoliciesGrantingServiceAccess
import Amazonka.IAM.ListPolicyTags
import Amazonka.IAM.ListPolicyVersions
import Amazonka.IAM.ListRolePolicies
import Amazonka.IAM.ListRoleTags
import Amazonka.IAM.ListRoles
import Amazonka.IAM.ListSAMLProviderTags
import Amazonka.IAM.ListSAMLProviders
import Amazonka.IAM.ListSSHPublicKeys
import Amazonka.IAM.ListServerCertificateTags
import Amazonka.IAM.ListServerCertificates
import Amazonka.IAM.ListServiceSpecificCredentials
import Amazonka.IAM.ListSigningCertificates
import Amazonka.IAM.ListUserPolicies
import Amazonka.IAM.ListUserTags
import Amazonka.IAM.ListUsers
import Amazonka.IAM.ListVirtualMFADevices
import Amazonka.IAM.PutGroupPolicy
import Amazonka.IAM.PutRolePermissionsBoundary
import Amazonka.IAM.PutRolePolicy
import Amazonka.IAM.PutUserPermissionsBoundary
import Amazonka.IAM.PutUserPolicy
import Amazonka.IAM.RemoveClientIDFromOpenIDConnectProvider
import Amazonka.IAM.RemoveRoleFromInstanceProfile
import Amazonka.IAM.RemoveUserFromGroup
import Amazonka.IAM.ResetServiceSpecificCredential
import Amazonka.IAM.ResyncMFADevice
import Amazonka.IAM.SetDefaultPolicyVersion
import Amazonka.IAM.SetSecurityTokenServicePreferences
import Amazonka.IAM.SimulateCustomPolicy
import Amazonka.IAM.SimulatePrincipalPolicy
import Amazonka.IAM.TagInstanceProfile
import Amazonka.IAM.TagMFADevice
import Amazonka.IAM.TagOpenIDConnectProvider
import Amazonka.IAM.TagPolicy
import Amazonka.IAM.TagRole
import Amazonka.IAM.TagSAMLProvider
import Amazonka.IAM.TagServerCertificate
import Amazonka.IAM.TagUser
import Amazonka.IAM.Types.AccessDetail
import Amazonka.IAM.Types.AccessKeyInfo
import Amazonka.IAM.Types.AccessKeyLastUsed
import Amazonka.IAM.Types.AccessKeyMetadata
import Amazonka.IAM.Types.AttachedPermissionsBoundary
import Amazonka.IAM.Types.AttachedPolicy
import Amazonka.IAM.Types.ContextEntry
import Amazonka.IAM.Types.DeletionTaskFailureReasonType
import Amazonka.IAM.Types.EntityDetails
import Amazonka.IAM.Types.EntityInfo
import Amazonka.IAM.Types.ErrorDetails
import Amazonka.IAM.Types.EvaluationResult
import Amazonka.IAM.Types.GetContextKeysForPolicyResponse
import Amazonka.IAM.Types.Group
import Amazonka.IAM.Types.GroupDetail
import Amazonka.IAM.Types.InstanceProfile
import Amazonka.IAM.Types.ListPoliciesGrantingServiceAccessEntry
import Amazonka.IAM.Types.LoginProfile
import Amazonka.IAM.Types.MFADevice
import Amazonka.IAM.Types.ManagedPolicyDetail
import Amazonka.IAM.Types.OpenIDConnectProviderListEntry
import Amazonka.IAM.Types.OrganizationsDecisionDetail
import Amazonka.IAM.Types.PasswordPolicy
import Amazonka.IAM.Types.PermissionsBoundaryDecisionDetail
import Amazonka.IAM.Types.Policy
import Amazonka.IAM.Types.PolicyDetail
import Amazonka.IAM.Types.PolicyGrantingServiceAccess
import Amazonka.IAM.Types.PolicyGroup
import Amazonka.IAM.Types.PolicyRole
import Amazonka.IAM.Types.PolicyUser
import Amazonka.IAM.Types.PolicyVersion
import Amazonka.IAM.Types.Position
import Amazonka.IAM.Types.ResourceSpecificResult
import Amazonka.IAM.Types.Role
import Amazonka.IAM.Types.RoleDetail
import Amazonka.IAM.Types.RoleLastUsed
import Amazonka.IAM.Types.RoleUsageType
import Amazonka.IAM.Types.SAMLProviderListEntry
import Amazonka.IAM.Types.SSHPublicKey
import Amazonka.IAM.Types.SSHPublicKeyMetadata
import Amazonka.IAM.Types.ServerCertificate
import Amazonka.IAM.Types.ServerCertificateMetadata
import Amazonka.IAM.Types.ServiceLastAccessed
import Amazonka.IAM.Types.ServiceSpecificCredential
import Amazonka.IAM.Types.ServiceSpecificCredentialMetadata
import Amazonka.IAM.Types.SigningCertificate
import Amazonka.IAM.Types.SimulatePolicyResponse
import Amazonka.IAM.Types.Statement
import Amazonka.IAM.Types.Tag
import Amazonka.IAM.Types.TrackedActionLastAccessed
import Amazonka.IAM.Types.User
import Amazonka.IAM.Types.UserDetail
import Amazonka.IAM.Types.VirtualMFADevice
import Amazonka.IAM.UntagInstanceProfile
import Amazonka.IAM.UntagMFADevice
import Amazonka.IAM.UntagOpenIDConnectProvider
import Amazonka.IAM.UntagPolicy
import Amazonka.IAM.UntagRole
import Amazonka.IAM.UntagSAMLProvider
import Amazonka.IAM.UntagServerCertificate
import Amazonka.IAM.UntagUser
import Amazonka.IAM.UpdateAccessKey
import Amazonka.IAM.UpdateAccountPasswordPolicy
import Amazonka.IAM.UpdateAssumeRolePolicy
import Amazonka.IAM.UpdateGroup
import Amazonka.IAM.UpdateLoginProfile
import Amazonka.IAM.UpdateOpenIDConnectProviderThumbprint
import Amazonka.IAM.UpdateRole
import Amazonka.IAM.UpdateRoleDescription
import Amazonka.IAM.UpdateSAMLProvider
import Amazonka.IAM.UpdateSSHPublicKey
import Amazonka.IAM.UpdateServerCertificate
import Amazonka.IAM.UpdateServiceSpecificCredential
import Amazonka.IAM.UpdateSigningCertificate
import Amazonka.IAM.UpdateUser
import Amazonka.IAM.UploadSSHPublicKey
import Amazonka.IAM.UploadServerCertificate
import Amazonka.IAM.UploadSigningCertificate
