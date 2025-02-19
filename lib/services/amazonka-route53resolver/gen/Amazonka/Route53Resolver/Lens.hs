{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Route53Resolver.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Route53Resolver.Lens
  ( -- * Operations

    -- ** AssociateFirewallRuleGroup
    associateFirewallRuleGroup_tags,
    associateFirewallRuleGroup_mutationProtection,
    associateFirewallRuleGroup_creatorRequestId,
    associateFirewallRuleGroup_firewallRuleGroupId,
    associateFirewallRuleGroup_vpcId,
    associateFirewallRuleGroup_priority,
    associateFirewallRuleGroup_name,
    associateFirewallRuleGroupResponse_firewallRuleGroupAssociation,
    associateFirewallRuleGroupResponse_httpStatus,

    -- ** AssociateResolverEndpointIpAddress
    associateResolverEndpointIpAddress_resolverEndpointId,
    associateResolverEndpointIpAddress_ipAddress,
    associateResolverEndpointIpAddressResponse_resolverEndpoint,
    associateResolverEndpointIpAddressResponse_httpStatus,

    -- ** AssociateResolverQueryLogConfig
    associateResolverQueryLogConfig_resolverQueryLogConfigId,
    associateResolverQueryLogConfig_resourceId,
    associateResolverQueryLogConfigResponse_resolverQueryLogConfigAssociation,
    associateResolverQueryLogConfigResponse_httpStatus,

    -- ** AssociateResolverRule
    associateResolverRule_name,
    associateResolverRule_resolverRuleId,
    associateResolverRule_vPCId,
    associateResolverRuleResponse_resolverRuleAssociation,
    associateResolverRuleResponse_httpStatus,

    -- ** CreateFirewallDomainList
    createFirewallDomainList_tags,
    createFirewallDomainList_creatorRequestId,
    createFirewallDomainList_name,
    createFirewallDomainListResponse_firewallDomainList,
    createFirewallDomainListResponse_httpStatus,

    -- ** CreateFirewallRule
    createFirewallRule_blockResponse,
    createFirewallRule_blockOverrideTtl,
    createFirewallRule_blockOverrideDnsType,
    createFirewallRule_blockOverrideDomain,
    createFirewallRule_creatorRequestId,
    createFirewallRule_firewallRuleGroupId,
    createFirewallRule_firewallDomainListId,
    createFirewallRule_priority,
    createFirewallRule_action,
    createFirewallRule_name,
    createFirewallRuleResponse_firewallRule,
    createFirewallRuleResponse_httpStatus,

    -- ** CreateFirewallRuleGroup
    createFirewallRuleGroup_tags,
    createFirewallRuleGroup_creatorRequestId,
    createFirewallRuleGroup_name,
    createFirewallRuleGroupResponse_firewallRuleGroup,
    createFirewallRuleGroupResponse_httpStatus,

    -- ** CreateResolverEndpoint
    createResolverEndpoint_tags,
    createResolverEndpoint_name,
    createResolverEndpoint_creatorRequestId,
    createResolverEndpoint_securityGroupIds,
    createResolverEndpoint_direction,
    createResolverEndpoint_ipAddresses,
    createResolverEndpointResponse_resolverEndpoint,
    createResolverEndpointResponse_httpStatus,

    -- ** CreateResolverQueryLogConfig
    createResolverQueryLogConfig_tags,
    createResolverQueryLogConfig_name,
    createResolverQueryLogConfig_destinationArn,
    createResolverQueryLogConfig_creatorRequestId,
    createResolverQueryLogConfigResponse_resolverQueryLogConfig,
    createResolverQueryLogConfigResponse_httpStatus,

    -- ** CreateResolverRule
    createResolverRule_tags,
    createResolverRule_name,
    createResolverRule_targetIps,
    createResolverRule_resolverEndpointId,
    createResolverRule_creatorRequestId,
    createResolverRule_ruleType,
    createResolverRule_domainName,
    createResolverRuleResponse_resolverRule,
    createResolverRuleResponse_httpStatus,

    -- ** DeleteFirewallDomainList
    deleteFirewallDomainList_firewallDomainListId,
    deleteFirewallDomainListResponse_firewallDomainList,
    deleteFirewallDomainListResponse_httpStatus,

    -- ** DeleteFirewallRule
    deleteFirewallRule_firewallRuleGroupId,
    deleteFirewallRule_firewallDomainListId,
    deleteFirewallRuleResponse_firewallRule,
    deleteFirewallRuleResponse_httpStatus,

    -- ** DeleteFirewallRuleGroup
    deleteFirewallRuleGroup_firewallRuleGroupId,
    deleteFirewallRuleGroupResponse_firewallRuleGroup,
    deleteFirewallRuleGroupResponse_httpStatus,

    -- ** DeleteResolverEndpoint
    deleteResolverEndpoint_resolverEndpointId,
    deleteResolverEndpointResponse_resolverEndpoint,
    deleteResolverEndpointResponse_httpStatus,

    -- ** DeleteResolverQueryLogConfig
    deleteResolverQueryLogConfig_resolverQueryLogConfigId,
    deleteResolverQueryLogConfigResponse_resolverQueryLogConfig,
    deleteResolverQueryLogConfigResponse_httpStatus,

    -- ** DeleteResolverRule
    deleteResolverRule_resolverRuleId,
    deleteResolverRuleResponse_resolverRule,
    deleteResolverRuleResponse_httpStatus,

    -- ** DisassociateFirewallRuleGroup
    disassociateFirewallRuleGroup_firewallRuleGroupAssociationId,
    disassociateFirewallRuleGroupResponse_firewallRuleGroupAssociation,
    disassociateFirewallRuleGroupResponse_httpStatus,

    -- ** DisassociateResolverEndpointIpAddress
    disassociateResolverEndpointIpAddress_resolverEndpointId,
    disassociateResolverEndpointIpAddress_ipAddress,
    disassociateResolverEndpointIpAddressResponse_resolverEndpoint,
    disassociateResolverEndpointIpAddressResponse_httpStatus,

    -- ** DisassociateResolverQueryLogConfig
    disassociateResolverQueryLogConfig_resolverQueryLogConfigId,
    disassociateResolverQueryLogConfig_resourceId,
    disassociateResolverQueryLogConfigResponse_resolverQueryLogConfigAssociation,
    disassociateResolverQueryLogConfigResponse_httpStatus,

    -- ** DisassociateResolverRule
    disassociateResolverRule_vPCId,
    disassociateResolverRule_resolverRuleId,
    disassociateResolverRuleResponse_resolverRuleAssociation,
    disassociateResolverRuleResponse_httpStatus,

    -- ** GetFirewallConfig
    getFirewallConfig_resourceId,
    getFirewallConfigResponse_firewallConfig,
    getFirewallConfigResponse_httpStatus,

    -- ** GetFirewallDomainList
    getFirewallDomainList_firewallDomainListId,
    getFirewallDomainListResponse_firewallDomainList,
    getFirewallDomainListResponse_httpStatus,

    -- ** GetFirewallRuleGroup
    getFirewallRuleGroup_firewallRuleGroupId,
    getFirewallRuleGroupResponse_firewallRuleGroup,
    getFirewallRuleGroupResponse_httpStatus,

    -- ** GetFirewallRuleGroupAssociation
    getFirewallRuleGroupAssociation_firewallRuleGroupAssociationId,
    getFirewallRuleGroupAssociationResponse_firewallRuleGroupAssociation,
    getFirewallRuleGroupAssociationResponse_httpStatus,

    -- ** GetFirewallRuleGroupPolicy
    getFirewallRuleGroupPolicy_arn,
    getFirewallRuleGroupPolicyResponse_firewallRuleGroupPolicy,
    getFirewallRuleGroupPolicyResponse_httpStatus,

    -- ** GetResolverConfig
    getResolverConfig_resourceId,
    getResolverConfigResponse_resolverConfig,
    getResolverConfigResponse_httpStatus,

    -- ** GetResolverDnssecConfig
    getResolverDnssecConfig_resourceId,
    getResolverDnssecConfigResponse_resolverDNSSECConfig,
    getResolverDnssecConfigResponse_httpStatus,

    -- ** GetResolverEndpoint
    getResolverEndpoint_resolverEndpointId,
    getResolverEndpointResponse_resolverEndpoint,
    getResolverEndpointResponse_httpStatus,

    -- ** GetResolverQueryLogConfig
    getResolverQueryLogConfig_resolverQueryLogConfigId,
    getResolverQueryLogConfigResponse_resolverQueryLogConfig,
    getResolverQueryLogConfigResponse_httpStatus,

    -- ** GetResolverQueryLogConfigAssociation
    getResolverQueryLogConfigAssociation_resolverQueryLogConfigAssociationId,
    getResolverQueryLogConfigAssociationResponse_resolverQueryLogConfigAssociation,
    getResolverQueryLogConfigAssociationResponse_httpStatus,

    -- ** GetResolverQueryLogConfigPolicy
    getResolverQueryLogConfigPolicy_arn,
    getResolverQueryLogConfigPolicyResponse_resolverQueryLogConfigPolicy,
    getResolverQueryLogConfigPolicyResponse_httpStatus,

    -- ** GetResolverRule
    getResolverRule_resolverRuleId,
    getResolverRuleResponse_resolverRule,
    getResolverRuleResponse_httpStatus,

    -- ** GetResolverRuleAssociation
    getResolverRuleAssociation_resolverRuleAssociationId,
    getResolverRuleAssociationResponse_resolverRuleAssociation,
    getResolverRuleAssociationResponse_httpStatus,

    -- ** GetResolverRulePolicy
    getResolverRulePolicy_arn,
    getResolverRulePolicyResponse_resolverRulePolicy,
    getResolverRulePolicyResponse_httpStatus,

    -- ** ImportFirewallDomains
    importFirewallDomains_firewallDomainListId,
    importFirewallDomains_operation,
    importFirewallDomains_domainFileUrl,
    importFirewallDomainsResponse_name,
    importFirewallDomainsResponse_status,
    importFirewallDomainsResponse_id,
    importFirewallDomainsResponse_statusMessage,
    importFirewallDomainsResponse_httpStatus,

    -- ** ListFirewallConfigs
    listFirewallConfigs_nextToken,
    listFirewallConfigs_maxResults,
    listFirewallConfigsResponse_nextToken,
    listFirewallConfigsResponse_firewallConfigs,
    listFirewallConfigsResponse_httpStatus,

    -- ** ListFirewallDomainLists
    listFirewallDomainLists_nextToken,
    listFirewallDomainLists_maxResults,
    listFirewallDomainListsResponse_firewallDomainLists,
    listFirewallDomainListsResponse_nextToken,
    listFirewallDomainListsResponse_httpStatus,

    -- ** ListFirewallDomains
    listFirewallDomains_nextToken,
    listFirewallDomains_maxResults,
    listFirewallDomains_firewallDomainListId,
    listFirewallDomainsResponse_domains,
    listFirewallDomainsResponse_nextToken,
    listFirewallDomainsResponse_httpStatus,

    -- ** ListFirewallRuleGroupAssociations
    listFirewallRuleGroupAssociations_nextToken,
    listFirewallRuleGroupAssociations_firewallRuleGroupId,
    listFirewallRuleGroupAssociations_status,
    listFirewallRuleGroupAssociations_maxResults,
    listFirewallRuleGroupAssociations_priority,
    listFirewallRuleGroupAssociations_vpcId,
    listFirewallRuleGroupAssociationsResponse_firewallRuleGroupAssociations,
    listFirewallRuleGroupAssociationsResponse_nextToken,
    listFirewallRuleGroupAssociationsResponse_httpStatus,

    -- ** ListFirewallRuleGroups
    listFirewallRuleGroups_nextToken,
    listFirewallRuleGroups_maxResults,
    listFirewallRuleGroupsResponse_firewallRuleGroups,
    listFirewallRuleGroupsResponse_nextToken,
    listFirewallRuleGroupsResponse_httpStatus,

    -- ** ListFirewallRules
    listFirewallRules_nextToken,
    listFirewallRules_maxResults,
    listFirewallRules_priority,
    listFirewallRules_action,
    listFirewallRules_firewallRuleGroupId,
    listFirewallRulesResponse_nextToken,
    listFirewallRulesResponse_firewallRules,
    listFirewallRulesResponse_httpStatus,

    -- ** ListResolverConfigs
    listResolverConfigs_nextToken,
    listResolverConfigs_maxResults,
    listResolverConfigsResponse_nextToken,
    listResolverConfigsResponse_resolverConfigs,
    listResolverConfigsResponse_httpStatus,

    -- ** ListResolverDnssecConfigs
    listResolverDnssecConfigs_nextToken,
    listResolverDnssecConfigs_filters,
    listResolverDnssecConfigs_maxResults,
    listResolverDnssecConfigsResponse_nextToken,
    listResolverDnssecConfigsResponse_resolverDnssecConfigs,
    listResolverDnssecConfigsResponse_httpStatus,

    -- ** ListResolverEndpointIpAddresses
    listResolverEndpointIpAddresses_nextToken,
    listResolverEndpointIpAddresses_maxResults,
    listResolverEndpointIpAddresses_resolverEndpointId,
    listResolverEndpointIpAddressesResponse_nextToken,
    listResolverEndpointIpAddressesResponse_maxResults,
    listResolverEndpointIpAddressesResponse_ipAddresses,
    listResolverEndpointIpAddressesResponse_httpStatus,

    -- ** ListResolverEndpoints
    listResolverEndpoints_nextToken,
    listResolverEndpoints_filters,
    listResolverEndpoints_maxResults,
    listResolverEndpointsResponse_nextToken,
    listResolverEndpointsResponse_resolverEndpoints,
    listResolverEndpointsResponse_maxResults,
    listResolverEndpointsResponse_httpStatus,

    -- ** ListResolverQueryLogConfigAssociations
    listResolverQueryLogConfigAssociations_sortOrder,
    listResolverQueryLogConfigAssociations_nextToken,
    listResolverQueryLogConfigAssociations_filters,
    listResolverQueryLogConfigAssociations_sortBy,
    listResolverQueryLogConfigAssociations_maxResults,
    listResolverQueryLogConfigAssociationsResponse_nextToken,
    listResolverQueryLogConfigAssociationsResponse_totalFilteredCount,
    listResolverQueryLogConfigAssociationsResponse_resolverQueryLogConfigAssociations,
    listResolverQueryLogConfigAssociationsResponse_totalCount,
    listResolverQueryLogConfigAssociationsResponse_httpStatus,

    -- ** ListResolverQueryLogConfigs
    listResolverQueryLogConfigs_sortOrder,
    listResolverQueryLogConfigs_nextToken,
    listResolverQueryLogConfigs_filters,
    listResolverQueryLogConfigs_sortBy,
    listResolverQueryLogConfigs_maxResults,
    listResolverQueryLogConfigsResponse_nextToken,
    listResolverQueryLogConfigsResponse_resolverQueryLogConfigs,
    listResolverQueryLogConfigsResponse_totalFilteredCount,
    listResolverQueryLogConfigsResponse_totalCount,
    listResolverQueryLogConfigsResponse_httpStatus,

    -- ** ListResolverRuleAssociations
    listResolverRuleAssociations_nextToken,
    listResolverRuleAssociations_filters,
    listResolverRuleAssociations_maxResults,
    listResolverRuleAssociationsResponse_nextToken,
    listResolverRuleAssociationsResponse_resolverRuleAssociations,
    listResolverRuleAssociationsResponse_maxResults,
    listResolverRuleAssociationsResponse_httpStatus,

    -- ** ListResolverRules
    listResolverRules_nextToken,
    listResolverRules_filters,
    listResolverRules_maxResults,
    listResolverRulesResponse_nextToken,
    listResolverRulesResponse_maxResults,
    listResolverRulesResponse_resolverRules,
    listResolverRulesResponse_httpStatus,

    -- ** ListTagsForResource
    listTagsForResource_nextToken,
    listTagsForResource_maxResults,
    listTagsForResource_resourceArn,
    listTagsForResourceResponse_tags,
    listTagsForResourceResponse_nextToken,
    listTagsForResourceResponse_httpStatus,

    -- ** PutFirewallRuleGroupPolicy
    putFirewallRuleGroupPolicy_arn,
    putFirewallRuleGroupPolicy_firewallRuleGroupPolicy,
    putFirewallRuleGroupPolicyResponse_returnValue,
    putFirewallRuleGroupPolicyResponse_httpStatus,

    -- ** PutResolverQueryLogConfigPolicy
    putResolverQueryLogConfigPolicy_arn,
    putResolverQueryLogConfigPolicy_resolverQueryLogConfigPolicy,
    putResolverQueryLogConfigPolicyResponse_returnValue,
    putResolverQueryLogConfigPolicyResponse_httpStatus,

    -- ** PutResolverRulePolicy
    putResolverRulePolicy_arn,
    putResolverRulePolicy_resolverRulePolicy,
    putResolverRulePolicyResponse_returnValue,
    putResolverRulePolicyResponse_httpStatus,

    -- ** TagResource
    tagResource_resourceArn,
    tagResource_tags,
    tagResourceResponse_httpStatus,

    -- ** UntagResource
    untagResource_resourceArn,
    untagResource_tagKeys,
    untagResourceResponse_httpStatus,

    -- ** UpdateFirewallConfig
    updateFirewallConfig_resourceId,
    updateFirewallConfig_firewallFailOpen,
    updateFirewallConfigResponse_firewallConfig,
    updateFirewallConfigResponse_httpStatus,

    -- ** UpdateFirewallDomains
    updateFirewallDomains_firewallDomainListId,
    updateFirewallDomains_operation,
    updateFirewallDomains_domains,
    updateFirewallDomainsResponse_name,
    updateFirewallDomainsResponse_status,
    updateFirewallDomainsResponse_id,
    updateFirewallDomainsResponse_statusMessage,
    updateFirewallDomainsResponse_httpStatus,

    -- ** UpdateFirewallRule
    updateFirewallRule_name,
    updateFirewallRule_blockResponse,
    updateFirewallRule_blockOverrideTtl,
    updateFirewallRule_blockOverrideDnsType,
    updateFirewallRule_blockOverrideDomain,
    updateFirewallRule_priority,
    updateFirewallRule_action,
    updateFirewallRule_firewallRuleGroupId,
    updateFirewallRule_firewallDomainListId,
    updateFirewallRuleResponse_firewallRule,
    updateFirewallRuleResponse_httpStatus,

    -- ** UpdateFirewallRuleGroupAssociation
    updateFirewallRuleGroupAssociation_name,
    updateFirewallRuleGroupAssociation_mutationProtection,
    updateFirewallRuleGroupAssociation_priority,
    updateFirewallRuleGroupAssociation_firewallRuleGroupAssociationId,
    updateFirewallRuleGroupAssociationResponse_firewallRuleGroupAssociation,
    updateFirewallRuleGroupAssociationResponse_httpStatus,

    -- ** UpdateResolverConfig
    updateResolverConfig_resourceId,
    updateResolverConfig_autodefinedReverseFlag,
    updateResolverConfigResponse_resolverConfig,
    updateResolverConfigResponse_httpStatus,

    -- ** UpdateResolverDnssecConfig
    updateResolverDnssecConfig_resourceId,
    updateResolverDnssecConfig_validation,
    updateResolverDnssecConfigResponse_resolverDNSSECConfig,
    updateResolverDnssecConfigResponse_httpStatus,

    -- ** UpdateResolverEndpoint
    updateResolverEndpoint_name,
    updateResolverEndpoint_resolverEndpointId,
    updateResolverEndpointResponse_resolverEndpoint,
    updateResolverEndpointResponse_httpStatus,

    -- ** UpdateResolverRule
    updateResolverRule_resolverRuleId,
    updateResolverRule_config,
    updateResolverRuleResponse_resolverRule,
    updateResolverRuleResponse_httpStatus,

    -- * Types

    -- ** Filter
    filter_name,
    filter_values,

    -- ** FirewallConfig
    firewallConfig_resourceId,
    firewallConfig_ownerId,
    firewallConfig_firewallFailOpen,
    firewallConfig_id,

    -- ** FirewallDomainList
    firewallDomainList_name,
    firewallDomainList_domainCount,
    firewallDomainList_modificationTime,
    firewallDomainList_managedOwnerName,
    firewallDomainList_arn,
    firewallDomainList_status,
    firewallDomainList_id,
    firewallDomainList_creatorRequestId,
    firewallDomainList_creationTime,
    firewallDomainList_statusMessage,

    -- ** FirewallDomainListMetadata
    firewallDomainListMetadata_name,
    firewallDomainListMetadata_managedOwnerName,
    firewallDomainListMetadata_arn,
    firewallDomainListMetadata_id,
    firewallDomainListMetadata_creatorRequestId,

    -- ** FirewallRule
    firewallRule_name,
    firewallRule_blockResponse,
    firewallRule_modificationTime,
    firewallRule_firewallRuleGroupId,
    firewallRule_blockOverrideTtl,
    firewallRule_blockOverrideDnsType,
    firewallRule_creatorRequestId,
    firewallRule_firewallDomainListId,
    firewallRule_blockOverrideDomain,
    firewallRule_priority,
    firewallRule_action,
    firewallRule_creationTime,

    -- ** FirewallRuleGroup
    firewallRuleGroup_name,
    firewallRuleGroup_ownerId,
    firewallRuleGroup_shareStatus,
    firewallRuleGroup_modificationTime,
    firewallRuleGroup_arn,
    firewallRuleGroup_status,
    firewallRuleGroup_id,
    firewallRuleGroup_creatorRequestId,
    firewallRuleGroup_ruleCount,
    firewallRuleGroup_creationTime,
    firewallRuleGroup_statusMessage,

    -- ** FirewallRuleGroupAssociation
    firewallRuleGroupAssociation_name,
    firewallRuleGroupAssociation_modificationTime,
    firewallRuleGroupAssociation_firewallRuleGroupId,
    firewallRuleGroupAssociation_managedOwnerName,
    firewallRuleGroupAssociation_arn,
    firewallRuleGroupAssociation_status,
    firewallRuleGroupAssociation_id,
    firewallRuleGroupAssociation_mutationProtection,
    firewallRuleGroupAssociation_creatorRequestId,
    firewallRuleGroupAssociation_priority,
    firewallRuleGroupAssociation_creationTime,
    firewallRuleGroupAssociation_vpcId,
    firewallRuleGroupAssociation_statusMessage,

    -- ** FirewallRuleGroupMetadata
    firewallRuleGroupMetadata_name,
    firewallRuleGroupMetadata_ownerId,
    firewallRuleGroupMetadata_shareStatus,
    firewallRuleGroupMetadata_arn,
    firewallRuleGroupMetadata_id,
    firewallRuleGroupMetadata_creatorRequestId,

    -- ** IpAddressRequest
    ipAddressRequest_ip,
    ipAddressRequest_subnetId,

    -- ** IpAddressResponse
    ipAddressResponse_ipId,
    ipAddressResponse_subnetId,
    ipAddressResponse_modificationTime,
    ipAddressResponse_ip,
    ipAddressResponse_status,
    ipAddressResponse_creationTime,
    ipAddressResponse_statusMessage,

    -- ** IpAddressUpdate
    ipAddressUpdate_ipId,
    ipAddressUpdate_subnetId,
    ipAddressUpdate_ip,

    -- ** ResolverConfig
    resolverConfig_resourceId,
    resolverConfig_ownerId,
    resolverConfig_id,
    resolverConfig_autodefinedReverse,

    -- ** ResolverDnssecConfig
    resolverDnssecConfig_resourceId,
    resolverDnssecConfig_ownerId,
    resolverDnssecConfig_validationStatus,
    resolverDnssecConfig_id,

    -- ** ResolverEndpoint
    resolverEndpoint_name,
    resolverEndpoint_securityGroupIds,
    resolverEndpoint_modificationTime,
    resolverEndpoint_arn,
    resolverEndpoint_ipAddressCount,
    resolverEndpoint_status,
    resolverEndpoint_id,
    resolverEndpoint_creatorRequestId,
    resolverEndpoint_creationTime,
    resolverEndpoint_statusMessage,
    resolverEndpoint_direction,
    resolverEndpoint_hostVPCId,

    -- ** ResolverQueryLogConfig
    resolverQueryLogConfig_name,
    resolverQueryLogConfig_ownerId,
    resolverQueryLogConfig_shareStatus,
    resolverQueryLogConfig_arn,
    resolverQueryLogConfig_associationCount,
    resolverQueryLogConfig_status,
    resolverQueryLogConfig_id,
    resolverQueryLogConfig_creatorRequestId,
    resolverQueryLogConfig_creationTime,
    resolverQueryLogConfig_destinationArn,

    -- ** ResolverQueryLogConfigAssociation
    resolverQueryLogConfigAssociation_resourceId,
    resolverQueryLogConfigAssociation_errorMessage,
    resolverQueryLogConfigAssociation_status,
    resolverQueryLogConfigAssociation_resolverQueryLogConfigId,
    resolverQueryLogConfigAssociation_id,
    resolverQueryLogConfigAssociation_creationTime,
    resolverQueryLogConfigAssociation_error,

    -- ** ResolverRule
    resolverRule_name,
    resolverRule_ownerId,
    resolverRule_shareStatus,
    resolverRule_domainName,
    resolverRule_modificationTime,
    resolverRule_arn,
    resolverRule_targetIps,
    resolverRule_status,
    resolverRule_id,
    resolverRule_creatorRequestId,
    resolverRule_ruleType,
    resolverRule_creationTime,
    resolverRule_statusMessage,
    resolverRule_resolverEndpointId,

    -- ** ResolverRuleAssociation
    resolverRuleAssociation_name,
    resolverRuleAssociation_status,
    resolverRuleAssociation_id,
    resolverRuleAssociation_resolverRuleId,
    resolverRuleAssociation_vPCId,
    resolverRuleAssociation_statusMessage,

    -- ** ResolverRuleConfig
    resolverRuleConfig_name,
    resolverRuleConfig_targetIps,
    resolverRuleConfig_resolverEndpointId,

    -- ** Tag
    tag_key,
    tag_value,

    -- ** TargetAddress
    targetAddress_port,
    targetAddress_ip,
  )
where

import Amazonka.Route53Resolver.AssociateFirewallRuleGroup
import Amazonka.Route53Resolver.AssociateResolverEndpointIpAddress
import Amazonka.Route53Resolver.AssociateResolverQueryLogConfig
import Amazonka.Route53Resolver.AssociateResolverRule
import Amazonka.Route53Resolver.CreateFirewallDomainList
import Amazonka.Route53Resolver.CreateFirewallRule
import Amazonka.Route53Resolver.CreateFirewallRuleGroup
import Amazonka.Route53Resolver.CreateResolverEndpoint
import Amazonka.Route53Resolver.CreateResolverQueryLogConfig
import Amazonka.Route53Resolver.CreateResolverRule
import Amazonka.Route53Resolver.DeleteFirewallDomainList
import Amazonka.Route53Resolver.DeleteFirewallRule
import Amazonka.Route53Resolver.DeleteFirewallRuleGroup
import Amazonka.Route53Resolver.DeleteResolverEndpoint
import Amazonka.Route53Resolver.DeleteResolverQueryLogConfig
import Amazonka.Route53Resolver.DeleteResolverRule
import Amazonka.Route53Resolver.DisassociateFirewallRuleGroup
import Amazonka.Route53Resolver.DisassociateResolverEndpointIpAddress
import Amazonka.Route53Resolver.DisassociateResolverQueryLogConfig
import Amazonka.Route53Resolver.DisassociateResolverRule
import Amazonka.Route53Resolver.GetFirewallConfig
import Amazonka.Route53Resolver.GetFirewallDomainList
import Amazonka.Route53Resolver.GetFirewallRuleGroup
import Amazonka.Route53Resolver.GetFirewallRuleGroupAssociation
import Amazonka.Route53Resolver.GetFirewallRuleGroupPolicy
import Amazonka.Route53Resolver.GetResolverConfig
import Amazonka.Route53Resolver.GetResolverDnssecConfig
import Amazonka.Route53Resolver.GetResolverEndpoint
import Amazonka.Route53Resolver.GetResolverQueryLogConfig
import Amazonka.Route53Resolver.GetResolverQueryLogConfigAssociation
import Amazonka.Route53Resolver.GetResolverQueryLogConfigPolicy
import Amazonka.Route53Resolver.GetResolverRule
import Amazonka.Route53Resolver.GetResolverRuleAssociation
import Amazonka.Route53Resolver.GetResolverRulePolicy
import Amazonka.Route53Resolver.ImportFirewallDomains
import Amazonka.Route53Resolver.ListFirewallConfigs
import Amazonka.Route53Resolver.ListFirewallDomainLists
import Amazonka.Route53Resolver.ListFirewallDomains
import Amazonka.Route53Resolver.ListFirewallRuleGroupAssociations
import Amazonka.Route53Resolver.ListFirewallRuleGroups
import Amazonka.Route53Resolver.ListFirewallRules
import Amazonka.Route53Resolver.ListResolverConfigs
import Amazonka.Route53Resolver.ListResolverDnssecConfigs
import Amazonka.Route53Resolver.ListResolverEndpointIpAddresses
import Amazonka.Route53Resolver.ListResolverEndpoints
import Amazonka.Route53Resolver.ListResolverQueryLogConfigAssociations
import Amazonka.Route53Resolver.ListResolverQueryLogConfigs
import Amazonka.Route53Resolver.ListResolverRuleAssociations
import Amazonka.Route53Resolver.ListResolverRules
import Amazonka.Route53Resolver.ListTagsForResource
import Amazonka.Route53Resolver.PutFirewallRuleGroupPolicy
import Amazonka.Route53Resolver.PutResolverQueryLogConfigPolicy
import Amazonka.Route53Resolver.PutResolverRulePolicy
import Amazonka.Route53Resolver.TagResource
import Amazonka.Route53Resolver.Types.Filter
import Amazonka.Route53Resolver.Types.FirewallConfig
import Amazonka.Route53Resolver.Types.FirewallDomainList
import Amazonka.Route53Resolver.Types.FirewallDomainListMetadata
import Amazonka.Route53Resolver.Types.FirewallRule
import Amazonka.Route53Resolver.Types.FirewallRuleGroup
import Amazonka.Route53Resolver.Types.FirewallRuleGroupAssociation
import Amazonka.Route53Resolver.Types.FirewallRuleGroupMetadata
import Amazonka.Route53Resolver.Types.IpAddressRequest
import Amazonka.Route53Resolver.Types.IpAddressResponse
import Amazonka.Route53Resolver.Types.IpAddressUpdate
import Amazonka.Route53Resolver.Types.ResolverConfig
import Amazonka.Route53Resolver.Types.ResolverDnssecConfig
import Amazonka.Route53Resolver.Types.ResolverEndpoint
import Amazonka.Route53Resolver.Types.ResolverQueryLogConfig
import Amazonka.Route53Resolver.Types.ResolverQueryLogConfigAssociation
import Amazonka.Route53Resolver.Types.ResolverRule
import Amazonka.Route53Resolver.Types.ResolverRuleAssociation
import Amazonka.Route53Resolver.Types.ResolverRuleConfig
import Amazonka.Route53Resolver.Types.Tag
import Amazonka.Route53Resolver.Types.TargetAddress
import Amazonka.Route53Resolver.UntagResource
import Amazonka.Route53Resolver.UpdateFirewallConfig
import Amazonka.Route53Resolver.UpdateFirewallDomains
import Amazonka.Route53Resolver.UpdateFirewallRule
import Amazonka.Route53Resolver.UpdateFirewallRuleGroupAssociation
import Amazonka.Route53Resolver.UpdateResolverConfig
import Amazonka.Route53Resolver.UpdateResolverDnssecConfig
import Amazonka.Route53Resolver.UpdateResolverEndpoint
import Amazonka.Route53Resolver.UpdateResolverRule
