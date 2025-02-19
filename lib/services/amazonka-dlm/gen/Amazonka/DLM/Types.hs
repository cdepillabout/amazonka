{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.DLM.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DLM.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _InternalServerException,
    _ResourceNotFoundException,
    _LimitExceededException,
    _InvalidRequestException,

    -- * EventSourceValues
    EventSourceValues (..),

    -- * EventTypeValues
    EventTypeValues (..),

    -- * GettablePolicyStateValues
    GettablePolicyStateValues (..),

    -- * IntervalUnitValues
    IntervalUnitValues (..),

    -- * LocationValues
    LocationValues (..),

    -- * PolicyTypeValues
    PolicyTypeValues (..),

    -- * ResourceLocationValues
    ResourceLocationValues (..),

    -- * ResourceTypeValues
    ResourceTypeValues (..),

    -- * RetentionIntervalUnitValues
    RetentionIntervalUnitValues (..),

    -- * SettablePolicyStateValues
    SettablePolicyStateValues (..),

    -- * Action
    Action (..),
    newAction,
    action_name,
    action_crossRegionCopy,

    -- * CreateRule
    CreateRule (..),
    newCreateRule,
    createRule_interval,
    createRule_location,
    createRule_intervalUnit,
    createRule_times,
    createRule_cronExpression,

    -- * CrossRegionCopyAction
    CrossRegionCopyAction (..),
    newCrossRegionCopyAction,
    crossRegionCopyAction_retainRule,
    crossRegionCopyAction_target,
    crossRegionCopyAction_encryptionConfiguration,

    -- * CrossRegionCopyDeprecateRule
    CrossRegionCopyDeprecateRule (..),
    newCrossRegionCopyDeprecateRule,
    crossRegionCopyDeprecateRule_interval,
    crossRegionCopyDeprecateRule_intervalUnit,

    -- * CrossRegionCopyRetainRule
    CrossRegionCopyRetainRule (..),
    newCrossRegionCopyRetainRule,
    crossRegionCopyRetainRule_interval,
    crossRegionCopyRetainRule_intervalUnit,

    -- * CrossRegionCopyRule
    CrossRegionCopyRule (..),
    newCrossRegionCopyRule,
    crossRegionCopyRule_cmkArn,
    crossRegionCopyRule_copyTags,
    crossRegionCopyRule_retainRule,
    crossRegionCopyRule_target,
    crossRegionCopyRule_targetRegion,
    crossRegionCopyRule_deprecateRule,
    crossRegionCopyRule_encrypted,

    -- * DeprecateRule
    DeprecateRule (..),
    newDeprecateRule,
    deprecateRule_interval,
    deprecateRule_count,
    deprecateRule_intervalUnit,

    -- * EncryptionConfiguration
    EncryptionConfiguration (..),
    newEncryptionConfiguration,
    encryptionConfiguration_cmkArn,
    encryptionConfiguration_encrypted,

    -- * EventParameters
    EventParameters (..),
    newEventParameters,
    eventParameters_eventType,
    eventParameters_snapshotOwner,
    eventParameters_descriptionRegex,

    -- * EventSource
    EventSource (..),
    newEventSource,
    eventSource_parameters,
    eventSource_type,

    -- * FastRestoreRule
    FastRestoreRule (..),
    newFastRestoreRule,
    fastRestoreRule_interval,
    fastRestoreRule_count,
    fastRestoreRule_intervalUnit,
    fastRestoreRule_availabilityZones,

    -- * LifecyclePolicy
    LifecyclePolicy (..),
    newLifecyclePolicy,
    lifecyclePolicy_tags,
    lifecyclePolicy_policyId,
    lifecyclePolicy_policyDetails,
    lifecyclePolicy_state,
    lifecyclePolicy_description,
    lifecyclePolicy_policyArn,
    lifecyclePolicy_dateCreated,
    lifecyclePolicy_executionRoleArn,
    lifecyclePolicy_statusMessage,
    lifecyclePolicy_dateModified,

    -- * LifecyclePolicySummary
    LifecyclePolicySummary (..),
    newLifecyclePolicySummary,
    lifecyclePolicySummary_tags,
    lifecyclePolicySummary_policyId,
    lifecyclePolicySummary_policyType,
    lifecyclePolicySummary_state,
    lifecyclePolicySummary_description,

    -- * Parameters
    Parameters (..),
    newParameters,
    parameters_excludeDataVolumeTags,
    parameters_excludeBootVolume,
    parameters_noReboot,

    -- * PolicyDetails
    PolicyDetails (..),
    newPolicyDetails,
    policyDetails_policyType,
    policyDetails_targetTags,
    policyDetails_resourceLocations,
    policyDetails_schedules,
    policyDetails_resourceTypes,
    policyDetails_actions,
    policyDetails_eventSource,
    policyDetails_parameters,

    -- * RetainRule
    RetainRule (..),
    newRetainRule,
    retainRule_interval,
    retainRule_count,
    retainRule_intervalUnit,

    -- * Schedule
    Schedule (..),
    newSchedule,
    schedule_name,
    schedule_fastRestoreRule,
    schedule_variableTags,
    schedule_tagsToAdd,
    schedule_createRule,
    schedule_copyTags,
    schedule_retainRule,
    schedule_deprecateRule,
    schedule_crossRegionCopyRules,
    schedule_shareRules,

    -- * ShareRule
    ShareRule (..),
    newShareRule,
    shareRule_unshareInterval,
    shareRule_unshareIntervalUnit,
    shareRule_targetAccounts,

    -- * Tag
    Tag (..),
    newTag,
    tag_key,
    tag_value,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.DLM.Types.Action
import Amazonka.DLM.Types.CreateRule
import Amazonka.DLM.Types.CrossRegionCopyAction
import Amazonka.DLM.Types.CrossRegionCopyDeprecateRule
import Amazonka.DLM.Types.CrossRegionCopyRetainRule
import Amazonka.DLM.Types.CrossRegionCopyRule
import Amazonka.DLM.Types.DeprecateRule
import Amazonka.DLM.Types.EncryptionConfiguration
import Amazonka.DLM.Types.EventParameters
import Amazonka.DLM.Types.EventSource
import Amazonka.DLM.Types.EventSourceValues
import Amazonka.DLM.Types.EventTypeValues
import Amazonka.DLM.Types.FastRestoreRule
import Amazonka.DLM.Types.GettablePolicyStateValues
import Amazonka.DLM.Types.IntervalUnitValues
import Amazonka.DLM.Types.LifecyclePolicy
import Amazonka.DLM.Types.LifecyclePolicySummary
import Amazonka.DLM.Types.LocationValues
import Amazonka.DLM.Types.Parameters
import Amazonka.DLM.Types.PolicyDetails
import Amazonka.DLM.Types.PolicyTypeValues
import Amazonka.DLM.Types.ResourceLocationValues
import Amazonka.DLM.Types.ResourceTypeValues
import Amazonka.DLM.Types.RetainRule
import Amazonka.DLM.Types.RetentionIntervalUnitValues
import Amazonka.DLM.Types.Schedule
import Amazonka.DLM.Types.SettablePolicyStateValues
import Amazonka.DLM.Types.ShareRule
import Amazonka.DLM.Types.Tag
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2018-01-12@ of the Amazon Data Lifecycle Manager SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "DLM",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "dlm",
      Core._serviceSigningName = "dlm",
      Core._serviceVersion = "2018-01-12",
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError = Core.parseJSONError "DLM",
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

-- | The service failed in an unexpected way.
_InternalServerException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalServerException =
  Core._MatchServiceError
    defaultService
    "InternalServerException"
    Prelude.. Core.hasStatus 500

-- | A requested resource was not found.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"
    Prelude.. Core.hasStatus 404

-- | The request failed because a limit was exceeded.
_LimitExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_LimitExceededException =
  Core._MatchServiceError
    defaultService
    "LimitExceededException"
    Prelude.. Core.hasStatus 429

-- | Bad request. The request is missing required parameters or has invalid
-- parameters.
_InvalidRequestException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidRequestException =
  Core._MatchServiceError
    defaultService
    "InvalidRequestException"
    Prelude.. Core.hasStatus 400
