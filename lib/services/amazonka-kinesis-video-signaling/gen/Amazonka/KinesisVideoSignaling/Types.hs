{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.KinesisVideoSignaling.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.KinesisVideoSignaling.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _InvalidArgumentException,
    _ClientLimitExceededException,
    _InvalidClientException,
    _ResourceNotFoundException,
    _SessionExpiredException,
    _NotAuthorizedException,

    -- * Service
    Service (..),

    -- * IceServer
    IceServer (..),
    newIceServer,
    iceServer_password,
    iceServer_ttl,
    iceServer_username,
    iceServer_uris,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.KinesisVideoSignaling.Types.IceServer
import Amazonka.KinesisVideoSignaling.Types.Service
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2019-12-04@ of the Amazon Kinesis Video Signaling Channels SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev =
        "KinesisVideoSignaling",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "kinesisvideo",
      Core._serviceSigningName = "kinesisvideo",
      Core._serviceVersion = "2019-12-04",
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError =
        Core.parseJSONError "KinesisVideoSignaling",
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

-- | The value for this input parameter is invalid.
_InvalidArgumentException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidArgumentException =
  Core._MatchServiceError
    defaultService
    "InvalidArgumentException"
    Prelude.. Core.hasStatus 400

-- | Your request was throttled because you have exceeded the limit of
-- allowed client calls. Try making the call later.
_ClientLimitExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ClientLimitExceededException =
  Core._MatchServiceError
    defaultService
    "ClientLimitExceededException"
    Prelude.. Core.hasStatus 400

-- | The specified client is invalid.
_InvalidClientException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidClientException =
  Core._MatchServiceError
    defaultService
    "InvalidClientException"
    Prelude.. Core.hasStatus 400

-- | The specified resource is not found.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"
    Prelude.. Core.hasStatus 404

-- | If the client session is expired. Once the client is connected, the
-- session is valid for 45 minutes. Client should reconnect to the channel
-- to continue sending\/receiving messages.
_SessionExpiredException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_SessionExpiredException =
  Core._MatchServiceError
    defaultService
    "SessionExpiredException"
    Prelude.. Core.hasStatus 400

-- | The caller is not authorized to perform this operation.
_NotAuthorizedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NotAuthorizedException =
  Core._MatchServiceError
    defaultService
    "NotAuthorizedException"
    Prelude.. Core.hasStatus 401
