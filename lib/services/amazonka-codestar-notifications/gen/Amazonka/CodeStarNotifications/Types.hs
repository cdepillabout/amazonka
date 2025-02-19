{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.CodeStarNotifications.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CodeStarNotifications.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _ResourceAlreadyExistsException,
    _ConfigurationException,
    _ConcurrentModificationException,
    _AccessDeniedException,
    _ResourceNotFoundException,
    _LimitExceededException,
    _InvalidNextTokenException,
    _ValidationException,

    -- * DetailType
    DetailType (..),

    -- * ListEventTypesFilterName
    ListEventTypesFilterName (..),

    -- * ListNotificationRulesFilterName
    ListNotificationRulesFilterName (..),

    -- * ListTargetsFilterName
    ListTargetsFilterName (..),

    -- * NotificationRuleStatus
    NotificationRuleStatus (..),

    -- * TargetStatus
    TargetStatus (..),

    -- * EventTypeSummary
    EventTypeSummary (..),
    newEventTypeSummary,
    eventTypeSummary_resourceType,
    eventTypeSummary_eventTypeName,
    eventTypeSummary_eventTypeId,
    eventTypeSummary_serviceName,

    -- * ListEventTypesFilter
    ListEventTypesFilter (..),
    newListEventTypesFilter,
    listEventTypesFilter_name,
    listEventTypesFilter_value,

    -- * ListNotificationRulesFilter
    ListNotificationRulesFilter (..),
    newListNotificationRulesFilter,
    listNotificationRulesFilter_name,
    listNotificationRulesFilter_value,

    -- * ListTargetsFilter
    ListTargetsFilter (..),
    newListTargetsFilter,
    listTargetsFilter_name,
    listTargetsFilter_value,

    -- * NotificationRuleSummary
    NotificationRuleSummary (..),
    newNotificationRuleSummary,
    notificationRuleSummary_arn,
    notificationRuleSummary_id,

    -- * Target
    Target (..),
    newTarget,
    target_targetAddress,
    target_targetType,

    -- * TargetSummary
    TargetSummary (..),
    newTargetSummary,
    targetSummary_targetAddress,
    targetSummary_targetType,
    targetSummary_targetStatus,
  )
where

import Amazonka.CodeStarNotifications.Types.DetailType
import Amazonka.CodeStarNotifications.Types.EventTypeSummary
import Amazonka.CodeStarNotifications.Types.ListEventTypesFilter
import Amazonka.CodeStarNotifications.Types.ListEventTypesFilterName
import Amazonka.CodeStarNotifications.Types.ListNotificationRulesFilter
import Amazonka.CodeStarNotifications.Types.ListNotificationRulesFilterName
import Amazonka.CodeStarNotifications.Types.ListTargetsFilter
import Amazonka.CodeStarNotifications.Types.ListTargetsFilterName
import Amazonka.CodeStarNotifications.Types.NotificationRuleStatus
import Amazonka.CodeStarNotifications.Types.NotificationRuleSummary
import Amazonka.CodeStarNotifications.Types.Target
import Amazonka.CodeStarNotifications.Types.TargetStatus
import Amazonka.CodeStarNotifications.Types.TargetSummary
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2019-10-15@ of the Amazon CodeStar Notifications SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev =
        "CodeStarNotifications",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix =
        "codestar-notifications",
      Core._serviceSigningName = "codestar-notifications",
      Core._serviceVersion = "2019-10-15",
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError =
        Core.parseJSONError "CodeStarNotifications",
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

-- | A resource with the same name or ID already exists. Notification rule
-- names must be unique in your AWS account.
_ResourceAlreadyExistsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceAlreadyExistsException =
  Core._MatchServiceError
    defaultService
    "ResourceAlreadyExistsException"
    Prelude.. Core.hasStatus 409

-- | Some or all of the configuration is incomplete, missing, or not valid.
_ConfigurationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ConfigurationException =
  Core._MatchServiceError
    defaultService
    "ConfigurationException"
    Prelude.. Core.hasStatus 400

-- | AWS CodeStar Notifications can\'t complete the request because the
-- resource is being modified by another process. Wait a few minutes and
-- try again.
_ConcurrentModificationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ConcurrentModificationException =
  Core._MatchServiceError
    defaultService
    "ConcurrentModificationException"
    Prelude.. Core.hasStatus 400

-- | AWS CodeStar Notifications can\'t create the notification rule because
-- you do not have sufficient permissions.
_AccessDeniedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_AccessDeniedException =
  Core._MatchServiceError
    defaultService
    "AccessDeniedException"
    Prelude.. Core.hasStatus 403

-- | AWS CodeStar Notifications can\'t find a resource that matches the
-- provided ARN.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"
    Prelude.. Core.hasStatus 404

-- | One of the AWS CodeStar Notifications limits has been exceeded. Limits
-- apply to accounts, notification rules, notifications, resources, and
-- targets. For more information, see Limits.
_LimitExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_LimitExceededException =
  Core._MatchServiceError
    defaultService
    "LimitExceededException"
    Prelude.. Core.hasStatus 400

-- | The value for the enumeration token used in the request to return the
-- next batch of the results is not valid.
_InvalidNextTokenException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidNextTokenException =
  Core._MatchServiceError
    defaultService
    "InvalidNextTokenException"
    Prelude.. Core.hasStatus 400

-- | One or more parameter values are not valid.
_ValidationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ValidationException =
  Core._MatchServiceError
    defaultService
    "ValidationException"
    Prelude.. Core.hasStatus 400
