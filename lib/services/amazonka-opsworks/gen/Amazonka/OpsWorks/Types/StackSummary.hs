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
-- Module      : Amazonka.OpsWorks.Types.StackSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.OpsWorks.Types.StackSummary where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.OpsWorks.Types.InstancesCount
import qualified Amazonka.Prelude as Prelude

-- | Summarizes the number of layers, instances, and apps in a stack.
--
-- /See:/ 'newStackSummary' smart constructor.
data StackSummary = StackSummary'
  { -- | The stack ID.
    stackId :: Prelude.Maybe Prelude.Text,
    -- | The stack name.
    name :: Prelude.Maybe Prelude.Text,
    -- | The stack\'s ARN.
    arn :: Prelude.Maybe Prelude.Text,
    -- | An @InstancesCount@ object with the number of instances in each status.
    instancesCount :: Prelude.Maybe InstancesCount,
    -- | The number of apps.
    appsCount :: Prelude.Maybe Prelude.Int,
    -- | The number of layers.
    layersCount :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StackSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'stackId', 'stackSummary_stackId' - The stack ID.
--
-- 'name', 'stackSummary_name' - The stack name.
--
-- 'arn', 'stackSummary_arn' - The stack\'s ARN.
--
-- 'instancesCount', 'stackSummary_instancesCount' - An @InstancesCount@ object with the number of instances in each status.
--
-- 'appsCount', 'stackSummary_appsCount' - The number of apps.
--
-- 'layersCount', 'stackSummary_layersCount' - The number of layers.
newStackSummary ::
  StackSummary
newStackSummary =
  StackSummary'
    { stackId = Prelude.Nothing,
      name = Prelude.Nothing,
      arn = Prelude.Nothing,
      instancesCount = Prelude.Nothing,
      appsCount = Prelude.Nothing,
      layersCount = Prelude.Nothing
    }

-- | The stack ID.
stackSummary_stackId :: Lens.Lens' StackSummary (Prelude.Maybe Prelude.Text)
stackSummary_stackId = Lens.lens (\StackSummary' {stackId} -> stackId) (\s@StackSummary' {} a -> s {stackId = a} :: StackSummary)

-- | The stack name.
stackSummary_name :: Lens.Lens' StackSummary (Prelude.Maybe Prelude.Text)
stackSummary_name = Lens.lens (\StackSummary' {name} -> name) (\s@StackSummary' {} a -> s {name = a} :: StackSummary)

-- | The stack\'s ARN.
stackSummary_arn :: Lens.Lens' StackSummary (Prelude.Maybe Prelude.Text)
stackSummary_arn = Lens.lens (\StackSummary' {arn} -> arn) (\s@StackSummary' {} a -> s {arn = a} :: StackSummary)

-- | An @InstancesCount@ object with the number of instances in each status.
stackSummary_instancesCount :: Lens.Lens' StackSummary (Prelude.Maybe InstancesCount)
stackSummary_instancesCount = Lens.lens (\StackSummary' {instancesCount} -> instancesCount) (\s@StackSummary' {} a -> s {instancesCount = a} :: StackSummary)

-- | The number of apps.
stackSummary_appsCount :: Lens.Lens' StackSummary (Prelude.Maybe Prelude.Int)
stackSummary_appsCount = Lens.lens (\StackSummary' {appsCount} -> appsCount) (\s@StackSummary' {} a -> s {appsCount = a} :: StackSummary)

-- | The number of layers.
stackSummary_layersCount :: Lens.Lens' StackSummary (Prelude.Maybe Prelude.Int)
stackSummary_layersCount = Lens.lens (\StackSummary' {layersCount} -> layersCount) (\s@StackSummary' {} a -> s {layersCount = a} :: StackSummary)

instance Core.FromJSON StackSummary where
  parseJSON =
    Core.withObject
      "StackSummary"
      ( \x ->
          StackSummary'
            Prelude.<$> (x Core..:? "StackId")
            Prelude.<*> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "Arn")
            Prelude.<*> (x Core..:? "InstancesCount")
            Prelude.<*> (x Core..:? "AppsCount")
            Prelude.<*> (x Core..:? "LayersCount")
      )

instance Prelude.Hashable StackSummary where
  hashWithSalt _salt StackSummary' {..} =
    _salt `Prelude.hashWithSalt` stackId
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` instancesCount
      `Prelude.hashWithSalt` appsCount
      `Prelude.hashWithSalt` layersCount

instance Prelude.NFData StackSummary where
  rnf StackSummary' {..} =
    Prelude.rnf stackId
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf instancesCount
      `Prelude.seq` Prelude.rnf appsCount
      `Prelude.seq` Prelude.rnf layersCount
