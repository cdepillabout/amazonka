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
-- Module      : Amazonka.IoTAnalytics.Types.DatasetContentSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoTAnalytics.Types.DatasetContentSummary where

import qualified Amazonka.Core as Core
import Amazonka.IoTAnalytics.Types.DatasetContentStatus
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Summary information about dataset contents.
--
-- /See:/ 'newDatasetContentSummary' smart constructor.
data DatasetContentSummary = DatasetContentSummary'
  { -- | The status of the dataset contents.
    status :: Prelude.Maybe DatasetContentStatus,
    -- | The time the dataset content status was updated to SUCCEEDED or FAILED.
    completionTime :: Prelude.Maybe Core.POSIX,
    -- | The time the creation of the dataset contents was scheduled to start.
    scheduleTime :: Prelude.Maybe Core.POSIX,
    -- | The actual time the creation of the dataset contents was started.
    creationTime :: Prelude.Maybe Core.POSIX,
    -- | The version of the dataset contents.
    version :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DatasetContentSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'datasetContentSummary_status' - The status of the dataset contents.
--
-- 'completionTime', 'datasetContentSummary_completionTime' - The time the dataset content status was updated to SUCCEEDED or FAILED.
--
-- 'scheduleTime', 'datasetContentSummary_scheduleTime' - The time the creation of the dataset contents was scheduled to start.
--
-- 'creationTime', 'datasetContentSummary_creationTime' - The actual time the creation of the dataset contents was started.
--
-- 'version', 'datasetContentSummary_version' - The version of the dataset contents.
newDatasetContentSummary ::
  DatasetContentSummary
newDatasetContentSummary =
  DatasetContentSummary'
    { status = Prelude.Nothing,
      completionTime = Prelude.Nothing,
      scheduleTime = Prelude.Nothing,
      creationTime = Prelude.Nothing,
      version = Prelude.Nothing
    }

-- | The status of the dataset contents.
datasetContentSummary_status :: Lens.Lens' DatasetContentSummary (Prelude.Maybe DatasetContentStatus)
datasetContentSummary_status = Lens.lens (\DatasetContentSummary' {status} -> status) (\s@DatasetContentSummary' {} a -> s {status = a} :: DatasetContentSummary)

-- | The time the dataset content status was updated to SUCCEEDED or FAILED.
datasetContentSummary_completionTime :: Lens.Lens' DatasetContentSummary (Prelude.Maybe Prelude.UTCTime)
datasetContentSummary_completionTime = Lens.lens (\DatasetContentSummary' {completionTime} -> completionTime) (\s@DatasetContentSummary' {} a -> s {completionTime = a} :: DatasetContentSummary) Prelude.. Lens.mapping Core._Time

-- | The time the creation of the dataset contents was scheduled to start.
datasetContentSummary_scheduleTime :: Lens.Lens' DatasetContentSummary (Prelude.Maybe Prelude.UTCTime)
datasetContentSummary_scheduleTime = Lens.lens (\DatasetContentSummary' {scheduleTime} -> scheduleTime) (\s@DatasetContentSummary' {} a -> s {scheduleTime = a} :: DatasetContentSummary) Prelude.. Lens.mapping Core._Time

-- | The actual time the creation of the dataset contents was started.
datasetContentSummary_creationTime :: Lens.Lens' DatasetContentSummary (Prelude.Maybe Prelude.UTCTime)
datasetContentSummary_creationTime = Lens.lens (\DatasetContentSummary' {creationTime} -> creationTime) (\s@DatasetContentSummary' {} a -> s {creationTime = a} :: DatasetContentSummary) Prelude.. Lens.mapping Core._Time

-- | The version of the dataset contents.
datasetContentSummary_version :: Lens.Lens' DatasetContentSummary (Prelude.Maybe Prelude.Text)
datasetContentSummary_version = Lens.lens (\DatasetContentSummary' {version} -> version) (\s@DatasetContentSummary' {} a -> s {version = a} :: DatasetContentSummary)

instance Core.FromJSON DatasetContentSummary where
  parseJSON =
    Core.withObject
      "DatasetContentSummary"
      ( \x ->
          DatasetContentSummary'
            Prelude.<$> (x Core..:? "status")
            Prelude.<*> (x Core..:? "completionTime")
            Prelude.<*> (x Core..:? "scheduleTime")
            Prelude.<*> (x Core..:? "creationTime")
            Prelude.<*> (x Core..:? "version")
      )

instance Prelude.Hashable DatasetContentSummary where
  hashWithSalt _salt DatasetContentSummary' {..} =
    _salt `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` completionTime
      `Prelude.hashWithSalt` scheduleTime
      `Prelude.hashWithSalt` creationTime
      `Prelude.hashWithSalt` version

instance Prelude.NFData DatasetContentSummary where
  rnf DatasetContentSummary' {..} =
    Prelude.rnf status
      `Prelude.seq` Prelude.rnf completionTime
      `Prelude.seq` Prelude.rnf scheduleTime
      `Prelude.seq` Prelude.rnf creationTime
      `Prelude.seq` Prelude.rnf version
