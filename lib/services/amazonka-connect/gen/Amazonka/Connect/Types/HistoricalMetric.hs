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
-- Module      : Amazonka.Connect.Types.HistoricalMetric
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Connect.Types.HistoricalMetric where

import Amazonka.Connect.Types.HistoricalMetricName
import Amazonka.Connect.Types.Statistic
import Amazonka.Connect.Types.Threshold
import Amazonka.Connect.Types.Unit
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Contains information about a historical metric. For a description of
-- each metric, see
-- <https://docs.aws.amazon.com/connect/latest/adminguide/historical-metrics-definitions.html Historical Metrics Definitions>
-- in the /Amazon Connect Administrator Guide/.
--
-- /See:/ 'newHistoricalMetric' smart constructor.
data HistoricalMetric = HistoricalMetric'
  { -- | The name of the metric.
    name :: Prelude.Maybe HistoricalMetricName,
    -- | The threshold for the metric, used with service level metrics.
    threshold :: Prelude.Maybe Threshold,
    -- | The statistic for the metric.
    statistic :: Prelude.Maybe Statistic,
    -- | The unit for the metric.
    unit :: Prelude.Maybe Unit
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'HistoricalMetric' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'historicalMetric_name' - The name of the metric.
--
-- 'threshold', 'historicalMetric_threshold' - The threshold for the metric, used with service level metrics.
--
-- 'statistic', 'historicalMetric_statistic' - The statistic for the metric.
--
-- 'unit', 'historicalMetric_unit' - The unit for the metric.
newHistoricalMetric ::
  HistoricalMetric
newHistoricalMetric =
  HistoricalMetric'
    { name = Prelude.Nothing,
      threshold = Prelude.Nothing,
      statistic = Prelude.Nothing,
      unit = Prelude.Nothing
    }

-- | The name of the metric.
historicalMetric_name :: Lens.Lens' HistoricalMetric (Prelude.Maybe HistoricalMetricName)
historicalMetric_name = Lens.lens (\HistoricalMetric' {name} -> name) (\s@HistoricalMetric' {} a -> s {name = a} :: HistoricalMetric)

-- | The threshold for the metric, used with service level metrics.
historicalMetric_threshold :: Lens.Lens' HistoricalMetric (Prelude.Maybe Threshold)
historicalMetric_threshold = Lens.lens (\HistoricalMetric' {threshold} -> threshold) (\s@HistoricalMetric' {} a -> s {threshold = a} :: HistoricalMetric)

-- | The statistic for the metric.
historicalMetric_statistic :: Lens.Lens' HistoricalMetric (Prelude.Maybe Statistic)
historicalMetric_statistic = Lens.lens (\HistoricalMetric' {statistic} -> statistic) (\s@HistoricalMetric' {} a -> s {statistic = a} :: HistoricalMetric)

-- | The unit for the metric.
historicalMetric_unit :: Lens.Lens' HistoricalMetric (Prelude.Maybe Unit)
historicalMetric_unit = Lens.lens (\HistoricalMetric' {unit} -> unit) (\s@HistoricalMetric' {} a -> s {unit = a} :: HistoricalMetric)

instance Core.FromJSON HistoricalMetric where
  parseJSON =
    Core.withObject
      "HistoricalMetric"
      ( \x ->
          HistoricalMetric'
            Prelude.<$> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "Threshold")
            Prelude.<*> (x Core..:? "Statistic")
            Prelude.<*> (x Core..:? "Unit")
      )

instance Prelude.Hashable HistoricalMetric where
  hashWithSalt _salt HistoricalMetric' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` threshold
      `Prelude.hashWithSalt` statistic
      `Prelude.hashWithSalt` unit

instance Prelude.NFData HistoricalMetric where
  rnf HistoricalMetric' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf threshold
      `Prelude.seq` Prelude.rnf statistic
      `Prelude.seq` Prelude.rnf unit

instance Core.ToJSON HistoricalMetric where
  toJSON HistoricalMetric' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Name" Core..=) Prelude.<$> name,
            ("Threshold" Core..=) Prelude.<$> threshold,
            ("Statistic" Core..=) Prelude.<$> statistic,
            ("Unit" Core..=) Prelude.<$> unit
          ]
      )
