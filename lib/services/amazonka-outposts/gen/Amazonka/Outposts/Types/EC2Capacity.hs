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
-- Module      : Amazonka.Outposts.Types.EC2Capacity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Outposts.Types.EC2Capacity where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about EC2 capacity.
--
-- /See:/ 'newEC2Capacity' smart constructor.
data EC2Capacity = EC2Capacity'
  { -- | The quantity of the EC2 capacity.
    quantity :: Prelude.Maybe Prelude.Text,
    -- | The family of the EC2 capacity.
    family :: Prelude.Maybe Prelude.Text,
    -- | The maximum size of the EC2 capacity.
    maxSize :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EC2Capacity' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'quantity', 'eC2Capacity_quantity' - The quantity of the EC2 capacity.
--
-- 'family', 'eC2Capacity_family' - The family of the EC2 capacity.
--
-- 'maxSize', 'eC2Capacity_maxSize' - The maximum size of the EC2 capacity.
newEC2Capacity ::
  EC2Capacity
newEC2Capacity =
  EC2Capacity'
    { quantity = Prelude.Nothing,
      family = Prelude.Nothing,
      maxSize = Prelude.Nothing
    }

-- | The quantity of the EC2 capacity.
eC2Capacity_quantity :: Lens.Lens' EC2Capacity (Prelude.Maybe Prelude.Text)
eC2Capacity_quantity = Lens.lens (\EC2Capacity' {quantity} -> quantity) (\s@EC2Capacity' {} a -> s {quantity = a} :: EC2Capacity)

-- | The family of the EC2 capacity.
eC2Capacity_family :: Lens.Lens' EC2Capacity (Prelude.Maybe Prelude.Text)
eC2Capacity_family = Lens.lens (\EC2Capacity' {family} -> family) (\s@EC2Capacity' {} a -> s {family = a} :: EC2Capacity)

-- | The maximum size of the EC2 capacity.
eC2Capacity_maxSize :: Lens.Lens' EC2Capacity (Prelude.Maybe Prelude.Text)
eC2Capacity_maxSize = Lens.lens (\EC2Capacity' {maxSize} -> maxSize) (\s@EC2Capacity' {} a -> s {maxSize = a} :: EC2Capacity)

instance Core.FromJSON EC2Capacity where
  parseJSON =
    Core.withObject
      "EC2Capacity"
      ( \x ->
          EC2Capacity'
            Prelude.<$> (x Core..:? "Quantity")
            Prelude.<*> (x Core..:? "Family")
            Prelude.<*> (x Core..:? "MaxSize")
      )

instance Prelude.Hashable EC2Capacity where
  hashWithSalt _salt EC2Capacity' {..} =
    _salt `Prelude.hashWithSalt` quantity
      `Prelude.hashWithSalt` family
      `Prelude.hashWithSalt` maxSize

instance Prelude.NFData EC2Capacity where
  rnf EC2Capacity' {..} =
    Prelude.rnf quantity
      `Prelude.seq` Prelude.rnf family
      `Prelude.seq` Prelude.rnf maxSize
