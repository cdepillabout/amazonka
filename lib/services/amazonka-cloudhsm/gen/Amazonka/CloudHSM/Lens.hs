{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.CloudHSM.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CloudHSM.Lens
  ( -- * Operations

    -- ** AddTagsToResource
    addTagsToResource_resourceArn,
    addTagsToResource_tagList,
    addTagsToResourceResponse_httpStatus,
    addTagsToResourceResponse_status,

    -- ** CreateHapg
    createHapg_label,
    createHapgResponse_hapgArn,
    createHapgResponse_httpStatus,

    -- ** CreateHsm
    createHsm_clientToken,
    createHsm_externalId,
    createHsm_eniIp,
    createHsm_syslogIp,
    createHsm_subnetId,
    createHsm_sshKey,
    createHsm_iamRoleArn,
    createHsm_subscriptionType,
    createHsmResponse_hsmArn,
    createHsmResponse_httpStatus,

    -- ** CreateLunaClient
    createLunaClient_label,
    createLunaClient_certificate,
    createLunaClientResponse_clientArn,
    createLunaClientResponse_httpStatus,

    -- ** DeleteHapg
    deleteHapg_hapgArn,
    deleteHapgResponse_httpStatus,
    deleteHapgResponse_status,

    -- ** DeleteHsm
    deleteHsm_hsmArn,
    deleteHsmResponse_httpStatus,
    deleteHsmResponse_status,

    -- ** DeleteLunaClient
    deleteLunaClient_clientArn,
    deleteLunaClientResponse_httpStatus,
    deleteLunaClientResponse_status,

    -- ** DescribeHapg
    describeHapg_hapgArn,
    describeHapgResponse_hsmsLastActionFailed,
    describeHapgResponse_partitionSerialList,
    describeHapgResponse_label,
    describeHapgResponse_hsmsPendingRegistration,
    describeHapgResponse_lastModifiedTimestamp,
    describeHapgResponse_state,
    describeHapgResponse_hapgArn,
    describeHapgResponse_hapgSerial,
    describeHapgResponse_hsmsPendingDeletion,
    describeHapgResponse_httpStatus,

    -- ** DescribeHsm
    describeHsm_hsmSerialNumber,
    describeHsm_hsmArn,
    describeHsmResponse_serverCertUri,
    describeHsmResponse_statusDetails,
    describeHsmResponse_subnetId,
    describeHsmResponse_hsmType,
    describeHsmResponse_subscriptionType,
    describeHsmResponse_sshPublicKey,
    describeHsmResponse_status,
    describeHsmResponse_sshKeyLastUpdated,
    describeHsmResponse_availabilityZone,
    describeHsmResponse_softwareVersion,
    describeHsmResponse_hsmArn,
    describeHsmResponse_iamRoleArn,
    describeHsmResponse_partitions,
    describeHsmResponse_subscriptionStartDate,
    describeHsmResponse_serverCertLastUpdated,
    describeHsmResponse_serialNumber,
    describeHsmResponse_eniIp,
    describeHsmResponse_vpcId,
    describeHsmResponse_eniId,
    describeHsmResponse_vendorName,
    describeHsmResponse_subscriptionEndDate,
    describeHsmResponse_httpStatus,

    -- ** DescribeLunaClient
    describeLunaClient_clientArn,
    describeLunaClient_certificateFingerprint,
    describeLunaClientResponse_label,
    describeLunaClientResponse_lastModifiedTimestamp,
    describeLunaClientResponse_clientArn,
    describeLunaClientResponse_certificate,
    describeLunaClientResponse_certificateFingerprint,
    describeLunaClientResponse_httpStatus,

    -- ** GetConfig
    getConfig_clientArn,
    getConfig_clientVersion,
    getConfig_hapgList,
    getConfigResponse_configCred,
    getConfigResponse_configFile,
    getConfigResponse_configType,
    getConfigResponse_httpStatus,

    -- ** ListAvailableZones
    listAvailableZonesResponse_aZList,
    listAvailableZonesResponse_httpStatus,

    -- ** ListHapgs
    listHapgs_nextToken,
    listHapgsResponse_nextToken,
    listHapgsResponse_httpStatus,
    listHapgsResponse_hapgList,

    -- ** ListHsms
    listHsms_nextToken,
    listHsmsResponse_nextToken,
    listHsmsResponse_hsmList,
    listHsmsResponse_httpStatus,

    -- ** ListLunaClients
    listLunaClients_nextToken,
    listLunaClientsResponse_nextToken,
    listLunaClientsResponse_httpStatus,
    listLunaClientsResponse_clientList,

    -- ** ListTagsForResource
    listTagsForResource_resourceArn,
    listTagsForResourceResponse_httpStatus,
    listTagsForResourceResponse_tagList,

    -- ** ModifyHapg
    modifyHapg_partitionSerialList,
    modifyHapg_label,
    modifyHapg_hapgArn,
    modifyHapgResponse_hapgArn,
    modifyHapgResponse_httpStatus,

    -- ** ModifyHsm
    modifyHsm_subnetId,
    modifyHsm_externalId,
    modifyHsm_iamRoleArn,
    modifyHsm_eniIp,
    modifyHsm_syslogIp,
    modifyHsm_hsmArn,
    modifyHsmResponse_hsmArn,
    modifyHsmResponse_httpStatus,

    -- ** ModifyLunaClient
    modifyLunaClient_clientArn,
    modifyLunaClient_certificate,
    modifyLunaClientResponse_clientArn,
    modifyLunaClientResponse_httpStatus,

    -- ** RemoveTagsFromResource
    removeTagsFromResource_resourceArn,
    removeTagsFromResource_tagKeyList,
    removeTagsFromResourceResponse_httpStatus,
    removeTagsFromResourceResponse_status,

    -- * Types

    -- ** Tag
    tag_key,
    tag_value,
  )
where

import Amazonka.CloudHSM.AddTagsToResource
import Amazonka.CloudHSM.CreateHapg
import Amazonka.CloudHSM.CreateHsm
import Amazonka.CloudHSM.CreateLunaClient
import Amazonka.CloudHSM.DeleteHapg
import Amazonka.CloudHSM.DeleteHsm
import Amazonka.CloudHSM.DeleteLunaClient
import Amazonka.CloudHSM.DescribeHapg
import Amazonka.CloudHSM.DescribeHsm
import Amazonka.CloudHSM.DescribeLunaClient
import Amazonka.CloudHSM.GetConfig
import Amazonka.CloudHSM.ListAvailableZones
import Amazonka.CloudHSM.ListHapgs
import Amazonka.CloudHSM.ListHsms
import Amazonka.CloudHSM.ListLunaClients
import Amazonka.CloudHSM.ListTagsForResource
import Amazonka.CloudHSM.ModifyHapg
import Amazonka.CloudHSM.ModifyHsm
import Amazonka.CloudHSM.ModifyLunaClient
import Amazonka.CloudHSM.RemoveTagsFromResource
import Amazonka.CloudHSM.Types.Tag
