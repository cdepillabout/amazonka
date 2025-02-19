{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.SageMakerRuntime.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMakerRuntime.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _ModelError,
    _ServiceUnavailable,
    _ModelNotReadyException,
    _ValidationError,
    _InternalFailure,
    _InternalDependencyException,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2017-05-13@ of the Amazon SageMaker Runtime SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev =
        "SageMakerRuntime",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "runtime.sagemaker",
      Core._serviceSigningName = "sagemaker",
      Core._serviceVersion = "2017-05-13",
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError =
        Core.parseJSONError "SageMakerRuntime",
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

-- | Model (owned by the customer in the container) returned 4xx or 5xx error
-- code.
_ModelError :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ModelError =
  Core._MatchServiceError defaultService "ModelError"
    Prelude.. Core.hasStatus 424

-- | The service is unavailable. Try your call again.
_ServiceUnavailable :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ServiceUnavailable =
  Core._MatchServiceError
    defaultService
    "ServiceUnavailable"
    Prelude.. Core.hasStatus 503

-- | Either a serverless endpoint variant\'s resources are still being
-- provisioned, or a multi-model endpoint is still downloading or loading
-- the target model. Wait and try your request again.
_ModelNotReadyException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ModelNotReadyException =
  Core._MatchServiceError
    defaultService
    "ModelNotReadyException"
    Prelude.. Core.hasStatus 429

-- | Inspect your request and try again.
_ValidationError :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ValidationError =
  Core._MatchServiceError
    defaultService
    "ValidationError"
    Prelude.. Core.hasStatus 400

-- | An internal failure occurred.
_InternalFailure :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalFailure =
  Core._MatchServiceError
    defaultService
    "InternalFailure"
    Prelude.. Core.hasStatus 500

-- | Your request caused an exception with an internal dependency. Contact
-- customer support.
_InternalDependencyException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalDependencyException =
  Core._MatchServiceError
    defaultService
    "InternalDependencyException"
    Prelude.. Core.hasStatus 530
