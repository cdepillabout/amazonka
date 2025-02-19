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
-- Module      : Amazonka.LookoutMetrics.Types.DimensionFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.LookoutMetrics.Types.DimensionFilter where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The dimension filter, containing DimensionName and DimensionValueList.
--
-- /See:/ 'newDimensionFilter' smart constructor.
data DimensionFilter = DimensionFilter'
  { -- | The list of values for the dimension specified in DimensionName that you
    -- want to filter on.
    dimensionValueList :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | The name of the dimension to filter on.
    dimensionName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DimensionFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dimensionValueList', 'dimensionFilter_dimensionValueList' - The list of values for the dimension specified in DimensionName that you
-- want to filter on.
--
-- 'dimensionName', 'dimensionFilter_dimensionName' - The name of the dimension to filter on.
newDimensionFilter ::
  DimensionFilter
newDimensionFilter =
  DimensionFilter'
    { dimensionValueList =
        Prelude.Nothing,
      dimensionName = Prelude.Nothing
    }

-- | The list of values for the dimension specified in DimensionName that you
-- want to filter on.
dimensionFilter_dimensionValueList :: Lens.Lens' DimensionFilter (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
dimensionFilter_dimensionValueList = Lens.lens (\DimensionFilter' {dimensionValueList} -> dimensionValueList) (\s@DimensionFilter' {} a -> s {dimensionValueList = a} :: DimensionFilter) Prelude.. Lens.mapping Lens.coerced

-- | The name of the dimension to filter on.
dimensionFilter_dimensionName :: Lens.Lens' DimensionFilter (Prelude.Maybe Prelude.Text)
dimensionFilter_dimensionName = Lens.lens (\DimensionFilter' {dimensionName} -> dimensionName) (\s@DimensionFilter' {} a -> s {dimensionName = a} :: DimensionFilter)

instance Core.FromJSON DimensionFilter where
  parseJSON =
    Core.withObject
      "DimensionFilter"
      ( \x ->
          DimensionFilter'
            Prelude.<$> (x Core..:? "DimensionValueList")
            Prelude.<*> (x Core..:? "DimensionName")
      )

instance Prelude.Hashable DimensionFilter where
  hashWithSalt _salt DimensionFilter' {..} =
    _salt `Prelude.hashWithSalt` dimensionValueList
      `Prelude.hashWithSalt` dimensionName

instance Prelude.NFData DimensionFilter where
  rnf DimensionFilter' {..} =
    Prelude.rnf dimensionValueList
      `Prelude.seq` Prelude.rnf dimensionName

instance Core.ToJSON DimensionFilter where
  toJSON DimensionFilter' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("DimensionValueList" Core..=)
              Prelude.<$> dimensionValueList,
            ("DimensionName" Core..=) Prelude.<$> dimensionName
          ]
      )
