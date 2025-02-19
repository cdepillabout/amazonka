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
-- Module      : Amazonka.Forecast.Types.TimeSeriesIdentifiers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Forecast.Types.TimeSeriesIdentifiers where

import qualified Amazonka.Core as Core
import Amazonka.Forecast.Types.DataSource
import Amazonka.Forecast.Types.Schema
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Details about the import file that contains the time series for which
-- you want to create forecasts.
--
-- /See:/ 'newTimeSeriesIdentifiers' smart constructor.
data TimeSeriesIdentifiers = TimeSeriesIdentifiers'
  { -- | The format of the data, either CSV or PARQUET.
    format :: Prelude.Maybe Prelude.Text,
    schema :: Prelude.Maybe Schema,
    dataSource :: Prelude.Maybe DataSource
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TimeSeriesIdentifiers' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'format', 'timeSeriesIdentifiers_format' - The format of the data, either CSV or PARQUET.
--
-- 'schema', 'timeSeriesIdentifiers_schema' - Undocumented member.
--
-- 'dataSource', 'timeSeriesIdentifiers_dataSource' - Undocumented member.
newTimeSeriesIdentifiers ::
  TimeSeriesIdentifiers
newTimeSeriesIdentifiers =
  TimeSeriesIdentifiers'
    { format = Prelude.Nothing,
      schema = Prelude.Nothing,
      dataSource = Prelude.Nothing
    }

-- | The format of the data, either CSV or PARQUET.
timeSeriesIdentifiers_format :: Lens.Lens' TimeSeriesIdentifiers (Prelude.Maybe Prelude.Text)
timeSeriesIdentifiers_format = Lens.lens (\TimeSeriesIdentifiers' {format} -> format) (\s@TimeSeriesIdentifiers' {} a -> s {format = a} :: TimeSeriesIdentifiers)

-- | Undocumented member.
timeSeriesIdentifiers_schema :: Lens.Lens' TimeSeriesIdentifiers (Prelude.Maybe Schema)
timeSeriesIdentifiers_schema = Lens.lens (\TimeSeriesIdentifiers' {schema} -> schema) (\s@TimeSeriesIdentifiers' {} a -> s {schema = a} :: TimeSeriesIdentifiers)

-- | Undocumented member.
timeSeriesIdentifiers_dataSource :: Lens.Lens' TimeSeriesIdentifiers (Prelude.Maybe DataSource)
timeSeriesIdentifiers_dataSource = Lens.lens (\TimeSeriesIdentifiers' {dataSource} -> dataSource) (\s@TimeSeriesIdentifiers' {} a -> s {dataSource = a} :: TimeSeriesIdentifiers)

instance Core.FromJSON TimeSeriesIdentifiers where
  parseJSON =
    Core.withObject
      "TimeSeriesIdentifiers"
      ( \x ->
          TimeSeriesIdentifiers'
            Prelude.<$> (x Core..:? "Format")
            Prelude.<*> (x Core..:? "Schema")
            Prelude.<*> (x Core..:? "DataSource")
      )

instance Prelude.Hashable TimeSeriesIdentifiers where
  hashWithSalt _salt TimeSeriesIdentifiers' {..} =
    _salt `Prelude.hashWithSalt` format
      `Prelude.hashWithSalt` schema
      `Prelude.hashWithSalt` dataSource

instance Prelude.NFData TimeSeriesIdentifiers where
  rnf TimeSeriesIdentifiers' {..} =
    Prelude.rnf format
      `Prelude.seq` Prelude.rnf schema
      `Prelude.seq` Prelude.rnf dataSource

instance Core.ToJSON TimeSeriesIdentifiers where
  toJSON TimeSeriesIdentifiers' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Format" Core..=) Prelude.<$> format,
            ("Schema" Core..=) Prelude.<$> schema,
            ("DataSource" Core..=) Prelude.<$> dataSource
          ]
      )
