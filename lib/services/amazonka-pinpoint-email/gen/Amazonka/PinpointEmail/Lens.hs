{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.PinpointEmail.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.PinpointEmail.Lens
  ( -- * Operations

    -- ** CreateConfigurationSet
    createConfigurationSet_tags,
    createConfigurationSet_reputationOptions,
    createConfigurationSet_deliveryOptions,
    createConfigurationSet_trackingOptions,
    createConfigurationSet_sendingOptions,
    createConfigurationSet_configurationSetName,
    createConfigurationSetResponse_httpStatus,

    -- ** CreateConfigurationSetEventDestination
    createConfigurationSetEventDestination_configurationSetName,
    createConfigurationSetEventDestination_eventDestinationName,
    createConfigurationSetEventDestination_eventDestination,
    createConfigurationSetEventDestinationResponse_httpStatus,

    -- ** CreateDedicatedIpPool
    createDedicatedIpPool_tags,
    createDedicatedIpPool_poolName,
    createDedicatedIpPoolResponse_httpStatus,

    -- ** CreateDeliverabilityTestReport
    createDeliverabilityTestReport_tags,
    createDeliverabilityTestReport_reportName,
    createDeliverabilityTestReport_fromEmailAddress,
    createDeliverabilityTestReport_content,
    createDeliverabilityTestReportResponse_httpStatus,
    createDeliverabilityTestReportResponse_reportId,
    createDeliverabilityTestReportResponse_deliverabilityTestStatus,

    -- ** CreateEmailIdentity
    createEmailIdentity_tags,
    createEmailIdentity_emailIdentity,
    createEmailIdentityResponse_verifiedForSendingStatus,
    createEmailIdentityResponse_dkimAttributes,
    createEmailIdentityResponse_identityType,
    createEmailIdentityResponse_httpStatus,

    -- ** DeleteConfigurationSet
    deleteConfigurationSet_configurationSetName,
    deleteConfigurationSetResponse_httpStatus,

    -- ** DeleteConfigurationSetEventDestination
    deleteConfigurationSetEventDestination_configurationSetName,
    deleteConfigurationSetEventDestination_eventDestinationName,
    deleteConfigurationSetEventDestinationResponse_httpStatus,

    -- ** DeleteDedicatedIpPool
    deleteDedicatedIpPool_poolName,
    deleteDedicatedIpPoolResponse_httpStatus,

    -- ** DeleteEmailIdentity
    deleteEmailIdentity_emailIdentity,
    deleteEmailIdentityResponse_httpStatus,

    -- ** GetAccount
    getAccountResponse_sendingEnabled,
    getAccountResponse_enforcementStatus,
    getAccountResponse_productionAccessEnabled,
    getAccountResponse_dedicatedIpAutoWarmupEnabled,
    getAccountResponse_sendQuota,
    getAccountResponse_httpStatus,

    -- ** GetBlacklistReports
    getBlacklistReports_blacklistItemNames,
    getBlacklistReportsResponse_httpStatus,
    getBlacklistReportsResponse_blacklistReport,

    -- ** GetConfigurationSet
    getConfigurationSet_configurationSetName,
    getConfigurationSetResponse_tags,
    getConfigurationSetResponse_reputationOptions,
    getConfigurationSetResponse_configurationSetName,
    getConfigurationSetResponse_deliveryOptions,
    getConfigurationSetResponse_trackingOptions,
    getConfigurationSetResponse_sendingOptions,
    getConfigurationSetResponse_httpStatus,

    -- ** GetConfigurationSetEventDestinations
    getConfigurationSetEventDestinations_configurationSetName,
    getConfigurationSetEventDestinationsResponse_eventDestinations,
    getConfigurationSetEventDestinationsResponse_httpStatus,

    -- ** GetDedicatedIp
    getDedicatedIp_ip,
    getDedicatedIpResponse_dedicatedIp,
    getDedicatedIpResponse_httpStatus,

    -- ** GetDedicatedIps
    getDedicatedIps_nextToken,
    getDedicatedIps_pageSize,
    getDedicatedIps_poolName,
    getDedicatedIpsResponse_nextToken,
    getDedicatedIpsResponse_dedicatedIps,
    getDedicatedIpsResponse_httpStatus,

    -- ** GetDeliverabilityDashboardOptions
    getDeliverabilityDashboardOptionsResponse_accountStatus,
    getDeliverabilityDashboardOptionsResponse_pendingExpirationSubscribedDomains,
    getDeliverabilityDashboardOptionsResponse_activeSubscribedDomains,
    getDeliverabilityDashboardOptionsResponse_subscriptionExpiryDate,
    getDeliverabilityDashboardOptionsResponse_httpStatus,
    getDeliverabilityDashboardOptionsResponse_dashboardEnabled,

    -- ** GetDeliverabilityTestReport
    getDeliverabilityTestReport_reportId,
    getDeliverabilityTestReportResponse_tags,
    getDeliverabilityTestReportResponse_message,
    getDeliverabilityTestReportResponse_httpStatus,
    getDeliverabilityTestReportResponse_deliverabilityTestReport,
    getDeliverabilityTestReportResponse_overallPlacement,
    getDeliverabilityTestReportResponse_ispPlacements,

    -- ** GetDomainDeliverabilityCampaign
    getDomainDeliverabilityCampaign_campaignId,
    getDomainDeliverabilityCampaignResponse_httpStatus,
    getDomainDeliverabilityCampaignResponse_domainDeliverabilityCampaign,

    -- ** GetDomainStatisticsReport
    getDomainStatisticsReport_domain,
    getDomainStatisticsReport_startDate,
    getDomainStatisticsReport_endDate,
    getDomainStatisticsReportResponse_httpStatus,
    getDomainStatisticsReportResponse_overallVolume,
    getDomainStatisticsReportResponse_dailyVolumes,

    -- ** GetEmailIdentity
    getEmailIdentity_emailIdentity,
    getEmailIdentityResponse_tags,
    getEmailIdentityResponse_verifiedForSendingStatus,
    getEmailIdentityResponse_feedbackForwardingStatus,
    getEmailIdentityResponse_mailFromAttributes,
    getEmailIdentityResponse_dkimAttributes,
    getEmailIdentityResponse_identityType,
    getEmailIdentityResponse_httpStatus,

    -- ** ListConfigurationSets
    listConfigurationSets_nextToken,
    listConfigurationSets_pageSize,
    listConfigurationSetsResponse_nextToken,
    listConfigurationSetsResponse_configurationSets,
    listConfigurationSetsResponse_httpStatus,

    -- ** ListDedicatedIpPools
    listDedicatedIpPools_nextToken,
    listDedicatedIpPools_pageSize,
    listDedicatedIpPoolsResponse_nextToken,
    listDedicatedIpPoolsResponse_dedicatedIpPools,
    listDedicatedIpPoolsResponse_httpStatus,

    -- ** ListDeliverabilityTestReports
    listDeliverabilityTestReports_nextToken,
    listDeliverabilityTestReports_pageSize,
    listDeliverabilityTestReportsResponse_nextToken,
    listDeliverabilityTestReportsResponse_httpStatus,
    listDeliverabilityTestReportsResponse_deliverabilityTestReports,

    -- ** ListDomainDeliverabilityCampaigns
    listDomainDeliverabilityCampaigns_nextToken,
    listDomainDeliverabilityCampaigns_pageSize,
    listDomainDeliverabilityCampaigns_startDate,
    listDomainDeliverabilityCampaigns_endDate,
    listDomainDeliverabilityCampaigns_subscribedDomain,
    listDomainDeliverabilityCampaignsResponse_nextToken,
    listDomainDeliverabilityCampaignsResponse_httpStatus,
    listDomainDeliverabilityCampaignsResponse_domainDeliverabilityCampaigns,

    -- ** ListEmailIdentities
    listEmailIdentities_nextToken,
    listEmailIdentities_pageSize,
    listEmailIdentitiesResponse_nextToken,
    listEmailIdentitiesResponse_emailIdentities,
    listEmailIdentitiesResponse_httpStatus,

    -- ** ListTagsForResource
    listTagsForResource_resourceArn,
    listTagsForResourceResponse_httpStatus,
    listTagsForResourceResponse_tags,

    -- ** PutAccountDedicatedIpWarmupAttributes
    putAccountDedicatedIpWarmupAttributes_autoWarmupEnabled,
    putAccountDedicatedIpWarmupAttributesResponse_httpStatus,

    -- ** PutAccountSendingAttributes
    putAccountSendingAttributes_sendingEnabled,
    putAccountSendingAttributesResponse_httpStatus,

    -- ** PutConfigurationSetDeliveryOptions
    putConfigurationSetDeliveryOptions_tlsPolicy,
    putConfigurationSetDeliveryOptions_sendingPoolName,
    putConfigurationSetDeliveryOptions_configurationSetName,
    putConfigurationSetDeliveryOptionsResponse_httpStatus,

    -- ** PutConfigurationSetReputationOptions
    putConfigurationSetReputationOptions_reputationMetricsEnabled,
    putConfigurationSetReputationOptions_configurationSetName,
    putConfigurationSetReputationOptionsResponse_httpStatus,

    -- ** PutConfigurationSetSendingOptions
    putConfigurationSetSendingOptions_sendingEnabled,
    putConfigurationSetSendingOptions_configurationSetName,
    putConfigurationSetSendingOptionsResponse_httpStatus,

    -- ** PutConfigurationSetTrackingOptions
    putConfigurationSetTrackingOptions_customRedirectDomain,
    putConfigurationSetTrackingOptions_configurationSetName,
    putConfigurationSetTrackingOptionsResponse_httpStatus,

    -- ** PutDedicatedIpInPool
    putDedicatedIpInPool_ip,
    putDedicatedIpInPool_destinationPoolName,
    putDedicatedIpInPoolResponse_httpStatus,

    -- ** PutDedicatedIpWarmupAttributes
    putDedicatedIpWarmupAttributes_ip,
    putDedicatedIpWarmupAttributes_warmupPercentage,
    putDedicatedIpWarmupAttributesResponse_httpStatus,

    -- ** PutDeliverabilityDashboardOption
    putDeliverabilityDashboardOption_subscribedDomains,
    putDeliverabilityDashboardOption_dashboardEnabled,
    putDeliverabilityDashboardOptionResponse_httpStatus,

    -- ** PutEmailIdentityDkimAttributes
    putEmailIdentityDkimAttributes_signingEnabled,
    putEmailIdentityDkimAttributes_emailIdentity,
    putEmailIdentityDkimAttributesResponse_httpStatus,

    -- ** PutEmailIdentityFeedbackAttributes
    putEmailIdentityFeedbackAttributes_emailForwardingEnabled,
    putEmailIdentityFeedbackAttributes_emailIdentity,
    putEmailIdentityFeedbackAttributesResponse_httpStatus,

    -- ** PutEmailIdentityMailFromAttributes
    putEmailIdentityMailFromAttributes_mailFromDomain,
    putEmailIdentityMailFromAttributes_behaviorOnMxFailure,
    putEmailIdentityMailFromAttributes_emailIdentity,
    putEmailIdentityMailFromAttributesResponse_httpStatus,

    -- ** SendEmail
    sendEmail_replyToAddresses,
    sendEmail_emailTags,
    sendEmail_fromEmailAddress,
    sendEmail_configurationSetName,
    sendEmail_feedbackForwardingEmailAddress,
    sendEmail_destination,
    sendEmail_content,
    sendEmailResponse_messageId,
    sendEmailResponse_httpStatus,

    -- ** TagResource
    tagResource_resourceArn,
    tagResource_tags,
    tagResourceResponse_httpStatus,

    -- ** UntagResource
    untagResource_resourceArn,
    untagResource_tagKeys,
    untagResourceResponse_httpStatus,

    -- ** UpdateConfigurationSetEventDestination
    updateConfigurationSetEventDestination_configurationSetName,
    updateConfigurationSetEventDestination_eventDestinationName,
    updateConfigurationSetEventDestination_eventDestination,
    updateConfigurationSetEventDestinationResponse_httpStatus,

    -- * Types

    -- ** BlacklistEntry
    blacklistEntry_listingTime,
    blacklistEntry_description,
    blacklistEntry_rblName,

    -- ** Body
    body_html,
    body_text,

    -- ** CloudWatchDestination
    cloudWatchDestination_dimensionConfigurations,

    -- ** CloudWatchDimensionConfiguration
    cloudWatchDimensionConfiguration_dimensionName,
    cloudWatchDimensionConfiguration_dimensionValueSource,
    cloudWatchDimensionConfiguration_defaultDimensionValue,

    -- ** Content
    content_charset,
    content_data,

    -- ** DailyVolume
    dailyVolume_volumeStatistics,
    dailyVolume_startDate,
    dailyVolume_domainIspPlacements,

    -- ** DedicatedIp
    dedicatedIp_poolName,
    dedicatedIp_ip,
    dedicatedIp_warmupStatus,
    dedicatedIp_warmupPercentage,

    -- ** DeliverabilityTestReport
    deliverabilityTestReport_reportName,
    deliverabilityTestReport_fromEmailAddress,
    deliverabilityTestReport_reportId,
    deliverabilityTestReport_createDate,
    deliverabilityTestReport_deliverabilityTestStatus,
    deliverabilityTestReport_subject,

    -- ** DeliveryOptions
    deliveryOptions_tlsPolicy,
    deliveryOptions_sendingPoolName,

    -- ** Destination
    destination_ccAddresses,
    destination_bccAddresses,
    destination_toAddresses,

    -- ** DkimAttributes
    dkimAttributes_tokens,
    dkimAttributes_status,
    dkimAttributes_signingEnabled,

    -- ** DomainDeliverabilityCampaign
    domainDeliverabilityCampaign_inboxCount,
    domainDeliverabilityCampaign_campaignId,
    domainDeliverabilityCampaign_fromAddress,
    domainDeliverabilityCampaign_deleteRate,
    domainDeliverabilityCampaign_lastSeenDateTime,
    domainDeliverabilityCampaign_sendingIps,
    domainDeliverabilityCampaign_imageUrl,
    domainDeliverabilityCampaign_esps,
    domainDeliverabilityCampaign_projectedVolume,
    domainDeliverabilityCampaign_readDeleteRate,
    domainDeliverabilityCampaign_spamCount,
    domainDeliverabilityCampaign_subject,
    domainDeliverabilityCampaign_firstSeenDateTime,
    domainDeliverabilityCampaign_readRate,

    -- ** DomainDeliverabilityTrackingOption
    domainDeliverabilityTrackingOption_domain,
    domainDeliverabilityTrackingOption_inboxPlacementTrackingOption,
    domainDeliverabilityTrackingOption_subscriptionStartDate,

    -- ** DomainIspPlacement
    domainIspPlacement_inboxRawCount,
    domainIspPlacement_spamPercentage,
    domainIspPlacement_inboxPercentage,
    domainIspPlacement_spamRawCount,
    domainIspPlacement_ispName,

    -- ** EmailContent
    emailContent_simple,
    emailContent_raw,
    emailContent_template,

    -- ** EventDestination
    eventDestination_pinpointDestination,
    eventDestination_snsDestination,
    eventDestination_enabled,
    eventDestination_cloudWatchDestination,
    eventDestination_kinesisFirehoseDestination,
    eventDestination_name,
    eventDestination_matchingEventTypes,

    -- ** EventDestinationDefinition
    eventDestinationDefinition_matchingEventTypes,
    eventDestinationDefinition_pinpointDestination,
    eventDestinationDefinition_snsDestination,
    eventDestinationDefinition_enabled,
    eventDestinationDefinition_cloudWatchDestination,
    eventDestinationDefinition_kinesisFirehoseDestination,

    -- ** IdentityInfo
    identityInfo_sendingEnabled,
    identityInfo_identityName,
    identityInfo_identityType,

    -- ** InboxPlacementTrackingOption
    inboxPlacementTrackingOption_trackedIsps,
    inboxPlacementTrackingOption_global,

    -- ** IspPlacement
    ispPlacement_placementStatistics,
    ispPlacement_ispName,

    -- ** KinesisFirehoseDestination
    kinesisFirehoseDestination_iamRoleArn,
    kinesisFirehoseDestination_deliveryStreamArn,

    -- ** MailFromAttributes
    mailFromAttributes_mailFromDomain,
    mailFromAttributes_mailFromDomainStatus,
    mailFromAttributes_behaviorOnMxFailure,

    -- ** Message
    message_subject,
    message_body,

    -- ** MessageTag
    messageTag_name,
    messageTag_value,

    -- ** OverallVolume
    overallVolume_volumeStatistics,
    overallVolume_readRatePercent,
    overallVolume_domainIspPlacements,

    -- ** PinpointDestination
    pinpointDestination_applicationArn,

    -- ** PlacementStatistics
    placementStatistics_missingPercentage,
    placementStatistics_dkimPercentage,
    placementStatistics_spfPercentage,
    placementStatistics_spamPercentage,
    placementStatistics_inboxPercentage,

    -- ** RawMessage
    rawMessage_data,

    -- ** ReputationOptions
    reputationOptions_reputationMetricsEnabled,
    reputationOptions_lastFreshStart,

    -- ** SendQuota
    sendQuota_max24HourSend,
    sendQuota_sentLast24Hours,
    sendQuota_maxSendRate,

    -- ** SendingOptions
    sendingOptions_sendingEnabled,

    -- ** SnsDestination
    snsDestination_topicArn,

    -- ** Tag
    tag_key,
    tag_value,

    -- ** Template
    template_templateData,
    template_templateArn,

    -- ** TrackingOptions
    trackingOptions_customRedirectDomain,

    -- ** VolumeStatistics
    volumeStatistics_inboxRawCount,
    volumeStatistics_projectedSpam,
    volumeStatistics_spamRawCount,
    volumeStatistics_projectedInbox,
  )
where

import Amazonka.PinpointEmail.CreateConfigurationSet
import Amazonka.PinpointEmail.CreateConfigurationSetEventDestination
import Amazonka.PinpointEmail.CreateDedicatedIpPool
import Amazonka.PinpointEmail.CreateDeliverabilityTestReport
import Amazonka.PinpointEmail.CreateEmailIdentity
import Amazonka.PinpointEmail.DeleteConfigurationSet
import Amazonka.PinpointEmail.DeleteConfigurationSetEventDestination
import Amazonka.PinpointEmail.DeleteDedicatedIpPool
import Amazonka.PinpointEmail.DeleteEmailIdentity
import Amazonka.PinpointEmail.GetAccount
import Amazonka.PinpointEmail.GetBlacklistReports
import Amazonka.PinpointEmail.GetConfigurationSet
import Amazonka.PinpointEmail.GetConfigurationSetEventDestinations
import Amazonka.PinpointEmail.GetDedicatedIp
import Amazonka.PinpointEmail.GetDedicatedIps
import Amazonka.PinpointEmail.GetDeliverabilityDashboardOptions
import Amazonka.PinpointEmail.GetDeliverabilityTestReport
import Amazonka.PinpointEmail.GetDomainDeliverabilityCampaign
import Amazonka.PinpointEmail.GetDomainStatisticsReport
import Amazonka.PinpointEmail.GetEmailIdentity
import Amazonka.PinpointEmail.ListConfigurationSets
import Amazonka.PinpointEmail.ListDedicatedIpPools
import Amazonka.PinpointEmail.ListDeliverabilityTestReports
import Amazonka.PinpointEmail.ListDomainDeliverabilityCampaigns
import Amazonka.PinpointEmail.ListEmailIdentities
import Amazonka.PinpointEmail.ListTagsForResource
import Amazonka.PinpointEmail.PutAccountDedicatedIpWarmupAttributes
import Amazonka.PinpointEmail.PutAccountSendingAttributes
import Amazonka.PinpointEmail.PutConfigurationSetDeliveryOptions
import Amazonka.PinpointEmail.PutConfigurationSetReputationOptions
import Amazonka.PinpointEmail.PutConfigurationSetSendingOptions
import Amazonka.PinpointEmail.PutConfigurationSetTrackingOptions
import Amazonka.PinpointEmail.PutDedicatedIpInPool
import Amazonka.PinpointEmail.PutDedicatedIpWarmupAttributes
import Amazonka.PinpointEmail.PutDeliverabilityDashboardOption
import Amazonka.PinpointEmail.PutEmailIdentityDkimAttributes
import Amazonka.PinpointEmail.PutEmailIdentityFeedbackAttributes
import Amazonka.PinpointEmail.PutEmailIdentityMailFromAttributes
import Amazonka.PinpointEmail.SendEmail
import Amazonka.PinpointEmail.TagResource
import Amazonka.PinpointEmail.Types.BlacklistEntry
import Amazonka.PinpointEmail.Types.Body
import Amazonka.PinpointEmail.Types.CloudWatchDestination
import Amazonka.PinpointEmail.Types.CloudWatchDimensionConfiguration
import Amazonka.PinpointEmail.Types.Content
import Amazonka.PinpointEmail.Types.DailyVolume
import Amazonka.PinpointEmail.Types.DedicatedIp
import Amazonka.PinpointEmail.Types.DeliverabilityTestReport
import Amazonka.PinpointEmail.Types.DeliveryOptions
import Amazonka.PinpointEmail.Types.Destination
import Amazonka.PinpointEmail.Types.DkimAttributes
import Amazonka.PinpointEmail.Types.DomainDeliverabilityCampaign
import Amazonka.PinpointEmail.Types.DomainDeliverabilityTrackingOption
import Amazonka.PinpointEmail.Types.DomainIspPlacement
import Amazonka.PinpointEmail.Types.EmailContent
import Amazonka.PinpointEmail.Types.EventDestination
import Amazonka.PinpointEmail.Types.EventDestinationDefinition
import Amazonka.PinpointEmail.Types.IdentityInfo
import Amazonka.PinpointEmail.Types.InboxPlacementTrackingOption
import Amazonka.PinpointEmail.Types.IspPlacement
import Amazonka.PinpointEmail.Types.KinesisFirehoseDestination
import Amazonka.PinpointEmail.Types.MailFromAttributes
import Amazonka.PinpointEmail.Types.Message
import Amazonka.PinpointEmail.Types.MessageTag
import Amazonka.PinpointEmail.Types.OverallVolume
import Amazonka.PinpointEmail.Types.PinpointDestination
import Amazonka.PinpointEmail.Types.PlacementStatistics
import Amazonka.PinpointEmail.Types.RawMessage
import Amazonka.PinpointEmail.Types.ReputationOptions
import Amazonka.PinpointEmail.Types.SendQuota
import Amazonka.PinpointEmail.Types.SendingOptions
import Amazonka.PinpointEmail.Types.SnsDestination
import Amazonka.PinpointEmail.Types.Tag
import Amazonka.PinpointEmail.Types.Template
import Amazonka.PinpointEmail.Types.TrackingOptions
import Amazonka.PinpointEmail.Types.VolumeStatistics
import Amazonka.PinpointEmail.UntagResource
import Amazonka.PinpointEmail.UpdateConfigurationSetEventDestination
