{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Amazonka.MacieV2
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Derived from API version @2020-01-01@ of the AWS service descriptions, licensed under Apache 2.0.
--
-- Amazon Macie is a fully managed data security and data privacy service
-- that uses machine learning and pattern matching to discover and protect
-- your sensitive data in AWS. Macie automates the discovery of sensitive
-- data, such as PII and intellectual property, to provide you with insight
-- into the data that your organization stores in AWS. Macie also provides
-- an inventory of your Amazon S3 buckets, which it continually monitors
-- for you. If Macie detects sensitive data or potential data access
-- issues, it generates detailed findings for you to review and act upon as
-- necessary.
module Amazonka.MacieV2
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    -- $errors

    -- ** AccessDeniedException
    _AccessDeniedException,

    -- ** InternalServerException
    _InternalServerException,

    -- ** ServiceQuotaExceededException
    _ServiceQuotaExceededException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** UnprocessableEntityException
    _UnprocessableEntityException,

    -- ** ConflictException
    _ConflictException,

    -- ** ThrottlingException
    _ThrottlingException,

    -- ** ValidationException
    _ValidationException,

    -- * Waiters
    -- $waiters

    -- ** FindingRevealed
    newFindingRevealed,

    -- * Operations
    -- $operations

    -- ** AcceptInvitation
    AcceptInvitation (AcceptInvitation'),
    newAcceptInvitation,
    AcceptInvitationResponse (AcceptInvitationResponse'),
    newAcceptInvitationResponse,

    -- ** BatchGetCustomDataIdentifiers
    BatchGetCustomDataIdentifiers (BatchGetCustomDataIdentifiers'),
    newBatchGetCustomDataIdentifiers,
    BatchGetCustomDataIdentifiersResponse (BatchGetCustomDataIdentifiersResponse'),
    newBatchGetCustomDataIdentifiersResponse,

    -- ** CreateClassificationJob
    CreateClassificationJob (CreateClassificationJob'),
    newCreateClassificationJob,
    CreateClassificationJobResponse (CreateClassificationJobResponse'),
    newCreateClassificationJobResponse,

    -- ** CreateCustomDataIdentifier
    CreateCustomDataIdentifier (CreateCustomDataIdentifier'),
    newCreateCustomDataIdentifier,
    CreateCustomDataIdentifierResponse (CreateCustomDataIdentifierResponse'),
    newCreateCustomDataIdentifierResponse,

    -- ** CreateFindingsFilter
    CreateFindingsFilter (CreateFindingsFilter'),
    newCreateFindingsFilter,
    CreateFindingsFilterResponse (CreateFindingsFilterResponse'),
    newCreateFindingsFilterResponse,

    -- ** CreateInvitations
    CreateInvitations (CreateInvitations'),
    newCreateInvitations,
    CreateInvitationsResponse (CreateInvitationsResponse'),
    newCreateInvitationsResponse,

    -- ** CreateMember
    CreateMember (CreateMember'),
    newCreateMember,
    CreateMemberResponse (CreateMemberResponse'),
    newCreateMemberResponse,

    -- ** CreateSampleFindings
    CreateSampleFindings (CreateSampleFindings'),
    newCreateSampleFindings,
    CreateSampleFindingsResponse (CreateSampleFindingsResponse'),
    newCreateSampleFindingsResponse,

    -- ** DeclineInvitations
    DeclineInvitations (DeclineInvitations'),
    newDeclineInvitations,
    DeclineInvitationsResponse (DeclineInvitationsResponse'),
    newDeclineInvitationsResponse,

    -- ** DeleteCustomDataIdentifier
    DeleteCustomDataIdentifier (DeleteCustomDataIdentifier'),
    newDeleteCustomDataIdentifier,
    DeleteCustomDataIdentifierResponse (DeleteCustomDataIdentifierResponse'),
    newDeleteCustomDataIdentifierResponse,

    -- ** DeleteFindingsFilter
    DeleteFindingsFilter (DeleteFindingsFilter'),
    newDeleteFindingsFilter,
    DeleteFindingsFilterResponse (DeleteFindingsFilterResponse'),
    newDeleteFindingsFilterResponse,

    -- ** DeleteInvitations
    DeleteInvitations (DeleteInvitations'),
    newDeleteInvitations,
    DeleteInvitationsResponse (DeleteInvitationsResponse'),
    newDeleteInvitationsResponse,

    -- ** DeleteMember
    DeleteMember (DeleteMember'),
    newDeleteMember,
    DeleteMemberResponse (DeleteMemberResponse'),
    newDeleteMemberResponse,

    -- ** DescribeBuckets (Paginated)
    DescribeBuckets (DescribeBuckets'),
    newDescribeBuckets,
    DescribeBucketsResponse (DescribeBucketsResponse'),
    newDescribeBucketsResponse,

    -- ** DescribeClassificationJob
    DescribeClassificationJob (DescribeClassificationJob'),
    newDescribeClassificationJob,
    DescribeClassificationJobResponse (DescribeClassificationJobResponse'),
    newDescribeClassificationJobResponse,

    -- ** DescribeOrganizationConfiguration
    DescribeOrganizationConfiguration (DescribeOrganizationConfiguration'),
    newDescribeOrganizationConfiguration,
    DescribeOrganizationConfigurationResponse (DescribeOrganizationConfigurationResponse'),
    newDescribeOrganizationConfigurationResponse,

    -- ** DisableMacie
    DisableMacie (DisableMacie'),
    newDisableMacie,
    DisableMacieResponse (DisableMacieResponse'),
    newDisableMacieResponse,

    -- ** DisableOrganizationAdminAccount
    DisableOrganizationAdminAccount (DisableOrganizationAdminAccount'),
    newDisableOrganizationAdminAccount,
    DisableOrganizationAdminAccountResponse (DisableOrganizationAdminAccountResponse'),
    newDisableOrganizationAdminAccountResponse,

    -- ** DisassociateFromAdministratorAccount
    DisassociateFromAdministratorAccount (DisassociateFromAdministratorAccount'),
    newDisassociateFromAdministratorAccount,
    DisassociateFromAdministratorAccountResponse (DisassociateFromAdministratorAccountResponse'),
    newDisassociateFromAdministratorAccountResponse,

    -- ** DisassociateFromMasterAccount
    DisassociateFromMasterAccount (DisassociateFromMasterAccount'),
    newDisassociateFromMasterAccount,
    DisassociateFromMasterAccountResponse (DisassociateFromMasterAccountResponse'),
    newDisassociateFromMasterAccountResponse,

    -- ** DisassociateMember
    DisassociateMember (DisassociateMember'),
    newDisassociateMember,
    DisassociateMemberResponse (DisassociateMemberResponse'),
    newDisassociateMemberResponse,

    -- ** EnableMacie
    EnableMacie (EnableMacie'),
    newEnableMacie,
    EnableMacieResponse (EnableMacieResponse'),
    newEnableMacieResponse,

    -- ** EnableOrganizationAdminAccount
    EnableOrganizationAdminAccount (EnableOrganizationAdminAccount'),
    newEnableOrganizationAdminAccount,
    EnableOrganizationAdminAccountResponse (EnableOrganizationAdminAccountResponse'),
    newEnableOrganizationAdminAccountResponse,

    -- ** GetAdministratorAccount
    GetAdministratorAccount (GetAdministratorAccount'),
    newGetAdministratorAccount,
    GetAdministratorAccountResponse (GetAdministratorAccountResponse'),
    newGetAdministratorAccountResponse,

    -- ** GetBucketStatistics
    GetBucketStatistics (GetBucketStatistics'),
    newGetBucketStatistics,
    GetBucketStatisticsResponse (GetBucketStatisticsResponse'),
    newGetBucketStatisticsResponse,

    -- ** GetClassificationExportConfiguration
    GetClassificationExportConfiguration (GetClassificationExportConfiguration'),
    newGetClassificationExportConfiguration,
    GetClassificationExportConfigurationResponse (GetClassificationExportConfigurationResponse'),
    newGetClassificationExportConfigurationResponse,

    -- ** GetCustomDataIdentifier
    GetCustomDataIdentifier (GetCustomDataIdentifier'),
    newGetCustomDataIdentifier,
    GetCustomDataIdentifierResponse (GetCustomDataIdentifierResponse'),
    newGetCustomDataIdentifierResponse,

    -- ** GetFindingStatistics
    GetFindingStatistics (GetFindingStatistics'),
    newGetFindingStatistics,
    GetFindingStatisticsResponse (GetFindingStatisticsResponse'),
    newGetFindingStatisticsResponse,

    -- ** GetFindings
    GetFindings (GetFindings'),
    newGetFindings,
    GetFindingsResponse (GetFindingsResponse'),
    newGetFindingsResponse,

    -- ** GetFindingsFilter
    GetFindingsFilter (GetFindingsFilter'),
    newGetFindingsFilter,
    GetFindingsFilterResponse (GetFindingsFilterResponse'),
    newGetFindingsFilterResponse,

    -- ** GetFindingsPublicationConfiguration
    GetFindingsPublicationConfiguration (GetFindingsPublicationConfiguration'),
    newGetFindingsPublicationConfiguration,
    GetFindingsPublicationConfigurationResponse (GetFindingsPublicationConfigurationResponse'),
    newGetFindingsPublicationConfigurationResponse,

    -- ** GetInvitationsCount
    GetInvitationsCount (GetInvitationsCount'),
    newGetInvitationsCount,
    GetInvitationsCountResponse (GetInvitationsCountResponse'),
    newGetInvitationsCountResponse,

    -- ** GetMacieSession
    GetMacieSession (GetMacieSession'),
    newGetMacieSession,
    GetMacieSessionResponse (GetMacieSessionResponse'),
    newGetMacieSessionResponse,

    -- ** GetMasterAccount
    GetMasterAccount (GetMasterAccount'),
    newGetMasterAccount,
    GetMasterAccountResponse (GetMasterAccountResponse'),
    newGetMasterAccountResponse,

    -- ** GetMember
    GetMember (GetMember'),
    newGetMember,
    GetMemberResponse (GetMemberResponse'),
    newGetMemberResponse,

    -- ** GetRevealConfiguration
    GetRevealConfiguration (GetRevealConfiguration'),
    newGetRevealConfiguration,
    GetRevealConfigurationResponse (GetRevealConfigurationResponse'),
    newGetRevealConfigurationResponse,

    -- ** GetSensitiveDataOccurrences
    GetSensitiveDataOccurrences (GetSensitiveDataOccurrences'),
    newGetSensitiveDataOccurrences,
    GetSensitiveDataOccurrencesResponse (GetSensitiveDataOccurrencesResponse'),
    newGetSensitiveDataOccurrencesResponse,

    -- ** GetSensitiveDataOccurrencesAvailability
    GetSensitiveDataOccurrencesAvailability (GetSensitiveDataOccurrencesAvailability'),
    newGetSensitiveDataOccurrencesAvailability,
    GetSensitiveDataOccurrencesAvailabilityResponse (GetSensitiveDataOccurrencesAvailabilityResponse'),
    newGetSensitiveDataOccurrencesAvailabilityResponse,

    -- ** GetUsageStatistics (Paginated)
    GetUsageStatistics (GetUsageStatistics'),
    newGetUsageStatistics,
    GetUsageStatisticsResponse (GetUsageStatisticsResponse'),
    newGetUsageStatisticsResponse,

    -- ** GetUsageTotals
    GetUsageTotals (GetUsageTotals'),
    newGetUsageTotals,
    GetUsageTotalsResponse (GetUsageTotalsResponse'),
    newGetUsageTotalsResponse,

    -- ** ListClassificationJobs (Paginated)
    ListClassificationJobs (ListClassificationJobs'),
    newListClassificationJobs,
    ListClassificationJobsResponse (ListClassificationJobsResponse'),
    newListClassificationJobsResponse,

    -- ** ListCustomDataIdentifiers (Paginated)
    ListCustomDataIdentifiers (ListCustomDataIdentifiers'),
    newListCustomDataIdentifiers,
    ListCustomDataIdentifiersResponse (ListCustomDataIdentifiersResponse'),
    newListCustomDataIdentifiersResponse,

    -- ** ListFindings (Paginated)
    ListFindings (ListFindings'),
    newListFindings,
    ListFindingsResponse (ListFindingsResponse'),
    newListFindingsResponse,

    -- ** ListFindingsFilters (Paginated)
    ListFindingsFilters (ListFindingsFilters'),
    newListFindingsFilters,
    ListFindingsFiltersResponse (ListFindingsFiltersResponse'),
    newListFindingsFiltersResponse,

    -- ** ListInvitations (Paginated)
    ListInvitations (ListInvitations'),
    newListInvitations,
    ListInvitationsResponse (ListInvitationsResponse'),
    newListInvitationsResponse,

    -- ** ListManagedDataIdentifiers
    ListManagedDataIdentifiers (ListManagedDataIdentifiers'),
    newListManagedDataIdentifiers,
    ListManagedDataIdentifiersResponse (ListManagedDataIdentifiersResponse'),
    newListManagedDataIdentifiersResponse,

    -- ** ListMembers (Paginated)
    ListMembers (ListMembers'),
    newListMembers,
    ListMembersResponse (ListMembersResponse'),
    newListMembersResponse,

    -- ** ListOrganizationAdminAccounts (Paginated)
    ListOrganizationAdminAccounts (ListOrganizationAdminAccounts'),
    newListOrganizationAdminAccounts,
    ListOrganizationAdminAccountsResponse (ListOrganizationAdminAccountsResponse'),
    newListOrganizationAdminAccountsResponse,

    -- ** ListTagsForResource
    ListTagsForResource (ListTagsForResource'),
    newListTagsForResource,
    ListTagsForResourceResponse (ListTagsForResourceResponse'),
    newListTagsForResourceResponse,

    -- ** PutClassificationExportConfiguration
    PutClassificationExportConfiguration (PutClassificationExportConfiguration'),
    newPutClassificationExportConfiguration,
    PutClassificationExportConfigurationResponse (PutClassificationExportConfigurationResponse'),
    newPutClassificationExportConfigurationResponse,

    -- ** PutFindingsPublicationConfiguration
    PutFindingsPublicationConfiguration (PutFindingsPublicationConfiguration'),
    newPutFindingsPublicationConfiguration,
    PutFindingsPublicationConfigurationResponse (PutFindingsPublicationConfigurationResponse'),
    newPutFindingsPublicationConfigurationResponse,

    -- ** SearchResources (Paginated)
    SearchResources (SearchResources'),
    newSearchResources,
    SearchResourcesResponse (SearchResourcesResponse'),
    newSearchResourcesResponse,

    -- ** TagResource
    TagResource (TagResource'),
    newTagResource,
    TagResourceResponse (TagResourceResponse'),
    newTagResourceResponse,

    -- ** TestCustomDataIdentifier
    TestCustomDataIdentifier (TestCustomDataIdentifier'),
    newTestCustomDataIdentifier,
    TestCustomDataIdentifierResponse (TestCustomDataIdentifierResponse'),
    newTestCustomDataIdentifierResponse,

    -- ** UntagResource
    UntagResource (UntagResource'),
    newUntagResource,
    UntagResourceResponse (UntagResourceResponse'),
    newUntagResourceResponse,

    -- ** UpdateClassificationJob
    UpdateClassificationJob (UpdateClassificationJob'),
    newUpdateClassificationJob,
    UpdateClassificationJobResponse (UpdateClassificationJobResponse'),
    newUpdateClassificationJobResponse,

    -- ** UpdateFindingsFilter
    UpdateFindingsFilter (UpdateFindingsFilter'),
    newUpdateFindingsFilter,
    UpdateFindingsFilterResponse (UpdateFindingsFilterResponse'),
    newUpdateFindingsFilterResponse,

    -- ** UpdateMacieSession
    UpdateMacieSession (UpdateMacieSession'),
    newUpdateMacieSession,
    UpdateMacieSessionResponse (UpdateMacieSessionResponse'),
    newUpdateMacieSessionResponse,

    -- ** UpdateMemberSession
    UpdateMemberSession (UpdateMemberSession'),
    newUpdateMemberSession,
    UpdateMemberSessionResponse (UpdateMemberSessionResponse'),
    newUpdateMemberSessionResponse,

    -- ** UpdateOrganizationConfiguration
    UpdateOrganizationConfiguration (UpdateOrganizationConfiguration'),
    newUpdateOrganizationConfiguration,
    UpdateOrganizationConfigurationResponse (UpdateOrganizationConfigurationResponse'),
    newUpdateOrganizationConfigurationResponse,

    -- ** UpdateRevealConfiguration
    UpdateRevealConfiguration (UpdateRevealConfiguration'),
    newUpdateRevealConfiguration,
    UpdateRevealConfigurationResponse (UpdateRevealConfigurationResponse'),
    newUpdateRevealConfigurationResponse,

    -- * Types

    -- ** AdminStatus
    AdminStatus (..),

    -- ** AllowsUnencryptedObjectUploads
    AllowsUnencryptedObjectUploads (..),

    -- ** AvailabilityCode
    AvailabilityCode (..),

    -- ** BucketMetadataErrorCode
    BucketMetadataErrorCode (..),

    -- ** Currency
    Currency (..),

    -- ** DataIdentifierSeverity
    DataIdentifierSeverity (..),

    -- ** DayOfWeek
    DayOfWeek (..),

    -- ** EffectivePermission
    EffectivePermission (..),

    -- ** EncryptionType
    EncryptionType (..),

    -- ** ErrorCode
    ErrorCode (..),

    -- ** FindingActionType
    FindingActionType (..),

    -- ** FindingCategory
    FindingCategory (..),

    -- ** FindingPublishingFrequency
    FindingPublishingFrequency (..),

    -- ** FindingStatisticsSortAttributeName
    FindingStatisticsSortAttributeName (..),

    -- ** FindingType
    FindingType (..),

    -- ** FindingsFilterAction
    FindingsFilterAction (..),

    -- ** GroupBy
    GroupBy (..),

    -- ** IsDefinedInJob
    IsDefinedInJob (..),

    -- ** IsMonitoredByJob
    IsMonitoredByJob (..),

    -- ** JobComparator
    JobComparator (..),

    -- ** JobStatus
    JobStatus (..),

    -- ** JobType
    JobType (..),

    -- ** LastRunErrorStatusCode
    LastRunErrorStatusCode (..),

    -- ** ListJobsFilterKey
    ListJobsFilterKey (..),

    -- ** ListJobsSortAttributeName
    ListJobsSortAttributeName (..),

    -- ** MacieStatus
    MacieStatus (..),

    -- ** ManagedDataIdentifierSelector
    ManagedDataIdentifierSelector (..),

    -- ** OrderBy
    OrderBy (..),

    -- ** OriginType
    OriginType (..),

    -- ** RelationshipStatus
    RelationshipStatus (..),

    -- ** RevealRequestStatus
    RevealRequestStatus (..),

    -- ** RevealStatus
    RevealStatus (..),

    -- ** ScopeFilterKey
    ScopeFilterKey (..),

    -- ** SearchResourcesComparator
    SearchResourcesComparator (..),

    -- ** SearchResourcesSimpleCriterionKey
    SearchResourcesSimpleCriterionKey (..),

    -- ** SearchResourcesSortAttributeName
    SearchResourcesSortAttributeName (..),

    -- ** SensitiveDataItemCategory
    SensitiveDataItemCategory (..),

    -- ** SeverityDescription
    SeverityDescription (..),

    -- ** SharedAccess
    SharedAccess (..),

    -- ** SimpleCriterionKeyForJob
    SimpleCriterionKeyForJob (..),

    -- ** StorageClass
    StorageClass (..),

    -- ** TagTarget
    TagTarget (..),

    -- ** TimeRange
    TimeRange (..),

    -- ** Type
    Type (..),

    -- ** UnavailabilityReasonCode
    UnavailabilityReasonCode (..),

    -- ** Unit
    Unit (..),

    -- ** UsageStatisticsFilterComparator
    UsageStatisticsFilterComparator (..),

    -- ** UsageStatisticsFilterKey
    UsageStatisticsFilterKey (..),

    -- ** UsageStatisticsSortKey
    UsageStatisticsSortKey (..),

    -- ** UsageType
    UsageType (..),

    -- ** UserIdentityType
    UserIdentityType (..),

    -- ** AccessControlList
    AccessControlList (AccessControlList'),
    newAccessControlList,

    -- ** AccountDetail
    AccountDetail (AccountDetail'),
    newAccountDetail,

    -- ** AccountLevelPermissions
    AccountLevelPermissions (AccountLevelPermissions'),
    newAccountLevelPermissions,

    -- ** AdminAccount
    AdminAccount (AdminAccount'),
    newAdminAccount,

    -- ** ApiCallDetails
    ApiCallDetails (ApiCallDetails'),
    newApiCallDetails,

    -- ** AssumedRole
    AssumedRole (AssumedRole'),
    newAssumedRole,

    -- ** AwsAccount
    AwsAccount (AwsAccount'),
    newAwsAccount,

    -- ** AwsService
    AwsService (AwsService'),
    newAwsService,

    -- ** BatchGetCustomDataIdentifierSummary
    BatchGetCustomDataIdentifierSummary (BatchGetCustomDataIdentifierSummary'),
    newBatchGetCustomDataIdentifierSummary,

    -- ** BlockPublicAccess
    BlockPublicAccess (BlockPublicAccess'),
    newBlockPublicAccess,

    -- ** BucketCountByEffectivePermission
    BucketCountByEffectivePermission (BucketCountByEffectivePermission'),
    newBucketCountByEffectivePermission,

    -- ** BucketCountByEncryptionType
    BucketCountByEncryptionType (BucketCountByEncryptionType'),
    newBucketCountByEncryptionType,

    -- ** BucketCountBySharedAccessType
    BucketCountBySharedAccessType (BucketCountBySharedAccessType'),
    newBucketCountBySharedAccessType,

    -- ** BucketCountPolicyAllowsUnencryptedObjectUploads
    BucketCountPolicyAllowsUnencryptedObjectUploads (BucketCountPolicyAllowsUnencryptedObjectUploads'),
    newBucketCountPolicyAllowsUnencryptedObjectUploads,

    -- ** BucketCriteriaAdditionalProperties
    BucketCriteriaAdditionalProperties (BucketCriteriaAdditionalProperties'),
    newBucketCriteriaAdditionalProperties,

    -- ** BucketLevelPermissions
    BucketLevelPermissions (BucketLevelPermissions'),
    newBucketLevelPermissions,

    -- ** BucketMetadata
    BucketMetadata (BucketMetadata'),
    newBucketMetadata,

    -- ** BucketPermissionConfiguration
    BucketPermissionConfiguration (BucketPermissionConfiguration'),
    newBucketPermissionConfiguration,

    -- ** BucketPolicy
    BucketPolicy (BucketPolicy'),
    newBucketPolicy,

    -- ** BucketPublicAccess
    BucketPublicAccess (BucketPublicAccess'),
    newBucketPublicAccess,

    -- ** BucketServerSideEncryption
    BucketServerSideEncryption (BucketServerSideEncryption'),
    newBucketServerSideEncryption,

    -- ** BucketSortCriteria
    BucketSortCriteria (BucketSortCriteria'),
    newBucketSortCriteria,

    -- ** Cell
    Cell (Cell'),
    newCell,

    -- ** ClassificationDetails
    ClassificationDetails (ClassificationDetails'),
    newClassificationDetails,

    -- ** ClassificationExportConfiguration
    ClassificationExportConfiguration (ClassificationExportConfiguration'),
    newClassificationExportConfiguration,

    -- ** ClassificationResult
    ClassificationResult (ClassificationResult'),
    newClassificationResult,

    -- ** ClassificationResultStatus
    ClassificationResultStatus (ClassificationResultStatus'),
    newClassificationResultStatus,

    -- ** CriteriaBlockForJob
    CriteriaBlockForJob (CriteriaBlockForJob'),
    newCriteriaBlockForJob,

    -- ** CriteriaForJob
    CriteriaForJob (CriteriaForJob'),
    newCriteriaForJob,

    -- ** CriterionAdditionalProperties
    CriterionAdditionalProperties (CriterionAdditionalProperties'),
    newCriterionAdditionalProperties,

    -- ** CustomDataIdentifierSummary
    CustomDataIdentifierSummary (CustomDataIdentifierSummary'),
    newCustomDataIdentifierSummary,

    -- ** CustomDataIdentifiers
    CustomDataIdentifiers (CustomDataIdentifiers'),
    newCustomDataIdentifiers,

    -- ** CustomDetection
    CustomDetection (CustomDetection'),
    newCustomDetection,

    -- ** DailySchedule
    DailySchedule (DailySchedule'),
    newDailySchedule,

    -- ** DefaultDetection
    DefaultDetection (DefaultDetection'),
    newDefaultDetection,

    -- ** DetectedDataDetails
    DetectedDataDetails (DetectedDataDetails'),
    newDetectedDataDetails,

    -- ** DomainDetails
    DomainDetails (DomainDetails'),
    newDomainDetails,

    -- ** FederatedUser
    FederatedUser (FederatedUser'),
    newFederatedUser,

    -- ** Finding
    Finding (Finding'),
    newFinding,

    -- ** FindingAction
    FindingAction (FindingAction'),
    newFindingAction,

    -- ** FindingActor
    FindingActor (FindingActor'),
    newFindingActor,

    -- ** FindingCriteria
    FindingCriteria (FindingCriteria'),
    newFindingCriteria,

    -- ** FindingStatisticsSortCriteria
    FindingStatisticsSortCriteria (FindingStatisticsSortCriteria'),
    newFindingStatisticsSortCriteria,

    -- ** FindingsFilterListItem
    FindingsFilterListItem (FindingsFilterListItem'),
    newFindingsFilterListItem,

    -- ** GroupCount
    GroupCount (GroupCount'),
    newGroupCount,

    -- ** IamUser
    IamUser (IamUser'),
    newIamUser,

    -- ** Invitation
    Invitation (Invitation'),
    newInvitation,

    -- ** IpAddressDetails
    IpAddressDetails (IpAddressDetails'),
    newIpAddressDetails,

    -- ** IpCity
    IpCity (IpCity'),
    newIpCity,

    -- ** IpCountry
    IpCountry (IpCountry'),
    newIpCountry,

    -- ** IpGeoLocation
    IpGeoLocation (IpGeoLocation'),
    newIpGeoLocation,

    -- ** IpOwner
    IpOwner (IpOwner'),
    newIpOwner,

    -- ** JobDetails
    JobDetails (JobDetails'),
    newJobDetails,

    -- ** JobScheduleFrequency
    JobScheduleFrequency (JobScheduleFrequency'),
    newJobScheduleFrequency,

    -- ** JobScopeTerm
    JobScopeTerm (JobScopeTerm'),
    newJobScopeTerm,

    -- ** JobScopingBlock
    JobScopingBlock (JobScopingBlock'),
    newJobScopingBlock,

    -- ** JobSummary
    JobSummary (JobSummary'),
    newJobSummary,

    -- ** KeyValuePair
    KeyValuePair (KeyValuePair'),
    newKeyValuePair,

    -- ** LastRunErrorStatus
    LastRunErrorStatus (LastRunErrorStatus'),
    newLastRunErrorStatus,

    -- ** ListJobsFilterCriteria
    ListJobsFilterCriteria (ListJobsFilterCriteria'),
    newListJobsFilterCriteria,

    -- ** ListJobsFilterTerm
    ListJobsFilterTerm (ListJobsFilterTerm'),
    newListJobsFilterTerm,

    -- ** ListJobsSortCriteria
    ListJobsSortCriteria (ListJobsSortCriteria'),
    newListJobsSortCriteria,

    -- ** ManagedDataIdentifierSummary
    ManagedDataIdentifierSummary (ManagedDataIdentifierSummary'),
    newManagedDataIdentifierSummary,

    -- ** MatchingBucket
    MatchingBucket (MatchingBucket'),
    newMatchingBucket,

    -- ** MatchingResource
    MatchingResource (MatchingResource'),
    newMatchingResource,

    -- ** Member
    Member (Member'),
    newMember,

    -- ** MonthlySchedule
    MonthlySchedule (MonthlySchedule'),
    newMonthlySchedule,

    -- ** ObjectCountByEncryptionType
    ObjectCountByEncryptionType (ObjectCountByEncryptionType'),
    newObjectCountByEncryptionType,

    -- ** ObjectLevelStatistics
    ObjectLevelStatistics (ObjectLevelStatistics'),
    newObjectLevelStatistics,

    -- ** Occurrences
    Occurrences (Occurrences'),
    newOccurrences,

    -- ** Page
    Page (Page'),
    newPage,

    -- ** PolicyDetails
    PolicyDetails (PolicyDetails'),
    newPolicyDetails,

    -- ** Range
    Range (Range'),
    newRange,

    -- ** Record
    Record (Record'),
    newRecord,

    -- ** ReplicationDetails
    ReplicationDetails (ReplicationDetails'),
    newReplicationDetails,

    -- ** ResourcesAffected
    ResourcesAffected (ResourcesAffected'),
    newResourcesAffected,

    -- ** RevealConfiguration
    RevealConfiguration (RevealConfiguration'),
    newRevealConfiguration,

    -- ** S3Bucket
    S3Bucket (S3Bucket'),
    newS3Bucket,

    -- ** S3BucketCriteriaForJob
    S3BucketCriteriaForJob (S3BucketCriteriaForJob'),
    newS3BucketCriteriaForJob,

    -- ** S3BucketDefinitionForJob
    S3BucketDefinitionForJob (S3BucketDefinitionForJob'),
    newS3BucketDefinitionForJob,

    -- ** S3BucketOwner
    S3BucketOwner (S3BucketOwner'),
    newS3BucketOwner,

    -- ** S3Destination
    S3Destination (S3Destination'),
    newS3Destination,

    -- ** S3JobDefinition
    S3JobDefinition (S3JobDefinition'),
    newS3JobDefinition,

    -- ** S3Object
    S3Object (S3Object'),
    newS3Object,

    -- ** Scoping
    Scoping (Scoping'),
    newScoping,

    -- ** SearchResourcesBucketCriteria
    SearchResourcesBucketCriteria (SearchResourcesBucketCriteria'),
    newSearchResourcesBucketCriteria,

    -- ** SearchResourcesCriteria
    SearchResourcesCriteria (SearchResourcesCriteria'),
    newSearchResourcesCriteria,

    -- ** SearchResourcesCriteriaBlock
    SearchResourcesCriteriaBlock (SearchResourcesCriteriaBlock'),
    newSearchResourcesCriteriaBlock,

    -- ** SearchResourcesSimpleCriterion
    SearchResourcesSimpleCriterion (SearchResourcesSimpleCriterion'),
    newSearchResourcesSimpleCriterion,

    -- ** SearchResourcesSortCriteria
    SearchResourcesSortCriteria (SearchResourcesSortCriteria'),
    newSearchResourcesSortCriteria,

    -- ** SearchResourcesTagCriterion
    SearchResourcesTagCriterion (SearchResourcesTagCriterion'),
    newSearchResourcesTagCriterion,

    -- ** SearchResourcesTagCriterionPair
    SearchResourcesTagCriterionPair (SearchResourcesTagCriterionPair'),
    newSearchResourcesTagCriterionPair,

    -- ** SecurityHubConfiguration
    SecurityHubConfiguration (SecurityHubConfiguration'),
    newSecurityHubConfiguration,

    -- ** SensitiveDataItem
    SensitiveDataItem (SensitiveDataItem'),
    newSensitiveDataItem,

    -- ** ServerSideEncryption
    ServerSideEncryption (ServerSideEncryption'),
    newServerSideEncryption,

    -- ** ServiceLimit
    ServiceLimit (ServiceLimit'),
    newServiceLimit,

    -- ** SessionContext
    SessionContext (SessionContext'),
    newSessionContext,

    -- ** SessionContextAttributes
    SessionContextAttributes (SessionContextAttributes'),
    newSessionContextAttributes,

    -- ** SessionIssuer
    SessionIssuer (SessionIssuer'),
    newSessionIssuer,

    -- ** Severity
    Severity (Severity'),
    newSeverity,

    -- ** SeverityLevel
    SeverityLevel (SeverityLevel'),
    newSeverityLevel,

    -- ** SimpleCriterionForJob
    SimpleCriterionForJob (SimpleCriterionForJob'),
    newSimpleCriterionForJob,

    -- ** SimpleScopeTerm
    SimpleScopeTerm (SimpleScopeTerm'),
    newSimpleScopeTerm,

    -- ** SortCriteria
    SortCriteria (SortCriteria'),
    newSortCriteria,

    -- ** Statistics
    Statistics (Statistics'),
    newStatistics,

    -- ** TagCriterionForJob
    TagCriterionForJob (TagCriterionForJob'),
    newTagCriterionForJob,

    -- ** TagCriterionPairForJob
    TagCriterionPairForJob (TagCriterionPairForJob'),
    newTagCriterionPairForJob,

    -- ** TagScopeTerm
    TagScopeTerm (TagScopeTerm'),
    newTagScopeTerm,

    -- ** TagValuePair
    TagValuePair (TagValuePair'),
    newTagValuePair,

    -- ** UnprocessedAccount
    UnprocessedAccount (UnprocessedAccount'),
    newUnprocessedAccount,

    -- ** UsageByAccount
    UsageByAccount (UsageByAccount'),
    newUsageByAccount,

    -- ** UsageRecord
    UsageRecord (UsageRecord'),
    newUsageRecord,

    -- ** UsageStatisticsFilter
    UsageStatisticsFilter (UsageStatisticsFilter'),
    newUsageStatisticsFilter,

    -- ** UsageStatisticsSortBy
    UsageStatisticsSortBy (UsageStatisticsSortBy'),
    newUsageStatisticsSortBy,

    -- ** UsageTotal
    UsageTotal (UsageTotal'),
    newUsageTotal,

    -- ** UserIdentity
    UserIdentity (UserIdentity'),
    newUserIdentity,

    -- ** UserIdentityRoot
    UserIdentityRoot (UserIdentityRoot'),
    newUserIdentityRoot,

    -- ** UserPausedDetails
    UserPausedDetails (UserPausedDetails'),
    newUserPausedDetails,

    -- ** WeeklySchedule
    WeeklySchedule (WeeklySchedule'),
    newWeeklySchedule,
  )
where

import Amazonka.MacieV2.AcceptInvitation
import Amazonka.MacieV2.BatchGetCustomDataIdentifiers
import Amazonka.MacieV2.CreateClassificationJob
import Amazonka.MacieV2.CreateCustomDataIdentifier
import Amazonka.MacieV2.CreateFindingsFilter
import Amazonka.MacieV2.CreateInvitations
import Amazonka.MacieV2.CreateMember
import Amazonka.MacieV2.CreateSampleFindings
import Amazonka.MacieV2.DeclineInvitations
import Amazonka.MacieV2.DeleteCustomDataIdentifier
import Amazonka.MacieV2.DeleteFindingsFilter
import Amazonka.MacieV2.DeleteInvitations
import Amazonka.MacieV2.DeleteMember
import Amazonka.MacieV2.DescribeBuckets
import Amazonka.MacieV2.DescribeClassificationJob
import Amazonka.MacieV2.DescribeOrganizationConfiguration
import Amazonka.MacieV2.DisableMacie
import Amazonka.MacieV2.DisableOrganizationAdminAccount
import Amazonka.MacieV2.DisassociateFromAdministratorAccount
import Amazonka.MacieV2.DisassociateFromMasterAccount
import Amazonka.MacieV2.DisassociateMember
import Amazonka.MacieV2.EnableMacie
import Amazonka.MacieV2.EnableOrganizationAdminAccount
import Amazonka.MacieV2.GetAdministratorAccount
import Amazonka.MacieV2.GetBucketStatistics
import Amazonka.MacieV2.GetClassificationExportConfiguration
import Amazonka.MacieV2.GetCustomDataIdentifier
import Amazonka.MacieV2.GetFindingStatistics
import Amazonka.MacieV2.GetFindings
import Amazonka.MacieV2.GetFindingsFilter
import Amazonka.MacieV2.GetFindingsPublicationConfiguration
import Amazonka.MacieV2.GetInvitationsCount
import Amazonka.MacieV2.GetMacieSession
import Amazonka.MacieV2.GetMasterAccount
import Amazonka.MacieV2.GetMember
import Amazonka.MacieV2.GetRevealConfiguration
import Amazonka.MacieV2.GetSensitiveDataOccurrences
import Amazonka.MacieV2.GetSensitiveDataOccurrencesAvailability
import Amazonka.MacieV2.GetUsageStatistics
import Amazonka.MacieV2.GetUsageTotals
import Amazonka.MacieV2.Lens
import Amazonka.MacieV2.ListClassificationJobs
import Amazonka.MacieV2.ListCustomDataIdentifiers
import Amazonka.MacieV2.ListFindings
import Amazonka.MacieV2.ListFindingsFilters
import Amazonka.MacieV2.ListInvitations
import Amazonka.MacieV2.ListManagedDataIdentifiers
import Amazonka.MacieV2.ListMembers
import Amazonka.MacieV2.ListOrganizationAdminAccounts
import Amazonka.MacieV2.ListTagsForResource
import Amazonka.MacieV2.PutClassificationExportConfiguration
import Amazonka.MacieV2.PutFindingsPublicationConfiguration
import Amazonka.MacieV2.SearchResources
import Amazonka.MacieV2.TagResource
import Amazonka.MacieV2.TestCustomDataIdentifier
import Amazonka.MacieV2.Types
import Amazonka.MacieV2.UntagResource
import Amazonka.MacieV2.UpdateClassificationJob
import Amazonka.MacieV2.UpdateFindingsFilter
import Amazonka.MacieV2.UpdateMacieSession
import Amazonka.MacieV2.UpdateMemberSession
import Amazonka.MacieV2.UpdateOrganizationConfiguration
import Amazonka.MacieV2.UpdateRevealConfiguration
import Amazonka.MacieV2.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'MacieV2'.

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
