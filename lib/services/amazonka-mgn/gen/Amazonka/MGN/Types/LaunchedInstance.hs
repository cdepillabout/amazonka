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
-- Module      : Amazonka.MGN.Types.LaunchedInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MGN.Types.LaunchedInstance where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MGN.Types.FirstBoot
import qualified Amazonka.Prelude as Prelude

-- | Launched instance.
--
-- /See:/ 'newLaunchedInstance' smart constructor.
data LaunchedInstance = LaunchedInstance'
  { -- | Launched instance EC2 ID.
    ec2InstanceID :: Prelude.Maybe Prelude.Text,
    -- | Launched instance Job ID.
    jobID :: Prelude.Maybe Prelude.Text,
    -- | Launched instance first boot.
    firstBoot :: Prelude.Maybe FirstBoot
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'LaunchedInstance' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ec2InstanceID', 'launchedInstance_ec2InstanceID' - Launched instance EC2 ID.
--
-- 'jobID', 'launchedInstance_jobID' - Launched instance Job ID.
--
-- 'firstBoot', 'launchedInstance_firstBoot' - Launched instance first boot.
newLaunchedInstance ::
  LaunchedInstance
newLaunchedInstance =
  LaunchedInstance'
    { ec2InstanceID = Prelude.Nothing,
      jobID = Prelude.Nothing,
      firstBoot = Prelude.Nothing
    }

-- | Launched instance EC2 ID.
launchedInstance_ec2InstanceID :: Lens.Lens' LaunchedInstance (Prelude.Maybe Prelude.Text)
launchedInstance_ec2InstanceID = Lens.lens (\LaunchedInstance' {ec2InstanceID} -> ec2InstanceID) (\s@LaunchedInstance' {} a -> s {ec2InstanceID = a} :: LaunchedInstance)

-- | Launched instance Job ID.
launchedInstance_jobID :: Lens.Lens' LaunchedInstance (Prelude.Maybe Prelude.Text)
launchedInstance_jobID = Lens.lens (\LaunchedInstance' {jobID} -> jobID) (\s@LaunchedInstance' {} a -> s {jobID = a} :: LaunchedInstance)

-- | Launched instance first boot.
launchedInstance_firstBoot :: Lens.Lens' LaunchedInstance (Prelude.Maybe FirstBoot)
launchedInstance_firstBoot = Lens.lens (\LaunchedInstance' {firstBoot} -> firstBoot) (\s@LaunchedInstance' {} a -> s {firstBoot = a} :: LaunchedInstance)

instance Core.FromJSON LaunchedInstance where
  parseJSON =
    Core.withObject
      "LaunchedInstance"
      ( \x ->
          LaunchedInstance'
            Prelude.<$> (x Core..:? "ec2InstanceID")
            Prelude.<*> (x Core..:? "jobID")
            Prelude.<*> (x Core..:? "firstBoot")
      )

instance Prelude.Hashable LaunchedInstance where
  hashWithSalt _salt LaunchedInstance' {..} =
    _salt `Prelude.hashWithSalt` ec2InstanceID
      `Prelude.hashWithSalt` jobID
      `Prelude.hashWithSalt` firstBoot

instance Prelude.NFData LaunchedInstance where
  rnf LaunchedInstance' {..} =
    Prelude.rnf ec2InstanceID
      `Prelude.seq` Prelude.rnf jobID
      `Prelude.seq` Prelude.rnf firstBoot
