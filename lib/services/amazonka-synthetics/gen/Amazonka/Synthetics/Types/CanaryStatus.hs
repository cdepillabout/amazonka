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
-- Module      : Amazonka.Synthetics.Types.CanaryStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Synthetics.Types.CanaryStatus where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Synthetics.Types.CanaryState
import Amazonka.Synthetics.Types.CanaryStateReasonCode

-- | A structure that contains the current state of the canary.
--
-- /See:/ 'newCanaryStatus' smart constructor.
data CanaryStatus = CanaryStatus'
  { -- | The current state of the canary.
    state :: Prelude.Maybe CanaryState,
    -- | If the canary cannot run or has failed, this field displays the reason.
    stateReasonCode :: Prelude.Maybe CanaryStateReasonCode,
    -- | If the canary has insufficient permissions to run, this field provides
    -- more details.
    stateReason :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CanaryStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'state', 'canaryStatus_state' - The current state of the canary.
--
-- 'stateReasonCode', 'canaryStatus_stateReasonCode' - If the canary cannot run or has failed, this field displays the reason.
--
-- 'stateReason', 'canaryStatus_stateReason' - If the canary has insufficient permissions to run, this field provides
-- more details.
newCanaryStatus ::
  CanaryStatus
newCanaryStatus =
  CanaryStatus'
    { state = Prelude.Nothing,
      stateReasonCode = Prelude.Nothing,
      stateReason = Prelude.Nothing
    }

-- | The current state of the canary.
canaryStatus_state :: Lens.Lens' CanaryStatus (Prelude.Maybe CanaryState)
canaryStatus_state = Lens.lens (\CanaryStatus' {state} -> state) (\s@CanaryStatus' {} a -> s {state = a} :: CanaryStatus)

-- | If the canary cannot run or has failed, this field displays the reason.
canaryStatus_stateReasonCode :: Lens.Lens' CanaryStatus (Prelude.Maybe CanaryStateReasonCode)
canaryStatus_stateReasonCode = Lens.lens (\CanaryStatus' {stateReasonCode} -> stateReasonCode) (\s@CanaryStatus' {} a -> s {stateReasonCode = a} :: CanaryStatus)

-- | If the canary has insufficient permissions to run, this field provides
-- more details.
canaryStatus_stateReason :: Lens.Lens' CanaryStatus (Prelude.Maybe Prelude.Text)
canaryStatus_stateReason = Lens.lens (\CanaryStatus' {stateReason} -> stateReason) (\s@CanaryStatus' {} a -> s {stateReason = a} :: CanaryStatus)

instance Core.FromJSON CanaryStatus where
  parseJSON =
    Core.withObject
      "CanaryStatus"
      ( \x ->
          CanaryStatus'
            Prelude.<$> (x Core..:? "State")
            Prelude.<*> (x Core..:? "StateReasonCode")
            Prelude.<*> (x Core..:? "StateReason")
      )

instance Prelude.Hashable CanaryStatus where
  hashWithSalt _salt CanaryStatus' {..} =
    _salt `Prelude.hashWithSalt` state
      `Prelude.hashWithSalt` stateReasonCode
      `Prelude.hashWithSalt` stateReason

instance Prelude.NFData CanaryStatus where
  rnf CanaryStatus' {..} =
    Prelude.rnf state
      `Prelude.seq` Prelude.rnf stateReasonCode
      `Prelude.seq` Prelude.rnf stateReason
