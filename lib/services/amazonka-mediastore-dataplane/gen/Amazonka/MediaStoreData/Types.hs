{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.MediaStoreData.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaStoreData.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _ObjectNotFoundException,
    _RequestedRangeNotSatisfiableException,
    _InternalServerError,
    _ContainerNotFoundException,

    -- * ItemType
    ItemType (..),

    -- * StorageClass
    StorageClass (..),

    -- * UploadAvailability
    UploadAvailability (..),

    -- * Item
    Item (..),
    newItem,
    item_name,
    item_type,
    item_contentLength,
    item_lastModified,
    item_eTag,
    item_contentType,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaStoreData.Types.Item
import Amazonka.MediaStoreData.Types.ItemType
import Amazonka.MediaStoreData.Types.StorageClass
import Amazonka.MediaStoreData.Types.UploadAvailability
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2017-09-01@ of the Amazon Elemental MediaStore Data Plane SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev =
        "MediaStoreData",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "data.mediastore",
      Core._serviceSigningName = "mediastore",
      Core._serviceVersion = "2017-09-01",
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError =
        Core.parseJSONError "MediaStoreData",
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

-- | Could not perform an operation on an object that does not exist.
_ObjectNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ObjectNotFoundException =
  Core._MatchServiceError
    defaultService
    "ObjectNotFoundException"
    Prelude.. Core.hasStatus 404

-- | The requested content range is not valid.
_RequestedRangeNotSatisfiableException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_RequestedRangeNotSatisfiableException =
  Core._MatchServiceError
    defaultService
    "RequestedRangeNotSatisfiableException"
    Prelude.. Core.hasStatus 416

-- | The service is temporarily unavailable.
_InternalServerError :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalServerError =
  Core._MatchServiceError
    defaultService
    "InternalServerError"

-- | The specified container was not found for the specified account.
_ContainerNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ContainerNotFoundException =
  Core._MatchServiceError
    defaultService
    "ContainerNotFoundException"
    Prelude.. Core.hasStatus 404
