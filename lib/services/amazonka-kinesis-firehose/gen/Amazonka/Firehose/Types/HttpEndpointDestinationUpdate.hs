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
-- Module      : Amazonka.Firehose.Types.HttpEndpointDestinationUpdate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Firehose.Types.HttpEndpointDestinationUpdate where

import qualified Amazonka.Core as Core
import Amazonka.Firehose.Types.CloudWatchLoggingOptions
import Amazonka.Firehose.Types.HttpEndpointBufferingHints
import Amazonka.Firehose.Types.HttpEndpointConfiguration
import Amazonka.Firehose.Types.HttpEndpointRequestConfiguration
import Amazonka.Firehose.Types.HttpEndpointRetryOptions
import Amazonka.Firehose.Types.HttpEndpointS3BackupMode
import Amazonka.Firehose.Types.ProcessingConfiguration
import Amazonka.Firehose.Types.S3DestinationUpdate
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Updates the specified HTTP endpoint destination.
--
-- /See:/ 'newHttpEndpointDestinationUpdate' smart constructor.
data HttpEndpointDestinationUpdate = HttpEndpointDestinationUpdate'
  { -- | The configuration of the request sent to the HTTP endpoint specified as
    -- the destination.
    requestConfiguration :: Prelude.Maybe HttpEndpointRequestConfiguration,
    processingConfiguration :: Prelude.Maybe ProcessingConfiguration,
    -- | Kinesis Data Firehose uses this IAM role for all the permissions that
    -- the delivery stream needs.
    roleARN :: Prelude.Maybe Prelude.Text,
    s3Update :: Prelude.Maybe S3DestinationUpdate,
    -- | Describes buffering options that can be applied to the data before it is
    -- delivered to the HTTPS endpoint destination. Kinesis Data Firehose teats
    -- these options as hints, and it might choose to use more optimal values.
    -- The @SizeInMBs@ and @IntervalInSeconds@ parameters are optional.
    -- However, if specify a value for one of them, you must also provide a
    -- value for the other.
    bufferingHints :: Prelude.Maybe HttpEndpointBufferingHints,
    cloudWatchLoggingOptions :: Prelude.Maybe CloudWatchLoggingOptions,
    -- | Describes the S3 bucket backup options for the data that Kinesis
    -- Firehose delivers to the HTTP endpoint destination. You can back up all
    -- documents (@AllData@) or only the documents that Kinesis Data Firehose
    -- could not deliver to the specified HTTP endpoint destination
    -- (@FailedDataOnly@).
    s3BackupMode :: Prelude.Maybe HttpEndpointS3BackupMode,
    -- | Describes the configuration of the HTTP endpoint destination.
    endpointConfiguration :: Prelude.Maybe HttpEndpointConfiguration,
    -- | Describes the retry behavior in case Kinesis Data Firehose is unable to
    -- deliver data to the specified HTTP endpoint destination, or if it
    -- doesn\'t receive a valid acknowledgment of receipt from the specified
    -- HTTP endpoint destination.
    retryOptions :: Prelude.Maybe HttpEndpointRetryOptions
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'HttpEndpointDestinationUpdate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestConfiguration', 'httpEndpointDestinationUpdate_requestConfiguration' - The configuration of the request sent to the HTTP endpoint specified as
-- the destination.
--
-- 'processingConfiguration', 'httpEndpointDestinationUpdate_processingConfiguration' - Undocumented member.
--
-- 'roleARN', 'httpEndpointDestinationUpdate_roleARN' - Kinesis Data Firehose uses this IAM role for all the permissions that
-- the delivery stream needs.
--
-- 's3Update', 'httpEndpointDestinationUpdate_s3Update' - Undocumented member.
--
-- 'bufferingHints', 'httpEndpointDestinationUpdate_bufferingHints' - Describes buffering options that can be applied to the data before it is
-- delivered to the HTTPS endpoint destination. Kinesis Data Firehose teats
-- these options as hints, and it might choose to use more optimal values.
-- The @SizeInMBs@ and @IntervalInSeconds@ parameters are optional.
-- However, if specify a value for one of them, you must also provide a
-- value for the other.
--
-- 'cloudWatchLoggingOptions', 'httpEndpointDestinationUpdate_cloudWatchLoggingOptions' - Undocumented member.
--
-- 's3BackupMode', 'httpEndpointDestinationUpdate_s3BackupMode' - Describes the S3 bucket backup options for the data that Kinesis
-- Firehose delivers to the HTTP endpoint destination. You can back up all
-- documents (@AllData@) or only the documents that Kinesis Data Firehose
-- could not deliver to the specified HTTP endpoint destination
-- (@FailedDataOnly@).
--
-- 'endpointConfiguration', 'httpEndpointDestinationUpdate_endpointConfiguration' - Describes the configuration of the HTTP endpoint destination.
--
-- 'retryOptions', 'httpEndpointDestinationUpdate_retryOptions' - Describes the retry behavior in case Kinesis Data Firehose is unable to
-- deliver data to the specified HTTP endpoint destination, or if it
-- doesn\'t receive a valid acknowledgment of receipt from the specified
-- HTTP endpoint destination.
newHttpEndpointDestinationUpdate ::
  HttpEndpointDestinationUpdate
newHttpEndpointDestinationUpdate =
  HttpEndpointDestinationUpdate'
    { requestConfiguration =
        Prelude.Nothing,
      processingConfiguration = Prelude.Nothing,
      roleARN = Prelude.Nothing,
      s3Update = Prelude.Nothing,
      bufferingHints = Prelude.Nothing,
      cloudWatchLoggingOptions = Prelude.Nothing,
      s3BackupMode = Prelude.Nothing,
      endpointConfiguration = Prelude.Nothing,
      retryOptions = Prelude.Nothing
    }

-- | The configuration of the request sent to the HTTP endpoint specified as
-- the destination.
httpEndpointDestinationUpdate_requestConfiguration :: Lens.Lens' HttpEndpointDestinationUpdate (Prelude.Maybe HttpEndpointRequestConfiguration)
httpEndpointDestinationUpdate_requestConfiguration = Lens.lens (\HttpEndpointDestinationUpdate' {requestConfiguration} -> requestConfiguration) (\s@HttpEndpointDestinationUpdate' {} a -> s {requestConfiguration = a} :: HttpEndpointDestinationUpdate)

-- | Undocumented member.
httpEndpointDestinationUpdate_processingConfiguration :: Lens.Lens' HttpEndpointDestinationUpdate (Prelude.Maybe ProcessingConfiguration)
httpEndpointDestinationUpdate_processingConfiguration = Lens.lens (\HttpEndpointDestinationUpdate' {processingConfiguration} -> processingConfiguration) (\s@HttpEndpointDestinationUpdate' {} a -> s {processingConfiguration = a} :: HttpEndpointDestinationUpdate)

-- | Kinesis Data Firehose uses this IAM role for all the permissions that
-- the delivery stream needs.
httpEndpointDestinationUpdate_roleARN :: Lens.Lens' HttpEndpointDestinationUpdate (Prelude.Maybe Prelude.Text)
httpEndpointDestinationUpdate_roleARN = Lens.lens (\HttpEndpointDestinationUpdate' {roleARN} -> roleARN) (\s@HttpEndpointDestinationUpdate' {} a -> s {roleARN = a} :: HttpEndpointDestinationUpdate)

-- | Undocumented member.
httpEndpointDestinationUpdate_s3Update :: Lens.Lens' HttpEndpointDestinationUpdate (Prelude.Maybe S3DestinationUpdate)
httpEndpointDestinationUpdate_s3Update = Lens.lens (\HttpEndpointDestinationUpdate' {s3Update} -> s3Update) (\s@HttpEndpointDestinationUpdate' {} a -> s {s3Update = a} :: HttpEndpointDestinationUpdate)

-- | Describes buffering options that can be applied to the data before it is
-- delivered to the HTTPS endpoint destination. Kinesis Data Firehose teats
-- these options as hints, and it might choose to use more optimal values.
-- The @SizeInMBs@ and @IntervalInSeconds@ parameters are optional.
-- However, if specify a value for one of them, you must also provide a
-- value for the other.
httpEndpointDestinationUpdate_bufferingHints :: Lens.Lens' HttpEndpointDestinationUpdate (Prelude.Maybe HttpEndpointBufferingHints)
httpEndpointDestinationUpdate_bufferingHints = Lens.lens (\HttpEndpointDestinationUpdate' {bufferingHints} -> bufferingHints) (\s@HttpEndpointDestinationUpdate' {} a -> s {bufferingHints = a} :: HttpEndpointDestinationUpdate)

-- | Undocumented member.
httpEndpointDestinationUpdate_cloudWatchLoggingOptions :: Lens.Lens' HttpEndpointDestinationUpdate (Prelude.Maybe CloudWatchLoggingOptions)
httpEndpointDestinationUpdate_cloudWatchLoggingOptions = Lens.lens (\HttpEndpointDestinationUpdate' {cloudWatchLoggingOptions} -> cloudWatchLoggingOptions) (\s@HttpEndpointDestinationUpdate' {} a -> s {cloudWatchLoggingOptions = a} :: HttpEndpointDestinationUpdate)

-- | Describes the S3 bucket backup options for the data that Kinesis
-- Firehose delivers to the HTTP endpoint destination. You can back up all
-- documents (@AllData@) or only the documents that Kinesis Data Firehose
-- could not deliver to the specified HTTP endpoint destination
-- (@FailedDataOnly@).
httpEndpointDestinationUpdate_s3BackupMode :: Lens.Lens' HttpEndpointDestinationUpdate (Prelude.Maybe HttpEndpointS3BackupMode)
httpEndpointDestinationUpdate_s3BackupMode = Lens.lens (\HttpEndpointDestinationUpdate' {s3BackupMode} -> s3BackupMode) (\s@HttpEndpointDestinationUpdate' {} a -> s {s3BackupMode = a} :: HttpEndpointDestinationUpdate)

-- | Describes the configuration of the HTTP endpoint destination.
httpEndpointDestinationUpdate_endpointConfiguration :: Lens.Lens' HttpEndpointDestinationUpdate (Prelude.Maybe HttpEndpointConfiguration)
httpEndpointDestinationUpdate_endpointConfiguration = Lens.lens (\HttpEndpointDestinationUpdate' {endpointConfiguration} -> endpointConfiguration) (\s@HttpEndpointDestinationUpdate' {} a -> s {endpointConfiguration = a} :: HttpEndpointDestinationUpdate)

-- | Describes the retry behavior in case Kinesis Data Firehose is unable to
-- deliver data to the specified HTTP endpoint destination, or if it
-- doesn\'t receive a valid acknowledgment of receipt from the specified
-- HTTP endpoint destination.
httpEndpointDestinationUpdate_retryOptions :: Lens.Lens' HttpEndpointDestinationUpdate (Prelude.Maybe HttpEndpointRetryOptions)
httpEndpointDestinationUpdate_retryOptions = Lens.lens (\HttpEndpointDestinationUpdate' {retryOptions} -> retryOptions) (\s@HttpEndpointDestinationUpdate' {} a -> s {retryOptions = a} :: HttpEndpointDestinationUpdate)

instance
  Prelude.Hashable
    HttpEndpointDestinationUpdate
  where
  hashWithSalt _salt HttpEndpointDestinationUpdate' {..} =
    _salt `Prelude.hashWithSalt` requestConfiguration
      `Prelude.hashWithSalt` processingConfiguration
      `Prelude.hashWithSalt` roleARN
      `Prelude.hashWithSalt` s3Update
      `Prelude.hashWithSalt` bufferingHints
      `Prelude.hashWithSalt` cloudWatchLoggingOptions
      `Prelude.hashWithSalt` s3BackupMode
      `Prelude.hashWithSalt` endpointConfiguration
      `Prelude.hashWithSalt` retryOptions

instance Prelude.NFData HttpEndpointDestinationUpdate where
  rnf HttpEndpointDestinationUpdate' {..} =
    Prelude.rnf requestConfiguration
      `Prelude.seq` Prelude.rnf processingConfiguration
      `Prelude.seq` Prelude.rnf roleARN
      `Prelude.seq` Prelude.rnf s3Update
      `Prelude.seq` Prelude.rnf bufferingHints
      `Prelude.seq` Prelude.rnf cloudWatchLoggingOptions
      `Prelude.seq` Prelude.rnf s3BackupMode
      `Prelude.seq` Prelude.rnf endpointConfiguration
      `Prelude.seq` Prelude.rnf retryOptions

instance Core.ToJSON HttpEndpointDestinationUpdate where
  toJSON HttpEndpointDestinationUpdate' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("RequestConfiguration" Core..=)
              Prelude.<$> requestConfiguration,
            ("ProcessingConfiguration" Core..=)
              Prelude.<$> processingConfiguration,
            ("RoleARN" Core..=) Prelude.<$> roleARN,
            ("S3Update" Core..=) Prelude.<$> s3Update,
            ("BufferingHints" Core..=)
              Prelude.<$> bufferingHints,
            ("CloudWatchLoggingOptions" Core..=)
              Prelude.<$> cloudWatchLoggingOptions,
            ("S3BackupMode" Core..=) Prelude.<$> s3BackupMode,
            ("EndpointConfiguration" Core..=)
              Prelude.<$> endpointConfiguration,
            ("RetryOptions" Core..=) Prelude.<$> retryOptions
          ]
      )
