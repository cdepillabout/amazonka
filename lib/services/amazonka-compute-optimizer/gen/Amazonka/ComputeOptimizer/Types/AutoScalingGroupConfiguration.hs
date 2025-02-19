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
-- Module      : Amazonka.ComputeOptimizer.Types.AutoScalingGroupConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ComputeOptimizer.Types.AutoScalingGroupConfiguration where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes the configuration of an Auto Scaling group.
--
-- /See:/ 'newAutoScalingGroupConfiguration' smart constructor.
data AutoScalingGroupConfiguration = AutoScalingGroupConfiguration'
  { -- | The instance type for the Auto Scaling group.
    instanceType :: Prelude.Maybe Prelude.Text,
    -- | The minimum size, or minimum number of instances, for the Auto Scaling
    -- group.
    minSize :: Prelude.Maybe Prelude.Int,
    -- | The maximum size, or maximum number of instances, for the Auto Scaling
    -- group.
    maxSize :: Prelude.Maybe Prelude.Int,
    -- | The desired capacity, or number of instances, for the Auto Scaling
    -- group.
    desiredCapacity :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AutoScalingGroupConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'instanceType', 'autoScalingGroupConfiguration_instanceType' - The instance type for the Auto Scaling group.
--
-- 'minSize', 'autoScalingGroupConfiguration_minSize' - The minimum size, or minimum number of instances, for the Auto Scaling
-- group.
--
-- 'maxSize', 'autoScalingGroupConfiguration_maxSize' - The maximum size, or maximum number of instances, for the Auto Scaling
-- group.
--
-- 'desiredCapacity', 'autoScalingGroupConfiguration_desiredCapacity' - The desired capacity, or number of instances, for the Auto Scaling
-- group.
newAutoScalingGroupConfiguration ::
  AutoScalingGroupConfiguration
newAutoScalingGroupConfiguration =
  AutoScalingGroupConfiguration'
    { instanceType =
        Prelude.Nothing,
      minSize = Prelude.Nothing,
      maxSize = Prelude.Nothing,
      desiredCapacity = Prelude.Nothing
    }

-- | The instance type for the Auto Scaling group.
autoScalingGroupConfiguration_instanceType :: Lens.Lens' AutoScalingGroupConfiguration (Prelude.Maybe Prelude.Text)
autoScalingGroupConfiguration_instanceType = Lens.lens (\AutoScalingGroupConfiguration' {instanceType} -> instanceType) (\s@AutoScalingGroupConfiguration' {} a -> s {instanceType = a} :: AutoScalingGroupConfiguration)

-- | The minimum size, or minimum number of instances, for the Auto Scaling
-- group.
autoScalingGroupConfiguration_minSize :: Lens.Lens' AutoScalingGroupConfiguration (Prelude.Maybe Prelude.Int)
autoScalingGroupConfiguration_minSize = Lens.lens (\AutoScalingGroupConfiguration' {minSize} -> minSize) (\s@AutoScalingGroupConfiguration' {} a -> s {minSize = a} :: AutoScalingGroupConfiguration)

-- | The maximum size, or maximum number of instances, for the Auto Scaling
-- group.
autoScalingGroupConfiguration_maxSize :: Lens.Lens' AutoScalingGroupConfiguration (Prelude.Maybe Prelude.Int)
autoScalingGroupConfiguration_maxSize = Lens.lens (\AutoScalingGroupConfiguration' {maxSize} -> maxSize) (\s@AutoScalingGroupConfiguration' {} a -> s {maxSize = a} :: AutoScalingGroupConfiguration)

-- | The desired capacity, or number of instances, for the Auto Scaling
-- group.
autoScalingGroupConfiguration_desiredCapacity :: Lens.Lens' AutoScalingGroupConfiguration (Prelude.Maybe Prelude.Int)
autoScalingGroupConfiguration_desiredCapacity = Lens.lens (\AutoScalingGroupConfiguration' {desiredCapacity} -> desiredCapacity) (\s@AutoScalingGroupConfiguration' {} a -> s {desiredCapacity = a} :: AutoScalingGroupConfiguration)

instance Core.FromJSON AutoScalingGroupConfiguration where
  parseJSON =
    Core.withObject
      "AutoScalingGroupConfiguration"
      ( \x ->
          AutoScalingGroupConfiguration'
            Prelude.<$> (x Core..:? "instanceType")
            Prelude.<*> (x Core..:? "minSize")
            Prelude.<*> (x Core..:? "maxSize")
            Prelude.<*> (x Core..:? "desiredCapacity")
      )

instance
  Prelude.Hashable
    AutoScalingGroupConfiguration
  where
  hashWithSalt _salt AutoScalingGroupConfiguration' {..} =
    _salt `Prelude.hashWithSalt` instanceType
      `Prelude.hashWithSalt` minSize
      `Prelude.hashWithSalt` maxSize
      `Prelude.hashWithSalt` desiredCapacity

instance Prelude.NFData AutoScalingGroupConfiguration where
  rnf AutoScalingGroupConfiguration' {..} =
    Prelude.rnf instanceType
      `Prelude.seq` Prelude.rnf minSize
      `Prelude.seq` Prelude.rnf maxSize
      `Prelude.seq` Prelude.rnf desiredCapacity
