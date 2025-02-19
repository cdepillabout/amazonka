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
-- Module      : Amazonka.FraudDetector.Types.ModelVersionEvaluation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.FraudDetector.Types.ModelVersionEvaluation where

import qualified Amazonka.Core as Core
import Amazonka.FraudDetector.Types.PredictionExplanations
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The model version evalutions.
--
-- /See:/ 'newModelVersionEvaluation' smart constructor.
data ModelVersionEvaluation = ModelVersionEvaluation'
  { -- | The output variable name.
    outputVariableName :: Prelude.Maybe Prelude.Text,
    -- | The prediction explanations generated for the model version.
    predictionExplanations :: Prelude.Maybe PredictionExplanations,
    -- | The evaluation score generated for the model version.
    evaluationScore :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ModelVersionEvaluation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'outputVariableName', 'modelVersionEvaluation_outputVariableName' - The output variable name.
--
-- 'predictionExplanations', 'modelVersionEvaluation_predictionExplanations' - The prediction explanations generated for the model version.
--
-- 'evaluationScore', 'modelVersionEvaluation_evaluationScore' - The evaluation score generated for the model version.
newModelVersionEvaluation ::
  ModelVersionEvaluation
newModelVersionEvaluation =
  ModelVersionEvaluation'
    { outputVariableName =
        Prelude.Nothing,
      predictionExplanations = Prelude.Nothing,
      evaluationScore = Prelude.Nothing
    }

-- | The output variable name.
modelVersionEvaluation_outputVariableName :: Lens.Lens' ModelVersionEvaluation (Prelude.Maybe Prelude.Text)
modelVersionEvaluation_outputVariableName = Lens.lens (\ModelVersionEvaluation' {outputVariableName} -> outputVariableName) (\s@ModelVersionEvaluation' {} a -> s {outputVariableName = a} :: ModelVersionEvaluation)

-- | The prediction explanations generated for the model version.
modelVersionEvaluation_predictionExplanations :: Lens.Lens' ModelVersionEvaluation (Prelude.Maybe PredictionExplanations)
modelVersionEvaluation_predictionExplanations = Lens.lens (\ModelVersionEvaluation' {predictionExplanations} -> predictionExplanations) (\s@ModelVersionEvaluation' {} a -> s {predictionExplanations = a} :: ModelVersionEvaluation)

-- | The evaluation score generated for the model version.
modelVersionEvaluation_evaluationScore :: Lens.Lens' ModelVersionEvaluation (Prelude.Maybe Prelude.Text)
modelVersionEvaluation_evaluationScore = Lens.lens (\ModelVersionEvaluation' {evaluationScore} -> evaluationScore) (\s@ModelVersionEvaluation' {} a -> s {evaluationScore = a} :: ModelVersionEvaluation)

instance Core.FromJSON ModelVersionEvaluation where
  parseJSON =
    Core.withObject
      "ModelVersionEvaluation"
      ( \x ->
          ModelVersionEvaluation'
            Prelude.<$> (x Core..:? "outputVariableName")
            Prelude.<*> (x Core..:? "predictionExplanations")
            Prelude.<*> (x Core..:? "evaluationScore")
      )

instance Prelude.Hashable ModelVersionEvaluation where
  hashWithSalt _salt ModelVersionEvaluation' {..} =
    _salt `Prelude.hashWithSalt` outputVariableName
      `Prelude.hashWithSalt` predictionExplanations
      `Prelude.hashWithSalt` evaluationScore

instance Prelude.NFData ModelVersionEvaluation where
  rnf ModelVersionEvaluation' {..} =
    Prelude.rnf outputVariableName
      `Prelude.seq` Prelude.rnf predictionExplanations
      `Prelude.seq` Prelude.rnf evaluationScore
