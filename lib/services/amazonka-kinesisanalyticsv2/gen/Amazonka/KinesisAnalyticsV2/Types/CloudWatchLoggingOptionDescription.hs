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
-- Module      : Amazonka.KinesisAnalyticsV2.Types.CloudWatchLoggingOptionDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.KinesisAnalyticsV2.Types.CloudWatchLoggingOptionDescription where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes the Amazon CloudWatch logging option.
--
-- /See:/ 'newCloudWatchLoggingOptionDescription' smart constructor.
data CloudWatchLoggingOptionDescription = CloudWatchLoggingOptionDescription'
  { -- | The IAM ARN of the role to use to send application messages.
    --
    -- Provided for backward compatibility. Applications created with the
    -- current API version have an application-level service execution role
    -- rather than a resource-level role.
    roleARN :: Prelude.Maybe Prelude.Text,
    -- | The ID of the CloudWatch logging option description.
    cloudWatchLoggingOptionId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the CloudWatch log to receive
    -- application messages.
    logStreamARN :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CloudWatchLoggingOptionDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'roleARN', 'cloudWatchLoggingOptionDescription_roleARN' - The IAM ARN of the role to use to send application messages.
--
-- Provided for backward compatibility. Applications created with the
-- current API version have an application-level service execution role
-- rather than a resource-level role.
--
-- 'cloudWatchLoggingOptionId', 'cloudWatchLoggingOptionDescription_cloudWatchLoggingOptionId' - The ID of the CloudWatch logging option description.
--
-- 'logStreamARN', 'cloudWatchLoggingOptionDescription_logStreamARN' - The Amazon Resource Name (ARN) of the CloudWatch log to receive
-- application messages.
newCloudWatchLoggingOptionDescription ::
  -- | 'logStreamARN'
  Prelude.Text ->
  CloudWatchLoggingOptionDescription
newCloudWatchLoggingOptionDescription pLogStreamARN_ =
  CloudWatchLoggingOptionDescription'
    { roleARN =
        Prelude.Nothing,
      cloudWatchLoggingOptionId =
        Prelude.Nothing,
      logStreamARN = pLogStreamARN_
    }

-- | The IAM ARN of the role to use to send application messages.
--
-- Provided for backward compatibility. Applications created with the
-- current API version have an application-level service execution role
-- rather than a resource-level role.
cloudWatchLoggingOptionDescription_roleARN :: Lens.Lens' CloudWatchLoggingOptionDescription (Prelude.Maybe Prelude.Text)
cloudWatchLoggingOptionDescription_roleARN = Lens.lens (\CloudWatchLoggingOptionDescription' {roleARN} -> roleARN) (\s@CloudWatchLoggingOptionDescription' {} a -> s {roleARN = a} :: CloudWatchLoggingOptionDescription)

-- | The ID of the CloudWatch logging option description.
cloudWatchLoggingOptionDescription_cloudWatchLoggingOptionId :: Lens.Lens' CloudWatchLoggingOptionDescription (Prelude.Maybe Prelude.Text)
cloudWatchLoggingOptionDescription_cloudWatchLoggingOptionId = Lens.lens (\CloudWatchLoggingOptionDescription' {cloudWatchLoggingOptionId} -> cloudWatchLoggingOptionId) (\s@CloudWatchLoggingOptionDescription' {} a -> s {cloudWatchLoggingOptionId = a} :: CloudWatchLoggingOptionDescription)

-- | The Amazon Resource Name (ARN) of the CloudWatch log to receive
-- application messages.
cloudWatchLoggingOptionDescription_logStreamARN :: Lens.Lens' CloudWatchLoggingOptionDescription Prelude.Text
cloudWatchLoggingOptionDescription_logStreamARN = Lens.lens (\CloudWatchLoggingOptionDescription' {logStreamARN} -> logStreamARN) (\s@CloudWatchLoggingOptionDescription' {} a -> s {logStreamARN = a} :: CloudWatchLoggingOptionDescription)

instance
  Core.FromJSON
    CloudWatchLoggingOptionDescription
  where
  parseJSON =
    Core.withObject
      "CloudWatchLoggingOptionDescription"
      ( \x ->
          CloudWatchLoggingOptionDescription'
            Prelude.<$> (x Core..:? "RoleARN")
            Prelude.<*> (x Core..:? "CloudWatchLoggingOptionId")
            Prelude.<*> (x Core..: "LogStreamARN")
      )

instance
  Prelude.Hashable
    CloudWatchLoggingOptionDescription
  where
  hashWithSalt
    _salt
    CloudWatchLoggingOptionDescription' {..} =
      _salt `Prelude.hashWithSalt` roleARN
        `Prelude.hashWithSalt` cloudWatchLoggingOptionId
        `Prelude.hashWithSalt` logStreamARN

instance
  Prelude.NFData
    CloudWatchLoggingOptionDescription
  where
  rnf CloudWatchLoggingOptionDescription' {..} =
    Prelude.rnf roleARN
      `Prelude.seq` Prelude.rnf cloudWatchLoggingOptionId
      `Prelude.seq` Prelude.rnf logStreamARN
