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
-- Module      : Amazonka.Rekognition.Types.HumanLoopActivationOutput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Rekognition.Types.HumanLoopActivationOutput where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Shows the results of the human in the loop evaluation. If there is no
-- HumanLoopArn, the input did not trigger human review.
--
-- /See:/ 'newHumanLoopActivationOutput' smart constructor.
data HumanLoopActivationOutput = HumanLoopActivationOutput'
  { -- | Shows the result of condition evaluations, including those conditions
    -- which activated a human review.
    humanLoopActivationConditionsEvaluationResults :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the HumanLoop created.
    humanLoopArn :: Prelude.Maybe Prelude.Text,
    -- | Shows if and why human review was needed.
    humanLoopActivationReasons :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text)
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'HumanLoopActivationOutput' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'humanLoopActivationConditionsEvaluationResults', 'humanLoopActivationOutput_humanLoopActivationConditionsEvaluationResults' - Shows the result of condition evaluations, including those conditions
-- which activated a human review.
--
-- 'humanLoopArn', 'humanLoopActivationOutput_humanLoopArn' - The Amazon Resource Name (ARN) of the HumanLoop created.
--
-- 'humanLoopActivationReasons', 'humanLoopActivationOutput_humanLoopActivationReasons' - Shows if and why human review was needed.
newHumanLoopActivationOutput ::
  HumanLoopActivationOutput
newHumanLoopActivationOutput =
  HumanLoopActivationOutput'
    { humanLoopActivationConditionsEvaluationResults =
        Prelude.Nothing,
      humanLoopArn = Prelude.Nothing,
      humanLoopActivationReasons = Prelude.Nothing
    }

-- | Shows the result of condition evaluations, including those conditions
-- which activated a human review.
humanLoopActivationOutput_humanLoopActivationConditionsEvaluationResults :: Lens.Lens' HumanLoopActivationOutput (Prelude.Maybe Prelude.Text)
humanLoopActivationOutput_humanLoopActivationConditionsEvaluationResults = Lens.lens (\HumanLoopActivationOutput' {humanLoopActivationConditionsEvaluationResults} -> humanLoopActivationConditionsEvaluationResults) (\s@HumanLoopActivationOutput' {} a -> s {humanLoopActivationConditionsEvaluationResults = a} :: HumanLoopActivationOutput)

-- | The Amazon Resource Name (ARN) of the HumanLoop created.
humanLoopActivationOutput_humanLoopArn :: Lens.Lens' HumanLoopActivationOutput (Prelude.Maybe Prelude.Text)
humanLoopActivationOutput_humanLoopArn = Lens.lens (\HumanLoopActivationOutput' {humanLoopArn} -> humanLoopArn) (\s@HumanLoopActivationOutput' {} a -> s {humanLoopArn = a} :: HumanLoopActivationOutput)

-- | Shows if and why human review was needed.
humanLoopActivationOutput_humanLoopActivationReasons :: Lens.Lens' HumanLoopActivationOutput (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
humanLoopActivationOutput_humanLoopActivationReasons = Lens.lens (\HumanLoopActivationOutput' {humanLoopActivationReasons} -> humanLoopActivationReasons) (\s@HumanLoopActivationOutput' {} a -> s {humanLoopActivationReasons = a} :: HumanLoopActivationOutput) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON HumanLoopActivationOutput where
  parseJSON =
    Core.withObject
      "HumanLoopActivationOutput"
      ( \x ->
          HumanLoopActivationOutput'
            Prelude.<$> ( x
                            Core..:? "HumanLoopActivationConditionsEvaluationResults"
                        )
            Prelude.<*> (x Core..:? "HumanLoopArn")
            Prelude.<*> (x Core..:? "HumanLoopActivationReasons")
      )

instance Prelude.Hashable HumanLoopActivationOutput where
  hashWithSalt _salt HumanLoopActivationOutput' {..} =
    _salt
      `Prelude.hashWithSalt` humanLoopActivationConditionsEvaluationResults
      `Prelude.hashWithSalt` humanLoopArn
      `Prelude.hashWithSalt` humanLoopActivationReasons

instance Prelude.NFData HumanLoopActivationOutput where
  rnf HumanLoopActivationOutput' {..} =
    Prelude.rnf
      humanLoopActivationConditionsEvaluationResults
      `Prelude.seq` Prelude.rnf humanLoopArn
      `Prelude.seq` Prelude.rnf humanLoopActivationReasons
