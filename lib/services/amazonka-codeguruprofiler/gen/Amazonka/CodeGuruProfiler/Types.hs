{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.CodeGuruProfiler.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CodeGuruProfiler.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _InternalServerException,
    _ServiceQuotaExceededException,
    _ResourceNotFoundException,
    _ConflictException,
    _ThrottlingException,
    _ValidationException,

    -- * ActionGroup
    ActionGroup (..),

    -- * AgentParameterField
    AgentParameterField (..),

    -- * AggregationPeriod
    AggregationPeriod (..),

    -- * ComputePlatform
    ComputePlatform (..),

    -- * EventPublisher
    EventPublisher (..),

    -- * FeedbackType
    FeedbackType (..),

    -- * MetadataField
    MetadataField (..),

    -- * MetricType
    MetricType (..),

    -- * OrderBy
    OrderBy (..),

    -- * AgentConfiguration
    AgentConfiguration (..),
    newAgentConfiguration,
    agentConfiguration_agentParameters,
    agentConfiguration_periodInSeconds,
    agentConfiguration_shouldProfile,

    -- * AgentOrchestrationConfig
    AgentOrchestrationConfig (..),
    newAgentOrchestrationConfig,
    agentOrchestrationConfig_profilingEnabled,

    -- * AggregatedProfileTime
    AggregatedProfileTime (..),
    newAggregatedProfileTime,
    aggregatedProfileTime_start,
    aggregatedProfileTime_period,

    -- * Anomaly
    Anomaly (..),
    newAnomaly,
    anomaly_instances,
    anomaly_metric,
    anomaly_reason,

    -- * AnomalyInstance
    AnomalyInstance (..),
    newAnomalyInstance,
    anomalyInstance_userFeedback,
    anomalyInstance_endTime,
    anomalyInstance_id,
    anomalyInstance_startTime,

    -- * Channel
    Channel (..),
    newChannel,
    channel_id,
    channel_eventPublishers,
    channel_uri,

    -- * FindingsReportSummary
    FindingsReportSummary (..),
    newFindingsReportSummary,
    findingsReportSummary_profileStartTime,
    findingsReportSummary_totalNumberOfFindings,
    findingsReportSummary_id,
    findingsReportSummary_profilingGroupName,
    findingsReportSummary_profileEndTime,

    -- * FrameMetric
    FrameMetric (..),
    newFrameMetric,
    frameMetric_frameName,
    frameMetric_threadStates,
    frameMetric_type,

    -- * FrameMetricDatum
    FrameMetricDatum (..),
    newFrameMetricDatum,
    frameMetricDatum_frameMetric,
    frameMetricDatum_values,

    -- * Match
    Match (..),
    newMatch,
    match_thresholdBreachValue,
    match_frameAddress,
    match_targetFramesIndex,

    -- * Metric
    Metric (..),
    newMetric,
    metric_frameName,
    metric_threadStates,
    metric_type,

    -- * NotificationConfiguration
    NotificationConfiguration (..),
    newNotificationConfiguration,
    notificationConfiguration_channels,

    -- * Pattern
    Pattern (..),
    newPattern,
    pattern_name,
    pattern_countersToAggregate,
    pattern_description,
    pattern_id,
    pattern_targetFrames,
    pattern_thresholdPercent,
    pattern_resolutionSteps,

    -- * ProfileTime
    ProfileTime (..),
    newProfileTime,
    profileTime_start,

    -- * ProfilingGroupDescription
    ProfilingGroupDescription (..),
    newProfilingGroupDescription,
    profilingGroupDescription_tags,
    profilingGroupDescription_name,
    profilingGroupDescription_arn,
    profilingGroupDescription_computePlatform,
    profilingGroupDescription_profilingStatus,
    profilingGroupDescription_createdAt,
    profilingGroupDescription_updatedAt,
    profilingGroupDescription_agentOrchestrationConfig,

    -- * ProfilingStatus
    ProfilingStatus (..),
    newProfilingStatus,
    profilingStatus_latestAgentOrchestratedAt,
    profilingStatus_latestAgentProfileReportedAt,
    profilingStatus_latestAggregatedProfile,

    -- * Recommendation
    Recommendation (..),
    newRecommendation,
    recommendation_allMatchesCount,
    recommendation_allMatchesSum,
    recommendation_endTime,
    recommendation_pattern,
    recommendation_startTime,
    recommendation_topMatches,

    -- * TimestampStructure
    TimestampStructure (..),
    newTimestampStructure,
    timestampStructure_value,

    -- * UserFeedback
    UserFeedback (..),
    newUserFeedback,
    userFeedback_type,
  )
where

import Amazonka.CodeGuruProfiler.Types.ActionGroup
import Amazonka.CodeGuruProfiler.Types.AgentConfiguration
import Amazonka.CodeGuruProfiler.Types.AgentOrchestrationConfig
import Amazonka.CodeGuruProfiler.Types.AgentParameterField
import Amazonka.CodeGuruProfiler.Types.AggregatedProfileTime
import Amazonka.CodeGuruProfiler.Types.AggregationPeriod
import Amazonka.CodeGuruProfiler.Types.Anomaly
import Amazonka.CodeGuruProfiler.Types.AnomalyInstance
import Amazonka.CodeGuruProfiler.Types.Channel
import Amazonka.CodeGuruProfiler.Types.ComputePlatform
import Amazonka.CodeGuruProfiler.Types.EventPublisher
import Amazonka.CodeGuruProfiler.Types.FeedbackType
import Amazonka.CodeGuruProfiler.Types.FindingsReportSummary
import Amazonka.CodeGuruProfiler.Types.FrameMetric
import Amazonka.CodeGuruProfiler.Types.FrameMetricDatum
import Amazonka.CodeGuruProfiler.Types.Match
import Amazonka.CodeGuruProfiler.Types.MetadataField
import Amazonka.CodeGuruProfiler.Types.Metric
import Amazonka.CodeGuruProfiler.Types.MetricType
import Amazonka.CodeGuruProfiler.Types.NotificationConfiguration
import Amazonka.CodeGuruProfiler.Types.OrderBy
import Amazonka.CodeGuruProfiler.Types.Pattern
import Amazonka.CodeGuruProfiler.Types.ProfileTime
import Amazonka.CodeGuruProfiler.Types.ProfilingGroupDescription
import Amazonka.CodeGuruProfiler.Types.ProfilingStatus
import Amazonka.CodeGuruProfiler.Types.Recommendation
import Amazonka.CodeGuruProfiler.Types.TimestampStructure
import Amazonka.CodeGuruProfiler.Types.UserFeedback
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2019-07-18@ of the Amazon CodeGuru Profiler SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev =
        "CodeGuruProfiler",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "codeguru-profiler",
      Core._serviceSigningName = "codeguru-profiler",
      Core._serviceVersion = "2019-07-18",
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError =
        Core.parseJSONError "CodeGuruProfiler",
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

-- | The server encountered an internal error and is unable to complete the
-- request.
_InternalServerException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalServerException =
  Core._MatchServiceError
    defaultService
    "InternalServerException"
    Prelude.. Core.hasStatus 500

-- | You have exceeded your service quota. To perform the requested action,
-- remove some of the relevant resources, or use
-- <https://docs.aws.amazon.com/servicequotas/latest/userguide/intro.html Service Quotas>
-- to request a service quota increase.
_ServiceQuotaExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ServiceQuotaExceededException =
  Core._MatchServiceError
    defaultService
    "ServiceQuotaExceededException"
    Prelude.. Core.hasStatus 402

-- | The resource specified in the request does not exist.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"
    Prelude.. Core.hasStatus 404

-- | The requested operation would cause a conflict with the current state of
-- a service resource associated with the request. Resolve the conflict
-- before retrying this request.
_ConflictException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ConflictException =
  Core._MatchServiceError
    defaultService
    "ConflictException"
    Prelude.. Core.hasStatus 409

-- | The request was denied due to request throttling.
_ThrottlingException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ThrottlingException =
  Core._MatchServiceError
    defaultService
    "ThrottlingException"
    Prelude.. Core.hasStatus 429

-- | The parameter is not valid.
_ValidationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ValidationException =
  Core._MatchServiceError
    defaultService
    "ValidationException"
    Prelude.. Core.hasStatus 400
