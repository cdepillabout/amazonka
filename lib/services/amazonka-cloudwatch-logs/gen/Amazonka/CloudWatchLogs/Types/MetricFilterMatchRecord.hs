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
-- Module      : Amazonka.CloudWatchLogs.Types.MetricFilterMatchRecord
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CloudWatchLogs.Types.MetricFilterMatchRecord where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Represents a matched event.
--
-- /See:/ 'newMetricFilterMatchRecord' smart constructor.
data MetricFilterMatchRecord = MetricFilterMatchRecord'
  { -- | The event number.
    eventNumber :: Prelude.Maybe Prelude.Integer,
    -- | The values extracted from the event data by the filter.
    extractedValues :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The raw event data.
    eventMessage :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MetricFilterMatchRecord' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'eventNumber', 'metricFilterMatchRecord_eventNumber' - The event number.
--
-- 'extractedValues', 'metricFilterMatchRecord_extractedValues' - The values extracted from the event data by the filter.
--
-- 'eventMessage', 'metricFilterMatchRecord_eventMessage' - The raw event data.
newMetricFilterMatchRecord ::
  MetricFilterMatchRecord
newMetricFilterMatchRecord =
  MetricFilterMatchRecord'
    { eventNumber =
        Prelude.Nothing,
      extractedValues = Prelude.Nothing,
      eventMessage = Prelude.Nothing
    }

-- | The event number.
metricFilterMatchRecord_eventNumber :: Lens.Lens' MetricFilterMatchRecord (Prelude.Maybe Prelude.Integer)
metricFilterMatchRecord_eventNumber = Lens.lens (\MetricFilterMatchRecord' {eventNumber} -> eventNumber) (\s@MetricFilterMatchRecord' {} a -> s {eventNumber = a} :: MetricFilterMatchRecord)

-- | The values extracted from the event data by the filter.
metricFilterMatchRecord_extractedValues :: Lens.Lens' MetricFilterMatchRecord (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
metricFilterMatchRecord_extractedValues = Lens.lens (\MetricFilterMatchRecord' {extractedValues} -> extractedValues) (\s@MetricFilterMatchRecord' {} a -> s {extractedValues = a} :: MetricFilterMatchRecord) Prelude.. Lens.mapping Lens.coerced

-- | The raw event data.
metricFilterMatchRecord_eventMessage :: Lens.Lens' MetricFilterMatchRecord (Prelude.Maybe Prelude.Text)
metricFilterMatchRecord_eventMessage = Lens.lens (\MetricFilterMatchRecord' {eventMessage} -> eventMessage) (\s@MetricFilterMatchRecord' {} a -> s {eventMessage = a} :: MetricFilterMatchRecord)

instance Core.FromJSON MetricFilterMatchRecord where
  parseJSON =
    Core.withObject
      "MetricFilterMatchRecord"
      ( \x ->
          MetricFilterMatchRecord'
            Prelude.<$> (x Core..:? "eventNumber")
            Prelude.<*> ( x Core..:? "extractedValues"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "eventMessage")
      )

instance Prelude.Hashable MetricFilterMatchRecord where
  hashWithSalt _salt MetricFilterMatchRecord' {..} =
    _salt `Prelude.hashWithSalt` eventNumber
      `Prelude.hashWithSalt` extractedValues
      `Prelude.hashWithSalt` eventMessage

instance Prelude.NFData MetricFilterMatchRecord where
  rnf MetricFilterMatchRecord' {..} =
    Prelude.rnf eventNumber
      `Prelude.seq` Prelude.rnf extractedValues
      `Prelude.seq` Prelude.rnf eventMessage
