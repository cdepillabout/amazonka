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
-- Module      : Amazonka.IoT.Types.Statistics
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoT.Types.Statistics where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A map of key-value pairs for all supported statistics. For issues with
-- missing or unexpected values for this API, consult
-- <https://docs.aws.amazon.com/iot/latest/developerguide/fleet-indexing-troubleshooting.html Fleet indexing troubleshooting guide>.
--
-- /See:/ 'newStatistics' smart constructor.
data Statistics = Statistics'
  { -- | The minimum aggregated field value.
    minimum :: Prelude.Maybe Prelude.Double,
    -- | The average of the aggregated field values.
    average :: Prelude.Maybe Prelude.Double,
    -- | The sum of the squares of the aggregated field values.
    sumOfSquares :: Prelude.Maybe Prelude.Double,
    -- | The count of things that match the query string criteria and contain a
    -- valid aggregation field value.
    count :: Prelude.Maybe Prelude.Int,
    -- | The standard deviation of the aggregated field values.
    stdDeviation :: Prelude.Maybe Prelude.Double,
    -- | The sum of the aggregated field values.
    sum :: Prelude.Maybe Prelude.Double,
    -- | The variance of the aggregated field values.
    variance :: Prelude.Maybe Prelude.Double,
    -- | The maximum aggregated field value.
    maximum :: Prelude.Maybe Prelude.Double
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Statistics' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'minimum', 'statistics_minimum' - The minimum aggregated field value.
--
-- 'average', 'statistics_average' - The average of the aggregated field values.
--
-- 'sumOfSquares', 'statistics_sumOfSquares' - The sum of the squares of the aggregated field values.
--
-- 'count', 'statistics_count' - The count of things that match the query string criteria and contain a
-- valid aggregation field value.
--
-- 'stdDeviation', 'statistics_stdDeviation' - The standard deviation of the aggregated field values.
--
-- 'sum', 'statistics_sum' - The sum of the aggregated field values.
--
-- 'variance', 'statistics_variance' - The variance of the aggregated field values.
--
-- 'maximum', 'statistics_maximum' - The maximum aggregated field value.
newStatistics ::
  Statistics
newStatistics =
  Statistics'
    { minimum = Prelude.Nothing,
      average = Prelude.Nothing,
      sumOfSquares = Prelude.Nothing,
      count = Prelude.Nothing,
      stdDeviation = Prelude.Nothing,
      sum = Prelude.Nothing,
      variance = Prelude.Nothing,
      maximum = Prelude.Nothing
    }

-- | The minimum aggregated field value.
statistics_minimum :: Lens.Lens' Statistics (Prelude.Maybe Prelude.Double)
statistics_minimum = Lens.lens (\Statistics' {minimum} -> minimum) (\s@Statistics' {} a -> s {minimum = a} :: Statistics)

-- | The average of the aggregated field values.
statistics_average :: Lens.Lens' Statistics (Prelude.Maybe Prelude.Double)
statistics_average = Lens.lens (\Statistics' {average} -> average) (\s@Statistics' {} a -> s {average = a} :: Statistics)

-- | The sum of the squares of the aggregated field values.
statistics_sumOfSquares :: Lens.Lens' Statistics (Prelude.Maybe Prelude.Double)
statistics_sumOfSquares = Lens.lens (\Statistics' {sumOfSquares} -> sumOfSquares) (\s@Statistics' {} a -> s {sumOfSquares = a} :: Statistics)

-- | The count of things that match the query string criteria and contain a
-- valid aggregation field value.
statistics_count :: Lens.Lens' Statistics (Prelude.Maybe Prelude.Int)
statistics_count = Lens.lens (\Statistics' {count} -> count) (\s@Statistics' {} a -> s {count = a} :: Statistics)

-- | The standard deviation of the aggregated field values.
statistics_stdDeviation :: Lens.Lens' Statistics (Prelude.Maybe Prelude.Double)
statistics_stdDeviation = Lens.lens (\Statistics' {stdDeviation} -> stdDeviation) (\s@Statistics' {} a -> s {stdDeviation = a} :: Statistics)

-- | The sum of the aggregated field values.
statistics_sum :: Lens.Lens' Statistics (Prelude.Maybe Prelude.Double)
statistics_sum = Lens.lens (\Statistics' {sum} -> sum) (\s@Statistics' {} a -> s {sum = a} :: Statistics)

-- | The variance of the aggregated field values.
statistics_variance :: Lens.Lens' Statistics (Prelude.Maybe Prelude.Double)
statistics_variance = Lens.lens (\Statistics' {variance} -> variance) (\s@Statistics' {} a -> s {variance = a} :: Statistics)

-- | The maximum aggregated field value.
statistics_maximum :: Lens.Lens' Statistics (Prelude.Maybe Prelude.Double)
statistics_maximum = Lens.lens (\Statistics' {maximum} -> maximum) (\s@Statistics' {} a -> s {maximum = a} :: Statistics)

instance Core.FromJSON Statistics where
  parseJSON =
    Core.withObject
      "Statistics"
      ( \x ->
          Statistics'
            Prelude.<$> (x Core..:? "minimum")
            Prelude.<*> (x Core..:? "average")
            Prelude.<*> (x Core..:? "sumOfSquares")
            Prelude.<*> (x Core..:? "count")
            Prelude.<*> (x Core..:? "stdDeviation")
            Prelude.<*> (x Core..:? "sum")
            Prelude.<*> (x Core..:? "variance")
            Prelude.<*> (x Core..:? "maximum")
      )

instance Prelude.Hashable Statistics where
  hashWithSalt _salt Statistics' {..} =
    _salt `Prelude.hashWithSalt` minimum
      `Prelude.hashWithSalt` average
      `Prelude.hashWithSalt` sumOfSquares
      `Prelude.hashWithSalt` count
      `Prelude.hashWithSalt` stdDeviation
      `Prelude.hashWithSalt` sum
      `Prelude.hashWithSalt` variance
      `Prelude.hashWithSalt` maximum

instance Prelude.NFData Statistics where
  rnf Statistics' {..} =
    Prelude.rnf minimum
      `Prelude.seq` Prelude.rnf average
      `Prelude.seq` Prelude.rnf sumOfSquares
      `Prelude.seq` Prelude.rnf count
      `Prelude.seq` Prelude.rnf stdDeviation
      `Prelude.seq` Prelude.rnf sum
      `Prelude.seq` Prelude.rnf variance
      `Prelude.seq` Prelude.rnf maximum
