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
-- Module      : Amazonka.LookoutMetrics.Types.MetricLevelImpact
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.LookoutMetrics.Types.MetricLevelImpact where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.LookoutMetrics.Types.ContributionMatrix
import qualified Amazonka.Prelude as Prelude

-- | Details about a measure affected by an anomaly.
--
-- /See:/ 'newMetricLevelImpact' smart constructor.
data MetricLevelImpact = MetricLevelImpact'
  { -- | Details about the dimensions that contributed to the anomaly.
    contributionMatrix :: Prelude.Maybe ContributionMatrix,
    -- | The number of anomalous metrics for the measure.
    numTimeSeries :: Prelude.Maybe Prelude.Int,
    -- | The name of the measure.
    metricName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MetricLevelImpact' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'contributionMatrix', 'metricLevelImpact_contributionMatrix' - Details about the dimensions that contributed to the anomaly.
--
-- 'numTimeSeries', 'metricLevelImpact_numTimeSeries' - The number of anomalous metrics for the measure.
--
-- 'metricName', 'metricLevelImpact_metricName' - The name of the measure.
newMetricLevelImpact ::
  MetricLevelImpact
newMetricLevelImpact =
  MetricLevelImpact'
    { contributionMatrix =
        Prelude.Nothing,
      numTimeSeries = Prelude.Nothing,
      metricName = Prelude.Nothing
    }

-- | Details about the dimensions that contributed to the anomaly.
metricLevelImpact_contributionMatrix :: Lens.Lens' MetricLevelImpact (Prelude.Maybe ContributionMatrix)
metricLevelImpact_contributionMatrix = Lens.lens (\MetricLevelImpact' {contributionMatrix} -> contributionMatrix) (\s@MetricLevelImpact' {} a -> s {contributionMatrix = a} :: MetricLevelImpact)

-- | The number of anomalous metrics for the measure.
metricLevelImpact_numTimeSeries :: Lens.Lens' MetricLevelImpact (Prelude.Maybe Prelude.Int)
metricLevelImpact_numTimeSeries = Lens.lens (\MetricLevelImpact' {numTimeSeries} -> numTimeSeries) (\s@MetricLevelImpact' {} a -> s {numTimeSeries = a} :: MetricLevelImpact)

-- | The name of the measure.
metricLevelImpact_metricName :: Lens.Lens' MetricLevelImpact (Prelude.Maybe Prelude.Text)
metricLevelImpact_metricName = Lens.lens (\MetricLevelImpact' {metricName} -> metricName) (\s@MetricLevelImpact' {} a -> s {metricName = a} :: MetricLevelImpact)

instance Core.FromJSON MetricLevelImpact where
  parseJSON =
    Core.withObject
      "MetricLevelImpact"
      ( \x ->
          MetricLevelImpact'
            Prelude.<$> (x Core..:? "ContributionMatrix")
            Prelude.<*> (x Core..:? "NumTimeSeries")
            Prelude.<*> (x Core..:? "MetricName")
      )

instance Prelude.Hashable MetricLevelImpact where
  hashWithSalt _salt MetricLevelImpact' {..} =
    _salt `Prelude.hashWithSalt` contributionMatrix
      `Prelude.hashWithSalt` numTimeSeries
      `Prelude.hashWithSalt` metricName

instance Prelude.NFData MetricLevelImpact where
  rnf MetricLevelImpact' {..} =
    Prelude.rnf contributionMatrix
      `Prelude.seq` Prelude.rnf numTimeSeries
      `Prelude.seq` Prelude.rnf metricName
