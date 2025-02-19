{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.Amazonka.Gen.GroundStation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.Amazonka.Gen.GroundStation where

import Amazonka.GroundStation
import qualified Data.Proxy as Proxy
import Test.Amazonka.Fixture
import Test.Amazonka.GroundStation.Internal
import Test.Amazonka.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestCancelContact $
--             newCancelContact
--
--         , requestCreateConfig $
--             newCreateConfig
--
--         , requestCreateDataflowEndpointGroup $
--             newCreateDataflowEndpointGroup
--
--         , requestCreateMissionProfile $
--             newCreateMissionProfile
--
--         , requestDeleteConfig $
--             newDeleteConfig
--
--         , requestDeleteDataflowEndpointGroup $
--             newDeleteDataflowEndpointGroup
--
--         , requestDeleteMissionProfile $
--             newDeleteMissionProfile
--
--         , requestDescribeContact $
--             newDescribeContact
--
--         , requestGetConfig $
--             newGetConfig
--
--         , requestGetDataflowEndpointGroup $
--             newGetDataflowEndpointGroup
--
--         , requestGetMinuteUsage $
--             newGetMinuteUsage
--
--         , requestGetMissionProfile $
--             newGetMissionProfile
--
--         , requestGetSatellite $
--             newGetSatellite
--
--         , requestListConfigs $
--             newListConfigs
--
--         , requestListContacts $
--             newListContacts
--
--         , requestListDataflowEndpointGroups $
--             newListDataflowEndpointGroups
--
--         , requestListGroundStations $
--             newListGroundStations
--
--         , requestListMissionProfiles $
--             newListMissionProfiles
--
--         , requestListSatellites $
--             newListSatellites
--
--         , requestListTagsForResource $
--             newListTagsForResource
--
--         , requestReserveContact $
--             newReserveContact
--
--         , requestTagResource $
--             newTagResource
--
--         , requestUntagResource $
--             newUntagResource
--
--         , requestUpdateConfig $
--             newUpdateConfig
--
--         , requestUpdateMissionProfile $
--             newUpdateMissionProfile
--
--           ]

--     , testGroup "response"
--         [ responseCancelContact $
--             newContactIdResponse
--
--         , responseCreateConfig $
--             newConfigIdResponse
--
--         , responseCreateDataflowEndpointGroup $
--             newDataflowEndpointGroupIdResponse
--
--         , responseCreateMissionProfile $
--             newMissionProfileIdResponse
--
--         , responseDeleteConfig $
--             newConfigIdResponse
--
--         , responseDeleteDataflowEndpointGroup $
--             newDataflowEndpointGroupIdResponse
--
--         , responseDeleteMissionProfile $
--             newMissionProfileIdResponse
--
--         , responseDescribeContact $
--             newDescribeContactResponse
--
--         , responseGetConfig $
--             newGetConfigResponse
--
--         , responseGetDataflowEndpointGroup $
--             newGetDataflowEndpointGroupResponse
--
--         , responseGetMinuteUsage $
--             newGetMinuteUsageResponse
--
--         , responseGetMissionProfile $
--             newGetMissionProfileResponse
--
--         , responseGetSatellite $
--             newGetSatelliteResponse
--
--         , responseListConfigs $
--             newListConfigsResponse
--
--         , responseListContacts $
--             newListContactsResponse
--
--         , responseListDataflowEndpointGroups $
--             newListDataflowEndpointGroupsResponse
--
--         , responseListGroundStations $
--             newListGroundStationsResponse
--
--         , responseListMissionProfiles $
--             newListMissionProfilesResponse
--
--         , responseListSatellites $
--             newListSatellitesResponse
--
--         , responseListTagsForResource $
--             newListTagsForResourceResponse
--
--         , responseReserveContact $
--             newContactIdResponse
--
--         , responseTagResource $
--             newTagResourceResponse
--
--         , responseUntagResource $
--             newUntagResourceResponse
--
--         , responseUpdateConfig $
--             newConfigIdResponse
--
--         , responseUpdateMissionProfile $
--             newMissionProfileIdResponse
--
--           ]
--     ]

-- Requests

requestCancelContact :: CancelContact -> TestTree
requestCancelContact =
  req
    "CancelContact"
    "fixture/CancelContact.yaml"

requestCreateConfig :: CreateConfig -> TestTree
requestCreateConfig =
  req
    "CreateConfig"
    "fixture/CreateConfig.yaml"

requestCreateDataflowEndpointGroup :: CreateDataflowEndpointGroup -> TestTree
requestCreateDataflowEndpointGroup =
  req
    "CreateDataflowEndpointGroup"
    "fixture/CreateDataflowEndpointGroup.yaml"

requestCreateMissionProfile :: CreateMissionProfile -> TestTree
requestCreateMissionProfile =
  req
    "CreateMissionProfile"
    "fixture/CreateMissionProfile.yaml"

requestDeleteConfig :: DeleteConfig -> TestTree
requestDeleteConfig =
  req
    "DeleteConfig"
    "fixture/DeleteConfig.yaml"

requestDeleteDataflowEndpointGroup :: DeleteDataflowEndpointGroup -> TestTree
requestDeleteDataflowEndpointGroup =
  req
    "DeleteDataflowEndpointGroup"
    "fixture/DeleteDataflowEndpointGroup.yaml"

requestDeleteMissionProfile :: DeleteMissionProfile -> TestTree
requestDeleteMissionProfile =
  req
    "DeleteMissionProfile"
    "fixture/DeleteMissionProfile.yaml"

requestDescribeContact :: DescribeContact -> TestTree
requestDescribeContact =
  req
    "DescribeContact"
    "fixture/DescribeContact.yaml"

requestGetConfig :: GetConfig -> TestTree
requestGetConfig =
  req
    "GetConfig"
    "fixture/GetConfig.yaml"

requestGetDataflowEndpointGroup :: GetDataflowEndpointGroup -> TestTree
requestGetDataflowEndpointGroup =
  req
    "GetDataflowEndpointGroup"
    "fixture/GetDataflowEndpointGroup.yaml"

requestGetMinuteUsage :: GetMinuteUsage -> TestTree
requestGetMinuteUsage =
  req
    "GetMinuteUsage"
    "fixture/GetMinuteUsage.yaml"

requestGetMissionProfile :: GetMissionProfile -> TestTree
requestGetMissionProfile =
  req
    "GetMissionProfile"
    "fixture/GetMissionProfile.yaml"

requestGetSatellite :: GetSatellite -> TestTree
requestGetSatellite =
  req
    "GetSatellite"
    "fixture/GetSatellite.yaml"

requestListConfigs :: ListConfigs -> TestTree
requestListConfigs =
  req
    "ListConfigs"
    "fixture/ListConfigs.yaml"

requestListContacts :: ListContacts -> TestTree
requestListContacts =
  req
    "ListContacts"
    "fixture/ListContacts.yaml"

requestListDataflowEndpointGroups :: ListDataflowEndpointGroups -> TestTree
requestListDataflowEndpointGroups =
  req
    "ListDataflowEndpointGroups"
    "fixture/ListDataflowEndpointGroups.yaml"

requestListGroundStations :: ListGroundStations -> TestTree
requestListGroundStations =
  req
    "ListGroundStations"
    "fixture/ListGroundStations.yaml"

requestListMissionProfiles :: ListMissionProfiles -> TestTree
requestListMissionProfiles =
  req
    "ListMissionProfiles"
    "fixture/ListMissionProfiles.yaml"

requestListSatellites :: ListSatellites -> TestTree
requestListSatellites =
  req
    "ListSatellites"
    "fixture/ListSatellites.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestReserveContact :: ReserveContact -> TestTree
requestReserveContact =
  req
    "ReserveContact"
    "fixture/ReserveContact.yaml"

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

requestUpdateConfig :: UpdateConfig -> TestTree
requestUpdateConfig =
  req
    "UpdateConfig"
    "fixture/UpdateConfig.yaml"

requestUpdateMissionProfile :: UpdateMissionProfile -> TestTree
requestUpdateMissionProfile =
  req
    "UpdateMissionProfile"
    "fixture/UpdateMissionProfile.yaml"

-- Responses

responseCancelContact :: ContactIdResponse -> TestTree
responseCancelContact =
  res
    "CancelContactResponse"
    "fixture/CancelContactResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy CancelContact)

responseCreateConfig :: ConfigIdResponse -> TestTree
responseCreateConfig =
  res
    "CreateConfigResponse"
    "fixture/CreateConfigResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy CreateConfig)

responseCreateDataflowEndpointGroup :: DataflowEndpointGroupIdResponse -> TestTree
responseCreateDataflowEndpointGroup =
  res
    "CreateDataflowEndpointGroupResponse"
    "fixture/CreateDataflowEndpointGroupResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy CreateDataflowEndpointGroup)

responseCreateMissionProfile :: MissionProfileIdResponse -> TestTree
responseCreateMissionProfile =
  res
    "CreateMissionProfileResponse"
    "fixture/CreateMissionProfileResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy CreateMissionProfile)

responseDeleteConfig :: ConfigIdResponse -> TestTree
responseDeleteConfig =
  res
    "DeleteConfigResponse"
    "fixture/DeleteConfigResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy DeleteConfig)

responseDeleteDataflowEndpointGroup :: DataflowEndpointGroupIdResponse -> TestTree
responseDeleteDataflowEndpointGroup =
  res
    "DeleteDataflowEndpointGroupResponse"
    "fixture/DeleteDataflowEndpointGroupResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy DeleteDataflowEndpointGroup)

responseDeleteMissionProfile :: MissionProfileIdResponse -> TestTree
responseDeleteMissionProfile =
  res
    "DeleteMissionProfileResponse"
    "fixture/DeleteMissionProfileResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy DeleteMissionProfile)

responseDescribeContact :: DescribeContactResponse -> TestTree
responseDescribeContact =
  res
    "DescribeContactResponse"
    "fixture/DescribeContactResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy DescribeContact)

responseGetConfig :: GetConfigResponse -> TestTree
responseGetConfig =
  res
    "GetConfigResponse"
    "fixture/GetConfigResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy GetConfig)

responseGetDataflowEndpointGroup :: GetDataflowEndpointGroupResponse -> TestTree
responseGetDataflowEndpointGroup =
  res
    "GetDataflowEndpointGroupResponse"
    "fixture/GetDataflowEndpointGroupResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy GetDataflowEndpointGroup)

responseGetMinuteUsage :: GetMinuteUsageResponse -> TestTree
responseGetMinuteUsage =
  res
    "GetMinuteUsageResponse"
    "fixture/GetMinuteUsageResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy GetMinuteUsage)

responseGetMissionProfile :: GetMissionProfileResponse -> TestTree
responseGetMissionProfile =
  res
    "GetMissionProfileResponse"
    "fixture/GetMissionProfileResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy GetMissionProfile)

responseGetSatellite :: GetSatelliteResponse -> TestTree
responseGetSatellite =
  res
    "GetSatelliteResponse"
    "fixture/GetSatelliteResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy GetSatellite)

responseListConfigs :: ListConfigsResponse -> TestTree
responseListConfigs =
  res
    "ListConfigsResponse"
    "fixture/ListConfigsResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy ListConfigs)

responseListContacts :: ListContactsResponse -> TestTree
responseListContacts =
  res
    "ListContactsResponse"
    "fixture/ListContactsResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy ListContacts)

responseListDataflowEndpointGroups :: ListDataflowEndpointGroupsResponse -> TestTree
responseListDataflowEndpointGroups =
  res
    "ListDataflowEndpointGroupsResponse"
    "fixture/ListDataflowEndpointGroupsResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy ListDataflowEndpointGroups)

responseListGroundStations :: ListGroundStationsResponse -> TestTree
responseListGroundStations =
  res
    "ListGroundStationsResponse"
    "fixture/ListGroundStationsResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy ListGroundStations)

responseListMissionProfiles :: ListMissionProfilesResponse -> TestTree
responseListMissionProfiles =
  res
    "ListMissionProfilesResponse"
    "fixture/ListMissionProfilesResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy ListMissionProfiles)

responseListSatellites :: ListSatellitesResponse -> TestTree
responseListSatellites =
  res
    "ListSatellitesResponse"
    "fixture/ListSatellitesResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy ListSatellites)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy ListTagsForResource)

responseReserveContact :: ContactIdResponse -> TestTree
responseReserveContact =
  res
    "ReserveContactResponse"
    "fixture/ReserveContactResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy ReserveContact)

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

responseUpdateConfig :: ConfigIdResponse -> TestTree
responseUpdateConfig =
  res
    "UpdateConfigResponse"
    "fixture/UpdateConfigResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy UpdateConfig)

responseUpdateMissionProfile :: MissionProfileIdResponse -> TestTree
responseUpdateMissionProfile =
  res
    "UpdateMissionProfileResponse"
    "fixture/UpdateMissionProfileResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy UpdateMissionProfile)
