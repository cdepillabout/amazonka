{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.SageMakerRuntime
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.SageMakerRuntime where

import Amazonka.SageMakerRuntime
import qualified Data.Proxy as Proxy
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.AWS.SageMakerRuntime.Internal
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestInvokeEndpointAsync $
--             newInvokeEndpointAsync
--
--         , requestInvokeEndpoint $
--             newInvokeEndpoint
--
--           ]

--     , testGroup "response"
--         [ responseInvokeEndpointAsync $
--             newInvokeEndpointAsyncResponse
--
--         , responseInvokeEndpoint $
--             newInvokeEndpointResponse
--
--           ]
--     ]

-- Requests

requestInvokeEndpointAsync :: InvokeEndpointAsync -> TestTree
requestInvokeEndpointAsync =
  req
    "InvokeEndpointAsync"
    "fixture/InvokeEndpointAsync.yaml"

-- Responses

responseInvokeEndpointAsync :: InvokeEndpointAsyncResponse -> TestTree
responseInvokeEndpointAsync =
  res
    "InvokeEndpointAsyncResponse"
    "fixture/InvokeEndpointAsyncResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy InvokeEndpointAsync)
