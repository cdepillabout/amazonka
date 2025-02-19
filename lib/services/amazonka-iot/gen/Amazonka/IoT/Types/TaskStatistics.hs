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
-- Module      : Amazonka.IoT.Types.TaskStatistics
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoT.Types.TaskStatistics where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Statistics for the checks performed during the audit.
--
-- /See:/ 'newTaskStatistics' smart constructor.
data TaskStatistics = TaskStatistics'
  { -- | The number of checks waiting for data collection.
    waitingForDataCollectionChecks :: Prelude.Maybe Prelude.Int,
    -- | The number of checks that found compliant resources.
    compliantChecks :: Prelude.Maybe Prelude.Int,
    -- | The number of checks that found noncompliant resources.
    nonCompliantChecks :: Prelude.Maybe Prelude.Int,
    -- | The number of checks in progress.
    inProgressChecks :: Prelude.Maybe Prelude.Int,
    -- | The number of checks in this audit.
    totalChecks :: Prelude.Maybe Prelude.Int,
    -- | The number of checks that did not run because the audit was canceled.
    canceledChecks :: Prelude.Maybe Prelude.Int,
    -- | The number of checks.
    failedChecks :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TaskStatistics' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'waitingForDataCollectionChecks', 'taskStatistics_waitingForDataCollectionChecks' - The number of checks waiting for data collection.
--
-- 'compliantChecks', 'taskStatistics_compliantChecks' - The number of checks that found compliant resources.
--
-- 'nonCompliantChecks', 'taskStatistics_nonCompliantChecks' - The number of checks that found noncompliant resources.
--
-- 'inProgressChecks', 'taskStatistics_inProgressChecks' - The number of checks in progress.
--
-- 'totalChecks', 'taskStatistics_totalChecks' - The number of checks in this audit.
--
-- 'canceledChecks', 'taskStatistics_canceledChecks' - The number of checks that did not run because the audit was canceled.
--
-- 'failedChecks', 'taskStatistics_failedChecks' - The number of checks.
newTaskStatistics ::
  TaskStatistics
newTaskStatistics =
  TaskStatistics'
    { waitingForDataCollectionChecks =
        Prelude.Nothing,
      compliantChecks = Prelude.Nothing,
      nonCompliantChecks = Prelude.Nothing,
      inProgressChecks = Prelude.Nothing,
      totalChecks = Prelude.Nothing,
      canceledChecks = Prelude.Nothing,
      failedChecks = Prelude.Nothing
    }

-- | The number of checks waiting for data collection.
taskStatistics_waitingForDataCollectionChecks :: Lens.Lens' TaskStatistics (Prelude.Maybe Prelude.Int)
taskStatistics_waitingForDataCollectionChecks = Lens.lens (\TaskStatistics' {waitingForDataCollectionChecks} -> waitingForDataCollectionChecks) (\s@TaskStatistics' {} a -> s {waitingForDataCollectionChecks = a} :: TaskStatistics)

-- | The number of checks that found compliant resources.
taskStatistics_compliantChecks :: Lens.Lens' TaskStatistics (Prelude.Maybe Prelude.Int)
taskStatistics_compliantChecks = Lens.lens (\TaskStatistics' {compliantChecks} -> compliantChecks) (\s@TaskStatistics' {} a -> s {compliantChecks = a} :: TaskStatistics)

-- | The number of checks that found noncompliant resources.
taskStatistics_nonCompliantChecks :: Lens.Lens' TaskStatistics (Prelude.Maybe Prelude.Int)
taskStatistics_nonCompliantChecks = Lens.lens (\TaskStatistics' {nonCompliantChecks} -> nonCompliantChecks) (\s@TaskStatistics' {} a -> s {nonCompliantChecks = a} :: TaskStatistics)

-- | The number of checks in progress.
taskStatistics_inProgressChecks :: Lens.Lens' TaskStatistics (Prelude.Maybe Prelude.Int)
taskStatistics_inProgressChecks = Lens.lens (\TaskStatistics' {inProgressChecks} -> inProgressChecks) (\s@TaskStatistics' {} a -> s {inProgressChecks = a} :: TaskStatistics)

-- | The number of checks in this audit.
taskStatistics_totalChecks :: Lens.Lens' TaskStatistics (Prelude.Maybe Prelude.Int)
taskStatistics_totalChecks = Lens.lens (\TaskStatistics' {totalChecks} -> totalChecks) (\s@TaskStatistics' {} a -> s {totalChecks = a} :: TaskStatistics)

-- | The number of checks that did not run because the audit was canceled.
taskStatistics_canceledChecks :: Lens.Lens' TaskStatistics (Prelude.Maybe Prelude.Int)
taskStatistics_canceledChecks = Lens.lens (\TaskStatistics' {canceledChecks} -> canceledChecks) (\s@TaskStatistics' {} a -> s {canceledChecks = a} :: TaskStatistics)

-- | The number of checks.
taskStatistics_failedChecks :: Lens.Lens' TaskStatistics (Prelude.Maybe Prelude.Int)
taskStatistics_failedChecks = Lens.lens (\TaskStatistics' {failedChecks} -> failedChecks) (\s@TaskStatistics' {} a -> s {failedChecks = a} :: TaskStatistics)

instance Core.FromJSON TaskStatistics where
  parseJSON =
    Core.withObject
      "TaskStatistics"
      ( \x ->
          TaskStatistics'
            Prelude.<$> (x Core..:? "waitingForDataCollectionChecks")
            Prelude.<*> (x Core..:? "compliantChecks")
            Prelude.<*> (x Core..:? "nonCompliantChecks")
            Prelude.<*> (x Core..:? "inProgressChecks")
            Prelude.<*> (x Core..:? "totalChecks")
            Prelude.<*> (x Core..:? "canceledChecks")
            Prelude.<*> (x Core..:? "failedChecks")
      )

instance Prelude.Hashable TaskStatistics where
  hashWithSalt _salt TaskStatistics' {..} =
    _salt
      `Prelude.hashWithSalt` waitingForDataCollectionChecks
      `Prelude.hashWithSalt` compliantChecks
      `Prelude.hashWithSalt` nonCompliantChecks
      `Prelude.hashWithSalt` inProgressChecks
      `Prelude.hashWithSalt` totalChecks
      `Prelude.hashWithSalt` canceledChecks
      `Prelude.hashWithSalt` failedChecks

instance Prelude.NFData TaskStatistics where
  rnf TaskStatistics' {..} =
    Prelude.rnf waitingForDataCollectionChecks
      `Prelude.seq` Prelude.rnf compliantChecks
      `Prelude.seq` Prelude.rnf nonCompliantChecks
      `Prelude.seq` Prelude.rnf inProgressChecks
      `Prelude.seq` Prelude.rnf totalChecks
      `Prelude.seq` Prelude.rnf canceledChecks
      `Prelude.seq` Prelude.rnf failedChecks
