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
-- Module      : Amazonka.Comprehend.Types.PiiEntitiesDetectionJobFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Comprehend.Types.PiiEntitiesDetectionJobFilter where

import Amazonka.Comprehend.Types.JobStatus
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Provides information for filtering a list of PII entity detection jobs.
--
-- /See:/ 'newPiiEntitiesDetectionJobFilter' smart constructor.
data PiiEntitiesDetectionJobFilter = PiiEntitiesDetectionJobFilter'
  { -- | Filters the list of jobs based on job status. Returns only jobs with the
    -- specified status.
    jobStatus :: Prelude.Maybe JobStatus,
    -- | Filters on the name of the job.
    jobName :: Prelude.Maybe Prelude.Text,
    -- | Filters the list of jobs based on the time that the job was submitted
    -- for processing. Returns only jobs submitted before the specified time.
    -- Jobs are returned in ascending order, oldest to newest.
    submitTimeBefore :: Prelude.Maybe Core.POSIX,
    -- | Filters the list of jobs based on the time that the job was submitted
    -- for processing. Returns only jobs submitted after the specified time.
    -- Jobs are returned in descending order, newest to oldest.
    submitTimeAfter :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PiiEntitiesDetectionJobFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'jobStatus', 'piiEntitiesDetectionJobFilter_jobStatus' - Filters the list of jobs based on job status. Returns only jobs with the
-- specified status.
--
-- 'jobName', 'piiEntitiesDetectionJobFilter_jobName' - Filters on the name of the job.
--
-- 'submitTimeBefore', 'piiEntitiesDetectionJobFilter_submitTimeBefore' - Filters the list of jobs based on the time that the job was submitted
-- for processing. Returns only jobs submitted before the specified time.
-- Jobs are returned in ascending order, oldest to newest.
--
-- 'submitTimeAfter', 'piiEntitiesDetectionJobFilter_submitTimeAfter' - Filters the list of jobs based on the time that the job was submitted
-- for processing. Returns only jobs submitted after the specified time.
-- Jobs are returned in descending order, newest to oldest.
newPiiEntitiesDetectionJobFilter ::
  PiiEntitiesDetectionJobFilter
newPiiEntitiesDetectionJobFilter =
  PiiEntitiesDetectionJobFilter'
    { jobStatus =
        Prelude.Nothing,
      jobName = Prelude.Nothing,
      submitTimeBefore = Prelude.Nothing,
      submitTimeAfter = Prelude.Nothing
    }

-- | Filters the list of jobs based on job status. Returns only jobs with the
-- specified status.
piiEntitiesDetectionJobFilter_jobStatus :: Lens.Lens' PiiEntitiesDetectionJobFilter (Prelude.Maybe JobStatus)
piiEntitiesDetectionJobFilter_jobStatus = Lens.lens (\PiiEntitiesDetectionJobFilter' {jobStatus} -> jobStatus) (\s@PiiEntitiesDetectionJobFilter' {} a -> s {jobStatus = a} :: PiiEntitiesDetectionJobFilter)

-- | Filters on the name of the job.
piiEntitiesDetectionJobFilter_jobName :: Lens.Lens' PiiEntitiesDetectionJobFilter (Prelude.Maybe Prelude.Text)
piiEntitiesDetectionJobFilter_jobName = Lens.lens (\PiiEntitiesDetectionJobFilter' {jobName} -> jobName) (\s@PiiEntitiesDetectionJobFilter' {} a -> s {jobName = a} :: PiiEntitiesDetectionJobFilter)

-- | Filters the list of jobs based on the time that the job was submitted
-- for processing. Returns only jobs submitted before the specified time.
-- Jobs are returned in ascending order, oldest to newest.
piiEntitiesDetectionJobFilter_submitTimeBefore :: Lens.Lens' PiiEntitiesDetectionJobFilter (Prelude.Maybe Prelude.UTCTime)
piiEntitiesDetectionJobFilter_submitTimeBefore = Lens.lens (\PiiEntitiesDetectionJobFilter' {submitTimeBefore} -> submitTimeBefore) (\s@PiiEntitiesDetectionJobFilter' {} a -> s {submitTimeBefore = a} :: PiiEntitiesDetectionJobFilter) Prelude.. Lens.mapping Core._Time

-- | Filters the list of jobs based on the time that the job was submitted
-- for processing. Returns only jobs submitted after the specified time.
-- Jobs are returned in descending order, newest to oldest.
piiEntitiesDetectionJobFilter_submitTimeAfter :: Lens.Lens' PiiEntitiesDetectionJobFilter (Prelude.Maybe Prelude.UTCTime)
piiEntitiesDetectionJobFilter_submitTimeAfter = Lens.lens (\PiiEntitiesDetectionJobFilter' {submitTimeAfter} -> submitTimeAfter) (\s@PiiEntitiesDetectionJobFilter' {} a -> s {submitTimeAfter = a} :: PiiEntitiesDetectionJobFilter) Prelude.. Lens.mapping Core._Time

instance
  Prelude.Hashable
    PiiEntitiesDetectionJobFilter
  where
  hashWithSalt _salt PiiEntitiesDetectionJobFilter' {..} =
    _salt `Prelude.hashWithSalt` jobStatus
      `Prelude.hashWithSalt` jobName
      `Prelude.hashWithSalt` submitTimeBefore
      `Prelude.hashWithSalt` submitTimeAfter

instance Prelude.NFData PiiEntitiesDetectionJobFilter where
  rnf PiiEntitiesDetectionJobFilter' {..} =
    Prelude.rnf jobStatus
      `Prelude.seq` Prelude.rnf jobName
      `Prelude.seq` Prelude.rnf submitTimeBefore
      `Prelude.seq` Prelude.rnf submitTimeAfter

instance Core.ToJSON PiiEntitiesDetectionJobFilter where
  toJSON PiiEntitiesDetectionJobFilter' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("JobStatus" Core..=) Prelude.<$> jobStatus,
            ("JobName" Core..=) Prelude.<$> jobName,
            ("SubmitTimeBefore" Core..=)
              Prelude.<$> submitTimeBefore,
            ("SubmitTimeAfter" Core..=)
              Prelude.<$> submitTimeAfter
          ]
      )
