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
-- Module      : Amazonka.OpenSearch.Types.AutoTuneOptionsInput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.OpenSearch.Types.AutoTuneOptionsInput where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.OpenSearch.Types.AutoTuneDesiredState
import Amazonka.OpenSearch.Types.AutoTuneMaintenanceSchedule
import qualified Amazonka.Prelude as Prelude

-- | The Auto-Tune options: the Auto-Tune desired state for the domain and
-- list of maintenance schedules.
--
-- /See:/ 'newAutoTuneOptionsInput' smart constructor.
data AutoTuneOptionsInput = AutoTuneOptionsInput'
  { -- | A list of maintenance schedules. See
    -- <https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html Auto-Tune for Amazon OpenSearch Service>
    -- for more information.
    maintenanceSchedules :: Prelude.Maybe [AutoTuneMaintenanceSchedule],
    -- | The Auto-Tune desired state. Valid values are ENABLED and DISABLED.
    desiredState :: Prelude.Maybe AutoTuneDesiredState
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AutoTuneOptionsInput' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'maintenanceSchedules', 'autoTuneOptionsInput_maintenanceSchedules' - A list of maintenance schedules. See
-- <https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html Auto-Tune for Amazon OpenSearch Service>
-- for more information.
--
-- 'desiredState', 'autoTuneOptionsInput_desiredState' - The Auto-Tune desired state. Valid values are ENABLED and DISABLED.
newAutoTuneOptionsInput ::
  AutoTuneOptionsInput
newAutoTuneOptionsInput =
  AutoTuneOptionsInput'
    { maintenanceSchedules =
        Prelude.Nothing,
      desiredState = Prelude.Nothing
    }

-- | A list of maintenance schedules. See
-- <https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html Auto-Tune for Amazon OpenSearch Service>
-- for more information.
autoTuneOptionsInput_maintenanceSchedules :: Lens.Lens' AutoTuneOptionsInput (Prelude.Maybe [AutoTuneMaintenanceSchedule])
autoTuneOptionsInput_maintenanceSchedules = Lens.lens (\AutoTuneOptionsInput' {maintenanceSchedules} -> maintenanceSchedules) (\s@AutoTuneOptionsInput' {} a -> s {maintenanceSchedules = a} :: AutoTuneOptionsInput) Prelude.. Lens.mapping Lens.coerced

-- | The Auto-Tune desired state. Valid values are ENABLED and DISABLED.
autoTuneOptionsInput_desiredState :: Lens.Lens' AutoTuneOptionsInput (Prelude.Maybe AutoTuneDesiredState)
autoTuneOptionsInput_desiredState = Lens.lens (\AutoTuneOptionsInput' {desiredState} -> desiredState) (\s@AutoTuneOptionsInput' {} a -> s {desiredState = a} :: AutoTuneOptionsInput)

instance Prelude.Hashable AutoTuneOptionsInput where
  hashWithSalt _salt AutoTuneOptionsInput' {..} =
    _salt `Prelude.hashWithSalt` maintenanceSchedules
      `Prelude.hashWithSalt` desiredState

instance Prelude.NFData AutoTuneOptionsInput where
  rnf AutoTuneOptionsInput' {..} =
    Prelude.rnf maintenanceSchedules
      `Prelude.seq` Prelude.rnf desiredState

instance Core.ToJSON AutoTuneOptionsInput where
  toJSON AutoTuneOptionsInput' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("MaintenanceSchedules" Core..=)
              Prelude.<$> maintenanceSchedules,
            ("DesiredState" Core..=) Prelude.<$> desiredState
          ]
      )
