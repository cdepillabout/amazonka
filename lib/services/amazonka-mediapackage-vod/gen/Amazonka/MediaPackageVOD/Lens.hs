{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.MediaPackageVOD.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaPackageVOD.Lens
  ( -- * Operations

    -- ** ConfigureLogs
    configureLogs_egressAccessLogs,
    configureLogs_id,
    configureLogsResponse_tags,
    configureLogsResponse_domainName,
    configureLogsResponse_arn,
    configureLogsResponse_id,
    configureLogsResponse_authorization,
    configureLogsResponse_egressAccessLogs,
    configureLogsResponse_httpStatus,

    -- ** CreateAsset
    createAsset_resourceId,
    createAsset_tags,
    createAsset_sourceArn,
    createAsset_id,
    createAsset_packagingGroupId,
    createAsset_sourceRoleArn,
    createAssetResponse_resourceId,
    createAssetResponse_tags,
    createAssetResponse_sourceRoleArn,
    createAssetResponse_sourceArn,
    createAssetResponse_packagingGroupId,
    createAssetResponse_arn,
    createAssetResponse_id,
    createAssetResponse_createdAt,
    createAssetResponse_egressEndpoints,
    createAssetResponse_httpStatus,

    -- ** CreatePackagingConfiguration
    createPackagingConfiguration_tags,
    createPackagingConfiguration_mssPackage,
    createPackagingConfiguration_dashPackage,
    createPackagingConfiguration_cmafPackage,
    createPackagingConfiguration_hlsPackage,
    createPackagingConfiguration_id,
    createPackagingConfiguration_packagingGroupId,
    createPackagingConfigurationResponse_tags,
    createPackagingConfigurationResponse_mssPackage,
    createPackagingConfigurationResponse_packagingGroupId,
    createPackagingConfigurationResponse_arn,
    createPackagingConfigurationResponse_id,
    createPackagingConfigurationResponse_dashPackage,
    createPackagingConfigurationResponse_cmafPackage,
    createPackagingConfigurationResponse_hlsPackage,
    createPackagingConfigurationResponse_httpStatus,

    -- ** CreatePackagingGroup
    createPackagingGroup_tags,
    createPackagingGroup_authorization,
    createPackagingGroup_egressAccessLogs,
    createPackagingGroup_id,
    createPackagingGroupResponse_tags,
    createPackagingGroupResponse_domainName,
    createPackagingGroupResponse_arn,
    createPackagingGroupResponse_id,
    createPackagingGroupResponse_authorization,
    createPackagingGroupResponse_egressAccessLogs,
    createPackagingGroupResponse_httpStatus,

    -- ** DeleteAsset
    deleteAsset_id,
    deleteAssetResponse_httpStatus,

    -- ** DeletePackagingConfiguration
    deletePackagingConfiguration_id,
    deletePackagingConfigurationResponse_httpStatus,

    -- ** DeletePackagingGroup
    deletePackagingGroup_id,
    deletePackagingGroupResponse_httpStatus,

    -- ** DescribeAsset
    describeAsset_id,
    describeAssetResponse_resourceId,
    describeAssetResponse_tags,
    describeAssetResponse_sourceRoleArn,
    describeAssetResponse_sourceArn,
    describeAssetResponse_packagingGroupId,
    describeAssetResponse_arn,
    describeAssetResponse_id,
    describeAssetResponse_createdAt,
    describeAssetResponse_egressEndpoints,
    describeAssetResponse_httpStatus,

    -- ** DescribePackagingConfiguration
    describePackagingConfiguration_id,
    describePackagingConfigurationResponse_tags,
    describePackagingConfigurationResponse_mssPackage,
    describePackagingConfigurationResponse_packagingGroupId,
    describePackagingConfigurationResponse_arn,
    describePackagingConfigurationResponse_id,
    describePackagingConfigurationResponse_dashPackage,
    describePackagingConfigurationResponse_cmafPackage,
    describePackagingConfigurationResponse_hlsPackage,
    describePackagingConfigurationResponse_httpStatus,

    -- ** DescribePackagingGroup
    describePackagingGroup_id,
    describePackagingGroupResponse_tags,
    describePackagingGroupResponse_domainName,
    describePackagingGroupResponse_arn,
    describePackagingGroupResponse_id,
    describePackagingGroupResponse_authorization,
    describePackagingGroupResponse_egressAccessLogs,
    describePackagingGroupResponse_httpStatus,

    -- ** ListAssets
    listAssets_nextToken,
    listAssets_packagingGroupId,
    listAssets_maxResults,
    listAssetsResponse_nextToken,
    listAssetsResponse_assets,
    listAssetsResponse_httpStatus,

    -- ** ListPackagingConfigurations
    listPackagingConfigurations_nextToken,
    listPackagingConfigurations_packagingGroupId,
    listPackagingConfigurations_maxResults,
    listPackagingConfigurationsResponse_nextToken,
    listPackagingConfigurationsResponse_packagingConfigurations,
    listPackagingConfigurationsResponse_httpStatus,

    -- ** ListPackagingGroups
    listPackagingGroups_nextToken,
    listPackagingGroups_maxResults,
    listPackagingGroupsResponse_nextToken,
    listPackagingGroupsResponse_packagingGroups,
    listPackagingGroupsResponse_httpStatus,

    -- ** ListTagsForResource
    listTagsForResource_resourceArn,
    listTagsForResourceResponse_tags,
    listTagsForResourceResponse_httpStatus,

    -- ** TagResource
    tagResource_resourceArn,
    tagResource_tags,

    -- ** UntagResource
    untagResource_tagKeys,
    untagResource_resourceArn,

    -- ** UpdatePackagingGroup
    updatePackagingGroup_authorization,
    updatePackagingGroup_id,
    updatePackagingGroupResponse_tags,
    updatePackagingGroupResponse_domainName,
    updatePackagingGroupResponse_arn,
    updatePackagingGroupResponse_id,
    updatePackagingGroupResponse_authorization,
    updatePackagingGroupResponse_egressAccessLogs,
    updatePackagingGroupResponse_httpStatus,

    -- * Types

    -- ** AssetShallow
    assetShallow_resourceId,
    assetShallow_tags,
    assetShallow_sourceRoleArn,
    assetShallow_sourceArn,
    assetShallow_packagingGroupId,
    assetShallow_arn,
    assetShallow_id,
    assetShallow_createdAt,

    -- ** Authorization
    authorization_secretsRoleArn,
    authorization_cdnIdentifierSecret,

    -- ** CmafEncryption
    cmafEncryption_constantInitializationVector,
    cmafEncryption_spekeKeyProvider,

    -- ** CmafPackage
    cmafPackage_segmentDurationSeconds,
    cmafPackage_encryption,
    cmafPackage_includeEncoderConfigurationInSegments,
    cmafPackage_hlsManifests,

    -- ** DashEncryption
    dashEncryption_spekeKeyProvider,

    -- ** DashManifest
    dashManifest_profile,
    dashManifest_streamSelection,
    dashManifest_manifestName,
    dashManifest_manifestLayout,
    dashManifest_scteMarkersSource,
    dashManifest_minBufferTimeSeconds,

    -- ** DashPackage
    dashPackage_segmentTemplateFormat,
    dashPackage_segmentDurationSeconds,
    dashPackage_periodTriggers,
    dashPackage_encryption,
    dashPackage_includeEncoderConfigurationInSegments,
    dashPackage_dashManifests,

    -- ** EgressAccessLogs
    egressAccessLogs_logGroupName,

    -- ** EgressEndpoint
    egressEndpoint_url,
    egressEndpoint_status,
    egressEndpoint_packagingConfigurationId,

    -- ** HlsEncryption
    hlsEncryption_constantInitializationVector,
    hlsEncryption_encryptionMethod,
    hlsEncryption_spekeKeyProvider,

    -- ** HlsManifest
    hlsManifest_streamSelection,
    hlsManifest_repeatExtXKey,
    hlsManifest_programDateTimeIntervalSeconds,
    hlsManifest_includeIframeOnlyStream,
    hlsManifest_adMarkers,
    hlsManifest_manifestName,

    -- ** HlsPackage
    hlsPackage_useAudioRenditionGroup,
    hlsPackage_segmentDurationSeconds,
    hlsPackage_encryption,
    hlsPackage_includeDvbSubtitles,
    hlsPackage_hlsManifests,

    -- ** MssEncryption
    mssEncryption_spekeKeyProvider,

    -- ** MssManifest
    mssManifest_streamSelection,
    mssManifest_manifestName,

    -- ** MssPackage
    mssPackage_segmentDurationSeconds,
    mssPackage_encryption,
    mssPackage_mssManifests,

    -- ** PackagingConfiguration
    packagingConfiguration_tags,
    packagingConfiguration_mssPackage,
    packagingConfiguration_packagingGroupId,
    packagingConfiguration_arn,
    packagingConfiguration_id,
    packagingConfiguration_dashPackage,
    packagingConfiguration_cmafPackage,
    packagingConfiguration_hlsPackage,

    -- ** PackagingGroup
    packagingGroup_tags,
    packagingGroup_domainName,
    packagingGroup_arn,
    packagingGroup_id,
    packagingGroup_authorization,
    packagingGroup_egressAccessLogs,

    -- ** SpekeKeyProvider
    spekeKeyProvider_systemIds,
    spekeKeyProvider_url,
    spekeKeyProvider_roleArn,

    -- ** StreamSelection
    streamSelection_streamOrder,
    streamSelection_minVideoBitsPerSecond,
    streamSelection_maxVideoBitsPerSecond,
  )
where

import Amazonka.MediaPackageVOD.ConfigureLogs
import Amazonka.MediaPackageVOD.CreateAsset
import Amazonka.MediaPackageVOD.CreatePackagingConfiguration
import Amazonka.MediaPackageVOD.CreatePackagingGroup
import Amazonka.MediaPackageVOD.DeleteAsset
import Amazonka.MediaPackageVOD.DeletePackagingConfiguration
import Amazonka.MediaPackageVOD.DeletePackagingGroup
import Amazonka.MediaPackageVOD.DescribeAsset
import Amazonka.MediaPackageVOD.DescribePackagingConfiguration
import Amazonka.MediaPackageVOD.DescribePackagingGroup
import Amazonka.MediaPackageVOD.ListAssets
import Amazonka.MediaPackageVOD.ListPackagingConfigurations
import Amazonka.MediaPackageVOD.ListPackagingGroups
import Amazonka.MediaPackageVOD.ListTagsForResource
import Amazonka.MediaPackageVOD.TagResource
import Amazonka.MediaPackageVOD.Types.AssetShallow
import Amazonka.MediaPackageVOD.Types.Authorization
import Amazonka.MediaPackageVOD.Types.CmafEncryption
import Amazonka.MediaPackageVOD.Types.CmafPackage
import Amazonka.MediaPackageVOD.Types.DashEncryption
import Amazonka.MediaPackageVOD.Types.DashManifest
import Amazonka.MediaPackageVOD.Types.DashPackage
import Amazonka.MediaPackageVOD.Types.EgressAccessLogs
import Amazonka.MediaPackageVOD.Types.EgressEndpoint
import Amazonka.MediaPackageVOD.Types.HlsEncryption
import Amazonka.MediaPackageVOD.Types.HlsManifest
import Amazonka.MediaPackageVOD.Types.HlsPackage
import Amazonka.MediaPackageVOD.Types.MssEncryption
import Amazonka.MediaPackageVOD.Types.MssManifest
import Amazonka.MediaPackageVOD.Types.MssPackage
import Amazonka.MediaPackageVOD.Types.PackagingConfiguration
import Amazonka.MediaPackageVOD.Types.PackagingGroup
import Amazonka.MediaPackageVOD.Types.SpekeKeyProvider
import Amazonka.MediaPackageVOD.Types.StreamSelection
import Amazonka.MediaPackageVOD.UntagResource
import Amazonka.MediaPackageVOD.UpdatePackagingGroup
