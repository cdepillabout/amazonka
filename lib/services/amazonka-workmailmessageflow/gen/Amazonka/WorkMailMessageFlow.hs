{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Amazonka.WorkMailMessageFlow
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Derived from API version @2019-05-01@ of the AWS service descriptions, licensed under Apache 2.0.
--
-- The WorkMail Message Flow API provides access to email messages as they
-- are being sent and received by a WorkMail organization.
module Amazonka.WorkMailMessageFlow
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    -- $errors

    -- ** InvalidContentLocation
    _InvalidContentLocation,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** MessageFrozen
    _MessageFrozen,

    -- ** MessageRejected
    _MessageRejected,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** GetRawMessageContent
    GetRawMessageContent (GetRawMessageContent'),
    newGetRawMessageContent,
    GetRawMessageContentResponse (GetRawMessageContentResponse'),
    newGetRawMessageContentResponse,

    -- ** PutRawMessageContent
    PutRawMessageContent (PutRawMessageContent'),
    newPutRawMessageContent,
    PutRawMessageContentResponse (PutRawMessageContentResponse'),
    newPutRawMessageContentResponse,

    -- * Types

    -- ** RawMessageContent
    RawMessageContent (RawMessageContent'),
    newRawMessageContent,

    -- ** S3Reference
    S3Reference (S3Reference'),
    newS3Reference,
  )
where

import Amazonka.WorkMailMessageFlow.GetRawMessageContent
import Amazonka.WorkMailMessageFlow.Lens
import Amazonka.WorkMailMessageFlow.PutRawMessageContent
import Amazonka.WorkMailMessageFlow.Types
import Amazonka.WorkMailMessageFlow.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'WorkMailMessageFlow'.

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
