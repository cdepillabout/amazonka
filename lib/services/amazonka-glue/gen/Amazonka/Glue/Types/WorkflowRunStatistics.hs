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
-- Module      : Amazonka.Glue.Types.WorkflowRunStatistics
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Glue.Types.WorkflowRunStatistics where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Workflow run statistics provides statistics about the workflow run.
--
-- /See:/ 'newWorkflowRunStatistics' smart constructor.
data WorkflowRunStatistics = WorkflowRunStatistics'
  { -- | Total number of Actions that timed out.
    timeoutActions :: Prelude.Maybe Prelude.Int,
    -- | Indicates the count of job runs in WAITING state in the workflow run.
    waitingActions :: Prelude.Maybe Prelude.Int,
    -- | Total number of Actions that have succeeded.
    succeededActions :: Prelude.Maybe Prelude.Int,
    -- | Total number of Actions in the workflow run.
    totalActions :: Prelude.Maybe Prelude.Int,
    -- | Total number of Actions that have stopped.
    stoppedActions :: Prelude.Maybe Prelude.Int,
    -- | Total number of Actions that have failed.
    failedActions :: Prelude.Maybe Prelude.Int,
    -- | Total number Actions in running state.
    runningActions :: Prelude.Maybe Prelude.Int,
    -- | Indicates the count of job runs in the ERROR state in the workflow run.
    erroredActions :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'WorkflowRunStatistics' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'timeoutActions', 'workflowRunStatistics_timeoutActions' - Total number of Actions that timed out.
--
-- 'waitingActions', 'workflowRunStatistics_waitingActions' - Indicates the count of job runs in WAITING state in the workflow run.
--
-- 'succeededActions', 'workflowRunStatistics_succeededActions' - Total number of Actions that have succeeded.
--
-- 'totalActions', 'workflowRunStatistics_totalActions' - Total number of Actions in the workflow run.
--
-- 'stoppedActions', 'workflowRunStatistics_stoppedActions' - Total number of Actions that have stopped.
--
-- 'failedActions', 'workflowRunStatistics_failedActions' - Total number of Actions that have failed.
--
-- 'runningActions', 'workflowRunStatistics_runningActions' - Total number Actions in running state.
--
-- 'erroredActions', 'workflowRunStatistics_erroredActions' - Indicates the count of job runs in the ERROR state in the workflow run.
newWorkflowRunStatistics ::
  WorkflowRunStatistics
newWorkflowRunStatistics =
  WorkflowRunStatistics'
    { timeoutActions =
        Prelude.Nothing,
      waitingActions = Prelude.Nothing,
      succeededActions = Prelude.Nothing,
      totalActions = Prelude.Nothing,
      stoppedActions = Prelude.Nothing,
      failedActions = Prelude.Nothing,
      runningActions = Prelude.Nothing,
      erroredActions = Prelude.Nothing
    }

-- | Total number of Actions that timed out.
workflowRunStatistics_timeoutActions :: Lens.Lens' WorkflowRunStatistics (Prelude.Maybe Prelude.Int)
workflowRunStatistics_timeoutActions = Lens.lens (\WorkflowRunStatistics' {timeoutActions} -> timeoutActions) (\s@WorkflowRunStatistics' {} a -> s {timeoutActions = a} :: WorkflowRunStatistics)

-- | Indicates the count of job runs in WAITING state in the workflow run.
workflowRunStatistics_waitingActions :: Lens.Lens' WorkflowRunStatistics (Prelude.Maybe Prelude.Int)
workflowRunStatistics_waitingActions = Lens.lens (\WorkflowRunStatistics' {waitingActions} -> waitingActions) (\s@WorkflowRunStatistics' {} a -> s {waitingActions = a} :: WorkflowRunStatistics)

-- | Total number of Actions that have succeeded.
workflowRunStatistics_succeededActions :: Lens.Lens' WorkflowRunStatistics (Prelude.Maybe Prelude.Int)
workflowRunStatistics_succeededActions = Lens.lens (\WorkflowRunStatistics' {succeededActions} -> succeededActions) (\s@WorkflowRunStatistics' {} a -> s {succeededActions = a} :: WorkflowRunStatistics)

-- | Total number of Actions in the workflow run.
workflowRunStatistics_totalActions :: Lens.Lens' WorkflowRunStatistics (Prelude.Maybe Prelude.Int)
workflowRunStatistics_totalActions = Lens.lens (\WorkflowRunStatistics' {totalActions} -> totalActions) (\s@WorkflowRunStatistics' {} a -> s {totalActions = a} :: WorkflowRunStatistics)

-- | Total number of Actions that have stopped.
workflowRunStatistics_stoppedActions :: Lens.Lens' WorkflowRunStatistics (Prelude.Maybe Prelude.Int)
workflowRunStatistics_stoppedActions = Lens.lens (\WorkflowRunStatistics' {stoppedActions} -> stoppedActions) (\s@WorkflowRunStatistics' {} a -> s {stoppedActions = a} :: WorkflowRunStatistics)

-- | Total number of Actions that have failed.
workflowRunStatistics_failedActions :: Lens.Lens' WorkflowRunStatistics (Prelude.Maybe Prelude.Int)
workflowRunStatistics_failedActions = Lens.lens (\WorkflowRunStatistics' {failedActions} -> failedActions) (\s@WorkflowRunStatistics' {} a -> s {failedActions = a} :: WorkflowRunStatistics)

-- | Total number Actions in running state.
workflowRunStatistics_runningActions :: Lens.Lens' WorkflowRunStatistics (Prelude.Maybe Prelude.Int)
workflowRunStatistics_runningActions = Lens.lens (\WorkflowRunStatistics' {runningActions} -> runningActions) (\s@WorkflowRunStatistics' {} a -> s {runningActions = a} :: WorkflowRunStatistics)

-- | Indicates the count of job runs in the ERROR state in the workflow run.
workflowRunStatistics_erroredActions :: Lens.Lens' WorkflowRunStatistics (Prelude.Maybe Prelude.Int)
workflowRunStatistics_erroredActions = Lens.lens (\WorkflowRunStatistics' {erroredActions} -> erroredActions) (\s@WorkflowRunStatistics' {} a -> s {erroredActions = a} :: WorkflowRunStatistics)

instance Core.FromJSON WorkflowRunStatistics where
  parseJSON =
    Core.withObject
      "WorkflowRunStatistics"
      ( \x ->
          WorkflowRunStatistics'
            Prelude.<$> (x Core..:? "TimeoutActions")
            Prelude.<*> (x Core..:? "WaitingActions")
            Prelude.<*> (x Core..:? "SucceededActions")
            Prelude.<*> (x Core..:? "TotalActions")
            Prelude.<*> (x Core..:? "StoppedActions")
            Prelude.<*> (x Core..:? "FailedActions")
            Prelude.<*> (x Core..:? "RunningActions")
            Prelude.<*> (x Core..:? "ErroredActions")
      )

instance Prelude.Hashable WorkflowRunStatistics where
  hashWithSalt _salt WorkflowRunStatistics' {..} =
    _salt `Prelude.hashWithSalt` timeoutActions
      `Prelude.hashWithSalt` waitingActions
      `Prelude.hashWithSalt` succeededActions
      `Prelude.hashWithSalt` totalActions
      `Prelude.hashWithSalt` stoppedActions
      `Prelude.hashWithSalt` failedActions
      `Prelude.hashWithSalt` runningActions
      `Prelude.hashWithSalt` erroredActions

instance Prelude.NFData WorkflowRunStatistics where
  rnf WorkflowRunStatistics' {..} =
    Prelude.rnf timeoutActions
      `Prelude.seq` Prelude.rnf waitingActions
      `Prelude.seq` Prelude.rnf succeededActions
      `Prelude.seq` Prelude.rnf totalActions
      `Prelude.seq` Prelude.rnf stoppedActions
      `Prelude.seq` Prelude.rnf failedActions
      `Prelude.seq` Prelude.rnf runningActions
      `Prelude.seq` Prelude.rnf erroredActions
