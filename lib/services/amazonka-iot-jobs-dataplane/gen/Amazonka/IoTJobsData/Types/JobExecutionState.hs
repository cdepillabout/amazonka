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
-- Module      : Amazonka.IoTJobsData.Types.JobExecutionState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoTJobsData.Types.JobExecutionState where

import qualified Amazonka.Core as Core
import Amazonka.IoTJobsData.Types.JobExecutionStatus
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Contains data about the state of a job execution.
--
-- /See:/ 'newJobExecutionState' smart constructor.
data JobExecutionState = JobExecutionState'
  { -- | A collection of name\/value pairs that describe the status of the job
    -- execution.
    statusDetails :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The status of the job execution. Can be one of: \"QUEUED\",
    -- \"IN_PROGRESS\", \"FAILED\", \"SUCCESS\", \"CANCELED\", \"REJECTED\", or
    -- \"REMOVED\".
    status :: Prelude.Maybe JobExecutionStatus,
    -- | The version of the job execution. Job execution versions are incremented
    -- each time they are updated by a device.
    versionNumber :: Prelude.Maybe Prelude.Integer
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'JobExecutionState' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'statusDetails', 'jobExecutionState_statusDetails' - A collection of name\/value pairs that describe the status of the job
-- execution.
--
-- 'status', 'jobExecutionState_status' - The status of the job execution. Can be one of: \"QUEUED\",
-- \"IN_PROGRESS\", \"FAILED\", \"SUCCESS\", \"CANCELED\", \"REJECTED\", or
-- \"REMOVED\".
--
-- 'versionNumber', 'jobExecutionState_versionNumber' - The version of the job execution. Job execution versions are incremented
-- each time they are updated by a device.
newJobExecutionState ::
  JobExecutionState
newJobExecutionState =
  JobExecutionState'
    { statusDetails = Prelude.Nothing,
      status = Prelude.Nothing,
      versionNumber = Prelude.Nothing
    }

-- | A collection of name\/value pairs that describe the status of the job
-- execution.
jobExecutionState_statusDetails :: Lens.Lens' JobExecutionState (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
jobExecutionState_statusDetails = Lens.lens (\JobExecutionState' {statusDetails} -> statusDetails) (\s@JobExecutionState' {} a -> s {statusDetails = a} :: JobExecutionState) Prelude.. Lens.mapping Lens.coerced

-- | The status of the job execution. Can be one of: \"QUEUED\",
-- \"IN_PROGRESS\", \"FAILED\", \"SUCCESS\", \"CANCELED\", \"REJECTED\", or
-- \"REMOVED\".
jobExecutionState_status :: Lens.Lens' JobExecutionState (Prelude.Maybe JobExecutionStatus)
jobExecutionState_status = Lens.lens (\JobExecutionState' {status} -> status) (\s@JobExecutionState' {} a -> s {status = a} :: JobExecutionState)

-- | The version of the job execution. Job execution versions are incremented
-- each time they are updated by a device.
jobExecutionState_versionNumber :: Lens.Lens' JobExecutionState (Prelude.Maybe Prelude.Integer)
jobExecutionState_versionNumber = Lens.lens (\JobExecutionState' {versionNumber} -> versionNumber) (\s@JobExecutionState' {} a -> s {versionNumber = a} :: JobExecutionState)

instance Core.FromJSON JobExecutionState where
  parseJSON =
    Core.withObject
      "JobExecutionState"
      ( \x ->
          JobExecutionState'
            Prelude.<$> (x Core..:? "statusDetails" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "status")
            Prelude.<*> (x Core..:? "versionNumber")
      )

instance Prelude.Hashable JobExecutionState where
  hashWithSalt _salt JobExecutionState' {..} =
    _salt `Prelude.hashWithSalt` statusDetails
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` versionNumber

instance Prelude.NFData JobExecutionState where
  rnf JobExecutionState' {..} =
    Prelude.rnf statusDetails
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf versionNumber
