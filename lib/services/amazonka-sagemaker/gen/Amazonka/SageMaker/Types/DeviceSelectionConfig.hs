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
-- Module      : Amazonka.SageMaker.Types.DeviceSelectionConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMaker.Types.DeviceSelectionConfig where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SageMaker.Types.DeviceSubsetType

-- | Contains information about the configurations of selected devices.
--
-- /See:/ 'newDeviceSelectionConfig' smart constructor.
data DeviceSelectionConfig = DeviceSelectionConfig'
  { -- | A filter to select devices with names containing this name.
    deviceNameContains :: Prelude.Maybe Prelude.Text,
    -- | Percentage of devices in the fleet to deploy to the current stage.
    percentage :: Prelude.Maybe Prelude.Int,
    -- | List of devices chosen to deploy.
    deviceNames :: Prelude.Maybe [Prelude.Text],
    -- | Type of device subsets to deploy to the current stage.
    deviceSubsetType :: DeviceSubsetType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeviceSelectionConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'deviceNameContains', 'deviceSelectionConfig_deviceNameContains' - A filter to select devices with names containing this name.
--
-- 'percentage', 'deviceSelectionConfig_percentage' - Percentage of devices in the fleet to deploy to the current stage.
--
-- 'deviceNames', 'deviceSelectionConfig_deviceNames' - List of devices chosen to deploy.
--
-- 'deviceSubsetType', 'deviceSelectionConfig_deviceSubsetType' - Type of device subsets to deploy to the current stage.
newDeviceSelectionConfig ::
  -- | 'deviceSubsetType'
  DeviceSubsetType ->
  DeviceSelectionConfig
newDeviceSelectionConfig pDeviceSubsetType_ =
  DeviceSelectionConfig'
    { deviceNameContains =
        Prelude.Nothing,
      percentage = Prelude.Nothing,
      deviceNames = Prelude.Nothing,
      deviceSubsetType = pDeviceSubsetType_
    }

-- | A filter to select devices with names containing this name.
deviceSelectionConfig_deviceNameContains :: Lens.Lens' DeviceSelectionConfig (Prelude.Maybe Prelude.Text)
deviceSelectionConfig_deviceNameContains = Lens.lens (\DeviceSelectionConfig' {deviceNameContains} -> deviceNameContains) (\s@DeviceSelectionConfig' {} a -> s {deviceNameContains = a} :: DeviceSelectionConfig)

-- | Percentage of devices in the fleet to deploy to the current stage.
deviceSelectionConfig_percentage :: Lens.Lens' DeviceSelectionConfig (Prelude.Maybe Prelude.Int)
deviceSelectionConfig_percentage = Lens.lens (\DeviceSelectionConfig' {percentage} -> percentage) (\s@DeviceSelectionConfig' {} a -> s {percentage = a} :: DeviceSelectionConfig)

-- | List of devices chosen to deploy.
deviceSelectionConfig_deviceNames :: Lens.Lens' DeviceSelectionConfig (Prelude.Maybe [Prelude.Text])
deviceSelectionConfig_deviceNames = Lens.lens (\DeviceSelectionConfig' {deviceNames} -> deviceNames) (\s@DeviceSelectionConfig' {} a -> s {deviceNames = a} :: DeviceSelectionConfig) Prelude.. Lens.mapping Lens.coerced

-- | Type of device subsets to deploy to the current stage.
deviceSelectionConfig_deviceSubsetType :: Lens.Lens' DeviceSelectionConfig DeviceSubsetType
deviceSelectionConfig_deviceSubsetType = Lens.lens (\DeviceSelectionConfig' {deviceSubsetType} -> deviceSubsetType) (\s@DeviceSelectionConfig' {} a -> s {deviceSubsetType = a} :: DeviceSelectionConfig)

instance Core.FromJSON DeviceSelectionConfig where
  parseJSON =
    Core.withObject
      "DeviceSelectionConfig"
      ( \x ->
          DeviceSelectionConfig'
            Prelude.<$> (x Core..:? "DeviceNameContains")
            Prelude.<*> (x Core..:? "Percentage")
            Prelude.<*> (x Core..:? "DeviceNames" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..: "DeviceSubsetType")
      )

instance Prelude.Hashable DeviceSelectionConfig where
  hashWithSalt _salt DeviceSelectionConfig' {..} =
    _salt `Prelude.hashWithSalt` deviceNameContains
      `Prelude.hashWithSalt` percentage
      `Prelude.hashWithSalt` deviceNames
      `Prelude.hashWithSalt` deviceSubsetType

instance Prelude.NFData DeviceSelectionConfig where
  rnf DeviceSelectionConfig' {..} =
    Prelude.rnf deviceNameContains
      `Prelude.seq` Prelude.rnf percentage
      `Prelude.seq` Prelude.rnf deviceNames
      `Prelude.seq` Prelude.rnf deviceSubsetType

instance Core.ToJSON DeviceSelectionConfig where
  toJSON DeviceSelectionConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("DeviceNameContains" Core..=)
              Prelude.<$> deviceNameContains,
            ("Percentage" Core..=) Prelude.<$> percentage,
            ("DeviceNames" Core..=) Prelude.<$> deviceNames,
            Prelude.Just
              ("DeviceSubsetType" Core..= deviceSubsetType)
          ]
      )
