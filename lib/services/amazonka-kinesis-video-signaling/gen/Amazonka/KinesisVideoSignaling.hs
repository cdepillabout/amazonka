{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Amazonka.KinesisVideoSignaling
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Derived from API version @2019-12-04@ of the AWS service descriptions, licensed under Apache 2.0.
--
-- Kinesis Video Streams Signaling Service is a intermediate service that
-- establishes a communication channel for discovering peers, transmitting
-- offers and answers in order to establish peer-to-peer connection in
-- webRTC technology.
module Amazonka.KinesisVideoSignaling
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    -- $errors

    -- ** InvalidArgumentException
    _InvalidArgumentException,

    -- ** ClientLimitExceededException
    _ClientLimitExceededException,

    -- ** InvalidClientException
    _InvalidClientException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** SessionExpiredException
    _SessionExpiredException,

    -- ** NotAuthorizedException
    _NotAuthorizedException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** GetIceServerConfig
    GetIceServerConfig (GetIceServerConfig'),
    newGetIceServerConfig,
    GetIceServerConfigResponse (GetIceServerConfigResponse'),
    newGetIceServerConfigResponse,

    -- ** SendAlexaOfferToMaster
    SendAlexaOfferToMaster (SendAlexaOfferToMaster'),
    newSendAlexaOfferToMaster,
    SendAlexaOfferToMasterResponse (SendAlexaOfferToMasterResponse'),
    newSendAlexaOfferToMasterResponse,

    -- * Types

    -- ** Service
    Service (..),

    -- ** IceServer
    IceServer (IceServer'),
    newIceServer,
  )
where

import Amazonka.KinesisVideoSignaling.GetIceServerConfig
import Amazonka.KinesisVideoSignaling.Lens
import Amazonka.KinesisVideoSignaling.SendAlexaOfferToMaster
import Amazonka.KinesisVideoSignaling.Types
import Amazonka.KinesisVideoSignaling.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'KinesisVideoSignaling'.

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
