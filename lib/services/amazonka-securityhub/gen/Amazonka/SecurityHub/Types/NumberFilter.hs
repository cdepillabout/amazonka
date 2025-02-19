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
-- Module      : Amazonka.SecurityHub.Types.NumberFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SecurityHub.Types.NumberFilter where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A number filter for querying findings.
--
-- /See:/ 'newNumberFilter' smart constructor.
data NumberFilter = NumberFilter'
  { -- | The less-than-equal condition to be applied to a single field when
    -- querying for findings.
    lte :: Prelude.Maybe Prelude.Double,
    -- | The greater-than-equal condition to be applied to a single field when
    -- querying for findings.
    gte :: Prelude.Maybe Prelude.Double,
    -- | The equal-to condition to be applied to a single field when querying for
    -- findings.
    eq :: Prelude.Maybe Prelude.Double
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'NumberFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lte', 'numberFilter_lte' - The less-than-equal condition to be applied to a single field when
-- querying for findings.
--
-- 'gte', 'numberFilter_gte' - The greater-than-equal condition to be applied to a single field when
-- querying for findings.
--
-- 'eq', 'numberFilter_eq' - The equal-to condition to be applied to a single field when querying for
-- findings.
newNumberFilter ::
  NumberFilter
newNumberFilter =
  NumberFilter'
    { lte = Prelude.Nothing,
      gte = Prelude.Nothing,
      eq = Prelude.Nothing
    }

-- | The less-than-equal condition to be applied to a single field when
-- querying for findings.
numberFilter_lte :: Lens.Lens' NumberFilter (Prelude.Maybe Prelude.Double)
numberFilter_lte = Lens.lens (\NumberFilter' {lte} -> lte) (\s@NumberFilter' {} a -> s {lte = a} :: NumberFilter)

-- | The greater-than-equal condition to be applied to a single field when
-- querying for findings.
numberFilter_gte :: Lens.Lens' NumberFilter (Prelude.Maybe Prelude.Double)
numberFilter_gte = Lens.lens (\NumberFilter' {gte} -> gte) (\s@NumberFilter' {} a -> s {gte = a} :: NumberFilter)

-- | The equal-to condition to be applied to a single field when querying for
-- findings.
numberFilter_eq :: Lens.Lens' NumberFilter (Prelude.Maybe Prelude.Double)
numberFilter_eq = Lens.lens (\NumberFilter' {eq} -> eq) (\s@NumberFilter' {} a -> s {eq = a} :: NumberFilter)

instance Core.FromJSON NumberFilter where
  parseJSON =
    Core.withObject
      "NumberFilter"
      ( \x ->
          NumberFilter'
            Prelude.<$> (x Core..:? "Lte")
            Prelude.<*> (x Core..:? "Gte")
            Prelude.<*> (x Core..:? "Eq")
      )

instance Prelude.Hashable NumberFilter where
  hashWithSalt _salt NumberFilter' {..} =
    _salt `Prelude.hashWithSalt` lte
      `Prelude.hashWithSalt` gte
      `Prelude.hashWithSalt` eq

instance Prelude.NFData NumberFilter where
  rnf NumberFilter' {..} =
    Prelude.rnf lte
      `Prelude.seq` Prelude.rnf gte
      `Prelude.seq` Prelude.rnf eq

instance Core.ToJSON NumberFilter where
  toJSON NumberFilter' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Lte" Core..=) Prelude.<$> lte,
            ("Gte" Core..=) Prelude.<$> gte,
            ("Eq" Core..=) Prelude.<$> eq
          ]
      )
