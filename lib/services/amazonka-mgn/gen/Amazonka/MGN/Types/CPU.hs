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
-- Module      : Amazonka.MGN.Types.CPU
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MGN.Types.CPU where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Source server CPU information.
--
-- /See:/ 'newCPU' smart constructor.
data CPU = CPU'
  { -- | The number of CPU cores on the source server.
    cores :: Prelude.Maybe Prelude.Natural,
    -- | The source server\'s CPU model name.
    modelName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CPU' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'cores', 'cpu_cores' - The number of CPU cores on the source server.
--
-- 'modelName', 'cpu_modelName' - The source server\'s CPU model name.
newCPU ::
  CPU
newCPU =
  CPU'
    { cores = Prelude.Nothing,
      modelName = Prelude.Nothing
    }

-- | The number of CPU cores on the source server.
cpu_cores :: Lens.Lens' CPU (Prelude.Maybe Prelude.Natural)
cpu_cores = Lens.lens (\CPU' {cores} -> cores) (\s@CPU' {} a -> s {cores = a} :: CPU)

-- | The source server\'s CPU model name.
cpu_modelName :: Lens.Lens' CPU (Prelude.Maybe Prelude.Text)
cpu_modelName = Lens.lens (\CPU' {modelName} -> modelName) (\s@CPU' {} a -> s {modelName = a} :: CPU)

instance Core.FromJSON CPU where
  parseJSON =
    Core.withObject
      "CPU"
      ( \x ->
          CPU'
            Prelude.<$> (x Core..:? "cores")
            Prelude.<*> (x Core..:? "modelName")
      )

instance Prelude.Hashable CPU where
  hashWithSalt _salt CPU' {..} =
    _salt `Prelude.hashWithSalt` cores
      `Prelude.hashWithSalt` modelName

instance Prelude.NFData CPU where
  rnf CPU' {..} =
    Prelude.rnf cores
      `Prelude.seq` Prelude.rnf modelName
