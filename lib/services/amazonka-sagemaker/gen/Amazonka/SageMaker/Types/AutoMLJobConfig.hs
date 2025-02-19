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
-- Module      : Amazonka.SageMaker.Types.AutoMLJobConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMaker.Types.AutoMLJobConfig where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SageMaker.Types.AutoMLCandidateGenerationConfig
import Amazonka.SageMaker.Types.AutoMLDataSplitConfig
import Amazonka.SageMaker.Types.AutoMLJobCompletionCriteria
import Amazonka.SageMaker.Types.AutoMLSecurityConfig

-- | A collection of settings used for an AutoML job.
--
-- /See:/ 'newAutoMLJobConfig' smart constructor.
data AutoMLJobConfig = AutoMLJobConfig'
  { -- | The configuration for splitting the input training dataset.
    --
    -- Type: AutoMLDataSplitConfig
    dataSplitConfig :: Prelude.Maybe AutoMLDataSplitConfig,
    -- | How long an AutoML job is allowed to run, or how many candidates a job
    -- is allowed to generate.
    completionCriteria :: Prelude.Maybe AutoMLJobCompletionCriteria,
    -- | The configuration for generating a candidate for an AutoML job
    -- (optional).
    candidateGenerationConfig :: Prelude.Maybe AutoMLCandidateGenerationConfig,
    -- | The security configuration for traffic encryption or Amazon VPC
    -- settings.
    securityConfig :: Prelude.Maybe AutoMLSecurityConfig
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AutoMLJobConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dataSplitConfig', 'autoMLJobConfig_dataSplitConfig' - The configuration for splitting the input training dataset.
--
-- Type: AutoMLDataSplitConfig
--
-- 'completionCriteria', 'autoMLJobConfig_completionCriteria' - How long an AutoML job is allowed to run, or how many candidates a job
-- is allowed to generate.
--
-- 'candidateGenerationConfig', 'autoMLJobConfig_candidateGenerationConfig' - The configuration for generating a candidate for an AutoML job
-- (optional).
--
-- 'securityConfig', 'autoMLJobConfig_securityConfig' - The security configuration for traffic encryption or Amazon VPC
-- settings.
newAutoMLJobConfig ::
  AutoMLJobConfig
newAutoMLJobConfig =
  AutoMLJobConfig'
    { dataSplitConfig = Prelude.Nothing,
      completionCriteria = Prelude.Nothing,
      candidateGenerationConfig = Prelude.Nothing,
      securityConfig = Prelude.Nothing
    }

-- | The configuration for splitting the input training dataset.
--
-- Type: AutoMLDataSplitConfig
autoMLJobConfig_dataSplitConfig :: Lens.Lens' AutoMLJobConfig (Prelude.Maybe AutoMLDataSplitConfig)
autoMLJobConfig_dataSplitConfig = Lens.lens (\AutoMLJobConfig' {dataSplitConfig} -> dataSplitConfig) (\s@AutoMLJobConfig' {} a -> s {dataSplitConfig = a} :: AutoMLJobConfig)

-- | How long an AutoML job is allowed to run, or how many candidates a job
-- is allowed to generate.
autoMLJobConfig_completionCriteria :: Lens.Lens' AutoMLJobConfig (Prelude.Maybe AutoMLJobCompletionCriteria)
autoMLJobConfig_completionCriteria = Lens.lens (\AutoMLJobConfig' {completionCriteria} -> completionCriteria) (\s@AutoMLJobConfig' {} a -> s {completionCriteria = a} :: AutoMLJobConfig)

-- | The configuration for generating a candidate for an AutoML job
-- (optional).
autoMLJobConfig_candidateGenerationConfig :: Lens.Lens' AutoMLJobConfig (Prelude.Maybe AutoMLCandidateGenerationConfig)
autoMLJobConfig_candidateGenerationConfig = Lens.lens (\AutoMLJobConfig' {candidateGenerationConfig} -> candidateGenerationConfig) (\s@AutoMLJobConfig' {} a -> s {candidateGenerationConfig = a} :: AutoMLJobConfig)

-- | The security configuration for traffic encryption or Amazon VPC
-- settings.
autoMLJobConfig_securityConfig :: Lens.Lens' AutoMLJobConfig (Prelude.Maybe AutoMLSecurityConfig)
autoMLJobConfig_securityConfig = Lens.lens (\AutoMLJobConfig' {securityConfig} -> securityConfig) (\s@AutoMLJobConfig' {} a -> s {securityConfig = a} :: AutoMLJobConfig)

instance Core.FromJSON AutoMLJobConfig where
  parseJSON =
    Core.withObject
      "AutoMLJobConfig"
      ( \x ->
          AutoMLJobConfig'
            Prelude.<$> (x Core..:? "DataSplitConfig")
            Prelude.<*> (x Core..:? "CompletionCriteria")
            Prelude.<*> (x Core..:? "CandidateGenerationConfig")
            Prelude.<*> (x Core..:? "SecurityConfig")
      )

instance Prelude.Hashable AutoMLJobConfig where
  hashWithSalt _salt AutoMLJobConfig' {..} =
    _salt `Prelude.hashWithSalt` dataSplitConfig
      `Prelude.hashWithSalt` completionCriteria
      `Prelude.hashWithSalt` candidateGenerationConfig
      `Prelude.hashWithSalt` securityConfig

instance Prelude.NFData AutoMLJobConfig where
  rnf AutoMLJobConfig' {..} =
    Prelude.rnf dataSplitConfig
      `Prelude.seq` Prelude.rnf completionCriteria
      `Prelude.seq` Prelude.rnf candidateGenerationConfig
      `Prelude.seq` Prelude.rnf securityConfig

instance Core.ToJSON AutoMLJobConfig where
  toJSON AutoMLJobConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("DataSplitConfig" Core..=)
              Prelude.<$> dataSplitConfig,
            ("CompletionCriteria" Core..=)
              Prelude.<$> completionCriteria,
            ("CandidateGenerationConfig" Core..=)
              Prelude.<$> candidateGenerationConfig,
            ("SecurityConfig" Core..=)
              Prelude.<$> securityConfig
          ]
      )
