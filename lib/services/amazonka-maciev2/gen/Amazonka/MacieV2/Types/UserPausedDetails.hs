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
-- Module      : Amazonka.MacieV2.Types.UserPausedDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MacieV2.Types.UserPausedDetails where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Provides information about when a classification job was paused. For a
-- one-time job, this object also specifies when the job will expire and be
-- cancelled if it isn\'t resumed. For a recurring job, this object also
-- specifies when the paused job run will expire and be cancelled if it
-- isn\'t resumed. This object is present only if a job\'s current status
-- (jobStatus) is USER_PAUSED. The information in this object applies only
-- to a job that was paused while it had a status of RUNNING.
--
-- /See:/ 'newUserPausedDetails' smart constructor.
data UserPausedDetails = UserPausedDetails'
  { -- | The date and time, in UTC and extended ISO 8601 format, when the job or
    -- job run will expire and be cancelled if you don\'t resume it first.
    jobExpiresAt :: Prelude.Maybe Core.POSIX,
    -- | The date and time, in UTC and extended ISO 8601 format, when you paused
    -- the job.
    jobPausedAt :: Prelude.Maybe Core.POSIX,
    -- | The Amazon Resource Name (ARN) of the Health event that Amazon Macie
    -- sent to notify you of the job or job run\'s pending expiration and
    -- cancellation. This value is null if a job has been paused for less than
    -- 23 days.
    jobImminentExpirationHealthEventArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UserPausedDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'jobExpiresAt', 'userPausedDetails_jobExpiresAt' - The date and time, in UTC and extended ISO 8601 format, when the job or
-- job run will expire and be cancelled if you don\'t resume it first.
--
-- 'jobPausedAt', 'userPausedDetails_jobPausedAt' - The date and time, in UTC and extended ISO 8601 format, when you paused
-- the job.
--
-- 'jobImminentExpirationHealthEventArn', 'userPausedDetails_jobImminentExpirationHealthEventArn' - The Amazon Resource Name (ARN) of the Health event that Amazon Macie
-- sent to notify you of the job or job run\'s pending expiration and
-- cancellation. This value is null if a job has been paused for less than
-- 23 days.
newUserPausedDetails ::
  UserPausedDetails
newUserPausedDetails =
  UserPausedDetails'
    { jobExpiresAt = Prelude.Nothing,
      jobPausedAt = Prelude.Nothing,
      jobImminentExpirationHealthEventArn =
        Prelude.Nothing
    }

-- | The date and time, in UTC and extended ISO 8601 format, when the job or
-- job run will expire and be cancelled if you don\'t resume it first.
userPausedDetails_jobExpiresAt :: Lens.Lens' UserPausedDetails (Prelude.Maybe Prelude.UTCTime)
userPausedDetails_jobExpiresAt = Lens.lens (\UserPausedDetails' {jobExpiresAt} -> jobExpiresAt) (\s@UserPausedDetails' {} a -> s {jobExpiresAt = a} :: UserPausedDetails) Prelude.. Lens.mapping Core._Time

-- | The date and time, in UTC and extended ISO 8601 format, when you paused
-- the job.
userPausedDetails_jobPausedAt :: Lens.Lens' UserPausedDetails (Prelude.Maybe Prelude.UTCTime)
userPausedDetails_jobPausedAt = Lens.lens (\UserPausedDetails' {jobPausedAt} -> jobPausedAt) (\s@UserPausedDetails' {} a -> s {jobPausedAt = a} :: UserPausedDetails) Prelude.. Lens.mapping Core._Time

-- | The Amazon Resource Name (ARN) of the Health event that Amazon Macie
-- sent to notify you of the job or job run\'s pending expiration and
-- cancellation. This value is null if a job has been paused for less than
-- 23 days.
userPausedDetails_jobImminentExpirationHealthEventArn :: Lens.Lens' UserPausedDetails (Prelude.Maybe Prelude.Text)
userPausedDetails_jobImminentExpirationHealthEventArn = Lens.lens (\UserPausedDetails' {jobImminentExpirationHealthEventArn} -> jobImminentExpirationHealthEventArn) (\s@UserPausedDetails' {} a -> s {jobImminentExpirationHealthEventArn = a} :: UserPausedDetails)

instance Core.FromJSON UserPausedDetails where
  parseJSON =
    Core.withObject
      "UserPausedDetails"
      ( \x ->
          UserPausedDetails'
            Prelude.<$> (x Core..:? "jobExpiresAt")
            Prelude.<*> (x Core..:? "jobPausedAt")
            Prelude.<*> (x Core..:? "jobImminentExpirationHealthEventArn")
      )

instance Prelude.Hashable UserPausedDetails where
  hashWithSalt _salt UserPausedDetails' {..} =
    _salt `Prelude.hashWithSalt` jobExpiresAt
      `Prelude.hashWithSalt` jobPausedAt
      `Prelude.hashWithSalt` jobImminentExpirationHealthEventArn

instance Prelude.NFData UserPausedDetails where
  rnf UserPausedDetails' {..} =
    Prelude.rnf jobExpiresAt
      `Prelude.seq` Prelude.rnf jobPausedAt
      `Prelude.seq` Prelude.rnf jobImminentExpirationHealthEventArn
