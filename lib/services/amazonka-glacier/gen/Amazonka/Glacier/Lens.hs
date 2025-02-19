{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Glacier.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Glacier.Lens
  ( -- * Operations

    -- ** AbortMultipartUpload
    abortMultipartUpload_accountId,
    abortMultipartUpload_vaultName,
    abortMultipartUpload_uploadId,

    -- ** AbortVaultLock
    abortVaultLock_accountId,
    abortVaultLock_vaultName,

    -- ** AddTagsToVault
    addTagsToVault_tags,
    addTagsToVault_accountId,
    addTagsToVault_vaultName,

    -- ** CompleteMultipartUpload
    completeMultipartUpload_accountId,
    completeMultipartUpload_vaultName,
    completeMultipartUpload_uploadId,
    completeMultipartUpload_archiveSize,
    completeMultipartUpload_checksum,
    archiveCreationOutput_archiveId,
    archiveCreationOutput_checksum,
    archiveCreationOutput_location,

    -- ** CompleteVaultLock
    completeVaultLock_accountId,
    completeVaultLock_vaultName,
    completeVaultLock_lockId,

    -- ** CreateVault
    createVault_accountId,
    createVault_vaultName,
    createVaultResponse_location,
    createVaultResponse_httpStatus,

    -- ** DeleteArchive
    deleteArchive_accountId,
    deleteArchive_vaultName,
    deleteArchive_archiveId,

    -- ** DeleteVault
    deleteVault_accountId,
    deleteVault_vaultName,

    -- ** DeleteVaultAccessPolicy
    deleteVaultAccessPolicy_accountId,
    deleteVaultAccessPolicy_vaultName,

    -- ** DeleteVaultNotifications
    deleteVaultNotifications_accountId,
    deleteVaultNotifications_vaultName,

    -- ** DescribeJob
    describeJob_accountId,
    describeJob_vaultName,
    describeJob_jobId,
    glacierJobDescription_archiveSHA256TreeHash,
    glacierJobDescription_archiveSizeInBytes,
    glacierJobDescription_sNSTopic,
    glacierJobDescription_completionDate,
    glacierJobDescription_outputLocation,
    glacierJobDescription_retrievalByteRange,
    glacierJobDescription_creationDate,
    glacierJobDescription_jobId,
    glacierJobDescription_inventoryRetrievalParameters,
    glacierJobDescription_selectParameters,
    glacierJobDescription_archiveId,
    glacierJobDescription_inventorySizeInBytes,
    glacierJobDescription_jobOutputPath,
    glacierJobDescription_tier,
    glacierJobDescription_sHA256TreeHash,
    glacierJobDescription_completed,
    glacierJobDescription_vaultARN,
    glacierJobDescription_action,
    glacierJobDescription_statusCode,
    glacierJobDescription_statusMessage,
    glacierJobDescription_jobDescription,

    -- ** DescribeVault
    describeVault_accountId,
    describeVault_vaultName,
    describeVaultOutput_lastInventoryDate,
    describeVaultOutput_creationDate,
    describeVaultOutput_vaultName,
    describeVaultOutput_numberOfArchives,
    describeVaultOutput_sizeInBytes,
    describeVaultOutput_vaultARN,

    -- ** GetDataRetrievalPolicy
    getDataRetrievalPolicy_accountId,
    getDataRetrievalPolicyResponse_policy,
    getDataRetrievalPolicyResponse_httpStatus,

    -- ** GetJobOutput
    getJobOutput_range,
    getJobOutput_accountId,
    getJobOutput_vaultName,
    getJobOutput_jobId,
    getJobOutputResponse_acceptRanges,
    getJobOutputResponse_checksum,
    getJobOutputResponse_archiveDescription,
    getJobOutputResponse_contentRange,
    getJobOutputResponse_contentType,
    getJobOutputResponse_status,
    getJobOutputResponse_body,

    -- ** GetVaultAccessPolicy
    getVaultAccessPolicy_accountId,
    getVaultAccessPolicy_vaultName,
    getVaultAccessPolicyResponse_policy,
    getVaultAccessPolicyResponse_httpStatus,

    -- ** GetVaultLock
    getVaultLock_accountId,
    getVaultLock_vaultName,
    getVaultLockResponse_policy,
    getVaultLockResponse_state,
    getVaultLockResponse_creationDate,
    getVaultLockResponse_expirationDate,
    getVaultLockResponse_httpStatus,

    -- ** GetVaultNotifications
    getVaultNotifications_accountId,
    getVaultNotifications_vaultName,
    getVaultNotificationsResponse_vaultNotificationConfig,
    getVaultNotificationsResponse_httpStatus,

    -- ** InitiateJob
    initiateJob_jobParameters,
    initiateJob_accountId,
    initiateJob_vaultName,
    initiateJobResponse_jobId,
    initiateJobResponse_location,
    initiateJobResponse_jobOutputPath,
    initiateJobResponse_httpStatus,

    -- ** InitiateMultipartUpload
    initiateMultipartUpload_archiveDescription,
    initiateMultipartUpload_accountId,
    initiateMultipartUpload_vaultName,
    initiateMultipartUpload_partSize,
    initiateMultipartUploadResponse_location,
    initiateMultipartUploadResponse_httpStatus,
    initiateMultipartUploadResponse_uploadId,

    -- ** InitiateVaultLock
    initiateVaultLock_policy,
    initiateVaultLock_accountId,
    initiateVaultLock_vaultName,
    initiateVaultLockResponse_lockId,
    initiateVaultLockResponse_httpStatus,

    -- ** ListJobs
    listJobs_marker,
    listJobs_limit,
    listJobs_completed,
    listJobs_statuscode,
    listJobs_accountId,
    listJobs_vaultName,
    listJobsResponse_marker,
    listJobsResponse_jobList,
    listJobsResponse_httpStatus,

    -- ** ListMultipartUploads
    listMultipartUploads_marker,
    listMultipartUploads_limit,
    listMultipartUploads_accountId,
    listMultipartUploads_vaultName,
    listMultipartUploadsResponse_marker,
    listMultipartUploadsResponse_uploadsList,
    listMultipartUploadsResponse_httpStatus,

    -- ** ListParts
    listParts_marker,
    listParts_limit,
    listParts_accountId,
    listParts_vaultName,
    listParts_uploadId,
    listPartsResponse_marker,
    listPartsResponse_parts,
    listPartsResponse_creationDate,
    listPartsResponse_multipartUploadId,
    listPartsResponse_archiveDescription,
    listPartsResponse_vaultARN,
    listPartsResponse_partSizeInBytes,
    listPartsResponse_httpStatus,

    -- ** ListProvisionedCapacity
    listProvisionedCapacity_accountId,
    listProvisionedCapacityResponse_provisionedCapacityList,
    listProvisionedCapacityResponse_httpStatus,

    -- ** ListTagsForVault
    listTagsForVault_accountId,
    listTagsForVault_vaultName,
    listTagsForVaultResponse_tags,
    listTagsForVaultResponse_httpStatus,

    -- ** ListVaults
    listVaults_marker,
    listVaults_limit,
    listVaults_accountId,
    listVaultsResponse_marker,
    listVaultsResponse_vaultList,
    listVaultsResponse_httpStatus,

    -- ** PurchaseProvisionedCapacity
    purchaseProvisionedCapacity_accountId,
    purchaseProvisionedCapacityResponse_capacityId,
    purchaseProvisionedCapacityResponse_httpStatus,

    -- ** RemoveTagsFromVault
    removeTagsFromVault_tagKeys,
    removeTagsFromVault_accountId,
    removeTagsFromVault_vaultName,

    -- ** SetDataRetrievalPolicy
    setDataRetrievalPolicy_policy,
    setDataRetrievalPolicy_accountId,

    -- ** SetVaultAccessPolicy
    setVaultAccessPolicy_policy,
    setVaultAccessPolicy_accountId,
    setVaultAccessPolicy_vaultName,

    -- ** SetVaultNotifications
    setVaultNotifications_vaultNotificationConfig,
    setVaultNotifications_accountId,
    setVaultNotifications_vaultName,

    -- ** UploadArchive
    uploadArchive_checksum,
    uploadArchive_archiveDescription,
    uploadArchive_vaultName,
    uploadArchive_accountId,
    uploadArchive_body,
    archiveCreationOutput_archiveId,
    archiveCreationOutput_checksum,
    archiveCreationOutput_location,

    -- ** UploadMultipartPart
    uploadMultipartPart_accountId,
    uploadMultipartPart_vaultName,
    uploadMultipartPart_uploadId,
    uploadMultipartPart_range,
    uploadMultipartPart_checksum,
    uploadMultipartPart_body,
    uploadMultipartPartResponse_checksum,
    uploadMultipartPartResponse_httpStatus,

    -- * Types

    -- ** ArchiveCreationOutput
    archiveCreationOutput_archiveId,
    archiveCreationOutput_checksum,
    archiveCreationOutput_location,

    -- ** CSVInput
    cSVInput_quoteCharacter,
    cSVInput_comments,
    cSVInput_quoteEscapeCharacter,
    cSVInput_fieldDelimiter,
    cSVInput_recordDelimiter,
    cSVInput_fileHeaderInfo,

    -- ** CSVOutput
    cSVOutput_quoteCharacter,
    cSVOutput_quoteFields,
    cSVOutput_quoteEscapeCharacter,
    cSVOutput_fieldDelimiter,
    cSVOutput_recordDelimiter,

    -- ** DataRetrievalPolicy
    dataRetrievalPolicy_rules,

    -- ** DataRetrievalRule
    dataRetrievalRule_bytesPerHour,
    dataRetrievalRule_strategy,

    -- ** DescribeVaultOutput
    describeVaultOutput_lastInventoryDate,
    describeVaultOutput_creationDate,
    describeVaultOutput_vaultName,
    describeVaultOutput_numberOfArchives,
    describeVaultOutput_sizeInBytes,
    describeVaultOutput_vaultARN,

    -- ** Encryption
    encryption_kmsContext,
    encryption_encryptionType,
    encryption_kmsKeyId,

    -- ** GlacierJobDescription
    glacierJobDescription_archiveSHA256TreeHash,
    glacierJobDescription_archiveSizeInBytes,
    glacierJobDescription_sNSTopic,
    glacierJobDescription_completionDate,
    glacierJobDescription_outputLocation,
    glacierJobDescription_retrievalByteRange,
    glacierJobDescription_creationDate,
    glacierJobDescription_jobId,
    glacierJobDescription_inventoryRetrievalParameters,
    glacierJobDescription_selectParameters,
    glacierJobDescription_archiveId,
    glacierJobDescription_inventorySizeInBytes,
    glacierJobDescription_jobOutputPath,
    glacierJobDescription_tier,
    glacierJobDescription_sHA256TreeHash,
    glacierJobDescription_completed,
    glacierJobDescription_vaultARN,
    glacierJobDescription_action,
    glacierJobDescription_statusCode,
    glacierJobDescription_statusMessage,
    glacierJobDescription_jobDescription,

    -- ** Grant
    grant_permission,
    grant_grantee,

    -- ** Grantee
    grantee_displayName,
    grantee_uri,
    grantee_id,
    grantee_emailAddress,
    grantee_type,

    -- ** InputSerialization
    inputSerialization_csv,

    -- ** InventoryRetrievalJobDescription
    inventoryRetrievalJobDescription_marker,
    inventoryRetrievalJobDescription_format,
    inventoryRetrievalJobDescription_endDate,
    inventoryRetrievalJobDescription_limit,
    inventoryRetrievalJobDescription_startDate,

    -- ** InventoryRetrievalJobInput
    inventoryRetrievalJobInput_marker,
    inventoryRetrievalJobInput_endDate,
    inventoryRetrievalJobInput_limit,
    inventoryRetrievalJobInput_startDate,

    -- ** JobParameters
    jobParameters_type,
    jobParameters_sNSTopic,
    jobParameters_format,
    jobParameters_outputLocation,
    jobParameters_retrievalByteRange,
    jobParameters_inventoryRetrievalParameters,
    jobParameters_selectParameters,
    jobParameters_description,
    jobParameters_archiveId,
    jobParameters_tier,

    -- ** OutputLocation
    outputLocation_s3,

    -- ** OutputSerialization
    outputSerialization_csv,

    -- ** PartListElement
    partListElement_rangeInBytes,
    partListElement_sHA256TreeHash,

    -- ** ProvisionedCapacityDescription
    provisionedCapacityDescription_startDate,
    provisionedCapacityDescription_capacityId,
    provisionedCapacityDescription_expirationDate,

    -- ** S3Location
    s3Location_accessControlList,
    s3Location_bucketName,
    s3Location_tagging,
    s3Location_encryption,
    s3Location_prefix,
    s3Location_storageClass,
    s3Location_cannedACL,
    s3Location_userMetadata,

    -- ** SelectParameters
    selectParameters_inputSerialization,
    selectParameters_expression,
    selectParameters_outputSerialization,
    selectParameters_expressionType,

    -- ** UploadListElement
    uploadListElement_creationDate,
    uploadListElement_multipartUploadId,
    uploadListElement_archiveDescription,
    uploadListElement_vaultARN,
    uploadListElement_partSizeInBytes,

    -- ** VaultAccessPolicy
    vaultAccessPolicy_policy,

    -- ** VaultLockPolicy
    vaultLockPolicy_policy,

    -- ** VaultNotificationConfig
    vaultNotificationConfig_sNSTopic,
    vaultNotificationConfig_events,
  )
where

import Amazonka.Glacier.AbortMultipartUpload
import Amazonka.Glacier.AbortVaultLock
import Amazonka.Glacier.AddTagsToVault
import Amazonka.Glacier.CompleteMultipartUpload
import Amazonka.Glacier.CompleteVaultLock
import Amazonka.Glacier.CreateVault
import Amazonka.Glacier.DeleteArchive
import Amazonka.Glacier.DeleteVault
import Amazonka.Glacier.DeleteVaultAccessPolicy
import Amazonka.Glacier.DeleteVaultNotifications
import Amazonka.Glacier.DescribeJob
import Amazonka.Glacier.DescribeVault
import Amazonka.Glacier.GetDataRetrievalPolicy
import Amazonka.Glacier.GetJobOutput
import Amazonka.Glacier.GetVaultAccessPolicy
import Amazonka.Glacier.GetVaultLock
import Amazonka.Glacier.GetVaultNotifications
import Amazonka.Glacier.InitiateJob
import Amazonka.Glacier.InitiateMultipartUpload
import Amazonka.Glacier.InitiateVaultLock
import Amazonka.Glacier.ListJobs
import Amazonka.Glacier.ListMultipartUploads
import Amazonka.Glacier.ListParts
import Amazonka.Glacier.ListProvisionedCapacity
import Amazonka.Glacier.ListTagsForVault
import Amazonka.Glacier.ListVaults
import Amazonka.Glacier.PurchaseProvisionedCapacity
import Amazonka.Glacier.RemoveTagsFromVault
import Amazonka.Glacier.SetDataRetrievalPolicy
import Amazonka.Glacier.SetVaultAccessPolicy
import Amazonka.Glacier.SetVaultNotifications
import Amazonka.Glacier.Types.ArchiveCreationOutput
import Amazonka.Glacier.Types.CSVInput
import Amazonka.Glacier.Types.CSVOutput
import Amazonka.Glacier.Types.DataRetrievalPolicy
import Amazonka.Glacier.Types.DataRetrievalRule
import Amazonka.Glacier.Types.DescribeVaultOutput
import Amazonka.Glacier.Types.Encryption
import Amazonka.Glacier.Types.GlacierJobDescription
import Amazonka.Glacier.Types.Grant
import Amazonka.Glacier.Types.Grantee
import Amazonka.Glacier.Types.InputSerialization
import Amazonka.Glacier.Types.InventoryRetrievalJobDescription
import Amazonka.Glacier.Types.InventoryRetrievalJobInput
import Amazonka.Glacier.Types.JobParameters
import Amazonka.Glacier.Types.OutputLocation
import Amazonka.Glacier.Types.OutputSerialization
import Amazonka.Glacier.Types.PartListElement
import Amazonka.Glacier.Types.ProvisionedCapacityDescription
import Amazonka.Glacier.Types.S3Location
import Amazonka.Glacier.Types.SelectParameters
import Amazonka.Glacier.Types.UploadListElement
import Amazonka.Glacier.Types.VaultAccessPolicy
import Amazonka.Glacier.Types.VaultLockPolicy
import Amazonka.Glacier.Types.VaultNotificationConfig
import Amazonka.Glacier.UploadArchive
import Amazonka.Glacier.UploadMultipartPart
