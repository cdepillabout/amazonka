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
-- Module      : Amazonka.SageMaker.Types.ModelMetrics
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMaker.Types.ModelMetrics where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SageMaker.Types.Bias
import Amazonka.SageMaker.Types.Explainability
import Amazonka.SageMaker.Types.ModelDataQuality
import Amazonka.SageMaker.Types.ModelQuality

-- | Contains metrics captured from a model.
--
-- /See:/ 'newModelMetrics' smart constructor.
data ModelMetrics = ModelMetrics'
  { -- | Metrics that measure the quality of the input data for a model.
    modelDataQuality :: Prelude.Maybe ModelDataQuality,
    -- | Metrics that measure the quality of a model.
    modelQuality :: Prelude.Maybe ModelQuality,
    -- | Metrics that measure bais in a model.
    bias :: Prelude.Maybe Bias,
    -- | Metrics that help explain a model.
    explainability :: Prelude.Maybe Explainability
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ModelMetrics' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'modelDataQuality', 'modelMetrics_modelDataQuality' - Metrics that measure the quality of the input data for a model.
--
-- 'modelQuality', 'modelMetrics_modelQuality' - Metrics that measure the quality of a model.
--
-- 'bias', 'modelMetrics_bias' - Metrics that measure bais in a model.
--
-- 'explainability', 'modelMetrics_explainability' - Metrics that help explain a model.
newModelMetrics ::
  ModelMetrics
newModelMetrics =
  ModelMetrics'
    { modelDataQuality = Prelude.Nothing,
      modelQuality = Prelude.Nothing,
      bias = Prelude.Nothing,
      explainability = Prelude.Nothing
    }

-- | Metrics that measure the quality of the input data for a model.
modelMetrics_modelDataQuality :: Lens.Lens' ModelMetrics (Prelude.Maybe ModelDataQuality)
modelMetrics_modelDataQuality = Lens.lens (\ModelMetrics' {modelDataQuality} -> modelDataQuality) (\s@ModelMetrics' {} a -> s {modelDataQuality = a} :: ModelMetrics)

-- | Metrics that measure the quality of a model.
modelMetrics_modelQuality :: Lens.Lens' ModelMetrics (Prelude.Maybe ModelQuality)
modelMetrics_modelQuality = Lens.lens (\ModelMetrics' {modelQuality} -> modelQuality) (\s@ModelMetrics' {} a -> s {modelQuality = a} :: ModelMetrics)

-- | Metrics that measure bais in a model.
modelMetrics_bias :: Lens.Lens' ModelMetrics (Prelude.Maybe Bias)
modelMetrics_bias = Lens.lens (\ModelMetrics' {bias} -> bias) (\s@ModelMetrics' {} a -> s {bias = a} :: ModelMetrics)

-- | Metrics that help explain a model.
modelMetrics_explainability :: Lens.Lens' ModelMetrics (Prelude.Maybe Explainability)
modelMetrics_explainability = Lens.lens (\ModelMetrics' {explainability} -> explainability) (\s@ModelMetrics' {} a -> s {explainability = a} :: ModelMetrics)

instance Core.FromJSON ModelMetrics where
  parseJSON =
    Core.withObject
      "ModelMetrics"
      ( \x ->
          ModelMetrics'
            Prelude.<$> (x Core..:? "ModelDataQuality")
            Prelude.<*> (x Core..:? "ModelQuality")
            Prelude.<*> (x Core..:? "Bias")
            Prelude.<*> (x Core..:? "Explainability")
      )

instance Prelude.Hashable ModelMetrics where
  hashWithSalt _salt ModelMetrics' {..} =
    _salt `Prelude.hashWithSalt` modelDataQuality
      `Prelude.hashWithSalt` modelQuality
      `Prelude.hashWithSalt` bias
      `Prelude.hashWithSalt` explainability

instance Prelude.NFData ModelMetrics where
  rnf ModelMetrics' {..} =
    Prelude.rnf modelDataQuality
      `Prelude.seq` Prelude.rnf modelQuality
      `Prelude.seq` Prelude.rnf bias
      `Prelude.seq` Prelude.rnf explainability

instance Core.ToJSON ModelMetrics where
  toJSON ModelMetrics' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ModelDataQuality" Core..=)
              Prelude.<$> modelDataQuality,
            ("ModelQuality" Core..=) Prelude.<$> modelQuality,
            ("Bias" Core..=) Prelude.<$> bias,
            ("Explainability" Core..=)
              Prelude.<$> explainability
          ]
      )
