{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Amazonka.OpenSearch
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Derived from API version @2021-01-01@ of the AWS service descriptions, licensed under Apache 2.0.
--
-- Amazon OpenSearch Configuration Service
--
-- Use the Amazon OpenSearch configuration API to create, configure, and
-- manage Amazon OpenSearch Service domains.
--
-- For sample code that uses the configuration API, see the
-- <https://docs.aws.amazon.com/opensearch-service/latest/developerguide/opensearch-configuration-samples.html Amazon OpenSearch Service Developer Guide>.
-- The guide also contains
-- <https://docs.aws.amazon.com/opensearch-service/latest/developerguide/request-signing.html sample code for sending signed HTTP requests to the OpenSearch APIs>.
--
-- The endpoint for configuration service requests is region-specific:
-- es./region/.amazonaws.com. For example, es.us-east-1.amazonaws.com. For
-- a current list of supported regions and endpoints, see
-- <http://docs.aws.amazon.com/general/latest/gr/rande.html#service-regions Regions and Endpoints>.
module Amazonka.OpenSearch
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    -- $errors

    -- ** ResourceAlreadyExistsException
    _ResourceAlreadyExistsException,

    -- ** AccessDeniedException
    _AccessDeniedException,

    -- ** InvalidPaginationTokenException
    _InvalidPaginationTokenException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** InvalidTypeException
    _InvalidTypeException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** DisabledOperationException
    _DisabledOperationException,

    -- ** ConflictException
    _ConflictException,

    -- ** InternalException
    _InternalException,

    -- ** ValidationException
    _ValidationException,

    -- ** BaseException
    _BaseException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** AcceptInboundConnection
    AcceptInboundConnection (AcceptInboundConnection'),
    newAcceptInboundConnection,
    AcceptInboundConnectionResponse (AcceptInboundConnectionResponse'),
    newAcceptInboundConnectionResponse,

    -- ** AddTags
    AddTags (AddTags'),
    newAddTags,
    AddTagsResponse (AddTagsResponse'),
    newAddTagsResponse,

    -- ** AssociatePackage
    AssociatePackage (AssociatePackage'),
    newAssociatePackage,
    AssociatePackageResponse (AssociatePackageResponse'),
    newAssociatePackageResponse,

    -- ** CancelServiceSoftwareUpdate
    CancelServiceSoftwareUpdate (CancelServiceSoftwareUpdate'),
    newCancelServiceSoftwareUpdate,
    CancelServiceSoftwareUpdateResponse (CancelServiceSoftwareUpdateResponse'),
    newCancelServiceSoftwareUpdateResponse,

    -- ** CreateDomain
    CreateDomain (CreateDomain'),
    newCreateDomain,
    CreateDomainResponse (CreateDomainResponse'),
    newCreateDomainResponse,

    -- ** CreateOutboundConnection
    CreateOutboundConnection (CreateOutboundConnection'),
    newCreateOutboundConnection,
    CreateOutboundConnectionResponse (CreateOutboundConnectionResponse'),
    newCreateOutboundConnectionResponse,

    -- ** CreatePackage
    CreatePackage (CreatePackage'),
    newCreatePackage,
    CreatePackageResponse (CreatePackageResponse'),
    newCreatePackageResponse,

    -- ** DeleteDomain
    DeleteDomain (DeleteDomain'),
    newDeleteDomain,
    DeleteDomainResponse (DeleteDomainResponse'),
    newDeleteDomainResponse,

    -- ** DeleteInboundConnection
    DeleteInboundConnection (DeleteInboundConnection'),
    newDeleteInboundConnection,
    DeleteInboundConnectionResponse (DeleteInboundConnectionResponse'),
    newDeleteInboundConnectionResponse,

    -- ** DeleteOutboundConnection
    DeleteOutboundConnection (DeleteOutboundConnection'),
    newDeleteOutboundConnection,
    DeleteOutboundConnectionResponse (DeleteOutboundConnectionResponse'),
    newDeleteOutboundConnectionResponse,

    -- ** DeletePackage
    DeletePackage (DeletePackage'),
    newDeletePackage,
    DeletePackageResponse (DeletePackageResponse'),
    newDeletePackageResponse,

    -- ** DescribeDomain
    DescribeDomain (DescribeDomain'),
    newDescribeDomain,
    DescribeDomainResponse (DescribeDomainResponse'),
    newDescribeDomainResponse,

    -- ** DescribeDomainAutoTunes
    DescribeDomainAutoTunes (DescribeDomainAutoTunes'),
    newDescribeDomainAutoTunes,
    DescribeDomainAutoTunesResponse (DescribeDomainAutoTunesResponse'),
    newDescribeDomainAutoTunesResponse,

    -- ** DescribeDomainChangeProgress
    DescribeDomainChangeProgress (DescribeDomainChangeProgress'),
    newDescribeDomainChangeProgress,
    DescribeDomainChangeProgressResponse (DescribeDomainChangeProgressResponse'),
    newDescribeDomainChangeProgressResponse,

    -- ** DescribeDomainConfig
    DescribeDomainConfig (DescribeDomainConfig'),
    newDescribeDomainConfig,
    DescribeDomainConfigResponse (DescribeDomainConfigResponse'),
    newDescribeDomainConfigResponse,

    -- ** DescribeDomains
    DescribeDomains (DescribeDomains'),
    newDescribeDomains,
    DescribeDomainsResponse (DescribeDomainsResponse'),
    newDescribeDomainsResponse,

    -- ** DescribeInboundConnections
    DescribeInboundConnections (DescribeInboundConnections'),
    newDescribeInboundConnections,
    DescribeInboundConnectionsResponse (DescribeInboundConnectionsResponse'),
    newDescribeInboundConnectionsResponse,

    -- ** DescribeInstanceTypeLimits
    DescribeInstanceTypeLimits (DescribeInstanceTypeLimits'),
    newDescribeInstanceTypeLimits,
    DescribeInstanceTypeLimitsResponse (DescribeInstanceTypeLimitsResponse'),
    newDescribeInstanceTypeLimitsResponse,

    -- ** DescribeOutboundConnections
    DescribeOutboundConnections (DescribeOutboundConnections'),
    newDescribeOutboundConnections,
    DescribeOutboundConnectionsResponse (DescribeOutboundConnectionsResponse'),
    newDescribeOutboundConnectionsResponse,

    -- ** DescribePackages
    DescribePackages (DescribePackages'),
    newDescribePackages,
    DescribePackagesResponse (DescribePackagesResponse'),
    newDescribePackagesResponse,

    -- ** DescribeReservedInstanceOfferings
    DescribeReservedInstanceOfferings (DescribeReservedInstanceOfferings'),
    newDescribeReservedInstanceOfferings,
    DescribeReservedInstanceOfferingsResponse (DescribeReservedInstanceOfferingsResponse'),
    newDescribeReservedInstanceOfferingsResponse,

    -- ** DescribeReservedInstances
    DescribeReservedInstances (DescribeReservedInstances'),
    newDescribeReservedInstances,
    DescribeReservedInstancesResponse (DescribeReservedInstancesResponse'),
    newDescribeReservedInstancesResponse,

    -- ** DissociatePackage
    DissociatePackage (DissociatePackage'),
    newDissociatePackage,
    DissociatePackageResponse (DissociatePackageResponse'),
    newDissociatePackageResponse,

    -- ** GetCompatibleVersions
    GetCompatibleVersions (GetCompatibleVersions'),
    newGetCompatibleVersions,
    GetCompatibleVersionsResponse (GetCompatibleVersionsResponse'),
    newGetCompatibleVersionsResponse,

    -- ** GetPackageVersionHistory
    GetPackageVersionHistory (GetPackageVersionHistory'),
    newGetPackageVersionHistory,
    GetPackageVersionHistoryResponse (GetPackageVersionHistoryResponse'),
    newGetPackageVersionHistoryResponse,

    -- ** GetUpgradeHistory
    GetUpgradeHistory (GetUpgradeHistory'),
    newGetUpgradeHistory,
    GetUpgradeHistoryResponse (GetUpgradeHistoryResponse'),
    newGetUpgradeHistoryResponse,

    -- ** GetUpgradeStatus
    GetUpgradeStatus (GetUpgradeStatus'),
    newGetUpgradeStatus,
    GetUpgradeStatusResponse (GetUpgradeStatusResponse'),
    newGetUpgradeStatusResponse,

    -- ** ListDomainNames
    ListDomainNames (ListDomainNames'),
    newListDomainNames,
    ListDomainNamesResponse (ListDomainNamesResponse'),
    newListDomainNamesResponse,

    -- ** ListDomainsForPackage
    ListDomainsForPackage (ListDomainsForPackage'),
    newListDomainsForPackage,
    ListDomainsForPackageResponse (ListDomainsForPackageResponse'),
    newListDomainsForPackageResponse,

    -- ** ListInstanceTypeDetails
    ListInstanceTypeDetails (ListInstanceTypeDetails'),
    newListInstanceTypeDetails,
    ListInstanceTypeDetailsResponse (ListInstanceTypeDetailsResponse'),
    newListInstanceTypeDetailsResponse,

    -- ** ListPackagesForDomain
    ListPackagesForDomain (ListPackagesForDomain'),
    newListPackagesForDomain,
    ListPackagesForDomainResponse (ListPackagesForDomainResponse'),
    newListPackagesForDomainResponse,

    -- ** ListTags
    ListTags (ListTags'),
    newListTags,
    ListTagsResponse (ListTagsResponse'),
    newListTagsResponse,

    -- ** ListVersions
    ListVersions (ListVersions'),
    newListVersions,
    ListVersionsResponse (ListVersionsResponse'),
    newListVersionsResponse,

    -- ** PurchaseReservedInstanceOffering
    PurchaseReservedInstanceOffering (PurchaseReservedInstanceOffering'),
    newPurchaseReservedInstanceOffering,
    PurchaseReservedInstanceOfferingResponse (PurchaseReservedInstanceOfferingResponse'),
    newPurchaseReservedInstanceOfferingResponse,

    -- ** RejectInboundConnection
    RejectInboundConnection (RejectInboundConnection'),
    newRejectInboundConnection,
    RejectInboundConnectionResponse (RejectInboundConnectionResponse'),
    newRejectInboundConnectionResponse,

    -- ** RemoveTags
    RemoveTags (RemoveTags'),
    newRemoveTags,
    RemoveTagsResponse (RemoveTagsResponse'),
    newRemoveTagsResponse,

    -- ** StartServiceSoftwareUpdate
    StartServiceSoftwareUpdate (StartServiceSoftwareUpdate'),
    newStartServiceSoftwareUpdate,
    StartServiceSoftwareUpdateResponse (StartServiceSoftwareUpdateResponse'),
    newStartServiceSoftwareUpdateResponse,

    -- ** UpdateDomainConfig
    UpdateDomainConfig (UpdateDomainConfig'),
    newUpdateDomainConfig,
    UpdateDomainConfigResponse (UpdateDomainConfigResponse'),
    newUpdateDomainConfigResponse,

    -- ** UpdatePackage
    UpdatePackage (UpdatePackage'),
    newUpdatePackage,
    UpdatePackageResponse (UpdatePackageResponse'),
    newUpdatePackageResponse,

    -- ** UpgradeDomain
    UpgradeDomain (UpgradeDomain'),
    newUpgradeDomain,
    UpgradeDomainResponse (UpgradeDomainResponse'),
    newUpgradeDomainResponse,

    -- * Types

    -- ** AutoTuneDesiredState
    AutoTuneDesiredState (..),

    -- ** AutoTuneState
    AutoTuneState (..),

    -- ** AutoTuneType
    AutoTuneType (..),

    -- ** DeploymentStatus
    DeploymentStatus (..),

    -- ** DescribePackagesFilterName
    DescribePackagesFilterName (..),

    -- ** DomainPackageStatus
    DomainPackageStatus (..),

    -- ** EngineType
    EngineType (..),

    -- ** InboundConnectionStatusCode
    InboundConnectionStatusCode (..),

    -- ** LogType
    LogType (..),

    -- ** OpenSearchPartitionInstanceType
    OpenSearchPartitionInstanceType (..),

    -- ** OpenSearchWarmPartitionInstanceType
    OpenSearchWarmPartitionInstanceType (..),

    -- ** OptionState
    OptionState (..),

    -- ** OutboundConnectionStatusCode
    OutboundConnectionStatusCode (..),

    -- ** OverallChangeStatus
    OverallChangeStatus (..),

    -- ** PackageStatus
    PackageStatus (..),

    -- ** PackageType
    PackageType (..),

    -- ** ReservedInstancePaymentOption
    ReservedInstancePaymentOption (..),

    -- ** RollbackOnDisable
    RollbackOnDisable (..),

    -- ** ScheduledAutoTuneActionType
    ScheduledAutoTuneActionType (..),

    -- ** ScheduledAutoTuneSeverityType
    ScheduledAutoTuneSeverityType (..),

    -- ** TLSSecurityPolicy
    TLSSecurityPolicy (..),

    -- ** TimeUnit
    TimeUnit (..),

    -- ** UpgradeStatus
    UpgradeStatus (..),

    -- ** UpgradeStep
    UpgradeStep (..),

    -- ** VolumeType
    VolumeType (..),

    -- ** AWSDomainInformation
    AWSDomainInformation (AWSDomainInformation'),
    newAWSDomainInformation,

    -- ** AccessPoliciesStatus
    AccessPoliciesStatus (AccessPoliciesStatus'),
    newAccessPoliciesStatus,

    -- ** AdditionalLimit
    AdditionalLimit (AdditionalLimit'),
    newAdditionalLimit,

    -- ** AdvancedOptionsStatus
    AdvancedOptionsStatus (AdvancedOptionsStatus'),
    newAdvancedOptionsStatus,

    -- ** AdvancedSecurityOptions
    AdvancedSecurityOptions (AdvancedSecurityOptions'),
    newAdvancedSecurityOptions,

    -- ** AdvancedSecurityOptionsInput
    AdvancedSecurityOptionsInput (AdvancedSecurityOptionsInput'),
    newAdvancedSecurityOptionsInput,

    -- ** AdvancedSecurityOptionsStatus
    AdvancedSecurityOptionsStatus (AdvancedSecurityOptionsStatus'),
    newAdvancedSecurityOptionsStatus,

    -- ** AutoTune
    AutoTune (AutoTune'),
    newAutoTune,

    -- ** AutoTuneDetails
    AutoTuneDetails (AutoTuneDetails'),
    newAutoTuneDetails,

    -- ** AutoTuneMaintenanceSchedule
    AutoTuneMaintenanceSchedule (AutoTuneMaintenanceSchedule'),
    newAutoTuneMaintenanceSchedule,

    -- ** AutoTuneOptions
    AutoTuneOptions (AutoTuneOptions'),
    newAutoTuneOptions,

    -- ** AutoTuneOptionsInput
    AutoTuneOptionsInput (AutoTuneOptionsInput'),
    newAutoTuneOptionsInput,

    -- ** AutoTuneOptionsOutput
    AutoTuneOptionsOutput (AutoTuneOptionsOutput'),
    newAutoTuneOptionsOutput,

    -- ** AutoTuneOptionsStatus
    AutoTuneOptionsStatus (AutoTuneOptionsStatus'),
    newAutoTuneOptionsStatus,

    -- ** AutoTuneStatus
    AutoTuneStatus (AutoTuneStatus'),
    newAutoTuneStatus,

    -- ** ChangeProgressDetails
    ChangeProgressDetails (ChangeProgressDetails'),
    newChangeProgressDetails,

    -- ** ChangeProgressStage
    ChangeProgressStage (ChangeProgressStage'),
    newChangeProgressStage,

    -- ** ChangeProgressStatusDetails
    ChangeProgressStatusDetails (ChangeProgressStatusDetails'),
    newChangeProgressStatusDetails,

    -- ** ClusterConfig
    ClusterConfig (ClusterConfig'),
    newClusterConfig,

    -- ** ClusterConfigStatus
    ClusterConfigStatus (ClusterConfigStatus'),
    newClusterConfigStatus,

    -- ** CognitoOptions
    CognitoOptions (CognitoOptions'),
    newCognitoOptions,

    -- ** CognitoOptionsStatus
    CognitoOptionsStatus (CognitoOptionsStatus'),
    newCognitoOptionsStatus,

    -- ** ColdStorageOptions
    ColdStorageOptions (ColdStorageOptions'),
    newColdStorageOptions,

    -- ** CompatibleVersionsMap
    CompatibleVersionsMap (CompatibleVersionsMap'),
    newCompatibleVersionsMap,

    -- ** DescribePackagesFilter
    DescribePackagesFilter (DescribePackagesFilter'),
    newDescribePackagesFilter,

    -- ** DomainConfig
    DomainConfig (DomainConfig'),
    newDomainConfig,

    -- ** DomainEndpointOptions
    DomainEndpointOptions (DomainEndpointOptions'),
    newDomainEndpointOptions,

    -- ** DomainEndpointOptionsStatus
    DomainEndpointOptionsStatus (DomainEndpointOptionsStatus'),
    newDomainEndpointOptionsStatus,

    -- ** DomainInfo
    DomainInfo (DomainInfo'),
    newDomainInfo,

    -- ** DomainInformationContainer
    DomainInformationContainer (DomainInformationContainer'),
    newDomainInformationContainer,

    -- ** DomainPackageDetails
    DomainPackageDetails (DomainPackageDetails'),
    newDomainPackageDetails,

    -- ** DomainStatus
    DomainStatus (DomainStatus'),
    newDomainStatus,

    -- ** DryRunResults
    DryRunResults (DryRunResults'),
    newDryRunResults,

    -- ** Duration
    Duration (Duration'),
    newDuration,

    -- ** EBSOptions
    EBSOptions (EBSOptions'),
    newEBSOptions,

    -- ** EBSOptionsStatus
    EBSOptionsStatus (EBSOptionsStatus'),
    newEBSOptionsStatus,

    -- ** EncryptionAtRestOptions
    EncryptionAtRestOptions (EncryptionAtRestOptions'),
    newEncryptionAtRestOptions,

    -- ** EncryptionAtRestOptionsStatus
    EncryptionAtRestOptionsStatus (EncryptionAtRestOptionsStatus'),
    newEncryptionAtRestOptionsStatus,

    -- ** ErrorDetails
    ErrorDetails (ErrorDetails'),
    newErrorDetails,

    -- ** Filter
    Filter (Filter'),
    newFilter,

    -- ** InboundConnection
    InboundConnection (InboundConnection'),
    newInboundConnection,

    -- ** InboundConnectionStatus
    InboundConnectionStatus (InboundConnectionStatus'),
    newInboundConnectionStatus,

    -- ** InstanceCountLimits
    InstanceCountLimits (InstanceCountLimits'),
    newInstanceCountLimits,

    -- ** InstanceLimits
    InstanceLimits (InstanceLimits'),
    newInstanceLimits,

    -- ** InstanceTypeDetails
    InstanceTypeDetails (InstanceTypeDetails'),
    newInstanceTypeDetails,

    -- ** Limits
    Limits (Limits'),
    newLimits,

    -- ** LogPublishingOption
    LogPublishingOption (LogPublishingOption'),
    newLogPublishingOption,

    -- ** LogPublishingOptionsStatus
    LogPublishingOptionsStatus (LogPublishingOptionsStatus'),
    newLogPublishingOptionsStatus,

    -- ** MasterUserOptions
    MasterUserOptions (MasterUserOptions'),
    newMasterUserOptions,

    -- ** NodeToNodeEncryptionOptions
    NodeToNodeEncryptionOptions (NodeToNodeEncryptionOptions'),
    newNodeToNodeEncryptionOptions,

    -- ** NodeToNodeEncryptionOptionsStatus
    NodeToNodeEncryptionOptionsStatus (NodeToNodeEncryptionOptionsStatus'),
    newNodeToNodeEncryptionOptionsStatus,

    -- ** OptionStatus
    OptionStatus (OptionStatus'),
    newOptionStatus,

    -- ** OutboundConnection
    OutboundConnection (OutboundConnection'),
    newOutboundConnection,

    -- ** OutboundConnectionStatus
    OutboundConnectionStatus (OutboundConnectionStatus'),
    newOutboundConnectionStatus,

    -- ** PackageDetails
    PackageDetails (PackageDetails'),
    newPackageDetails,

    -- ** PackageSource
    PackageSource (PackageSource'),
    newPackageSource,

    -- ** PackageVersionHistory
    PackageVersionHistory (PackageVersionHistory'),
    newPackageVersionHistory,

    -- ** RecurringCharge
    RecurringCharge (RecurringCharge'),
    newRecurringCharge,

    -- ** ReservedInstance
    ReservedInstance (ReservedInstance'),
    newReservedInstance,

    -- ** ReservedInstanceOffering
    ReservedInstanceOffering (ReservedInstanceOffering'),
    newReservedInstanceOffering,

    -- ** SAMLIdp
    SAMLIdp (SAMLIdp'),
    newSAMLIdp,

    -- ** SAMLOptionsInput
    SAMLOptionsInput (SAMLOptionsInput'),
    newSAMLOptionsInput,

    -- ** SAMLOptionsOutput
    SAMLOptionsOutput (SAMLOptionsOutput'),
    newSAMLOptionsOutput,

    -- ** ScheduledAutoTuneDetails
    ScheduledAutoTuneDetails (ScheduledAutoTuneDetails'),
    newScheduledAutoTuneDetails,

    -- ** ServiceSoftwareOptions
    ServiceSoftwareOptions (ServiceSoftwareOptions'),
    newServiceSoftwareOptions,

    -- ** SnapshotOptions
    SnapshotOptions (SnapshotOptions'),
    newSnapshotOptions,

    -- ** SnapshotOptionsStatus
    SnapshotOptionsStatus (SnapshotOptionsStatus'),
    newSnapshotOptionsStatus,

    -- ** StorageType
    StorageType (StorageType'),
    newStorageType,

    -- ** StorageTypeLimit
    StorageTypeLimit (StorageTypeLimit'),
    newStorageTypeLimit,

    -- ** Tag
    Tag (Tag'),
    newTag,

    -- ** UpgradeHistory
    UpgradeHistory (UpgradeHistory'),
    newUpgradeHistory,

    -- ** UpgradeStepItem
    UpgradeStepItem (UpgradeStepItem'),
    newUpgradeStepItem,

    -- ** VPCDerivedInfo
    VPCDerivedInfo (VPCDerivedInfo'),
    newVPCDerivedInfo,

    -- ** VPCDerivedInfoStatus
    VPCDerivedInfoStatus (VPCDerivedInfoStatus'),
    newVPCDerivedInfoStatus,

    -- ** VPCOptions
    VPCOptions (VPCOptions'),
    newVPCOptions,

    -- ** VersionStatus
    VersionStatus (VersionStatus'),
    newVersionStatus,

    -- ** ZoneAwarenessConfig
    ZoneAwarenessConfig (ZoneAwarenessConfig'),
    newZoneAwarenessConfig,
  )
where

import Amazonka.OpenSearch.AcceptInboundConnection
import Amazonka.OpenSearch.AddTags
import Amazonka.OpenSearch.AssociatePackage
import Amazonka.OpenSearch.CancelServiceSoftwareUpdate
import Amazonka.OpenSearch.CreateDomain
import Amazonka.OpenSearch.CreateOutboundConnection
import Amazonka.OpenSearch.CreatePackage
import Amazonka.OpenSearch.DeleteDomain
import Amazonka.OpenSearch.DeleteInboundConnection
import Amazonka.OpenSearch.DeleteOutboundConnection
import Amazonka.OpenSearch.DeletePackage
import Amazonka.OpenSearch.DescribeDomain
import Amazonka.OpenSearch.DescribeDomainAutoTunes
import Amazonka.OpenSearch.DescribeDomainChangeProgress
import Amazonka.OpenSearch.DescribeDomainConfig
import Amazonka.OpenSearch.DescribeDomains
import Amazonka.OpenSearch.DescribeInboundConnections
import Amazonka.OpenSearch.DescribeInstanceTypeLimits
import Amazonka.OpenSearch.DescribeOutboundConnections
import Amazonka.OpenSearch.DescribePackages
import Amazonka.OpenSearch.DescribeReservedInstanceOfferings
import Amazonka.OpenSearch.DescribeReservedInstances
import Amazonka.OpenSearch.DissociatePackage
import Amazonka.OpenSearch.GetCompatibleVersions
import Amazonka.OpenSearch.GetPackageVersionHistory
import Amazonka.OpenSearch.GetUpgradeHistory
import Amazonka.OpenSearch.GetUpgradeStatus
import Amazonka.OpenSearch.Lens
import Amazonka.OpenSearch.ListDomainNames
import Amazonka.OpenSearch.ListDomainsForPackage
import Amazonka.OpenSearch.ListInstanceTypeDetails
import Amazonka.OpenSearch.ListPackagesForDomain
import Amazonka.OpenSearch.ListTags
import Amazonka.OpenSearch.ListVersions
import Amazonka.OpenSearch.PurchaseReservedInstanceOffering
import Amazonka.OpenSearch.RejectInboundConnection
import Amazonka.OpenSearch.RemoveTags
import Amazonka.OpenSearch.StartServiceSoftwareUpdate
import Amazonka.OpenSearch.Types
import Amazonka.OpenSearch.UpdateDomainConfig
import Amazonka.OpenSearch.UpdatePackage
import Amazonka.OpenSearch.UpgradeDomain
import Amazonka.OpenSearch.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'OpenSearch'.

-- $operations
-- Some AWS operations return results that are incomplete and require subsequent
-- requests in order to obtain the entire result set. The process of sending
-- subsequent requests to continue where a previous request left off is called
-- pagination. For example, the 'ListObjects' operation of Amazon S3 returns up to
-- 1000 objects at a time, and you must send subsequent requests with the
-- appropriate Marker in order to retrieve the next page of results.
--
-- Operations that have an 'AWSPager' instance can transparently perform subsequent
-- requests, correctly setting Markers and other request facets to iterate through
-- the entire result set of a truncated API operation. Operations which support
-- this have an additional note in the documentation.
--
-- Many operations have the ability to filter results on the server side. See the
-- individual operation parameters for details.

-- $waiters
-- Waiters poll by repeatedly sending a request until some remote success condition
-- configured by the 'Wait' specification is fulfilled. The 'Wait' specification
-- determines how many attempts should be made, in addition to delay and retry strategies.
