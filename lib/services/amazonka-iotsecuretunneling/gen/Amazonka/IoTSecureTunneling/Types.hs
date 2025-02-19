{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.IoTSecureTunneling.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoTSecureTunneling.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _ResourceNotFoundException,
    _LimitExceededException,

    -- * ClientMode
    ClientMode (..),

    -- * ConnectionStatus
    ConnectionStatus (..),

    -- * TunnelStatus
    TunnelStatus (..),

    -- * ConnectionState
    ConnectionState (..),
    newConnectionState,
    connectionState_lastUpdatedAt,
    connectionState_status,

    -- * DestinationConfig
    DestinationConfig (..),
    newDestinationConfig,
    destinationConfig_thingName,
    destinationConfig_services,

    -- * Tag
    Tag (..),
    newTag,
    tag_key,
    tag_value,

    -- * TimeoutConfig
    TimeoutConfig (..),
    newTimeoutConfig,
    timeoutConfig_maxLifetimeTimeoutMinutes,

    -- * Tunnel
    Tunnel (..),
    newTunnel,
    tunnel_tags,
    tunnel_lastUpdatedAt,
    tunnel_destinationConnectionState,
    tunnel_status,
    tunnel_description,
    tunnel_destinationConfig,
    tunnel_tunnelId,
    tunnel_timeoutConfig,
    tunnel_tunnelArn,
    tunnel_createdAt,
    tunnel_sourceConnectionState,

    -- * TunnelSummary
    TunnelSummary (..),
    newTunnelSummary,
    tunnelSummary_lastUpdatedAt,
    tunnelSummary_status,
    tunnelSummary_description,
    tunnelSummary_tunnelId,
    tunnelSummary_tunnelArn,
    tunnelSummary_createdAt,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IoTSecureTunneling.Types.ClientMode
import Amazonka.IoTSecureTunneling.Types.ConnectionState
import Amazonka.IoTSecureTunneling.Types.ConnectionStatus
import Amazonka.IoTSecureTunneling.Types.DestinationConfig
import Amazonka.IoTSecureTunneling.Types.Tag
import Amazonka.IoTSecureTunneling.Types.TimeoutConfig
import Amazonka.IoTSecureTunneling.Types.Tunnel
import Amazonka.IoTSecureTunneling.Types.TunnelStatus
import Amazonka.IoTSecureTunneling.Types.TunnelSummary
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2018-10-05@ of the Amazon IoT Secure Tunneling SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev =
        "IoTSecureTunneling",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "api.tunneling.iot",
      Core._serviceSigningName = "IoTSecuredTunneling",
      Core._serviceVersion = "2018-10-05",
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError =
        Core.parseJSONError "IoTSecureTunneling",
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

-- | Thrown when an operation is attempted on a resource that does not exist.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"

-- | Thrown when a tunnel limit is exceeded.
_LimitExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_LimitExceededException =
  Core._MatchServiceError
    defaultService
    "LimitExceededException"
