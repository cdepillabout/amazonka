{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.CloudTrail.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CloudTrail.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _InvalidS3PrefixException,
    _InvalidTokenException,
    _EventDataStoreTerminationProtectedException,
    _CloudTrailARNInvalidException,
    _OrganizationNotInAllFeaturesModeException,
    _UnsupportedOperationException,
    _TagsLimitExceededException,
    _TrailNotFoundException,
    _InvalidCloudWatchLogsLogGroupArnException,
    _EventDataStoreAlreadyExistsException,
    _InvalidCloudWatchLogsRoleArnException,
    _InvalidHomeRegionException,
    _InvalidS3BucketNameException,
    _CloudWatchLogsDeliveryUnavailableException,
    _ResourceTypeNotSupportedException,
    _InsufficientDependencyServiceAccessPermissionException,
    _ResourceNotFoundException,
    _CloudTrailAccessNotEnabledException,
    _InvalidQueryStatusException,
    _S3BucketDoesNotExistException,
    _InvalidTagParameterException,
    _InactiveEventDataStoreException,
    _InvalidMaxResultsException,
    _InvalidParameterCombinationException,
    _CloudTrailInvalidClientTokenIdException,
    _InvalidEventDataStoreStatusException,
    _InvalidNextTokenException,
    _ConflictException,
    _QueryIdNotFoundException,
    _KmsKeyNotFoundException,
    _InsightNotEnabledException,
    _EventDataStoreMaxLimitExceededException,
    _InvalidEventCategoryException,
    _InvalidDateRangeException,
    _EventDataStoreARNInvalidException,
    _InvalidQueryStatementException,
    _InactiveQueryException,
    _TrailNotProvidedException,
    _InsufficientS3BucketPolicyException,
    _InvalidInsightSelectorsException,
    _KmsException,
    _InsufficientEncryptionPolicyException,
    _InvalidTimeRangeException,
    _InvalidLookupAttributesException,
    _OperationNotPermittedException,
    _InvalidTrailNameException,
    _InsufficientSnsTopicPolicyException,
    _InvalidKmsKeyIdException,
    _MaximumNumberOfTrailsExceededException,
    _EventDataStoreNotFoundException,
    _TrailAlreadyExistsException,
    _InvalidEventSelectorsException,
    _InvalidSnsTopicNameException,
    _NotOrganizationMasterAccountException,
    _MaxConcurrentQueriesException,
    _KmsKeyDisabledException,
    _InvalidParameterException,
    _OrganizationsNotInUseException,

    -- * EventCategory
    EventCategory (..),

    -- * EventDataStoreStatus
    EventDataStoreStatus (..),

    -- * InsightType
    InsightType (..),

    -- * LookupAttributeKey
    LookupAttributeKey (..),

    -- * QueryStatus
    QueryStatus (..),

    -- * ReadWriteType
    ReadWriteType (..),

    -- * AdvancedEventSelector
    AdvancedEventSelector (..),
    newAdvancedEventSelector,
    advancedEventSelector_name,
    advancedEventSelector_fieldSelectors,

    -- * AdvancedFieldSelector
    AdvancedFieldSelector (..),
    newAdvancedFieldSelector,
    advancedFieldSelector_notEquals,
    advancedFieldSelector_equals,
    advancedFieldSelector_endsWith,
    advancedFieldSelector_startsWith,
    advancedFieldSelector_notEndsWith,
    advancedFieldSelector_notStartsWith,
    advancedFieldSelector_field,

    -- * DataResource
    DataResource (..),
    newDataResource,
    dataResource_type,
    dataResource_values,

    -- * Event
    Event (..),
    newEvent,
    event_username,
    event_readOnly,
    event_eventName,
    event_eventId,
    event_resources,
    event_eventTime,
    event_cloudTrailEvent,
    event_accessKeyId,
    event_eventSource,

    -- * EventDataStore
    EventDataStore (..),
    newEventDataStore,
    eventDataStore_name,
    eventDataStore_eventDataStoreArn,
    eventDataStore_advancedEventSelectors,
    eventDataStore_createdTimestamp,
    eventDataStore_multiRegionEnabled,
    eventDataStore_updatedTimestamp,
    eventDataStore_status,
    eventDataStore_retentionPeriod,
    eventDataStore_organizationEnabled,
    eventDataStore_terminationProtectionEnabled,

    -- * EventSelector
    EventSelector (..),
    newEventSelector,
    eventSelector_excludeManagementEventSources,
    eventSelector_includeManagementEvents,
    eventSelector_dataResources,
    eventSelector_readWriteType,

    -- * InsightSelector
    InsightSelector (..),
    newInsightSelector,
    insightSelector_insightType,

    -- * LookupAttribute
    LookupAttribute (..),
    newLookupAttribute,
    lookupAttribute_attributeKey,
    lookupAttribute_attributeValue,

    -- * PublicKey
    PublicKey (..),
    newPublicKey,
    publicKey_validityStartTime,
    publicKey_validityEndTime,
    publicKey_fingerprint,
    publicKey_value,

    -- * Query
    Query (..),
    newQuery,
    query_queryStatus,
    query_queryId,
    query_creationTime,

    -- * QueryStatistics
    QueryStatistics (..),
    newQueryStatistics,
    queryStatistics_totalResultsCount,
    queryStatistics_bytesScanned,
    queryStatistics_resultsCount,

    -- * QueryStatisticsForDescribeQuery
    QueryStatisticsForDescribeQuery (..),
    newQueryStatisticsForDescribeQuery,
    queryStatisticsForDescribeQuery_eventsScanned,
    queryStatisticsForDescribeQuery_bytesScanned,
    queryStatisticsForDescribeQuery_executionTimeInMillis,
    queryStatisticsForDescribeQuery_eventsMatched,
    queryStatisticsForDescribeQuery_creationTime,

    -- * Resource
    Resource (..),
    newResource,
    resource_resourceType,
    resource_resourceName,

    -- * ResourceTag
    ResourceTag (..),
    newResourceTag,
    resourceTag_resourceId,
    resourceTag_tagsList,

    -- * Tag
    Tag (..),
    newTag,
    tag_value,
    tag_key,

    -- * Trail
    Trail (..),
    newTrail,
    trail_s3KeyPrefix,
    trail_name,
    trail_logFileValidationEnabled,
    trail_snsTopicName,
    trail_isOrganizationTrail,
    trail_includeGlobalServiceEvents,
    trail_s3BucketName,
    trail_hasCustomEventSelectors,
    trail_snsTopicARN,
    trail_isMultiRegionTrail,
    trail_kmsKeyId,
    trail_cloudWatchLogsRoleArn,
    trail_homeRegion,
    trail_cloudWatchLogsLogGroupArn,
    trail_hasInsightSelectors,
    trail_trailARN,

    -- * TrailInfo
    TrailInfo (..),
    newTrailInfo,
    trailInfo_name,
    trailInfo_homeRegion,
    trailInfo_trailARN,
  )
where

import Amazonka.CloudTrail.Types.AdvancedEventSelector
import Amazonka.CloudTrail.Types.AdvancedFieldSelector
import Amazonka.CloudTrail.Types.DataResource
import Amazonka.CloudTrail.Types.Event
import Amazonka.CloudTrail.Types.EventCategory
import Amazonka.CloudTrail.Types.EventDataStore
import Amazonka.CloudTrail.Types.EventDataStoreStatus
import Amazonka.CloudTrail.Types.EventSelector
import Amazonka.CloudTrail.Types.InsightSelector
import Amazonka.CloudTrail.Types.InsightType
import Amazonka.CloudTrail.Types.LookupAttribute
import Amazonka.CloudTrail.Types.LookupAttributeKey
import Amazonka.CloudTrail.Types.PublicKey
import Amazonka.CloudTrail.Types.Query
import Amazonka.CloudTrail.Types.QueryStatistics
import Amazonka.CloudTrail.Types.QueryStatisticsForDescribeQuery
import Amazonka.CloudTrail.Types.QueryStatus
import Amazonka.CloudTrail.Types.ReadWriteType
import Amazonka.CloudTrail.Types.Resource
import Amazonka.CloudTrail.Types.ResourceTag
import Amazonka.CloudTrail.Types.Tag
import Amazonka.CloudTrail.Types.Trail
import Amazonka.CloudTrail.Types.TrailInfo
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2013-11-01@ of the Amazon CloudTrail SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "CloudTrail",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "cloudtrail",
      Core._serviceSigningName = "cloudtrail",
      Core._serviceVersion = "2013-11-01",
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError =
        Core.parseJSONError "CloudTrail",
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

-- | This exception is thrown when the provided S3 prefix is not valid.
_InvalidS3PrefixException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidS3PrefixException =
  Core._MatchServiceError
    defaultService
    "InvalidS3PrefixException"

-- | Reserved for future use.
_InvalidTokenException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidTokenException =
  Core._MatchServiceError
    defaultService
    "InvalidTokenException"

-- | The event data store cannot be deleted because termination protection is
-- enabled for it.
_EventDataStoreTerminationProtectedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_EventDataStoreTerminationProtectedException =
  Core._MatchServiceError
    defaultService
    "EventDataStoreTerminationProtectedException"

-- | This exception is thrown when an operation is called with a trail ARN
-- that is not valid. The following is the format of a trail ARN.
--
-- @arn:aws:cloudtrail:us-east-2:123456789012:trail\/MyTrail@
_CloudTrailARNInvalidException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_CloudTrailARNInvalidException =
  Core._MatchServiceError
    defaultService
    "CloudTrailARNInvalidException"

-- | This exception is thrown when Organizations is not configured to support
-- all features. All features must be enabled in Organizations to support
-- creating an organization trail or event data store.
_OrganizationNotInAllFeaturesModeException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_OrganizationNotInAllFeaturesModeException =
  Core._MatchServiceError
    defaultService
    "OrganizationNotInAllFeaturesModeException"

-- | This exception is thrown when the requested operation is not supported.
_UnsupportedOperationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_UnsupportedOperationException =
  Core._MatchServiceError
    defaultService
    "UnsupportedOperationException"

-- | The number of tags per trail has exceeded the permitted amount.
-- Currently, the limit is 50.
_TagsLimitExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_TagsLimitExceededException =
  Core._MatchServiceError
    defaultService
    "TagsLimitExceededException"

-- | This exception is thrown when the trail with the given name is not
-- found.
_TrailNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_TrailNotFoundException =
  Core._MatchServiceError
    defaultService
    "TrailNotFoundException"

-- | This exception is thrown when the provided CloudWatch Logs log group is
-- not valid.
_InvalidCloudWatchLogsLogGroupArnException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidCloudWatchLogsLogGroupArnException =
  Core._MatchServiceError
    defaultService
    "InvalidCloudWatchLogsLogGroupArnException"

-- | An event data store with that name already exists.
_EventDataStoreAlreadyExistsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_EventDataStoreAlreadyExistsException =
  Core._MatchServiceError
    defaultService
    "EventDataStoreAlreadyExistsException"

-- | This exception is thrown when the provided role is not valid.
_InvalidCloudWatchLogsRoleArnException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidCloudWatchLogsRoleArnException =
  Core._MatchServiceError
    defaultService
    "InvalidCloudWatchLogsRoleArnException"

-- | This exception is thrown when an operation is called on a trail from a
-- region other than the region in which the trail was created.
_InvalidHomeRegionException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidHomeRegionException =
  Core._MatchServiceError
    defaultService
    "InvalidHomeRegionException"

-- | This exception is thrown when the provided S3 bucket name is not valid.
_InvalidS3BucketNameException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidS3BucketNameException =
  Core._MatchServiceError
    defaultService
    "InvalidS3BucketNameException"

-- | Cannot set a CloudWatch Logs delivery for this region.
_CloudWatchLogsDeliveryUnavailableException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_CloudWatchLogsDeliveryUnavailableException =
  Core._MatchServiceError
    defaultService
    "CloudWatchLogsDeliveryUnavailableException"

-- | This exception is thrown when the specified resource type is not
-- supported by CloudTrail.
_ResourceTypeNotSupportedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceTypeNotSupportedException =
  Core._MatchServiceError
    defaultService
    "ResourceTypeNotSupportedException"

-- | This exception is thrown when the IAM user or role that is used to
-- create the organization resource lacks one or more required permissions
-- for creating an organization resource in a required service.
_InsufficientDependencyServiceAccessPermissionException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InsufficientDependencyServiceAccessPermissionException =
  Core._MatchServiceError
    defaultService
    "InsufficientDependencyServiceAccessPermissionException"

-- | This exception is thrown when the specified resource is not found.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"

-- | This exception is thrown when trusted access has not been enabled
-- between CloudTrail and Organizations. For more information, see
-- <https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html Enabling Trusted Access with Other Amazon Web Services Services>
-- and
-- <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/creating-an-organizational-trail-prepare.html Prepare For Creating a Trail For Your Organization>.
_CloudTrailAccessNotEnabledException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_CloudTrailAccessNotEnabledException =
  Core._MatchServiceError
    defaultService
    "CloudTrailAccessNotEnabledException"

-- | The query status is not valid for the operation.
_InvalidQueryStatusException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidQueryStatusException =
  Core._MatchServiceError
    defaultService
    "InvalidQueryStatusException"

-- | This exception is thrown when the specified S3 bucket does not exist.
_S3BucketDoesNotExistException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_S3BucketDoesNotExistException =
  Core._MatchServiceError
    defaultService
    "S3BucketDoesNotExistException"

-- | This exception is thrown when the specified tag key or values are not
-- valid. It can also occur if there are duplicate tags or too many tags on
-- the resource.
_InvalidTagParameterException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidTagParameterException =
  Core._MatchServiceError
    defaultService
    "InvalidTagParameterException"

-- | The event data store is inactive.
_InactiveEventDataStoreException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InactiveEventDataStoreException =
  Core._MatchServiceError
    defaultService
    "InactiveEventDataStoreException"

-- | This exception is thrown if the limit specified is not valid.
_InvalidMaxResultsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidMaxResultsException =
  Core._MatchServiceError
    defaultService
    "InvalidMaxResultsException"

-- | This exception is thrown when the combination of parameters provided is
-- not valid.
_InvalidParameterCombinationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidParameterCombinationException =
  Core._MatchServiceError
    defaultService
    "InvalidParameterCombinationException"

-- | This exception is thrown when a call results in the
-- @InvalidClientTokenId@ error code. This can occur when you are creating
-- or updating a trail to send notifications to an Amazon SNS topic that is
-- in a suspended Amazon Web Services account.
_CloudTrailInvalidClientTokenIdException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_CloudTrailInvalidClientTokenIdException =
  Core._MatchServiceError
    defaultService
    "CloudTrailInvalidClientTokenIdException"

-- | The event data store is not in a status that supports the operation.
_InvalidEventDataStoreStatusException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidEventDataStoreStatusException =
  Core._MatchServiceError
    defaultService
    "InvalidEventDataStoreStatusException"

-- | A token that is not valid, or a token that was previously used in a
-- request with different parameters. This exception is thrown if the token
-- is not valid.
_InvalidNextTokenException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidNextTokenException =
  Core._MatchServiceError
    defaultService
    "InvalidNextTokenException"

-- | This exception is thrown when the specified resource is not ready for an
-- operation. This can occur when you try to run an operation on a resource
-- before CloudTrail has time to fully load the resource. If this exception
-- occurs, wait a few minutes, and then try the operation again.
_ConflictException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ConflictException =
  Core._MatchServiceError
    defaultService
    "ConflictException"

-- | The query ID does not exist or does not map to a query.
_QueryIdNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_QueryIdNotFoundException =
  Core._MatchServiceError
    defaultService
    "QueryIdNotFoundException"

-- | This exception is thrown when the KMS key does not exist, when the S3
-- bucket and the KMS key are not in the same region, or when the KMS key
-- associated with the Amazon SNS topic either does not exist or is not in
-- the same region.
_KmsKeyNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_KmsKeyNotFoundException =
  Core._MatchServiceError
    defaultService
    "KmsKeyNotFoundException"

-- | If you run @GetInsightSelectors@ on a trail that does not have Insights
-- events enabled, the operation throws the exception
-- @InsightNotEnabledException@.
_InsightNotEnabledException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InsightNotEnabledException =
  Core._MatchServiceError
    defaultService
    "InsightNotEnabledException"

-- | Your account has used the maximum number of event data stores.
_EventDataStoreMaxLimitExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_EventDataStoreMaxLimitExceededException =
  Core._MatchServiceError
    defaultService
    "EventDataStoreMaxLimitExceededException"

-- | Occurs if an event category that is not valid is specified as a value of
-- @EventCategory@.
_InvalidEventCategoryException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidEventCategoryException =
  Core._MatchServiceError
    defaultService
    "InvalidEventCategoryException"

-- | A date range for the query was specified that is not valid. Be sure that
-- the start time is chronologically before the end time. For more
-- information about writing a query, see
-- <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-create-edit-query.html Create or edit a query>
-- in the /CloudTrail User Guide/.
_InvalidDateRangeException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidDateRangeException =
  Core._MatchServiceError
    defaultService
    "InvalidDateRangeException"

-- | The specified event data store ARN is not valid or does not map to an
-- event data store in your account.
_EventDataStoreARNInvalidException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_EventDataStoreARNInvalidException =
  Core._MatchServiceError
    defaultService
    "EventDataStoreARNInvalidException"

-- | The query that was submitted has validation errors, or uses incorrect
-- syntax or unsupported keywords. For more information about writing a
-- query, see
-- <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-create-edit-query.html Create or edit a query>
-- in the /CloudTrail User Guide/.
_InvalidQueryStatementException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidQueryStatementException =
  Core._MatchServiceError
    defaultService
    "InvalidQueryStatementException"

-- | The specified query cannot be canceled because it is in the @FINISHED@,
-- @FAILED@, @TIMED_OUT@, or @CANCELLED@ state.
_InactiveQueryException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InactiveQueryException =
  Core._MatchServiceError
    defaultService
    "InactiveQueryException"

-- | This exception is no longer in use.
_TrailNotProvidedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_TrailNotProvidedException =
  Core._MatchServiceError
    defaultService
    "TrailNotProvidedException"

-- | This exception is thrown when the policy on the S3 bucket is not
-- sufficient.
_InsufficientS3BucketPolicyException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InsufficientS3BucketPolicyException =
  Core._MatchServiceError
    defaultService
    "InsufficientS3BucketPolicyException"

-- | The formatting or syntax of the @InsightSelectors@ JSON statement in
-- your @PutInsightSelectors@ or @GetInsightSelectors@ request is not
-- valid, or the specified insight type in the @InsightSelectors@ statement
-- is not a valid insight type.
_InvalidInsightSelectorsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidInsightSelectorsException =
  Core._MatchServiceError
    defaultService
    "InvalidInsightSelectorsException"

-- | This exception is thrown when there is an issue with the specified KMS
-- key and the trail can’t be updated.
_KmsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_KmsException =
  Core._MatchServiceError
    defaultService
    "KmsException"

-- | This exception is thrown when the policy on the S3 bucket or KMS key is
-- not sufficient.
_InsufficientEncryptionPolicyException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InsufficientEncryptionPolicyException =
  Core._MatchServiceError
    defaultService
    "InsufficientEncryptionPolicyException"

-- | Occurs if the timestamp values are not valid. Either the start time
-- occurs after the end time, or the time range is outside the range of
-- possible values.
_InvalidTimeRangeException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidTimeRangeException =
  Core._MatchServiceError
    defaultService
    "InvalidTimeRangeException"

-- | Occurs when a lookup attribute is specified that is not valid.
_InvalidLookupAttributesException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidLookupAttributesException =
  Core._MatchServiceError
    defaultService
    "InvalidLookupAttributesException"

-- | This exception is thrown when the requested operation is not permitted.
_OperationNotPermittedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_OperationNotPermittedException =
  Core._MatchServiceError
    defaultService
    "OperationNotPermittedException"

-- | This exception is thrown when the provided trail name is not valid.
-- Trail names must meet the following requirements:
--
-- -   Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.),
--     underscores (_), or dashes (-)
--
-- -   Start with a letter or number, and end with a letter or number
--
-- -   Be between 3 and 128 characters
--
-- -   Have no adjacent periods, underscores or dashes. Names like
--     @my-_namespace@ and @my--namespace@ are not valid.
--
-- -   Not be in IP address format (for example, 192.168.5.4)
_InvalidTrailNameException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidTrailNameException =
  Core._MatchServiceError
    defaultService
    "InvalidTrailNameException"

-- | This exception is thrown when the policy on the Amazon SNS topic is not
-- sufficient.
_InsufficientSnsTopicPolicyException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InsufficientSnsTopicPolicyException =
  Core._MatchServiceError
    defaultService
    "InsufficientSnsTopicPolicyException"

-- | This exception is thrown when the KMS key ARN is not valid.
_InvalidKmsKeyIdException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidKmsKeyIdException =
  Core._MatchServiceError
    defaultService
    "InvalidKmsKeyIdException"

-- | This exception is thrown when the maximum number of trails is reached.
_MaximumNumberOfTrailsExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_MaximumNumberOfTrailsExceededException =
  Core._MatchServiceError
    defaultService
    "MaximumNumberOfTrailsExceededException"

-- | The specified event data store was not found.
_EventDataStoreNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_EventDataStoreNotFoundException =
  Core._MatchServiceError
    defaultService
    "EventDataStoreNotFoundException"

-- | This exception is thrown when the specified trail already exists.
_TrailAlreadyExistsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_TrailAlreadyExistsException =
  Core._MatchServiceError
    defaultService
    "TrailAlreadyExistsException"

-- | This exception is thrown when the @PutEventSelectors@ operation is
-- called with a number of event selectors, advanced event selectors, or
-- data resources that is not valid. The combination of event selectors or
-- advanced event selectors and data resources is not valid. A trail can
-- have up to 5 event selectors. If a trail uses advanced event selectors,
-- a maximum of 500 total values for all conditions in all advanced event
-- selectors is allowed. A trail is limited to 250 data resources. These
-- data resources can be distributed across event selectors, but the
-- overall total cannot exceed 250.
--
-- You can:
--
-- -   Specify a valid number of event selectors (1 to 5) for a trail.
--
-- -   Specify a valid number of data resources (1 to 250) for an event
--     selector. The limit of number of resources on an individual event
--     selector is configurable up to 250. However, this upper limit is
--     allowed only if the total number of data resources does not exceed
--     250 across all event selectors for a trail.
--
-- -   Specify up to 500 values for all conditions in all advanced event
--     selectors for a trail.
--
-- -   Specify a valid value for a parameter. For example, specifying the
--     @ReadWriteType@ parameter with a value of @read-only@ is not valid.
_InvalidEventSelectorsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidEventSelectorsException =
  Core._MatchServiceError
    defaultService
    "InvalidEventSelectorsException"

-- | This exception is thrown when the provided SNS topic name is not valid.
_InvalidSnsTopicNameException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidSnsTopicNameException =
  Core._MatchServiceError
    defaultService
    "InvalidSnsTopicNameException"

-- | This exception is thrown when the Amazon Web Services account making the
-- request to create or update an organization trail or event data store is
-- not the management account for an organization in Organizations. For
-- more information, see
-- <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/creating-an-organizational-trail-prepare.html Prepare For Creating a Trail For Your Organization>
-- or
-- <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-event-data-store.html Create an event data store>.
_NotOrganizationMasterAccountException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NotOrganizationMasterAccountException =
  Core._MatchServiceError
    defaultService
    "NotOrganizationMasterAccountException"

-- | You are already running the maximum number of concurrent queries. Wait a
-- minute for some queries to finish, and then run the query again.
_MaxConcurrentQueriesException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_MaxConcurrentQueriesException =
  Core._MatchServiceError
    defaultService
    "MaxConcurrentQueriesException"

-- | This exception is no longer in use.
_KmsKeyDisabledException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_KmsKeyDisabledException =
  Core._MatchServiceError
    defaultService
    "KmsKeyDisabledException"

-- | The request includes a parameter that is not valid.
_InvalidParameterException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidParameterException =
  Core._MatchServiceError
    defaultService
    "InvalidParameterException"

-- | This exception is thrown when the request is made from an Amazon Web
-- Services account that is not a member of an organization. To make this
-- request, sign in using the credentials of an account that belongs to an
-- organization.
_OrganizationsNotInUseException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_OrganizationsNotInUseException =
  Core._MatchServiceError
    defaultService
    "OrganizationsNotInUseException"
