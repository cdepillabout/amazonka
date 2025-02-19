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
-- Module      : Amazonka.CloudHSMV2.Types.DestinationBackup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CloudHSMV2.Types.DestinationBackup where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Contains information about the backup that will be copied and created by
-- the CopyBackupToRegion operation.
--
-- /See:/ 'newDestinationBackup' smart constructor.
data DestinationBackup = DestinationBackup'
  { -- | The identifier (ID) of the cluster containing the source backup from
    -- which the new backup was copied.
    sourceCluster :: Prelude.Maybe Prelude.Text,
    -- | The AWS region that contains the source backup from which the new backup
    -- was copied.
    sourceRegion :: Prelude.Maybe Prelude.Text,
    -- | The date and time when both the source backup was created.
    createTimestamp :: Prelude.Maybe Core.POSIX,
    -- | The identifier (ID) of the source backup from which the new backup was
    -- copied.
    sourceBackup :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DestinationBackup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sourceCluster', 'destinationBackup_sourceCluster' - The identifier (ID) of the cluster containing the source backup from
-- which the new backup was copied.
--
-- 'sourceRegion', 'destinationBackup_sourceRegion' - The AWS region that contains the source backup from which the new backup
-- was copied.
--
-- 'createTimestamp', 'destinationBackup_createTimestamp' - The date and time when both the source backup was created.
--
-- 'sourceBackup', 'destinationBackup_sourceBackup' - The identifier (ID) of the source backup from which the new backup was
-- copied.
newDestinationBackup ::
  DestinationBackup
newDestinationBackup =
  DestinationBackup'
    { sourceCluster = Prelude.Nothing,
      sourceRegion = Prelude.Nothing,
      createTimestamp = Prelude.Nothing,
      sourceBackup = Prelude.Nothing
    }

-- | The identifier (ID) of the cluster containing the source backup from
-- which the new backup was copied.
destinationBackup_sourceCluster :: Lens.Lens' DestinationBackup (Prelude.Maybe Prelude.Text)
destinationBackup_sourceCluster = Lens.lens (\DestinationBackup' {sourceCluster} -> sourceCluster) (\s@DestinationBackup' {} a -> s {sourceCluster = a} :: DestinationBackup)

-- | The AWS region that contains the source backup from which the new backup
-- was copied.
destinationBackup_sourceRegion :: Lens.Lens' DestinationBackup (Prelude.Maybe Prelude.Text)
destinationBackup_sourceRegion = Lens.lens (\DestinationBackup' {sourceRegion} -> sourceRegion) (\s@DestinationBackup' {} a -> s {sourceRegion = a} :: DestinationBackup)

-- | The date and time when both the source backup was created.
destinationBackup_createTimestamp :: Lens.Lens' DestinationBackup (Prelude.Maybe Prelude.UTCTime)
destinationBackup_createTimestamp = Lens.lens (\DestinationBackup' {createTimestamp} -> createTimestamp) (\s@DestinationBackup' {} a -> s {createTimestamp = a} :: DestinationBackup) Prelude.. Lens.mapping Core._Time

-- | The identifier (ID) of the source backup from which the new backup was
-- copied.
destinationBackup_sourceBackup :: Lens.Lens' DestinationBackup (Prelude.Maybe Prelude.Text)
destinationBackup_sourceBackup = Lens.lens (\DestinationBackup' {sourceBackup} -> sourceBackup) (\s@DestinationBackup' {} a -> s {sourceBackup = a} :: DestinationBackup)

instance Core.FromJSON DestinationBackup where
  parseJSON =
    Core.withObject
      "DestinationBackup"
      ( \x ->
          DestinationBackup'
            Prelude.<$> (x Core..:? "SourceCluster")
            Prelude.<*> (x Core..:? "SourceRegion")
            Prelude.<*> (x Core..:? "CreateTimestamp")
            Prelude.<*> (x Core..:? "SourceBackup")
      )

instance Prelude.Hashable DestinationBackup where
  hashWithSalt _salt DestinationBackup' {..} =
    _salt `Prelude.hashWithSalt` sourceCluster
      `Prelude.hashWithSalt` sourceRegion
      `Prelude.hashWithSalt` createTimestamp
      `Prelude.hashWithSalt` sourceBackup

instance Prelude.NFData DestinationBackup where
  rnf DestinationBackup' {..} =
    Prelude.rnf sourceCluster
      `Prelude.seq` Prelude.rnf sourceRegion
      `Prelude.seq` Prelude.rnf createTimestamp
      `Prelude.seq` Prelude.rnf sourceBackup
