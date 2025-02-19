{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.Amazonka.Gen.StepFunctions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.Amazonka.Gen.StepFunctions where

import Amazonka.StepFunctions
import qualified Data.Proxy as Proxy
import Test.Amazonka.Fixture
import Test.Amazonka.Prelude
import Test.Amazonka.StepFunctions.Internal
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestCreateActivity $
--             newCreateActivity
--
--         , requestCreateStateMachine $
--             newCreateStateMachine
--
--         , requestDeleteActivity $
--             newDeleteActivity
--
--         , requestDeleteStateMachine $
--             newDeleteStateMachine
--
--         , requestDescribeActivity $
--             newDescribeActivity
--
--         , requestDescribeExecution $
--             newDescribeExecution
--
--         , requestDescribeStateMachine $
--             newDescribeStateMachine
--
--         , requestDescribeStateMachineForExecution $
--             newDescribeStateMachineForExecution
--
--         , requestGetActivityTask $
--             newGetActivityTask
--
--         , requestGetExecutionHistory $
--             newGetExecutionHistory
--
--         , requestListActivities $
--             newListActivities
--
--         , requestListExecutions $
--             newListExecutions
--
--         , requestListStateMachines $
--             newListStateMachines
--
--         , requestListTagsForResource $
--             newListTagsForResource
--
--         , requestSendTaskFailure $
--             newSendTaskFailure
--
--         , requestSendTaskHeartbeat $
--             newSendTaskHeartbeat
--
--         , requestSendTaskSuccess $
--             newSendTaskSuccess
--
--         , requestStartExecution $
--             newStartExecution
--
--         , requestStartSyncExecution $
--             newStartSyncExecution
--
--         , requestStopExecution $
--             newStopExecution
--
--         , requestTagResource $
--             newTagResource
--
--         , requestUntagResource $
--             newUntagResource
--
--         , requestUpdateStateMachine $
--             newUpdateStateMachine
--
--           ]

--     , testGroup "response"
--         [ responseCreateActivity $
--             newCreateActivityResponse
--
--         , responseCreateStateMachine $
--             newCreateStateMachineResponse
--
--         , responseDeleteActivity $
--             newDeleteActivityResponse
--
--         , responseDeleteStateMachine $
--             newDeleteStateMachineResponse
--
--         , responseDescribeActivity $
--             newDescribeActivityResponse
--
--         , responseDescribeExecution $
--             newDescribeExecutionResponse
--
--         , responseDescribeStateMachine $
--             newDescribeStateMachineResponse
--
--         , responseDescribeStateMachineForExecution $
--             newDescribeStateMachineForExecutionResponse
--
--         , responseGetActivityTask $
--             newGetActivityTaskResponse
--
--         , responseGetExecutionHistory $
--             newGetExecutionHistoryResponse
--
--         , responseListActivities $
--             newListActivitiesResponse
--
--         , responseListExecutions $
--             newListExecutionsResponse
--
--         , responseListStateMachines $
--             newListStateMachinesResponse
--
--         , responseListTagsForResource $
--             newListTagsForResourceResponse
--
--         , responseSendTaskFailure $
--             newSendTaskFailureResponse
--
--         , responseSendTaskHeartbeat $
--             newSendTaskHeartbeatResponse
--
--         , responseSendTaskSuccess $
--             newSendTaskSuccessResponse
--
--         , responseStartExecution $
--             newStartExecutionResponse
--
--         , responseStartSyncExecution $
--             newStartSyncExecutionResponse
--
--         , responseStopExecution $
--             newStopExecutionResponse
--
--         , responseTagResource $
--             newTagResourceResponse
--
--         , responseUntagResource $
--             newUntagResourceResponse
--
--         , responseUpdateStateMachine $
--             newUpdateStateMachineResponse
--
--           ]
--     ]

-- Requests

requestCreateActivity :: CreateActivity -> TestTree
requestCreateActivity =
  req
    "CreateActivity"
    "fixture/CreateActivity.yaml"

requestCreateStateMachine :: CreateStateMachine -> TestTree
requestCreateStateMachine =
  req
    "CreateStateMachine"
    "fixture/CreateStateMachine.yaml"

requestDeleteActivity :: DeleteActivity -> TestTree
requestDeleteActivity =
  req
    "DeleteActivity"
    "fixture/DeleteActivity.yaml"

requestDeleteStateMachine :: DeleteStateMachine -> TestTree
requestDeleteStateMachine =
  req
    "DeleteStateMachine"
    "fixture/DeleteStateMachine.yaml"

requestDescribeActivity :: DescribeActivity -> TestTree
requestDescribeActivity =
  req
    "DescribeActivity"
    "fixture/DescribeActivity.yaml"

requestDescribeExecution :: DescribeExecution -> TestTree
requestDescribeExecution =
  req
    "DescribeExecution"
    "fixture/DescribeExecution.yaml"

requestDescribeStateMachine :: DescribeStateMachine -> TestTree
requestDescribeStateMachine =
  req
    "DescribeStateMachine"
    "fixture/DescribeStateMachine.yaml"

requestDescribeStateMachineForExecution :: DescribeStateMachineForExecution -> TestTree
requestDescribeStateMachineForExecution =
  req
    "DescribeStateMachineForExecution"
    "fixture/DescribeStateMachineForExecution.yaml"

requestGetActivityTask :: GetActivityTask -> TestTree
requestGetActivityTask =
  req
    "GetActivityTask"
    "fixture/GetActivityTask.yaml"

requestGetExecutionHistory :: GetExecutionHistory -> TestTree
requestGetExecutionHistory =
  req
    "GetExecutionHistory"
    "fixture/GetExecutionHistory.yaml"

requestListActivities :: ListActivities -> TestTree
requestListActivities =
  req
    "ListActivities"
    "fixture/ListActivities.yaml"

requestListExecutions :: ListExecutions -> TestTree
requestListExecutions =
  req
    "ListExecutions"
    "fixture/ListExecutions.yaml"

requestListStateMachines :: ListStateMachines -> TestTree
requestListStateMachines =
  req
    "ListStateMachines"
    "fixture/ListStateMachines.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestSendTaskFailure :: SendTaskFailure -> TestTree
requestSendTaskFailure =
  req
    "SendTaskFailure"
    "fixture/SendTaskFailure.yaml"

requestSendTaskHeartbeat :: SendTaskHeartbeat -> TestTree
requestSendTaskHeartbeat =
  req
    "SendTaskHeartbeat"
    "fixture/SendTaskHeartbeat.yaml"

requestSendTaskSuccess :: SendTaskSuccess -> TestTree
requestSendTaskSuccess =
  req
    "SendTaskSuccess"
    "fixture/SendTaskSuccess.yaml"

requestStartExecution :: StartExecution -> TestTree
requestStartExecution =
  req
    "StartExecution"
    "fixture/StartExecution.yaml"

requestStartSyncExecution :: StartSyncExecution -> TestTree
requestStartSyncExecution =
  req
    "StartSyncExecution"
    "fixture/StartSyncExecution.yaml"

requestStopExecution :: StopExecution -> TestTree
requestStopExecution =
  req
    "StopExecution"
    "fixture/StopExecution.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestUpdateStateMachine :: UpdateStateMachine -> TestTree
requestUpdateStateMachine =
  req
    "UpdateStateMachine"
    "fixture/UpdateStateMachine.yaml"

-- Responses

responseCreateActivity :: CreateActivityResponse -> TestTree
responseCreateActivity =
  res
    "CreateActivityResponse"
    "fixture/CreateActivityResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy CreateActivity)

responseCreateStateMachine :: CreateStateMachineResponse -> TestTree
responseCreateStateMachine =
  res
    "CreateStateMachineResponse"
    "fixture/CreateStateMachineResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy CreateStateMachine)

responseDeleteActivity :: DeleteActivityResponse -> TestTree
responseDeleteActivity =
  res
    "DeleteActivityResponse"
    "fixture/DeleteActivityResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy DeleteActivity)

responseDeleteStateMachine :: DeleteStateMachineResponse -> TestTree
responseDeleteStateMachine =
  res
    "DeleteStateMachineResponse"
    "fixture/DeleteStateMachineResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy DeleteStateMachine)

responseDescribeActivity :: DescribeActivityResponse -> TestTree
responseDescribeActivity =
  res
    "DescribeActivityResponse"
    "fixture/DescribeActivityResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy DescribeActivity)

responseDescribeExecution :: DescribeExecutionResponse -> TestTree
responseDescribeExecution =
  res
    "DescribeExecutionResponse"
    "fixture/DescribeExecutionResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy DescribeExecution)

responseDescribeStateMachine :: DescribeStateMachineResponse -> TestTree
responseDescribeStateMachine =
  res
    "DescribeStateMachineResponse"
    "fixture/DescribeStateMachineResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy DescribeStateMachine)

responseDescribeStateMachineForExecution :: DescribeStateMachineForExecutionResponse -> TestTree
responseDescribeStateMachineForExecution =
  res
    "DescribeStateMachineForExecutionResponse"
    "fixture/DescribeStateMachineForExecutionResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy DescribeStateMachineForExecution)

responseGetActivityTask :: GetActivityTaskResponse -> TestTree
responseGetActivityTask =
  res
    "GetActivityTaskResponse"
    "fixture/GetActivityTaskResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy GetActivityTask)

responseGetExecutionHistory :: GetExecutionHistoryResponse -> TestTree
responseGetExecutionHistory =
  res
    "GetExecutionHistoryResponse"
    "fixture/GetExecutionHistoryResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy GetExecutionHistory)

responseListActivities :: ListActivitiesResponse -> TestTree
responseListActivities =
  res
    "ListActivitiesResponse"
    "fixture/ListActivitiesResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy ListActivities)

responseListExecutions :: ListExecutionsResponse -> TestTree
responseListExecutions =
  res
    "ListExecutionsResponse"
    "fixture/ListExecutionsResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy ListExecutions)

responseListStateMachines :: ListStateMachinesResponse -> TestTree
responseListStateMachines =
  res
    "ListStateMachinesResponse"
    "fixture/ListStateMachinesResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy ListStateMachines)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy ListTagsForResource)

responseSendTaskFailure :: SendTaskFailureResponse -> TestTree
responseSendTaskFailure =
  res
    "SendTaskFailureResponse"
    "fixture/SendTaskFailureResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy SendTaskFailure)

responseSendTaskHeartbeat :: SendTaskHeartbeatResponse -> TestTree
responseSendTaskHeartbeat =
  res
    "SendTaskHeartbeatResponse"
    "fixture/SendTaskHeartbeatResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy SendTaskHeartbeat)

responseSendTaskSuccess :: SendTaskSuccessResponse -> TestTree
responseSendTaskSuccess =
  res
    "SendTaskSuccessResponse"
    "fixture/SendTaskSuccessResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy SendTaskSuccess)

responseStartExecution :: StartExecutionResponse -> TestTree
responseStartExecution =
  res
    "StartExecutionResponse"
    "fixture/StartExecutionResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy StartExecution)

responseStartSyncExecution :: StartSyncExecutionResponse -> TestTree
responseStartSyncExecution =
  res
    "StartSyncExecutionResponse"
    "fixture/StartSyncExecutionResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy StartSyncExecution)

responseStopExecution :: StopExecutionResponse -> TestTree
responseStopExecution =
  res
    "StopExecutionResponse"
    "fixture/StopExecutionResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy StopExecution)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy TagResource)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy UntagResource)

responseUpdateStateMachine :: UpdateStateMachineResponse -> TestTree
responseUpdateStateMachine =
  res
    "UpdateStateMachineResponse"
    "fixture/UpdateStateMachineResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy UpdateStateMachine)
