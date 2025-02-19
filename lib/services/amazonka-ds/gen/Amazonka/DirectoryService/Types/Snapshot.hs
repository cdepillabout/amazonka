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
-- Module      : Amazonka.DirectoryService.Types.Snapshot
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DirectoryService.Types.Snapshot where

import qualified Amazonka.Core as Core
import Amazonka.DirectoryService.Types.SnapshotStatus
import Amazonka.DirectoryService.Types.SnapshotType
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes a directory snapshot.
--
-- /See:/ 'newSnapshot' smart constructor.
data Snapshot = Snapshot'
  { -- | The directory identifier.
    directoryId :: Prelude.Maybe Prelude.Text,
    -- | The descriptive name of the snapshot.
    name :: Prelude.Maybe Prelude.Text,
    -- | The snapshot type.
    type' :: Prelude.Maybe SnapshotType,
    -- | The snapshot identifier.
    snapshotId :: Prelude.Maybe Prelude.Text,
    -- | The snapshot status.
    status :: Prelude.Maybe SnapshotStatus,
    -- | The date and time that the snapshot was taken.
    startTime :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Snapshot' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'directoryId', 'snapshot_directoryId' - The directory identifier.
--
-- 'name', 'snapshot_name' - The descriptive name of the snapshot.
--
-- 'type'', 'snapshot_type' - The snapshot type.
--
-- 'snapshotId', 'snapshot_snapshotId' - The snapshot identifier.
--
-- 'status', 'snapshot_status' - The snapshot status.
--
-- 'startTime', 'snapshot_startTime' - The date and time that the snapshot was taken.
newSnapshot ::
  Snapshot
newSnapshot =
  Snapshot'
    { directoryId = Prelude.Nothing,
      name = Prelude.Nothing,
      type' = Prelude.Nothing,
      snapshotId = Prelude.Nothing,
      status = Prelude.Nothing,
      startTime = Prelude.Nothing
    }

-- | The directory identifier.
snapshot_directoryId :: Lens.Lens' Snapshot (Prelude.Maybe Prelude.Text)
snapshot_directoryId = Lens.lens (\Snapshot' {directoryId} -> directoryId) (\s@Snapshot' {} a -> s {directoryId = a} :: Snapshot)

-- | The descriptive name of the snapshot.
snapshot_name :: Lens.Lens' Snapshot (Prelude.Maybe Prelude.Text)
snapshot_name = Lens.lens (\Snapshot' {name} -> name) (\s@Snapshot' {} a -> s {name = a} :: Snapshot)

-- | The snapshot type.
snapshot_type :: Lens.Lens' Snapshot (Prelude.Maybe SnapshotType)
snapshot_type = Lens.lens (\Snapshot' {type'} -> type') (\s@Snapshot' {} a -> s {type' = a} :: Snapshot)

-- | The snapshot identifier.
snapshot_snapshotId :: Lens.Lens' Snapshot (Prelude.Maybe Prelude.Text)
snapshot_snapshotId = Lens.lens (\Snapshot' {snapshotId} -> snapshotId) (\s@Snapshot' {} a -> s {snapshotId = a} :: Snapshot)

-- | The snapshot status.
snapshot_status :: Lens.Lens' Snapshot (Prelude.Maybe SnapshotStatus)
snapshot_status = Lens.lens (\Snapshot' {status} -> status) (\s@Snapshot' {} a -> s {status = a} :: Snapshot)

-- | The date and time that the snapshot was taken.
snapshot_startTime :: Lens.Lens' Snapshot (Prelude.Maybe Prelude.UTCTime)
snapshot_startTime = Lens.lens (\Snapshot' {startTime} -> startTime) (\s@Snapshot' {} a -> s {startTime = a} :: Snapshot) Prelude.. Lens.mapping Core._Time

instance Core.FromJSON Snapshot where
  parseJSON =
    Core.withObject
      "Snapshot"
      ( \x ->
          Snapshot'
            Prelude.<$> (x Core..:? "DirectoryId")
            Prelude.<*> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "Type")
            Prelude.<*> (x Core..:? "SnapshotId")
            Prelude.<*> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "StartTime")
      )

instance Prelude.Hashable Snapshot where
  hashWithSalt _salt Snapshot' {..} =
    _salt `Prelude.hashWithSalt` directoryId
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` snapshotId
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` startTime

instance Prelude.NFData Snapshot where
  rnf Snapshot' {..} =
    Prelude.rnf directoryId
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf type'
      `Prelude.seq` Prelude.rnf snapshotId
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf startTime
