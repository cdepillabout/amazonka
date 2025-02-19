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
-- Module      : Amazonka.MwAA.Types.StatisticSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MwAA.Types.StatisticSet where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | __Internal only__. Represents a set of statistics that describe a
-- specific metric. To learn more about the metrics published to Amazon
-- CloudWatch, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/cw-metrics.html Amazon MWAA performance metrics in Amazon CloudWatch>.
--
-- /See:/ 'newStatisticSet' smart constructor.
data StatisticSet = StatisticSet'
  { -- | __Internal only__. The minimum value of the sample set.
    minimum :: Prelude.Maybe Prelude.Double,
    -- | __Internal only__. The number of samples used for the statistic set.
    sampleCount :: Prelude.Maybe Prelude.Int,
    -- | __Internal only__. The sum of values for the sample set.
    sum :: Prelude.Maybe Prelude.Double,
    -- | __Internal only__. The maximum value of the sample set.
    maximum :: Prelude.Maybe Prelude.Double
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StatisticSet' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'minimum', 'statisticSet_minimum' - __Internal only__. The minimum value of the sample set.
--
-- 'sampleCount', 'statisticSet_sampleCount' - __Internal only__. The number of samples used for the statistic set.
--
-- 'sum', 'statisticSet_sum' - __Internal only__. The sum of values for the sample set.
--
-- 'maximum', 'statisticSet_maximum' - __Internal only__. The maximum value of the sample set.
newStatisticSet ::
  StatisticSet
newStatisticSet =
  StatisticSet'
    { minimum = Prelude.Nothing,
      sampleCount = Prelude.Nothing,
      sum = Prelude.Nothing,
      maximum = Prelude.Nothing
    }

-- | __Internal only__. The minimum value of the sample set.
statisticSet_minimum :: Lens.Lens' StatisticSet (Prelude.Maybe Prelude.Double)
statisticSet_minimum = Lens.lens (\StatisticSet' {minimum} -> minimum) (\s@StatisticSet' {} a -> s {minimum = a} :: StatisticSet)

-- | __Internal only__. The number of samples used for the statistic set.
statisticSet_sampleCount :: Lens.Lens' StatisticSet (Prelude.Maybe Prelude.Int)
statisticSet_sampleCount = Lens.lens (\StatisticSet' {sampleCount} -> sampleCount) (\s@StatisticSet' {} a -> s {sampleCount = a} :: StatisticSet)

-- | __Internal only__. The sum of values for the sample set.
statisticSet_sum :: Lens.Lens' StatisticSet (Prelude.Maybe Prelude.Double)
statisticSet_sum = Lens.lens (\StatisticSet' {sum} -> sum) (\s@StatisticSet' {} a -> s {sum = a} :: StatisticSet)

-- | __Internal only__. The maximum value of the sample set.
statisticSet_maximum :: Lens.Lens' StatisticSet (Prelude.Maybe Prelude.Double)
statisticSet_maximum = Lens.lens (\StatisticSet' {maximum} -> maximum) (\s@StatisticSet' {} a -> s {maximum = a} :: StatisticSet)

instance Prelude.Hashable StatisticSet where
  hashWithSalt _salt StatisticSet' {..} =
    _salt `Prelude.hashWithSalt` minimum
      `Prelude.hashWithSalt` sampleCount
      `Prelude.hashWithSalt` sum
      `Prelude.hashWithSalt` maximum

instance Prelude.NFData StatisticSet where
  rnf StatisticSet' {..} =
    Prelude.rnf minimum
      `Prelude.seq` Prelude.rnf sampleCount
      `Prelude.seq` Prelude.rnf sum
      `Prelude.seq` Prelude.rnf maximum

instance Core.ToJSON StatisticSet where
  toJSON StatisticSet' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Minimum" Core..=) Prelude.<$> minimum,
            ("SampleCount" Core..=) Prelude.<$> sampleCount,
            ("Sum" Core..=) Prelude.<$> sum,
            ("Maximum" Core..=) Prelude.<$> maximum
          ]
      )
