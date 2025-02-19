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
-- Module      : Amazonka.MacieV2.Types.JobSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MacieV2.Types.JobSummary where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MacieV2.Types.JobStatus
import Amazonka.MacieV2.Types.JobType
import Amazonka.MacieV2.Types.LastRunErrorStatus
import Amazonka.MacieV2.Types.S3BucketCriteriaForJob
import Amazonka.MacieV2.Types.S3BucketDefinitionForJob
import Amazonka.MacieV2.Types.UserPausedDetails
import qualified Amazonka.Prelude as Prelude

-- | Provides information about a classification job, including the current
-- status of the job.
--
-- /See:/ 'newJobSummary' smart constructor.
data JobSummary = JobSummary'
  { -- | The property- and tag-based conditions that determine which S3 buckets
    -- are included or excluded from the job\'s analysis. Each time the job
    -- runs, the job uses these criteria to determine which buckets to analyze.
    -- A job\'s definition can contain a bucketCriteria object or a
    -- bucketDefinitions array, not both.
    bucketCriteria :: Prelude.Maybe S3BucketCriteriaForJob,
    -- | The custom name of the job.
    name :: Prelude.Maybe Prelude.Text,
    -- | The current status of the job. Possible values are:
    --
    -- -   CANCELLED - You cancelled the job or, if it\'s a one-time job, you
    --     paused the job and didn\'t resume it within 30 days.
    --
    -- -   COMPLETE - For a one-time job, Amazon Macie finished processing the
    --     data specified for the job. This value doesn\'t apply to recurring
    --     jobs.
    --
    -- -   IDLE - For a recurring job, the previous scheduled run is complete
    --     and the next scheduled run is pending. This value doesn\'t apply to
    --     one-time jobs.
    --
    -- -   PAUSED - Macie started running the job but additional processing
    --     would exceed the monthly sensitive data discovery quota for your
    --     account or one or more member accounts that the job analyzes data
    --     for.
    --
    -- -   RUNNING - For a one-time job, the job is in progress. For a
    --     recurring job, a scheduled run is in progress.
    --
    -- -   USER_PAUSED - You paused the job. If you paused the job while it had
    --     a status of RUNNING and you don\'t resume it within 30 days of
    --     pausing it, the job or job run will expire and be cancelled,
    --     depending on the job\'s type. To check the expiration date, refer to
    --     the UserPausedDetails.jobExpiresAt property.
    jobStatus :: Prelude.Maybe JobStatus,
    -- | If the current status of the job is USER_PAUSED, specifies when the job
    -- was paused and when the job or job run will expire and be cancelled if
    -- it isn\'t resumed. This value is present only if the value for jobStatus
    -- is USER_PAUSED.
    userPausedDetails :: Prelude.Maybe UserPausedDetails,
    -- | An array of objects, one for each Amazon Web Services account that owns
    -- specific S3 buckets for the job to analyze. Each object specifies the
    -- account ID for an account and one or more buckets to analyze for that
    -- account. A job\'s definition can contain a bucketDefinitions array or a
    -- bucketCriteria object, not both.
    bucketDefinitions :: Prelude.Maybe [S3BucketDefinitionForJob],
    -- | The unique identifier for the job.
    jobId :: Prelude.Maybe Prelude.Text,
    -- | Specifies whether any account- or bucket-level access errors occurred
    -- when the job ran. For a recurring job, this value indicates the error
    -- status of the job\'s most recent run.
    lastRunErrorStatus :: Prelude.Maybe LastRunErrorStatus,
    -- | The date and time, in UTC and extended ISO 8601 format, when the job was
    -- created.
    createdAt :: Prelude.Maybe Core.POSIX,
    -- | The schedule for running the job. Possible values are:
    --
    -- -   ONE_TIME - The job runs only once.
    --
    -- -   SCHEDULED - The job runs on a daily, weekly, or monthly basis.
    jobType :: Prelude.Maybe JobType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'JobSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'bucketCriteria', 'jobSummary_bucketCriteria' - The property- and tag-based conditions that determine which S3 buckets
-- are included or excluded from the job\'s analysis. Each time the job
-- runs, the job uses these criteria to determine which buckets to analyze.
-- A job\'s definition can contain a bucketCriteria object or a
-- bucketDefinitions array, not both.
--
-- 'name', 'jobSummary_name' - The custom name of the job.
--
-- 'jobStatus', 'jobSummary_jobStatus' - The current status of the job. Possible values are:
--
-- -   CANCELLED - You cancelled the job or, if it\'s a one-time job, you
--     paused the job and didn\'t resume it within 30 days.
--
-- -   COMPLETE - For a one-time job, Amazon Macie finished processing the
--     data specified for the job. This value doesn\'t apply to recurring
--     jobs.
--
-- -   IDLE - For a recurring job, the previous scheduled run is complete
--     and the next scheduled run is pending. This value doesn\'t apply to
--     one-time jobs.
--
-- -   PAUSED - Macie started running the job but additional processing
--     would exceed the monthly sensitive data discovery quota for your
--     account or one or more member accounts that the job analyzes data
--     for.
--
-- -   RUNNING - For a one-time job, the job is in progress. For a
--     recurring job, a scheduled run is in progress.
--
-- -   USER_PAUSED - You paused the job. If you paused the job while it had
--     a status of RUNNING and you don\'t resume it within 30 days of
--     pausing it, the job or job run will expire and be cancelled,
--     depending on the job\'s type. To check the expiration date, refer to
--     the UserPausedDetails.jobExpiresAt property.
--
-- 'userPausedDetails', 'jobSummary_userPausedDetails' - If the current status of the job is USER_PAUSED, specifies when the job
-- was paused and when the job or job run will expire and be cancelled if
-- it isn\'t resumed. This value is present only if the value for jobStatus
-- is USER_PAUSED.
--
-- 'bucketDefinitions', 'jobSummary_bucketDefinitions' - An array of objects, one for each Amazon Web Services account that owns
-- specific S3 buckets for the job to analyze. Each object specifies the
-- account ID for an account and one or more buckets to analyze for that
-- account. A job\'s definition can contain a bucketDefinitions array or a
-- bucketCriteria object, not both.
--
-- 'jobId', 'jobSummary_jobId' - The unique identifier for the job.
--
-- 'lastRunErrorStatus', 'jobSummary_lastRunErrorStatus' - Specifies whether any account- or bucket-level access errors occurred
-- when the job ran. For a recurring job, this value indicates the error
-- status of the job\'s most recent run.
--
-- 'createdAt', 'jobSummary_createdAt' - The date and time, in UTC and extended ISO 8601 format, when the job was
-- created.
--
-- 'jobType', 'jobSummary_jobType' - The schedule for running the job. Possible values are:
--
-- -   ONE_TIME - The job runs only once.
--
-- -   SCHEDULED - The job runs on a daily, weekly, or monthly basis.
newJobSummary ::
  JobSummary
newJobSummary =
  JobSummary'
    { bucketCriteria = Prelude.Nothing,
      name = Prelude.Nothing,
      jobStatus = Prelude.Nothing,
      userPausedDetails = Prelude.Nothing,
      bucketDefinitions = Prelude.Nothing,
      jobId = Prelude.Nothing,
      lastRunErrorStatus = Prelude.Nothing,
      createdAt = Prelude.Nothing,
      jobType = Prelude.Nothing
    }

-- | The property- and tag-based conditions that determine which S3 buckets
-- are included or excluded from the job\'s analysis. Each time the job
-- runs, the job uses these criteria to determine which buckets to analyze.
-- A job\'s definition can contain a bucketCriteria object or a
-- bucketDefinitions array, not both.
jobSummary_bucketCriteria :: Lens.Lens' JobSummary (Prelude.Maybe S3BucketCriteriaForJob)
jobSummary_bucketCriteria = Lens.lens (\JobSummary' {bucketCriteria} -> bucketCriteria) (\s@JobSummary' {} a -> s {bucketCriteria = a} :: JobSummary)

-- | The custom name of the job.
jobSummary_name :: Lens.Lens' JobSummary (Prelude.Maybe Prelude.Text)
jobSummary_name = Lens.lens (\JobSummary' {name} -> name) (\s@JobSummary' {} a -> s {name = a} :: JobSummary)

-- | The current status of the job. Possible values are:
--
-- -   CANCELLED - You cancelled the job or, if it\'s a one-time job, you
--     paused the job and didn\'t resume it within 30 days.
--
-- -   COMPLETE - For a one-time job, Amazon Macie finished processing the
--     data specified for the job. This value doesn\'t apply to recurring
--     jobs.
--
-- -   IDLE - For a recurring job, the previous scheduled run is complete
--     and the next scheduled run is pending. This value doesn\'t apply to
--     one-time jobs.
--
-- -   PAUSED - Macie started running the job but additional processing
--     would exceed the monthly sensitive data discovery quota for your
--     account or one or more member accounts that the job analyzes data
--     for.
--
-- -   RUNNING - For a one-time job, the job is in progress. For a
--     recurring job, a scheduled run is in progress.
--
-- -   USER_PAUSED - You paused the job. If you paused the job while it had
--     a status of RUNNING and you don\'t resume it within 30 days of
--     pausing it, the job or job run will expire and be cancelled,
--     depending on the job\'s type. To check the expiration date, refer to
--     the UserPausedDetails.jobExpiresAt property.
jobSummary_jobStatus :: Lens.Lens' JobSummary (Prelude.Maybe JobStatus)
jobSummary_jobStatus = Lens.lens (\JobSummary' {jobStatus} -> jobStatus) (\s@JobSummary' {} a -> s {jobStatus = a} :: JobSummary)

-- | If the current status of the job is USER_PAUSED, specifies when the job
-- was paused and when the job or job run will expire and be cancelled if
-- it isn\'t resumed. This value is present only if the value for jobStatus
-- is USER_PAUSED.
jobSummary_userPausedDetails :: Lens.Lens' JobSummary (Prelude.Maybe UserPausedDetails)
jobSummary_userPausedDetails = Lens.lens (\JobSummary' {userPausedDetails} -> userPausedDetails) (\s@JobSummary' {} a -> s {userPausedDetails = a} :: JobSummary)

-- | An array of objects, one for each Amazon Web Services account that owns
-- specific S3 buckets for the job to analyze. Each object specifies the
-- account ID for an account and one or more buckets to analyze for that
-- account. A job\'s definition can contain a bucketDefinitions array or a
-- bucketCriteria object, not both.
jobSummary_bucketDefinitions :: Lens.Lens' JobSummary (Prelude.Maybe [S3BucketDefinitionForJob])
jobSummary_bucketDefinitions = Lens.lens (\JobSummary' {bucketDefinitions} -> bucketDefinitions) (\s@JobSummary' {} a -> s {bucketDefinitions = a} :: JobSummary) Prelude.. Lens.mapping Lens.coerced

-- | The unique identifier for the job.
jobSummary_jobId :: Lens.Lens' JobSummary (Prelude.Maybe Prelude.Text)
jobSummary_jobId = Lens.lens (\JobSummary' {jobId} -> jobId) (\s@JobSummary' {} a -> s {jobId = a} :: JobSummary)

-- | Specifies whether any account- or bucket-level access errors occurred
-- when the job ran. For a recurring job, this value indicates the error
-- status of the job\'s most recent run.
jobSummary_lastRunErrorStatus :: Lens.Lens' JobSummary (Prelude.Maybe LastRunErrorStatus)
jobSummary_lastRunErrorStatus = Lens.lens (\JobSummary' {lastRunErrorStatus} -> lastRunErrorStatus) (\s@JobSummary' {} a -> s {lastRunErrorStatus = a} :: JobSummary)

-- | The date and time, in UTC and extended ISO 8601 format, when the job was
-- created.
jobSummary_createdAt :: Lens.Lens' JobSummary (Prelude.Maybe Prelude.UTCTime)
jobSummary_createdAt = Lens.lens (\JobSummary' {createdAt} -> createdAt) (\s@JobSummary' {} a -> s {createdAt = a} :: JobSummary) Prelude.. Lens.mapping Core._Time

-- | The schedule for running the job. Possible values are:
--
-- -   ONE_TIME - The job runs only once.
--
-- -   SCHEDULED - The job runs on a daily, weekly, or monthly basis.
jobSummary_jobType :: Lens.Lens' JobSummary (Prelude.Maybe JobType)
jobSummary_jobType = Lens.lens (\JobSummary' {jobType} -> jobType) (\s@JobSummary' {} a -> s {jobType = a} :: JobSummary)

instance Core.FromJSON JobSummary where
  parseJSON =
    Core.withObject
      "JobSummary"
      ( \x ->
          JobSummary'
            Prelude.<$> (x Core..:? "bucketCriteria")
            Prelude.<*> (x Core..:? "name")
            Prelude.<*> (x Core..:? "jobStatus")
            Prelude.<*> (x Core..:? "userPausedDetails")
            Prelude.<*> ( x Core..:? "bucketDefinitions"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "jobId")
            Prelude.<*> (x Core..:? "lastRunErrorStatus")
            Prelude.<*> (x Core..:? "createdAt")
            Prelude.<*> (x Core..:? "jobType")
      )

instance Prelude.Hashable JobSummary where
  hashWithSalt _salt JobSummary' {..} =
    _salt `Prelude.hashWithSalt` bucketCriteria
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` jobStatus
      `Prelude.hashWithSalt` userPausedDetails
      `Prelude.hashWithSalt` bucketDefinitions
      `Prelude.hashWithSalt` jobId
      `Prelude.hashWithSalt` lastRunErrorStatus
      `Prelude.hashWithSalt` createdAt
      `Prelude.hashWithSalt` jobType

instance Prelude.NFData JobSummary where
  rnf JobSummary' {..} =
    Prelude.rnf bucketCriteria
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf jobStatus
      `Prelude.seq` Prelude.rnf userPausedDetails
      `Prelude.seq` Prelude.rnf bucketDefinitions
      `Prelude.seq` Prelude.rnf jobId
      `Prelude.seq` Prelude.rnf lastRunErrorStatus
      `Prelude.seq` Prelude.rnf createdAt
      `Prelude.seq` Prelude.rnf jobType
