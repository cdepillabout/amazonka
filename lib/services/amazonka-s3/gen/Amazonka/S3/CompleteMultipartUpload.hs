{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.S3.CompleteMultipartUpload
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Completes a multipart upload by assembling previously uploaded parts.
--
-- You first initiate the multipart upload and then upload all parts using
-- the
-- <https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html UploadPart>
-- operation. After successfully uploading all relevant parts of an upload,
-- you call this action to complete the upload. Upon receiving this
-- request, Amazon S3 concatenates all the parts in ascending order by part
-- number to create a new object. In the Complete Multipart Upload request,
-- you must provide the parts list. You must ensure that the parts list is
-- complete. This action concatenates the parts that you provide in the
-- list. For each part in the list, you must provide the part number and
-- the @ETag@ value, returned after that part was uploaded.
--
-- Processing of a Complete Multipart Upload request could take several
-- minutes to complete. After Amazon S3 begins processing the request, it
-- sends an HTTP response header that specifies a 200 OK response. While
-- processing is in progress, Amazon S3 periodically sends white space
-- characters to keep the connection from timing out. Because a request
-- could fail after the initial 200 OK response has been sent, it is
-- important that you check the response body to determine whether the
-- request succeeded.
--
-- Note that if @CompleteMultipartUpload@ fails, applications should be
-- prepared to retry the failed requests. For more information, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/dev/ErrorBestPractices.html Amazon S3 Error Best Practices>.
--
-- You cannot use @Content-Type: application\/x-www-form-urlencoded@ with
-- Complete Multipart Upload requests. Also, if you do not provide a
-- @Content-Type@ header, @CompleteMultipartUpload@ returns a 200 OK
-- response.
--
-- For more information about multipart uploads, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/dev/uploadobjusingmpu.html Uploading Objects Using Multipart Upload>.
--
-- For information about permissions required to use the multipart upload
-- API, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html Multipart Upload and Permissions>.
--
-- @CompleteMultipartUpload@ has the following special errors:
--
-- -   Error code: @EntityTooSmall@
--
--     -   Description: Your proposed upload is smaller than the minimum
--         allowed object size. Each part must be at least 5 MB in size,
--         except the last part.
--
--     -   400 Bad Request
--
-- -   Error code: @InvalidPart@
--
--     -   Description: One or more of the specified parts could not be
--         found. The part might not have been uploaded, or the specified
--         entity tag might not have matched the part\'s entity tag.
--
--     -   400 Bad Request
--
-- -   Error code: @InvalidPartOrder@
--
--     -   Description: The list of parts was not in ascending order. The
--         parts list must be specified in order by part number.
--
--     -   400 Bad Request
--
-- -   Error code: @NoSuchUpload@
--
--     -   Description: The specified multipart upload does not exist. The
--         upload ID might be invalid, or the multipart upload might have
--         been aborted or completed.
--
--     -   404 Not Found
--
-- The following operations are related to @CompleteMultipartUpload@:
--
-- -   <https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html CreateMultipartUpload>
--
-- -   <https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html UploadPart>
--
-- -   <https://docs.aws.amazon.com/AmazonS3/latest/API/API_AbortMultipartUpload.html AbortMultipartUpload>
--
-- -   <https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html ListParts>
--
-- -   <https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListMultipartUploads.html ListMultipartUploads>
module Amazonka.S3.CompleteMultipartUpload
  ( -- * Creating a Request
    CompleteMultipartUpload (..),
    newCompleteMultipartUpload,

    -- * Request Lenses
    completeMultipartUpload_checksumCRC32C,
    completeMultipartUpload_checksumSHA1,
    completeMultipartUpload_expectedBucketOwner,
    completeMultipartUpload_checksumCRC32,
    completeMultipartUpload_requestPayer,
    completeMultipartUpload_checksumSHA256,
    completeMultipartUpload_sSECustomerAlgorithm,
    completeMultipartUpload_sSECustomerKeyMD5,
    completeMultipartUpload_multipartUpload,
    completeMultipartUpload_sSECustomerKey,
    completeMultipartUpload_bucket,
    completeMultipartUpload_key,
    completeMultipartUpload_uploadId,

    -- * Destructuring the Response
    CompleteMultipartUploadResponse (..),
    newCompleteMultipartUploadResponse,

    -- * Response Lenses
    completeMultipartUploadResponse_serverSideEncryption,
    completeMultipartUploadResponse_key,
    completeMultipartUploadResponse_checksumCRC32C,
    completeMultipartUploadResponse_bucketKeyEnabled,
    completeMultipartUploadResponse_expiration,
    completeMultipartUploadResponse_requestCharged,
    completeMultipartUploadResponse_checksumSHA1,
    completeMultipartUploadResponse_bucket,
    completeMultipartUploadResponse_checksumCRC32,
    completeMultipartUploadResponse_sSEKMSKeyId,
    completeMultipartUploadResponse_checksumSHA256,
    completeMultipartUploadResponse_location,
    completeMultipartUploadResponse_eTag,
    completeMultipartUploadResponse_versionId,
    completeMultipartUploadResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.S3.Types

-- | /See:/ 'newCompleteMultipartUpload' smart constructor.
data CompleteMultipartUpload = CompleteMultipartUpload'
  { -- | This header can be used as a data integrity check to verify that the
    -- data received is the same data that was originally sent. This header
    -- specifies the base64-encoded, 32-bit CRC32C checksum of the object. For
    -- more information, see
    -- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html Checking object integrity>
    -- in the /Amazon S3 User Guide/.
    checksumCRC32C :: Prelude.Maybe Prelude.Text,
    -- | This header can be used as a data integrity check to verify that the
    -- data received is the same data that was originally sent. This header
    -- specifies the base64-encoded, 160-bit SHA-1 digest of the object. For
    -- more information, see
    -- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html Checking object integrity>
    -- in the /Amazon S3 User Guide/.
    checksumSHA1 :: Prelude.Maybe Prelude.Text,
    -- | The account ID of the expected bucket owner. If the bucket is owned by a
    -- different account, the request fails with the HTTP status code
    -- @403 Forbidden@ (access denied).
    expectedBucketOwner :: Prelude.Maybe Prelude.Text,
    -- | This header can be used as a data integrity check to verify that the
    -- data received is the same data that was originally sent. This header
    -- specifies the base64-encoded, 32-bit CRC32 checksum of the object. For
    -- more information, see
    -- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html Checking object integrity>
    -- in the /Amazon S3 User Guide/.
    checksumCRC32 :: Prelude.Maybe Prelude.Text,
    requestPayer :: Prelude.Maybe RequestPayer,
    -- | This header can be used as a data integrity check to verify that the
    -- data received is the same data that was originally sent. This header
    -- specifies the base64-encoded, 256-bit SHA-256 digest of the object. For
    -- more information, see
    -- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html Checking object integrity>
    -- in the /Amazon S3 User Guide/.
    checksumSHA256 :: Prelude.Maybe Prelude.Text,
    -- | The server-side encryption (SSE) algorithm used to encrypt the object.
    -- This parameter is needed only when the object was created using a
    -- checksum algorithm. For more information, see
    -- <https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html Protecting data using SSE-C keys>
    -- in the /Amazon S3 User Guide/.
    sSECustomerAlgorithm :: Prelude.Maybe Prelude.Text,
    -- | The MD5 server-side encryption (SSE) customer managed key. This
    -- parameter is needed only when the object was created using a checksum
    -- algorithm. For more information, see
    -- <https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html Protecting data using SSE-C keys>
    -- in the /Amazon S3 User Guide/.
    sSECustomerKeyMD5 :: Prelude.Maybe Prelude.Text,
    -- | The container for the multipart upload request information.
    multipartUpload :: Prelude.Maybe CompletedMultipartUpload,
    -- | The server-side encryption (SSE) customer managed key. This parameter is
    -- needed only when the object was created using a checksum algorithm. For
    -- more information, see
    -- <https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html Protecting data using SSE-C keys>
    -- in the /Amazon S3 User Guide/.
    sSECustomerKey :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | Name of the bucket to which the multipart upload was initiated.
    --
    -- When using this action with an access point, you must direct requests to
    -- the access point hostname. The access point hostname takes the form
    -- /AccessPointName/-/AccountId/.s3-accesspoint./Region/.amazonaws.com.
    -- When using this action with an access point through the Amazon Web
    -- Services SDKs, you provide the access point ARN in place of the bucket
    -- name. For more information about access point ARNs, see
    -- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html Using access points>
    -- in the /Amazon S3 User Guide/.
    --
    -- When using this action with Amazon S3 on Outposts, you must direct
    -- requests to the S3 on Outposts hostname. The S3 on Outposts hostname
    -- takes the form
    -- @ AccessPointName-AccountId.outpostID.s3-outposts.Region.amazonaws.com@.
    -- When using this action with S3 on Outposts through the Amazon Web
    -- Services SDKs, you provide the Outposts bucket ARN in place of the
    -- bucket name. For more information about S3 on Outposts ARNs, see
    -- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html Using Amazon S3 on Outposts>
    -- in the /Amazon S3 User Guide/.
    bucket :: BucketName,
    -- | Object key for which the multipart upload was initiated.
    key :: ObjectKey,
    -- | ID for the initiated multipart upload.
    uploadId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CompleteMultipartUpload' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'checksumCRC32C', 'completeMultipartUpload_checksumCRC32C' - This header can be used as a data integrity check to verify that the
-- data received is the same data that was originally sent. This header
-- specifies the base64-encoded, 32-bit CRC32C checksum of the object. For
-- more information, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html Checking object integrity>
-- in the /Amazon S3 User Guide/.
--
-- 'checksumSHA1', 'completeMultipartUpload_checksumSHA1' - This header can be used as a data integrity check to verify that the
-- data received is the same data that was originally sent. This header
-- specifies the base64-encoded, 160-bit SHA-1 digest of the object. For
-- more information, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html Checking object integrity>
-- in the /Amazon S3 User Guide/.
--
-- 'expectedBucketOwner', 'completeMultipartUpload_expectedBucketOwner' - The account ID of the expected bucket owner. If the bucket is owned by a
-- different account, the request fails with the HTTP status code
-- @403 Forbidden@ (access denied).
--
-- 'checksumCRC32', 'completeMultipartUpload_checksumCRC32' - This header can be used as a data integrity check to verify that the
-- data received is the same data that was originally sent. This header
-- specifies the base64-encoded, 32-bit CRC32 checksum of the object. For
-- more information, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html Checking object integrity>
-- in the /Amazon S3 User Guide/.
--
-- 'requestPayer', 'completeMultipartUpload_requestPayer' - Undocumented member.
--
-- 'checksumSHA256', 'completeMultipartUpload_checksumSHA256' - This header can be used as a data integrity check to verify that the
-- data received is the same data that was originally sent. This header
-- specifies the base64-encoded, 256-bit SHA-256 digest of the object. For
-- more information, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html Checking object integrity>
-- in the /Amazon S3 User Guide/.
--
-- 'sSECustomerAlgorithm', 'completeMultipartUpload_sSECustomerAlgorithm' - The server-side encryption (SSE) algorithm used to encrypt the object.
-- This parameter is needed only when the object was created using a
-- checksum algorithm. For more information, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html Protecting data using SSE-C keys>
-- in the /Amazon S3 User Guide/.
--
-- 'sSECustomerKeyMD5', 'completeMultipartUpload_sSECustomerKeyMD5' - The MD5 server-side encryption (SSE) customer managed key. This
-- parameter is needed only when the object was created using a checksum
-- algorithm. For more information, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html Protecting data using SSE-C keys>
-- in the /Amazon S3 User Guide/.
--
-- 'multipartUpload', 'completeMultipartUpload_multipartUpload' - The container for the multipart upload request information.
--
-- 'sSECustomerKey', 'completeMultipartUpload_sSECustomerKey' - The server-side encryption (SSE) customer managed key. This parameter is
-- needed only when the object was created using a checksum algorithm. For
-- more information, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html Protecting data using SSE-C keys>
-- in the /Amazon S3 User Guide/.
--
-- 'bucket', 'completeMultipartUpload_bucket' - Name of the bucket to which the multipart upload was initiated.
--
-- When using this action with an access point, you must direct requests to
-- the access point hostname. The access point hostname takes the form
-- /AccessPointName/-/AccountId/.s3-accesspoint./Region/.amazonaws.com.
-- When using this action with an access point through the Amazon Web
-- Services SDKs, you provide the access point ARN in place of the bucket
-- name. For more information about access point ARNs, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html Using access points>
-- in the /Amazon S3 User Guide/.
--
-- When using this action with Amazon S3 on Outposts, you must direct
-- requests to the S3 on Outposts hostname. The S3 on Outposts hostname
-- takes the form
-- @ AccessPointName-AccountId.outpostID.s3-outposts.Region.amazonaws.com@.
-- When using this action with S3 on Outposts through the Amazon Web
-- Services SDKs, you provide the Outposts bucket ARN in place of the
-- bucket name. For more information about S3 on Outposts ARNs, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html Using Amazon S3 on Outposts>
-- in the /Amazon S3 User Guide/.
--
-- 'key', 'completeMultipartUpload_key' - Object key for which the multipart upload was initiated.
--
-- 'uploadId', 'completeMultipartUpload_uploadId' - ID for the initiated multipart upload.
newCompleteMultipartUpload ::
  -- | 'bucket'
  BucketName ->
  -- | 'key'
  ObjectKey ->
  -- | 'uploadId'
  Prelude.Text ->
  CompleteMultipartUpload
newCompleteMultipartUpload pBucket_ pKey_ pUploadId_ =
  CompleteMultipartUpload'
    { checksumCRC32C =
        Prelude.Nothing,
      checksumSHA1 = Prelude.Nothing,
      expectedBucketOwner = Prelude.Nothing,
      checksumCRC32 = Prelude.Nothing,
      requestPayer = Prelude.Nothing,
      checksumSHA256 = Prelude.Nothing,
      sSECustomerAlgorithm = Prelude.Nothing,
      sSECustomerKeyMD5 = Prelude.Nothing,
      multipartUpload = Prelude.Nothing,
      sSECustomerKey = Prelude.Nothing,
      bucket = pBucket_,
      key = pKey_,
      uploadId = pUploadId_
    }

-- | This header can be used as a data integrity check to verify that the
-- data received is the same data that was originally sent. This header
-- specifies the base64-encoded, 32-bit CRC32C checksum of the object. For
-- more information, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html Checking object integrity>
-- in the /Amazon S3 User Guide/.
completeMultipartUpload_checksumCRC32C :: Lens.Lens' CompleteMultipartUpload (Prelude.Maybe Prelude.Text)
completeMultipartUpload_checksumCRC32C = Lens.lens (\CompleteMultipartUpload' {checksumCRC32C} -> checksumCRC32C) (\s@CompleteMultipartUpload' {} a -> s {checksumCRC32C = a} :: CompleteMultipartUpload)

-- | This header can be used as a data integrity check to verify that the
-- data received is the same data that was originally sent. This header
-- specifies the base64-encoded, 160-bit SHA-1 digest of the object. For
-- more information, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html Checking object integrity>
-- in the /Amazon S3 User Guide/.
completeMultipartUpload_checksumSHA1 :: Lens.Lens' CompleteMultipartUpload (Prelude.Maybe Prelude.Text)
completeMultipartUpload_checksumSHA1 = Lens.lens (\CompleteMultipartUpload' {checksumSHA1} -> checksumSHA1) (\s@CompleteMultipartUpload' {} a -> s {checksumSHA1 = a} :: CompleteMultipartUpload)

-- | The account ID of the expected bucket owner. If the bucket is owned by a
-- different account, the request fails with the HTTP status code
-- @403 Forbidden@ (access denied).
completeMultipartUpload_expectedBucketOwner :: Lens.Lens' CompleteMultipartUpload (Prelude.Maybe Prelude.Text)
completeMultipartUpload_expectedBucketOwner = Lens.lens (\CompleteMultipartUpload' {expectedBucketOwner} -> expectedBucketOwner) (\s@CompleteMultipartUpload' {} a -> s {expectedBucketOwner = a} :: CompleteMultipartUpload)

-- | This header can be used as a data integrity check to verify that the
-- data received is the same data that was originally sent. This header
-- specifies the base64-encoded, 32-bit CRC32 checksum of the object. For
-- more information, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html Checking object integrity>
-- in the /Amazon S3 User Guide/.
completeMultipartUpload_checksumCRC32 :: Lens.Lens' CompleteMultipartUpload (Prelude.Maybe Prelude.Text)
completeMultipartUpload_checksumCRC32 = Lens.lens (\CompleteMultipartUpload' {checksumCRC32} -> checksumCRC32) (\s@CompleteMultipartUpload' {} a -> s {checksumCRC32 = a} :: CompleteMultipartUpload)

-- | Undocumented member.
completeMultipartUpload_requestPayer :: Lens.Lens' CompleteMultipartUpload (Prelude.Maybe RequestPayer)
completeMultipartUpload_requestPayer = Lens.lens (\CompleteMultipartUpload' {requestPayer} -> requestPayer) (\s@CompleteMultipartUpload' {} a -> s {requestPayer = a} :: CompleteMultipartUpload)

-- | This header can be used as a data integrity check to verify that the
-- data received is the same data that was originally sent. This header
-- specifies the base64-encoded, 256-bit SHA-256 digest of the object. For
-- more information, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html Checking object integrity>
-- in the /Amazon S3 User Guide/.
completeMultipartUpload_checksumSHA256 :: Lens.Lens' CompleteMultipartUpload (Prelude.Maybe Prelude.Text)
completeMultipartUpload_checksumSHA256 = Lens.lens (\CompleteMultipartUpload' {checksumSHA256} -> checksumSHA256) (\s@CompleteMultipartUpload' {} a -> s {checksumSHA256 = a} :: CompleteMultipartUpload)

-- | The server-side encryption (SSE) algorithm used to encrypt the object.
-- This parameter is needed only when the object was created using a
-- checksum algorithm. For more information, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html Protecting data using SSE-C keys>
-- in the /Amazon S3 User Guide/.
completeMultipartUpload_sSECustomerAlgorithm :: Lens.Lens' CompleteMultipartUpload (Prelude.Maybe Prelude.Text)
completeMultipartUpload_sSECustomerAlgorithm = Lens.lens (\CompleteMultipartUpload' {sSECustomerAlgorithm} -> sSECustomerAlgorithm) (\s@CompleteMultipartUpload' {} a -> s {sSECustomerAlgorithm = a} :: CompleteMultipartUpload)

-- | The MD5 server-side encryption (SSE) customer managed key. This
-- parameter is needed only when the object was created using a checksum
-- algorithm. For more information, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html Protecting data using SSE-C keys>
-- in the /Amazon S3 User Guide/.
completeMultipartUpload_sSECustomerKeyMD5 :: Lens.Lens' CompleteMultipartUpload (Prelude.Maybe Prelude.Text)
completeMultipartUpload_sSECustomerKeyMD5 = Lens.lens (\CompleteMultipartUpload' {sSECustomerKeyMD5} -> sSECustomerKeyMD5) (\s@CompleteMultipartUpload' {} a -> s {sSECustomerKeyMD5 = a} :: CompleteMultipartUpload)

-- | The container for the multipart upload request information.
completeMultipartUpload_multipartUpload :: Lens.Lens' CompleteMultipartUpload (Prelude.Maybe CompletedMultipartUpload)
completeMultipartUpload_multipartUpload = Lens.lens (\CompleteMultipartUpload' {multipartUpload} -> multipartUpload) (\s@CompleteMultipartUpload' {} a -> s {multipartUpload = a} :: CompleteMultipartUpload)

-- | The server-side encryption (SSE) customer managed key. This parameter is
-- needed only when the object was created using a checksum algorithm. For
-- more information, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html Protecting data using SSE-C keys>
-- in the /Amazon S3 User Guide/.
completeMultipartUpload_sSECustomerKey :: Lens.Lens' CompleteMultipartUpload (Prelude.Maybe Prelude.Text)
completeMultipartUpload_sSECustomerKey = Lens.lens (\CompleteMultipartUpload' {sSECustomerKey} -> sSECustomerKey) (\s@CompleteMultipartUpload' {} a -> s {sSECustomerKey = a} :: CompleteMultipartUpload) Prelude.. Lens.mapping Core._Sensitive

-- | Name of the bucket to which the multipart upload was initiated.
--
-- When using this action with an access point, you must direct requests to
-- the access point hostname. The access point hostname takes the form
-- /AccessPointName/-/AccountId/.s3-accesspoint./Region/.amazonaws.com.
-- When using this action with an access point through the Amazon Web
-- Services SDKs, you provide the access point ARN in place of the bucket
-- name. For more information about access point ARNs, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html Using access points>
-- in the /Amazon S3 User Guide/.
--
-- When using this action with Amazon S3 on Outposts, you must direct
-- requests to the S3 on Outposts hostname. The S3 on Outposts hostname
-- takes the form
-- @ AccessPointName-AccountId.outpostID.s3-outposts.Region.amazonaws.com@.
-- When using this action with S3 on Outposts through the Amazon Web
-- Services SDKs, you provide the Outposts bucket ARN in place of the
-- bucket name. For more information about S3 on Outposts ARNs, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html Using Amazon S3 on Outposts>
-- in the /Amazon S3 User Guide/.
completeMultipartUpload_bucket :: Lens.Lens' CompleteMultipartUpload BucketName
completeMultipartUpload_bucket = Lens.lens (\CompleteMultipartUpload' {bucket} -> bucket) (\s@CompleteMultipartUpload' {} a -> s {bucket = a} :: CompleteMultipartUpload)

-- | Object key for which the multipart upload was initiated.
completeMultipartUpload_key :: Lens.Lens' CompleteMultipartUpload ObjectKey
completeMultipartUpload_key = Lens.lens (\CompleteMultipartUpload' {key} -> key) (\s@CompleteMultipartUpload' {} a -> s {key = a} :: CompleteMultipartUpload)

-- | ID for the initiated multipart upload.
completeMultipartUpload_uploadId :: Lens.Lens' CompleteMultipartUpload Prelude.Text
completeMultipartUpload_uploadId = Lens.lens (\CompleteMultipartUpload' {uploadId} -> uploadId) (\s@CompleteMultipartUpload' {} a -> s {uploadId = a} :: CompleteMultipartUpload)

instance Core.AWSRequest CompleteMultipartUpload where
  type
    AWSResponse CompleteMultipartUpload =
      CompleteMultipartUploadResponse
  request =
    Request.s3vhost
      Prelude.. Request.postXML defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          CompleteMultipartUploadResponse'
            Prelude.<$> (h Core..#? "x-amz-server-side-encryption")
            Prelude.<*> (x Core..@? "Key")
            Prelude.<*> (x Core..@? "ChecksumCRC32C")
            Prelude.<*> ( h
                            Core..#? "x-amz-server-side-encryption-bucket-key-enabled"
                        )
            Prelude.<*> (h Core..#? "x-amz-expiration")
            Prelude.<*> (h Core..#? "x-amz-request-charged")
            Prelude.<*> (x Core..@? "ChecksumSHA1")
            Prelude.<*> (x Core..@? "Bucket")
            Prelude.<*> (x Core..@? "ChecksumCRC32")
            Prelude.<*> ( h
                            Core..#? "x-amz-server-side-encryption-aws-kms-key-id"
                        )
            Prelude.<*> (x Core..@? "ChecksumSHA256")
            Prelude.<*> (x Core..@? "Location")
            Prelude.<*> (x Core..@? "ETag")
            Prelude.<*> (h Core..#? "x-amz-version-id")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CompleteMultipartUpload where
  hashWithSalt _salt CompleteMultipartUpload' {..} =
    _salt `Prelude.hashWithSalt` checksumCRC32C
      `Prelude.hashWithSalt` checksumSHA1
      `Prelude.hashWithSalt` expectedBucketOwner
      `Prelude.hashWithSalt` checksumCRC32
      `Prelude.hashWithSalt` requestPayer
      `Prelude.hashWithSalt` checksumSHA256
      `Prelude.hashWithSalt` sSECustomerAlgorithm
      `Prelude.hashWithSalt` sSECustomerKeyMD5
      `Prelude.hashWithSalt` multipartUpload
      `Prelude.hashWithSalt` sSECustomerKey
      `Prelude.hashWithSalt` bucket
      `Prelude.hashWithSalt` key
      `Prelude.hashWithSalt` uploadId

instance Prelude.NFData CompleteMultipartUpload where
  rnf CompleteMultipartUpload' {..} =
    Prelude.rnf checksumCRC32C
      `Prelude.seq` Prelude.rnf checksumSHA1
      `Prelude.seq` Prelude.rnf expectedBucketOwner
      `Prelude.seq` Prelude.rnf checksumCRC32
      `Prelude.seq` Prelude.rnf requestPayer
      `Prelude.seq` Prelude.rnf checksumSHA256
      `Prelude.seq` Prelude.rnf sSECustomerAlgorithm
      `Prelude.seq` Prelude.rnf sSECustomerKeyMD5
      `Prelude.seq` Prelude.rnf multipartUpload
      `Prelude.seq` Prelude.rnf sSECustomerKey
      `Prelude.seq` Prelude.rnf bucket
      `Prelude.seq` Prelude.rnf key
      `Prelude.seq` Prelude.rnf uploadId

instance Core.ToElement CompleteMultipartUpload where
  toElement CompleteMultipartUpload' {..} =
    Core.mkElement
      "{http://s3.amazonaws.com/doc/2006-03-01/}CompleteMultipartUpload"
      multipartUpload

instance Core.ToHeaders CompleteMultipartUpload where
  toHeaders CompleteMultipartUpload' {..} =
    Prelude.mconcat
      [ "x-amz-checksum-crc32c" Core.=# checksumCRC32C,
        "x-amz-checksum-sha1" Core.=# checksumSHA1,
        "x-amz-expected-bucket-owner"
          Core.=# expectedBucketOwner,
        "x-amz-checksum-crc32" Core.=# checksumCRC32,
        "x-amz-request-payer" Core.=# requestPayer,
        "x-amz-checksum-sha256" Core.=# checksumSHA256,
        "x-amz-server-side-encryption-customer-algorithm"
          Core.=# sSECustomerAlgorithm,
        "x-amz-server-side-encryption-customer-key-MD5"
          Core.=# sSECustomerKeyMD5,
        "x-amz-server-side-encryption-customer-key"
          Core.=# sSECustomerKey
      ]

instance Core.ToPath CompleteMultipartUpload where
  toPath CompleteMultipartUpload' {..} =
    Prelude.mconcat
      ["/", Core.toBS bucket, "/", Core.toBS key]

instance Core.ToQuery CompleteMultipartUpload where
  toQuery CompleteMultipartUpload' {..} =
    Prelude.mconcat ["uploadId" Core.=: uploadId]

-- | /See:/ 'newCompleteMultipartUploadResponse' smart constructor.
data CompleteMultipartUploadResponse = CompleteMultipartUploadResponse'
  { -- | If you specified server-side encryption either with an Amazon S3-managed
    -- encryption key or an Amazon Web Services KMS key in your initiate
    -- multipart upload request, the response includes this header. It confirms
    -- the encryption algorithm that Amazon S3 used to encrypt the object.
    serverSideEncryption :: Prelude.Maybe ServerSideEncryption,
    -- | The object key of the newly created object.
    key :: Prelude.Maybe ObjectKey,
    -- | The base64-encoded, 32-bit CRC32C checksum of the object. This will only
    -- be present if it was uploaded with the object. With multipart uploads,
    -- this may not be a checksum value of the object. For more information
    -- about how checksums are calculated with multipart uploads, see
    -- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums Checking object integrity>
    -- in the /Amazon S3 User Guide/.
    checksumCRC32C :: Prelude.Maybe Prelude.Text,
    -- | Indicates whether the multipart upload uses an S3 Bucket Key for
    -- server-side encryption with Amazon Web Services KMS (SSE-KMS).
    bucketKeyEnabled :: Prelude.Maybe Prelude.Bool,
    -- | If the object expiration is configured, this will contain the expiration
    -- date (@expiry-date@) and rule ID (@rule-id@). The value of @rule-id@ is
    -- URL-encoded.
    expiration :: Prelude.Maybe Prelude.Text,
    requestCharged :: Prelude.Maybe RequestCharged,
    -- | The base64-encoded, 160-bit SHA-1 digest of the object. This will only
    -- be present if it was uploaded with the object. With multipart uploads,
    -- this may not be a checksum value of the object. For more information
    -- about how checksums are calculated with multipart uploads, see
    -- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums Checking object integrity>
    -- in the /Amazon S3 User Guide/.
    checksumSHA1 :: Prelude.Maybe Prelude.Text,
    -- | The name of the bucket that contains the newly created object. Does not
    -- return the access point ARN or access point alias if used.
    --
    -- When using this action with an access point, you must direct requests to
    -- the access point hostname. The access point hostname takes the form
    -- /AccessPointName/-/AccountId/.s3-accesspoint./Region/.amazonaws.com.
    -- When using this action with an access point through the Amazon Web
    -- Services SDKs, you provide the access point ARN in place of the bucket
    -- name. For more information about access point ARNs, see
    -- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html Using access points>
    -- in the /Amazon S3 User Guide/.
    --
    -- When using this action with Amazon S3 on Outposts, you must direct
    -- requests to the S3 on Outposts hostname. The S3 on Outposts hostname
    -- takes the form
    -- @ AccessPointName-AccountId.outpostID.s3-outposts.Region.amazonaws.com@.
    -- When using this action with S3 on Outposts through the Amazon Web
    -- Services SDKs, you provide the Outposts bucket ARN in place of the
    -- bucket name. For more information about S3 on Outposts ARNs, see
    -- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html Using Amazon S3 on Outposts>
    -- in the /Amazon S3 User Guide/.
    bucket :: Prelude.Maybe BucketName,
    -- | The base64-encoded, 32-bit CRC32 checksum of the object. This will only
    -- be present if it was uploaded with the object. With multipart uploads,
    -- this may not be a checksum value of the object. For more information
    -- about how checksums are calculated with multipart uploads, see
    -- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums Checking object integrity>
    -- in the /Amazon S3 User Guide/.
    checksumCRC32 :: Prelude.Maybe Prelude.Text,
    -- | If present, specifies the ID of the Amazon Web Services Key Management
    -- Service (Amazon Web Services KMS) symmetric customer managed key that
    -- was used for the object.
    sSEKMSKeyId :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The base64-encoded, 256-bit SHA-256 digest of the object. This will only
    -- be present if it was uploaded with the object. With multipart uploads,
    -- this may not be a checksum value of the object. For more information
    -- about how checksums are calculated with multipart uploads, see
    -- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums Checking object integrity>
    -- in the /Amazon S3 User Guide/.
    checksumSHA256 :: Prelude.Maybe Prelude.Text,
    -- | The URI that identifies the newly created object.
    location :: Prelude.Maybe Prelude.Text,
    -- | Entity tag that identifies the newly created object\'s data. Objects
    -- with different object data will have different entity tags. The entity
    -- tag is an opaque string. The entity tag may or may not be an MD5 digest
    -- of the object data. If the entity tag is not an MD5 digest of the object
    -- data, it will contain one or more nonhexadecimal characters and\/or will
    -- consist of less than 32 or more than 32 hexadecimal digits. For more
    -- information about how the entity tag is calculated, see
    -- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html Checking object integrity>
    -- in the /Amazon S3 User Guide/.
    eTag :: Prelude.Maybe ETag,
    -- | Version ID of the newly created object, in case the bucket has
    -- versioning turned on.
    versionId :: Prelude.Maybe ObjectVersionId,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CompleteMultipartUploadResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'serverSideEncryption', 'completeMultipartUploadResponse_serverSideEncryption' - If you specified server-side encryption either with an Amazon S3-managed
-- encryption key or an Amazon Web Services KMS key in your initiate
-- multipart upload request, the response includes this header. It confirms
-- the encryption algorithm that Amazon S3 used to encrypt the object.
--
-- 'key', 'completeMultipartUploadResponse_key' - The object key of the newly created object.
--
-- 'checksumCRC32C', 'completeMultipartUploadResponse_checksumCRC32C' - The base64-encoded, 32-bit CRC32C checksum of the object. This will only
-- be present if it was uploaded with the object. With multipart uploads,
-- this may not be a checksum value of the object. For more information
-- about how checksums are calculated with multipart uploads, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums Checking object integrity>
-- in the /Amazon S3 User Guide/.
--
-- 'bucketKeyEnabled', 'completeMultipartUploadResponse_bucketKeyEnabled' - Indicates whether the multipart upload uses an S3 Bucket Key for
-- server-side encryption with Amazon Web Services KMS (SSE-KMS).
--
-- 'expiration', 'completeMultipartUploadResponse_expiration' - If the object expiration is configured, this will contain the expiration
-- date (@expiry-date@) and rule ID (@rule-id@). The value of @rule-id@ is
-- URL-encoded.
--
-- 'requestCharged', 'completeMultipartUploadResponse_requestCharged' - Undocumented member.
--
-- 'checksumSHA1', 'completeMultipartUploadResponse_checksumSHA1' - The base64-encoded, 160-bit SHA-1 digest of the object. This will only
-- be present if it was uploaded with the object. With multipart uploads,
-- this may not be a checksum value of the object. For more information
-- about how checksums are calculated with multipart uploads, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums Checking object integrity>
-- in the /Amazon S3 User Guide/.
--
-- 'bucket', 'completeMultipartUploadResponse_bucket' - The name of the bucket that contains the newly created object. Does not
-- return the access point ARN or access point alias if used.
--
-- When using this action with an access point, you must direct requests to
-- the access point hostname. The access point hostname takes the form
-- /AccessPointName/-/AccountId/.s3-accesspoint./Region/.amazonaws.com.
-- When using this action with an access point through the Amazon Web
-- Services SDKs, you provide the access point ARN in place of the bucket
-- name. For more information about access point ARNs, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html Using access points>
-- in the /Amazon S3 User Guide/.
--
-- When using this action with Amazon S3 on Outposts, you must direct
-- requests to the S3 on Outposts hostname. The S3 on Outposts hostname
-- takes the form
-- @ AccessPointName-AccountId.outpostID.s3-outposts.Region.amazonaws.com@.
-- When using this action with S3 on Outposts through the Amazon Web
-- Services SDKs, you provide the Outposts bucket ARN in place of the
-- bucket name. For more information about S3 on Outposts ARNs, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html Using Amazon S3 on Outposts>
-- in the /Amazon S3 User Guide/.
--
-- 'checksumCRC32', 'completeMultipartUploadResponse_checksumCRC32' - The base64-encoded, 32-bit CRC32 checksum of the object. This will only
-- be present if it was uploaded with the object. With multipart uploads,
-- this may not be a checksum value of the object. For more information
-- about how checksums are calculated with multipart uploads, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums Checking object integrity>
-- in the /Amazon S3 User Guide/.
--
-- 'sSEKMSKeyId', 'completeMultipartUploadResponse_sSEKMSKeyId' - If present, specifies the ID of the Amazon Web Services Key Management
-- Service (Amazon Web Services KMS) symmetric customer managed key that
-- was used for the object.
--
-- 'checksumSHA256', 'completeMultipartUploadResponse_checksumSHA256' - The base64-encoded, 256-bit SHA-256 digest of the object. This will only
-- be present if it was uploaded with the object. With multipart uploads,
-- this may not be a checksum value of the object. For more information
-- about how checksums are calculated with multipart uploads, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums Checking object integrity>
-- in the /Amazon S3 User Guide/.
--
-- 'location', 'completeMultipartUploadResponse_location' - The URI that identifies the newly created object.
--
-- 'eTag', 'completeMultipartUploadResponse_eTag' - Entity tag that identifies the newly created object\'s data. Objects
-- with different object data will have different entity tags. The entity
-- tag is an opaque string. The entity tag may or may not be an MD5 digest
-- of the object data. If the entity tag is not an MD5 digest of the object
-- data, it will contain one or more nonhexadecimal characters and\/or will
-- consist of less than 32 or more than 32 hexadecimal digits. For more
-- information about how the entity tag is calculated, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html Checking object integrity>
-- in the /Amazon S3 User Guide/.
--
-- 'versionId', 'completeMultipartUploadResponse_versionId' - Version ID of the newly created object, in case the bucket has
-- versioning turned on.
--
-- 'httpStatus', 'completeMultipartUploadResponse_httpStatus' - The response's http status code.
newCompleteMultipartUploadResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CompleteMultipartUploadResponse
newCompleteMultipartUploadResponse pHttpStatus_ =
  CompleteMultipartUploadResponse'
    { serverSideEncryption =
        Prelude.Nothing,
      key = Prelude.Nothing,
      checksumCRC32C = Prelude.Nothing,
      bucketKeyEnabled = Prelude.Nothing,
      expiration = Prelude.Nothing,
      requestCharged = Prelude.Nothing,
      checksumSHA1 = Prelude.Nothing,
      bucket = Prelude.Nothing,
      checksumCRC32 = Prelude.Nothing,
      sSEKMSKeyId = Prelude.Nothing,
      checksumSHA256 = Prelude.Nothing,
      location = Prelude.Nothing,
      eTag = Prelude.Nothing,
      versionId = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If you specified server-side encryption either with an Amazon S3-managed
-- encryption key or an Amazon Web Services KMS key in your initiate
-- multipart upload request, the response includes this header. It confirms
-- the encryption algorithm that Amazon S3 used to encrypt the object.
completeMultipartUploadResponse_serverSideEncryption :: Lens.Lens' CompleteMultipartUploadResponse (Prelude.Maybe ServerSideEncryption)
completeMultipartUploadResponse_serverSideEncryption = Lens.lens (\CompleteMultipartUploadResponse' {serverSideEncryption} -> serverSideEncryption) (\s@CompleteMultipartUploadResponse' {} a -> s {serverSideEncryption = a} :: CompleteMultipartUploadResponse)

-- | The object key of the newly created object.
completeMultipartUploadResponse_key :: Lens.Lens' CompleteMultipartUploadResponse (Prelude.Maybe ObjectKey)
completeMultipartUploadResponse_key = Lens.lens (\CompleteMultipartUploadResponse' {key} -> key) (\s@CompleteMultipartUploadResponse' {} a -> s {key = a} :: CompleteMultipartUploadResponse)

-- | The base64-encoded, 32-bit CRC32C checksum of the object. This will only
-- be present if it was uploaded with the object. With multipart uploads,
-- this may not be a checksum value of the object. For more information
-- about how checksums are calculated with multipart uploads, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums Checking object integrity>
-- in the /Amazon S3 User Guide/.
completeMultipartUploadResponse_checksumCRC32C :: Lens.Lens' CompleteMultipartUploadResponse (Prelude.Maybe Prelude.Text)
completeMultipartUploadResponse_checksumCRC32C = Lens.lens (\CompleteMultipartUploadResponse' {checksumCRC32C} -> checksumCRC32C) (\s@CompleteMultipartUploadResponse' {} a -> s {checksumCRC32C = a} :: CompleteMultipartUploadResponse)

-- | Indicates whether the multipart upload uses an S3 Bucket Key for
-- server-side encryption with Amazon Web Services KMS (SSE-KMS).
completeMultipartUploadResponse_bucketKeyEnabled :: Lens.Lens' CompleteMultipartUploadResponse (Prelude.Maybe Prelude.Bool)
completeMultipartUploadResponse_bucketKeyEnabled = Lens.lens (\CompleteMultipartUploadResponse' {bucketKeyEnabled} -> bucketKeyEnabled) (\s@CompleteMultipartUploadResponse' {} a -> s {bucketKeyEnabled = a} :: CompleteMultipartUploadResponse)

-- | If the object expiration is configured, this will contain the expiration
-- date (@expiry-date@) and rule ID (@rule-id@). The value of @rule-id@ is
-- URL-encoded.
completeMultipartUploadResponse_expiration :: Lens.Lens' CompleteMultipartUploadResponse (Prelude.Maybe Prelude.Text)
completeMultipartUploadResponse_expiration = Lens.lens (\CompleteMultipartUploadResponse' {expiration} -> expiration) (\s@CompleteMultipartUploadResponse' {} a -> s {expiration = a} :: CompleteMultipartUploadResponse)

-- | Undocumented member.
completeMultipartUploadResponse_requestCharged :: Lens.Lens' CompleteMultipartUploadResponse (Prelude.Maybe RequestCharged)
completeMultipartUploadResponse_requestCharged = Lens.lens (\CompleteMultipartUploadResponse' {requestCharged} -> requestCharged) (\s@CompleteMultipartUploadResponse' {} a -> s {requestCharged = a} :: CompleteMultipartUploadResponse)

-- | The base64-encoded, 160-bit SHA-1 digest of the object. This will only
-- be present if it was uploaded with the object. With multipart uploads,
-- this may not be a checksum value of the object. For more information
-- about how checksums are calculated with multipart uploads, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums Checking object integrity>
-- in the /Amazon S3 User Guide/.
completeMultipartUploadResponse_checksumSHA1 :: Lens.Lens' CompleteMultipartUploadResponse (Prelude.Maybe Prelude.Text)
completeMultipartUploadResponse_checksumSHA1 = Lens.lens (\CompleteMultipartUploadResponse' {checksumSHA1} -> checksumSHA1) (\s@CompleteMultipartUploadResponse' {} a -> s {checksumSHA1 = a} :: CompleteMultipartUploadResponse)

-- | The name of the bucket that contains the newly created object. Does not
-- return the access point ARN or access point alias if used.
--
-- When using this action with an access point, you must direct requests to
-- the access point hostname. The access point hostname takes the form
-- /AccessPointName/-/AccountId/.s3-accesspoint./Region/.amazonaws.com.
-- When using this action with an access point through the Amazon Web
-- Services SDKs, you provide the access point ARN in place of the bucket
-- name. For more information about access point ARNs, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html Using access points>
-- in the /Amazon S3 User Guide/.
--
-- When using this action with Amazon S3 on Outposts, you must direct
-- requests to the S3 on Outposts hostname. The S3 on Outposts hostname
-- takes the form
-- @ AccessPointName-AccountId.outpostID.s3-outposts.Region.amazonaws.com@.
-- When using this action with S3 on Outposts through the Amazon Web
-- Services SDKs, you provide the Outposts bucket ARN in place of the
-- bucket name. For more information about S3 on Outposts ARNs, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html Using Amazon S3 on Outposts>
-- in the /Amazon S3 User Guide/.
completeMultipartUploadResponse_bucket :: Lens.Lens' CompleteMultipartUploadResponse (Prelude.Maybe BucketName)
completeMultipartUploadResponse_bucket = Lens.lens (\CompleteMultipartUploadResponse' {bucket} -> bucket) (\s@CompleteMultipartUploadResponse' {} a -> s {bucket = a} :: CompleteMultipartUploadResponse)

-- | The base64-encoded, 32-bit CRC32 checksum of the object. This will only
-- be present if it was uploaded with the object. With multipart uploads,
-- this may not be a checksum value of the object. For more information
-- about how checksums are calculated with multipart uploads, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums Checking object integrity>
-- in the /Amazon S3 User Guide/.
completeMultipartUploadResponse_checksumCRC32 :: Lens.Lens' CompleteMultipartUploadResponse (Prelude.Maybe Prelude.Text)
completeMultipartUploadResponse_checksumCRC32 = Lens.lens (\CompleteMultipartUploadResponse' {checksumCRC32} -> checksumCRC32) (\s@CompleteMultipartUploadResponse' {} a -> s {checksumCRC32 = a} :: CompleteMultipartUploadResponse)

-- | If present, specifies the ID of the Amazon Web Services Key Management
-- Service (Amazon Web Services KMS) symmetric customer managed key that
-- was used for the object.
completeMultipartUploadResponse_sSEKMSKeyId :: Lens.Lens' CompleteMultipartUploadResponse (Prelude.Maybe Prelude.Text)
completeMultipartUploadResponse_sSEKMSKeyId = Lens.lens (\CompleteMultipartUploadResponse' {sSEKMSKeyId} -> sSEKMSKeyId) (\s@CompleteMultipartUploadResponse' {} a -> s {sSEKMSKeyId = a} :: CompleteMultipartUploadResponse) Prelude.. Lens.mapping Core._Sensitive

-- | The base64-encoded, 256-bit SHA-256 digest of the object. This will only
-- be present if it was uploaded with the object. With multipart uploads,
-- this may not be a checksum value of the object. For more information
-- about how checksums are calculated with multipart uploads, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums Checking object integrity>
-- in the /Amazon S3 User Guide/.
completeMultipartUploadResponse_checksumSHA256 :: Lens.Lens' CompleteMultipartUploadResponse (Prelude.Maybe Prelude.Text)
completeMultipartUploadResponse_checksumSHA256 = Lens.lens (\CompleteMultipartUploadResponse' {checksumSHA256} -> checksumSHA256) (\s@CompleteMultipartUploadResponse' {} a -> s {checksumSHA256 = a} :: CompleteMultipartUploadResponse)

-- | The URI that identifies the newly created object.
completeMultipartUploadResponse_location :: Lens.Lens' CompleteMultipartUploadResponse (Prelude.Maybe Prelude.Text)
completeMultipartUploadResponse_location = Lens.lens (\CompleteMultipartUploadResponse' {location} -> location) (\s@CompleteMultipartUploadResponse' {} a -> s {location = a} :: CompleteMultipartUploadResponse)

-- | Entity tag that identifies the newly created object\'s data. Objects
-- with different object data will have different entity tags. The entity
-- tag is an opaque string. The entity tag may or may not be an MD5 digest
-- of the object data. If the entity tag is not an MD5 digest of the object
-- data, it will contain one or more nonhexadecimal characters and\/or will
-- consist of less than 32 or more than 32 hexadecimal digits. For more
-- information about how the entity tag is calculated, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html Checking object integrity>
-- in the /Amazon S3 User Guide/.
completeMultipartUploadResponse_eTag :: Lens.Lens' CompleteMultipartUploadResponse (Prelude.Maybe ETag)
completeMultipartUploadResponse_eTag = Lens.lens (\CompleteMultipartUploadResponse' {eTag} -> eTag) (\s@CompleteMultipartUploadResponse' {} a -> s {eTag = a} :: CompleteMultipartUploadResponse)

-- | Version ID of the newly created object, in case the bucket has
-- versioning turned on.
completeMultipartUploadResponse_versionId :: Lens.Lens' CompleteMultipartUploadResponse (Prelude.Maybe ObjectVersionId)
completeMultipartUploadResponse_versionId = Lens.lens (\CompleteMultipartUploadResponse' {versionId} -> versionId) (\s@CompleteMultipartUploadResponse' {} a -> s {versionId = a} :: CompleteMultipartUploadResponse)

-- | The response's http status code.
completeMultipartUploadResponse_httpStatus :: Lens.Lens' CompleteMultipartUploadResponse Prelude.Int
completeMultipartUploadResponse_httpStatus = Lens.lens (\CompleteMultipartUploadResponse' {httpStatus} -> httpStatus) (\s@CompleteMultipartUploadResponse' {} a -> s {httpStatus = a} :: CompleteMultipartUploadResponse)

instance
  Prelude.NFData
    CompleteMultipartUploadResponse
  where
  rnf CompleteMultipartUploadResponse' {..} =
    Prelude.rnf serverSideEncryption
      `Prelude.seq` Prelude.rnf key
      `Prelude.seq` Prelude.rnf checksumCRC32C
      `Prelude.seq` Prelude.rnf bucketKeyEnabled
      `Prelude.seq` Prelude.rnf expiration
      `Prelude.seq` Prelude.rnf requestCharged
      `Prelude.seq` Prelude.rnf checksumSHA1
      `Prelude.seq` Prelude.rnf bucket
      `Prelude.seq` Prelude.rnf checksumCRC32
      `Prelude.seq` Prelude.rnf sSEKMSKeyId
      `Prelude.seq` Prelude.rnf checksumSHA256
      `Prelude.seq` Prelude.rnf location
      `Prelude.seq` Prelude.rnf eTag
      `Prelude.seq` Prelude.rnf versionId
      `Prelude.seq` Prelude.rnf httpStatus
