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
-- Module      : Amazonka.EMR.Types.InstanceStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EMR.Types.InstanceStatus where

import qualified Amazonka.Core as Core
import Amazonka.EMR.Types.InstanceState
import Amazonka.EMR.Types.InstanceStateChangeReason
import Amazonka.EMR.Types.InstanceTimeline
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The instance status details.
--
-- /See:/ 'newInstanceStatus' smart constructor.
data InstanceStatus = InstanceStatus'
  { -- | The details of the status change reason for the instance.
    stateChangeReason :: Prelude.Maybe InstanceStateChangeReason,
    -- | The timeline of the instance status over time.
    timeline :: Prelude.Maybe InstanceTimeline,
    -- | The current state of the instance.
    state :: Prelude.Maybe InstanceState
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InstanceStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'stateChangeReason', 'instanceStatus_stateChangeReason' - The details of the status change reason for the instance.
--
-- 'timeline', 'instanceStatus_timeline' - The timeline of the instance status over time.
--
-- 'state', 'instanceStatus_state' - The current state of the instance.
newInstanceStatus ::
  InstanceStatus
newInstanceStatus =
  InstanceStatus'
    { stateChangeReason =
        Prelude.Nothing,
      timeline = Prelude.Nothing,
      state = Prelude.Nothing
    }

-- | The details of the status change reason for the instance.
instanceStatus_stateChangeReason :: Lens.Lens' InstanceStatus (Prelude.Maybe InstanceStateChangeReason)
instanceStatus_stateChangeReason = Lens.lens (\InstanceStatus' {stateChangeReason} -> stateChangeReason) (\s@InstanceStatus' {} a -> s {stateChangeReason = a} :: InstanceStatus)

-- | The timeline of the instance status over time.
instanceStatus_timeline :: Lens.Lens' InstanceStatus (Prelude.Maybe InstanceTimeline)
instanceStatus_timeline = Lens.lens (\InstanceStatus' {timeline} -> timeline) (\s@InstanceStatus' {} a -> s {timeline = a} :: InstanceStatus)

-- | The current state of the instance.
instanceStatus_state :: Lens.Lens' InstanceStatus (Prelude.Maybe InstanceState)
instanceStatus_state = Lens.lens (\InstanceStatus' {state} -> state) (\s@InstanceStatus' {} a -> s {state = a} :: InstanceStatus)

instance Core.FromJSON InstanceStatus where
  parseJSON =
    Core.withObject
      "InstanceStatus"
      ( \x ->
          InstanceStatus'
            Prelude.<$> (x Core..:? "StateChangeReason")
            Prelude.<*> (x Core..:? "Timeline")
            Prelude.<*> (x Core..:? "State")
      )

instance Prelude.Hashable InstanceStatus where
  hashWithSalt _salt InstanceStatus' {..} =
    _salt `Prelude.hashWithSalt` stateChangeReason
      `Prelude.hashWithSalt` timeline
      `Prelude.hashWithSalt` state

instance Prelude.NFData InstanceStatus where
  rnf InstanceStatus' {..} =
    Prelude.rnf stateChangeReason
      `Prelude.seq` Prelude.rnf timeline
      `Prelude.seq` Prelude.rnf state
