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
-- Module      : Amazonka.SageMaker.Types.DriftCheckModelQuality
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMaker.Types.DriftCheckModelQuality where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SageMaker.Types.MetricsSource

-- | Represents the drift check model quality baselines that can be used when
-- the model monitor is set using the model package.
--
-- /See:/ 'newDriftCheckModelQuality' smart constructor.
data DriftCheckModelQuality = DriftCheckModelQuality'
  { -- | The drift check model quality constraints.
    constraints :: Prelude.Maybe MetricsSource,
    -- | The drift check model quality statistics.
    statistics :: Prelude.Maybe MetricsSource
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DriftCheckModelQuality' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'constraints', 'driftCheckModelQuality_constraints' - The drift check model quality constraints.
--
-- 'statistics', 'driftCheckModelQuality_statistics' - The drift check model quality statistics.
newDriftCheckModelQuality ::
  DriftCheckModelQuality
newDriftCheckModelQuality =
  DriftCheckModelQuality'
    { constraints =
        Prelude.Nothing,
      statistics = Prelude.Nothing
    }

-- | The drift check model quality constraints.
driftCheckModelQuality_constraints :: Lens.Lens' DriftCheckModelQuality (Prelude.Maybe MetricsSource)
driftCheckModelQuality_constraints = Lens.lens (\DriftCheckModelQuality' {constraints} -> constraints) (\s@DriftCheckModelQuality' {} a -> s {constraints = a} :: DriftCheckModelQuality)

-- | The drift check model quality statistics.
driftCheckModelQuality_statistics :: Lens.Lens' DriftCheckModelQuality (Prelude.Maybe MetricsSource)
driftCheckModelQuality_statistics = Lens.lens (\DriftCheckModelQuality' {statistics} -> statistics) (\s@DriftCheckModelQuality' {} a -> s {statistics = a} :: DriftCheckModelQuality)

instance Core.FromJSON DriftCheckModelQuality where
  parseJSON =
    Core.withObject
      "DriftCheckModelQuality"
      ( \x ->
          DriftCheckModelQuality'
            Prelude.<$> (x Core..:? "Constraints")
            Prelude.<*> (x Core..:? "Statistics")
      )

instance Prelude.Hashable DriftCheckModelQuality where
  hashWithSalt _salt DriftCheckModelQuality' {..} =
    _salt `Prelude.hashWithSalt` constraints
      `Prelude.hashWithSalt` statistics

instance Prelude.NFData DriftCheckModelQuality where
  rnf DriftCheckModelQuality' {..} =
    Prelude.rnf constraints
      `Prelude.seq` Prelude.rnf statistics

instance Core.ToJSON DriftCheckModelQuality where
  toJSON DriftCheckModelQuality' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Constraints" Core..=) Prelude.<$> constraints,
            ("Statistics" Core..=) Prelude.<$> statistics
          ]
      )
