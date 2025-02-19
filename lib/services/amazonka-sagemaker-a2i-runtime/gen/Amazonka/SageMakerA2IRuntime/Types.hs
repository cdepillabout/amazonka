{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.SageMakerA2IRuntime.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMakerA2IRuntime.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _InternalServerException,
    _ServiceQuotaExceededException,
    _ResourceNotFoundException,
    _ConflictException,
    _ThrottlingException,
    _ValidationException,

    -- * ContentClassifier
    ContentClassifier (..),

    -- * HumanLoopStatus
    HumanLoopStatus (..),

    -- * SortOrder
    SortOrder (..),

    -- * HumanLoopDataAttributes
    HumanLoopDataAttributes (..),
    newHumanLoopDataAttributes,
    humanLoopDataAttributes_contentClassifiers,

    -- * HumanLoopInput
    HumanLoopInput (..),
    newHumanLoopInput,
    humanLoopInput_inputContent,

    -- * HumanLoopOutput
    HumanLoopOutput (..),
    newHumanLoopOutput,
    humanLoopOutput_outputS3Uri,

    -- * HumanLoopSummary
    HumanLoopSummary (..),
    newHumanLoopSummary,
    humanLoopSummary_humanLoopStatus,
    humanLoopSummary_humanLoopName,
    humanLoopSummary_flowDefinitionArn,
    humanLoopSummary_creationTime,
    humanLoopSummary_failureReason,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SageMakerA2IRuntime.Types.ContentClassifier
import Amazonka.SageMakerA2IRuntime.Types.HumanLoopDataAttributes
import Amazonka.SageMakerA2IRuntime.Types.HumanLoopInput
import Amazonka.SageMakerA2IRuntime.Types.HumanLoopOutput
import Amazonka.SageMakerA2IRuntime.Types.HumanLoopStatus
import Amazonka.SageMakerA2IRuntime.Types.HumanLoopSummary
import Amazonka.SageMakerA2IRuntime.Types.SortOrder
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2019-11-07@ of the Amazon Augmented AI Runtime SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev =
        "SageMakerA2IRuntime",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix =
        "a2i-runtime.sagemaker",
      Core._serviceSigningName = "sagemaker",
      Core._serviceVersion = "2019-11-07",
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError =
        Core.parseJSONError "SageMakerA2IRuntime",
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

-- | We couldn\'t process your request because of an issue with the server.
-- Try again later.
_InternalServerException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalServerException =
  Core._MatchServiceError
    defaultService
    "InternalServerException"
    Prelude.. Core.hasStatus 500

-- | You exceeded your service quota. Service quotas, also referred to as
-- limits, are the maximum number of service resources or operations for
-- your AWS account. For a list of Amazon A2I service quotes, see
-- <https://docs.aws.amazon.com/general/latest/gr/a2i.html Amazon Augmented AI Service Quotes>.
-- Delete some resources or request an increase in your service quota. You
-- can request a quota increase using Service Quotas or the AWS Support
-- Center. To request an increase, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html AWS Service Quotas>
-- in the /AWS General Reference/.
_ServiceQuotaExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ServiceQuotaExceededException =
  Core._MatchServiceError
    defaultService
    "ServiceQuotaExceededException"
    Prelude.. Core.hasStatus 402

-- | We couldn\'t find the requested resource. Check that your resources
-- exists and were created in the same AWS Region as your request, and try
-- your request again.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"
    Prelude.. Core.hasStatus 404

-- | Your request has the same name as another active human loop but has
-- different input data. You cannot start two human loops with the same
-- name and different input data.
_ConflictException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ConflictException =
  Core._MatchServiceError
    defaultService
    "ConflictException"
    Prelude.. Core.hasStatus 409

-- | You exceeded the maximum number of requests.
_ThrottlingException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ThrottlingException =
  Core._MatchServiceError
    defaultService
    "ThrottlingException"
    Prelude.. Core.hasStatus 429

-- | The request isn\'t valid. Check the syntax and try again.
_ValidationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ValidationException =
  Core._MatchServiceError
    defaultService
    "ValidationException"
    Prelude.. Core.hasStatus 400
