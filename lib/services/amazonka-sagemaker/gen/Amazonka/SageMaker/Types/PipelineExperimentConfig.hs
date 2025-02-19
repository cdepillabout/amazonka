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
-- Module      : Amazonka.SageMaker.Types.PipelineExperimentConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMaker.Types.PipelineExperimentConfig where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Specifies the names of the experiment and trial created by a pipeline.
--
-- /See:/ 'newPipelineExperimentConfig' smart constructor.
data PipelineExperimentConfig = PipelineExperimentConfig'
  { -- | The name of the trial.
    trialName :: Prelude.Maybe Prelude.Text,
    -- | The name of the experiment.
    experimentName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PipelineExperimentConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'trialName', 'pipelineExperimentConfig_trialName' - The name of the trial.
--
-- 'experimentName', 'pipelineExperimentConfig_experimentName' - The name of the experiment.
newPipelineExperimentConfig ::
  PipelineExperimentConfig
newPipelineExperimentConfig =
  PipelineExperimentConfig'
    { trialName =
        Prelude.Nothing,
      experimentName = Prelude.Nothing
    }

-- | The name of the trial.
pipelineExperimentConfig_trialName :: Lens.Lens' PipelineExperimentConfig (Prelude.Maybe Prelude.Text)
pipelineExperimentConfig_trialName = Lens.lens (\PipelineExperimentConfig' {trialName} -> trialName) (\s@PipelineExperimentConfig' {} a -> s {trialName = a} :: PipelineExperimentConfig)

-- | The name of the experiment.
pipelineExperimentConfig_experimentName :: Lens.Lens' PipelineExperimentConfig (Prelude.Maybe Prelude.Text)
pipelineExperimentConfig_experimentName = Lens.lens (\PipelineExperimentConfig' {experimentName} -> experimentName) (\s@PipelineExperimentConfig' {} a -> s {experimentName = a} :: PipelineExperimentConfig)

instance Core.FromJSON PipelineExperimentConfig where
  parseJSON =
    Core.withObject
      "PipelineExperimentConfig"
      ( \x ->
          PipelineExperimentConfig'
            Prelude.<$> (x Core..:? "TrialName")
            Prelude.<*> (x Core..:? "ExperimentName")
      )

instance Prelude.Hashable PipelineExperimentConfig where
  hashWithSalt _salt PipelineExperimentConfig' {..} =
    _salt `Prelude.hashWithSalt` trialName
      `Prelude.hashWithSalt` experimentName

instance Prelude.NFData PipelineExperimentConfig where
  rnf PipelineExperimentConfig' {..} =
    Prelude.rnf trialName
      `Prelude.seq` Prelude.rnf experimentName
