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
-- Module      : Amazonka.Config.Types.RemediationExecutionStep
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Config.Types.RemediationExecutionStep where

import Amazonka.Config.Types.RemediationExecutionStepState
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Name of the step from the SSM document.
--
-- /See:/ 'newRemediationExecutionStep' smart constructor.
data RemediationExecutionStep = RemediationExecutionStep'
  { -- | The details of the step.
    name :: Prelude.Maybe Prelude.Text,
    -- | An error message if the step was interrupted during execution.
    errorMessage :: Prelude.Maybe Prelude.Text,
    -- | The time when the step stopped.
    stopTime :: Prelude.Maybe Core.POSIX,
    -- | The valid status of the step.
    state :: Prelude.Maybe RemediationExecutionStepState,
    -- | The time when the step started.
    startTime :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RemediationExecutionStep' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'remediationExecutionStep_name' - The details of the step.
--
-- 'errorMessage', 'remediationExecutionStep_errorMessage' - An error message if the step was interrupted during execution.
--
-- 'stopTime', 'remediationExecutionStep_stopTime' - The time when the step stopped.
--
-- 'state', 'remediationExecutionStep_state' - The valid status of the step.
--
-- 'startTime', 'remediationExecutionStep_startTime' - The time when the step started.
newRemediationExecutionStep ::
  RemediationExecutionStep
newRemediationExecutionStep =
  RemediationExecutionStep'
    { name = Prelude.Nothing,
      errorMessage = Prelude.Nothing,
      stopTime = Prelude.Nothing,
      state = Prelude.Nothing,
      startTime = Prelude.Nothing
    }

-- | The details of the step.
remediationExecutionStep_name :: Lens.Lens' RemediationExecutionStep (Prelude.Maybe Prelude.Text)
remediationExecutionStep_name = Lens.lens (\RemediationExecutionStep' {name} -> name) (\s@RemediationExecutionStep' {} a -> s {name = a} :: RemediationExecutionStep)

-- | An error message if the step was interrupted during execution.
remediationExecutionStep_errorMessage :: Lens.Lens' RemediationExecutionStep (Prelude.Maybe Prelude.Text)
remediationExecutionStep_errorMessage = Lens.lens (\RemediationExecutionStep' {errorMessage} -> errorMessage) (\s@RemediationExecutionStep' {} a -> s {errorMessage = a} :: RemediationExecutionStep)

-- | The time when the step stopped.
remediationExecutionStep_stopTime :: Lens.Lens' RemediationExecutionStep (Prelude.Maybe Prelude.UTCTime)
remediationExecutionStep_stopTime = Lens.lens (\RemediationExecutionStep' {stopTime} -> stopTime) (\s@RemediationExecutionStep' {} a -> s {stopTime = a} :: RemediationExecutionStep) Prelude.. Lens.mapping Core._Time

-- | The valid status of the step.
remediationExecutionStep_state :: Lens.Lens' RemediationExecutionStep (Prelude.Maybe RemediationExecutionStepState)
remediationExecutionStep_state = Lens.lens (\RemediationExecutionStep' {state} -> state) (\s@RemediationExecutionStep' {} a -> s {state = a} :: RemediationExecutionStep)

-- | The time when the step started.
remediationExecutionStep_startTime :: Lens.Lens' RemediationExecutionStep (Prelude.Maybe Prelude.UTCTime)
remediationExecutionStep_startTime = Lens.lens (\RemediationExecutionStep' {startTime} -> startTime) (\s@RemediationExecutionStep' {} a -> s {startTime = a} :: RemediationExecutionStep) Prelude.. Lens.mapping Core._Time

instance Core.FromJSON RemediationExecutionStep where
  parseJSON =
    Core.withObject
      "RemediationExecutionStep"
      ( \x ->
          RemediationExecutionStep'
            Prelude.<$> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "ErrorMessage")
            Prelude.<*> (x Core..:? "StopTime")
            Prelude.<*> (x Core..:? "State")
            Prelude.<*> (x Core..:? "StartTime")
      )

instance Prelude.Hashable RemediationExecutionStep where
  hashWithSalt _salt RemediationExecutionStep' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` errorMessage
      `Prelude.hashWithSalt` stopTime
      `Prelude.hashWithSalt` state
      `Prelude.hashWithSalt` startTime

instance Prelude.NFData RemediationExecutionStep where
  rnf RemediationExecutionStep' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf errorMessage
      `Prelude.seq` Prelude.rnf stopTime
      `Prelude.seq` Prelude.rnf state
      `Prelude.seq` Prelude.rnf startTime
