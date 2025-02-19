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
-- Module      : Amazonka.OpenSearch.Types.Duration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.OpenSearch.Types.Duration where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.OpenSearch.Types.TimeUnit
import qualified Amazonka.Prelude as Prelude

-- | The maintenance schedule duration: duration value and duration unit. See
-- <https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html Auto-Tune for Amazon OpenSearch Service>
-- for more information.
--
-- /See:/ 'newDuration' smart constructor.
data Duration = Duration'
  { -- | The unit of a maintenance schedule duration. Valid value is HOURS. See
    -- <https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html Auto-Tune for Amazon OpenSearch Service>
    -- for more information.
    unit :: Prelude.Maybe TimeUnit,
    -- | Integer to specify the value of a maintenance schedule duration. See
    -- <https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html Auto-Tune for Amazon OpenSearch Service>
    -- for more information.
    value :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Duration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'unit', 'duration_unit' - The unit of a maintenance schedule duration. Valid value is HOURS. See
-- <https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html Auto-Tune for Amazon OpenSearch Service>
-- for more information.
--
-- 'value', 'duration_value' - Integer to specify the value of a maintenance schedule duration. See
-- <https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html Auto-Tune for Amazon OpenSearch Service>
-- for more information.
newDuration ::
  Duration
newDuration =
  Duration'
    { unit = Prelude.Nothing,
      value = Prelude.Nothing
    }

-- | The unit of a maintenance schedule duration. Valid value is HOURS. See
-- <https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html Auto-Tune for Amazon OpenSearch Service>
-- for more information.
duration_unit :: Lens.Lens' Duration (Prelude.Maybe TimeUnit)
duration_unit = Lens.lens (\Duration' {unit} -> unit) (\s@Duration' {} a -> s {unit = a} :: Duration)

-- | Integer to specify the value of a maintenance schedule duration. See
-- <https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html Auto-Tune for Amazon OpenSearch Service>
-- for more information.
duration_value :: Lens.Lens' Duration (Prelude.Maybe Prelude.Natural)
duration_value = Lens.lens (\Duration' {value} -> value) (\s@Duration' {} a -> s {value = a} :: Duration)

instance Core.FromJSON Duration where
  parseJSON =
    Core.withObject
      "Duration"
      ( \x ->
          Duration'
            Prelude.<$> (x Core..:? "Unit") Prelude.<*> (x Core..:? "Value")
      )

instance Prelude.Hashable Duration where
  hashWithSalt _salt Duration' {..} =
    _salt `Prelude.hashWithSalt` unit
      `Prelude.hashWithSalt` value

instance Prelude.NFData Duration where
  rnf Duration' {..} =
    Prelude.rnf unit `Prelude.seq` Prelude.rnf value

instance Core.ToJSON Duration where
  toJSON Duration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Unit" Core..=) Prelude.<$> unit,
            ("Value" Core..=) Prelude.<$> value
          ]
      )
