{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Firehose.Types.S3DestinationUpdate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Firehose.Types.S3DestinationUpdate where

import qualified Amazonka.Core as Core
import Amazonka.Firehose.Types.BufferingHints
import Amazonka.Firehose.Types.CloudWatchLoggingOptions
import Amazonka.Firehose.Types.CompressionFormat
import Amazonka.Firehose.Types.EncryptionConfiguration
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes an update for a destination in Amazon S3.
--
-- /See:/ 'newS3DestinationUpdate' smart constructor.
data S3DestinationUpdate = S3DestinationUpdate'
  { -- | The Amazon Resource Name (ARN) of the AWS credentials. For more
    -- information, see
    -- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces>.
    roleARN :: Prelude.Maybe Prelude.Text,
    -- | The buffering option. If no value is specified, @BufferingHints@ object
    -- default values are used.
    bufferingHints :: Prelude.Maybe BufferingHints,
    -- | The CloudWatch logging options for your delivery stream.
    cloudWatchLoggingOptions :: Prelude.Maybe CloudWatchLoggingOptions,
    -- | The ARN of the S3 bucket. For more information, see
    -- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces>.
    bucketARN :: Prelude.Maybe Prelude.Text,
    -- | The encryption configuration. If no value is specified, the default is
    -- no encryption.
    encryptionConfiguration :: Prelude.Maybe EncryptionConfiguration,
    -- | The \"YYYY\/MM\/DD\/HH\" time format prefix is automatically used for
    -- delivered Amazon S3 files. You can also specify a custom prefix, as
    -- described in
    -- <https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html Custom Prefixes for Amazon S3 Objects>.
    prefix :: Prelude.Maybe Prelude.Text,
    -- | The compression format. If no value is specified, the default is
    -- @UNCOMPRESSED@.
    --
    -- The compression formats @SNAPPY@ or @ZIP@ cannot be specified for Amazon
    -- Redshift destinations because they are not supported by the Amazon
    -- Redshift @COPY@ operation that reads from the S3 bucket.
    compressionFormat :: Prelude.Maybe CompressionFormat,
    -- | A prefix that Kinesis Data Firehose evaluates and adds to failed records
    -- before writing them to S3. This prefix appears immediately following the
    -- bucket name. For information about how to specify this prefix, see
    -- <https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html Custom Prefixes for Amazon S3 Objects>.
    errorOutputPrefix :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'S3DestinationUpdate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'roleARN', 's3DestinationUpdate_roleARN' - The Amazon Resource Name (ARN) of the AWS credentials. For more
-- information, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces>.
--
-- 'bufferingHints', 's3DestinationUpdate_bufferingHints' - The buffering option. If no value is specified, @BufferingHints@ object
-- default values are used.
--
-- 'cloudWatchLoggingOptions', 's3DestinationUpdate_cloudWatchLoggingOptions' - The CloudWatch logging options for your delivery stream.
--
-- 'bucketARN', 's3DestinationUpdate_bucketARN' - The ARN of the S3 bucket. For more information, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces>.
--
-- 'encryptionConfiguration', 's3DestinationUpdate_encryptionConfiguration' - The encryption configuration. If no value is specified, the default is
-- no encryption.
--
-- 'prefix', 's3DestinationUpdate_prefix' - The \"YYYY\/MM\/DD\/HH\" time format prefix is automatically used for
-- delivered Amazon S3 files. You can also specify a custom prefix, as
-- described in
-- <https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html Custom Prefixes for Amazon S3 Objects>.
--
-- 'compressionFormat', 's3DestinationUpdate_compressionFormat' - The compression format. If no value is specified, the default is
-- @UNCOMPRESSED@.
--
-- The compression formats @SNAPPY@ or @ZIP@ cannot be specified for Amazon
-- Redshift destinations because they are not supported by the Amazon
-- Redshift @COPY@ operation that reads from the S3 bucket.
--
-- 'errorOutputPrefix', 's3DestinationUpdate_errorOutputPrefix' - A prefix that Kinesis Data Firehose evaluates and adds to failed records
-- before writing them to S3. This prefix appears immediately following the
-- bucket name. For information about how to specify this prefix, see
-- <https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html Custom Prefixes for Amazon S3 Objects>.
newS3DestinationUpdate ::
  S3DestinationUpdate
newS3DestinationUpdate =
  S3DestinationUpdate'
    { roleARN = Prelude.Nothing,
      bufferingHints = Prelude.Nothing,
      cloudWatchLoggingOptions = Prelude.Nothing,
      bucketARN = Prelude.Nothing,
      encryptionConfiguration = Prelude.Nothing,
      prefix = Prelude.Nothing,
      compressionFormat = Prelude.Nothing,
      errorOutputPrefix = Prelude.Nothing
    }

-- | The Amazon Resource Name (ARN) of the AWS credentials. For more
-- information, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces>.
s3DestinationUpdate_roleARN :: Lens.Lens' S3DestinationUpdate (Prelude.Maybe Prelude.Text)
s3DestinationUpdate_roleARN = Lens.lens (\S3DestinationUpdate' {roleARN} -> roleARN) (\s@S3DestinationUpdate' {} a -> s {roleARN = a} :: S3DestinationUpdate)

-- | The buffering option. If no value is specified, @BufferingHints@ object
-- default values are used.
s3DestinationUpdate_bufferingHints :: Lens.Lens' S3DestinationUpdate (Prelude.Maybe BufferingHints)
s3DestinationUpdate_bufferingHints = Lens.lens (\S3DestinationUpdate' {bufferingHints} -> bufferingHints) (\s@S3DestinationUpdate' {} a -> s {bufferingHints = a} :: S3DestinationUpdate)

-- | The CloudWatch logging options for your delivery stream.
s3DestinationUpdate_cloudWatchLoggingOptions :: Lens.Lens' S3DestinationUpdate (Prelude.Maybe CloudWatchLoggingOptions)
s3DestinationUpdate_cloudWatchLoggingOptions = Lens.lens (\S3DestinationUpdate' {cloudWatchLoggingOptions} -> cloudWatchLoggingOptions) (\s@S3DestinationUpdate' {} a -> s {cloudWatchLoggingOptions = a} :: S3DestinationUpdate)

-- | The ARN of the S3 bucket. For more information, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces>.
s3DestinationUpdate_bucketARN :: Lens.Lens' S3DestinationUpdate (Prelude.Maybe Prelude.Text)
s3DestinationUpdate_bucketARN = Lens.lens (\S3DestinationUpdate' {bucketARN} -> bucketARN) (\s@S3DestinationUpdate' {} a -> s {bucketARN = a} :: S3DestinationUpdate)

-- | The encryption configuration. If no value is specified, the default is
-- no encryption.
s3DestinationUpdate_encryptionConfiguration :: Lens.Lens' S3DestinationUpdate (Prelude.Maybe EncryptionConfiguration)
s3DestinationUpdate_encryptionConfiguration = Lens.lens (\S3DestinationUpdate' {encryptionConfiguration} -> encryptionConfiguration) (\s@S3DestinationUpdate' {} a -> s {encryptionConfiguration = a} :: S3DestinationUpdate)

-- | The \"YYYY\/MM\/DD\/HH\" time format prefix is automatically used for
-- delivered Amazon S3 files. You can also specify a custom prefix, as
-- described in
-- <https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html Custom Prefixes for Amazon S3 Objects>.
s3DestinationUpdate_prefix :: Lens.Lens' S3DestinationUpdate (Prelude.Maybe Prelude.Text)
s3DestinationUpdate_prefix = Lens.lens (\S3DestinationUpdate' {prefix} -> prefix) (\s@S3DestinationUpdate' {} a -> s {prefix = a} :: S3DestinationUpdate)

-- | The compression format. If no value is specified, the default is
-- @UNCOMPRESSED@.
--
-- The compression formats @SNAPPY@ or @ZIP@ cannot be specified for Amazon
-- Redshift destinations because they are not supported by the Amazon
-- Redshift @COPY@ operation that reads from the S3 bucket.
s3DestinationUpdate_compressionFormat :: Lens.Lens' S3DestinationUpdate (Prelude.Maybe CompressionFormat)
s3DestinationUpdate_compressionFormat = Lens.lens (\S3DestinationUpdate' {compressionFormat} -> compressionFormat) (\s@S3DestinationUpdate' {} a -> s {compressionFormat = a} :: S3DestinationUpdate)

-- | A prefix that Kinesis Data Firehose evaluates and adds to failed records
-- before writing them to S3. This prefix appears immediately following the
-- bucket name. For information about how to specify this prefix, see
-- <https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html Custom Prefixes for Amazon S3 Objects>.
s3DestinationUpdate_errorOutputPrefix :: Lens.Lens' S3DestinationUpdate (Prelude.Maybe Prelude.Text)
s3DestinationUpdate_errorOutputPrefix = Lens.lens (\S3DestinationUpdate' {errorOutputPrefix} -> errorOutputPrefix) (\s@S3DestinationUpdate' {} a -> s {errorOutputPrefix = a} :: S3DestinationUpdate)

instance Prelude.Hashable S3DestinationUpdate where
  hashWithSalt _salt S3DestinationUpdate' {..} =
    _salt `Prelude.hashWithSalt` roleARN
      `Prelude.hashWithSalt` bufferingHints
      `Prelude.hashWithSalt` cloudWatchLoggingOptions
      `Prelude.hashWithSalt` bucketARN
      `Prelude.hashWithSalt` encryptionConfiguration
      `Prelude.hashWithSalt` prefix
      `Prelude.hashWithSalt` compressionFormat
      `Prelude.hashWithSalt` errorOutputPrefix

instance Prelude.NFData S3DestinationUpdate where
  rnf S3DestinationUpdate' {..} =
    Prelude.rnf roleARN
      `Prelude.seq` Prelude.rnf bufferingHints
      `Prelude.seq` Prelude.rnf cloudWatchLoggingOptions
      `Prelude.seq` Prelude.rnf bucketARN
      `Prelude.seq` Prelude.rnf encryptionConfiguration
      `Prelude.seq` Prelude.rnf prefix
      `Prelude.seq` Prelude.rnf compressionFormat
      `Prelude.seq` Prelude.rnf errorOutputPrefix

instance Core.ToJSON S3DestinationUpdate where
  toJSON S3DestinationUpdate' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("RoleARN" Core..=) Prelude.<$> roleARN,
            ("BufferingHints" Core..=)
              Prelude.<$> bufferingHints,
            ("CloudWatchLoggingOptions" Core..=)
              Prelude.<$> cloudWatchLoggingOptions,
            ("BucketARN" Core..=) Prelude.<$> bucketARN,
            ("EncryptionConfiguration" Core..=)
              Prelude.<$> encryptionConfiguration,
            ("Prefix" Core..=) Prelude.<$> prefix,
            ("CompressionFormat" Core..=)
              Prelude.<$> compressionFormat,
            ("ErrorOutputPrefix" Core..=)
              Prelude.<$> errorOutputPrefix
          ]
      )
