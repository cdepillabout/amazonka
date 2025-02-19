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
-- Module      : Amazonka.MQ.Types.BrokerInstanceOption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MQ.Types.BrokerInstanceOption where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MQ.Types.AvailabilityZone
import Amazonka.MQ.Types.BrokerStorageType
import Amazonka.MQ.Types.DeploymentMode
import Amazonka.MQ.Types.EngineType
import qualified Amazonka.Prelude as Prelude

-- | Option for host instance type.
--
-- /See:/ 'newBrokerInstanceOption' smart constructor.
data BrokerInstanceOption = BrokerInstanceOption'
  { -- | The broker\'s engine type.
    engineType :: Prelude.Maybe EngineType,
    -- | The list of supported deployment modes.
    supportedDeploymentModes :: Prelude.Maybe [DeploymentMode],
    -- | The list of available az.
    availabilityZones :: Prelude.Maybe [AvailabilityZone],
    -- | The broker\'s storage type.
    storageType :: Prelude.Maybe BrokerStorageType,
    -- | The broker\'s instance type.
    hostInstanceType :: Prelude.Maybe Prelude.Text,
    -- | The list of supported engine versions.
    supportedEngineVersions :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BrokerInstanceOption' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'engineType', 'brokerInstanceOption_engineType' - The broker\'s engine type.
--
-- 'supportedDeploymentModes', 'brokerInstanceOption_supportedDeploymentModes' - The list of supported deployment modes.
--
-- 'availabilityZones', 'brokerInstanceOption_availabilityZones' - The list of available az.
--
-- 'storageType', 'brokerInstanceOption_storageType' - The broker\'s storage type.
--
-- 'hostInstanceType', 'brokerInstanceOption_hostInstanceType' - The broker\'s instance type.
--
-- 'supportedEngineVersions', 'brokerInstanceOption_supportedEngineVersions' - The list of supported engine versions.
newBrokerInstanceOption ::
  BrokerInstanceOption
newBrokerInstanceOption =
  BrokerInstanceOption'
    { engineType = Prelude.Nothing,
      supportedDeploymentModes = Prelude.Nothing,
      availabilityZones = Prelude.Nothing,
      storageType = Prelude.Nothing,
      hostInstanceType = Prelude.Nothing,
      supportedEngineVersions = Prelude.Nothing
    }

-- | The broker\'s engine type.
brokerInstanceOption_engineType :: Lens.Lens' BrokerInstanceOption (Prelude.Maybe EngineType)
brokerInstanceOption_engineType = Lens.lens (\BrokerInstanceOption' {engineType} -> engineType) (\s@BrokerInstanceOption' {} a -> s {engineType = a} :: BrokerInstanceOption)

-- | The list of supported deployment modes.
brokerInstanceOption_supportedDeploymentModes :: Lens.Lens' BrokerInstanceOption (Prelude.Maybe [DeploymentMode])
brokerInstanceOption_supportedDeploymentModes = Lens.lens (\BrokerInstanceOption' {supportedDeploymentModes} -> supportedDeploymentModes) (\s@BrokerInstanceOption' {} a -> s {supportedDeploymentModes = a} :: BrokerInstanceOption) Prelude.. Lens.mapping Lens.coerced

-- | The list of available az.
brokerInstanceOption_availabilityZones :: Lens.Lens' BrokerInstanceOption (Prelude.Maybe [AvailabilityZone])
brokerInstanceOption_availabilityZones = Lens.lens (\BrokerInstanceOption' {availabilityZones} -> availabilityZones) (\s@BrokerInstanceOption' {} a -> s {availabilityZones = a} :: BrokerInstanceOption) Prelude.. Lens.mapping Lens.coerced

-- | The broker\'s storage type.
brokerInstanceOption_storageType :: Lens.Lens' BrokerInstanceOption (Prelude.Maybe BrokerStorageType)
brokerInstanceOption_storageType = Lens.lens (\BrokerInstanceOption' {storageType} -> storageType) (\s@BrokerInstanceOption' {} a -> s {storageType = a} :: BrokerInstanceOption)

-- | The broker\'s instance type.
brokerInstanceOption_hostInstanceType :: Lens.Lens' BrokerInstanceOption (Prelude.Maybe Prelude.Text)
brokerInstanceOption_hostInstanceType = Lens.lens (\BrokerInstanceOption' {hostInstanceType} -> hostInstanceType) (\s@BrokerInstanceOption' {} a -> s {hostInstanceType = a} :: BrokerInstanceOption)

-- | The list of supported engine versions.
brokerInstanceOption_supportedEngineVersions :: Lens.Lens' BrokerInstanceOption (Prelude.Maybe [Prelude.Text])
brokerInstanceOption_supportedEngineVersions = Lens.lens (\BrokerInstanceOption' {supportedEngineVersions} -> supportedEngineVersions) (\s@BrokerInstanceOption' {} a -> s {supportedEngineVersions = a} :: BrokerInstanceOption) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON BrokerInstanceOption where
  parseJSON =
    Core.withObject
      "BrokerInstanceOption"
      ( \x ->
          BrokerInstanceOption'
            Prelude.<$> (x Core..:? "engineType")
            Prelude.<*> ( x Core..:? "supportedDeploymentModes"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> ( x Core..:? "availabilityZones"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "storageType")
            Prelude.<*> (x Core..:? "hostInstanceType")
            Prelude.<*> ( x Core..:? "supportedEngineVersions"
                            Core..!= Prelude.mempty
                        )
      )

instance Prelude.Hashable BrokerInstanceOption where
  hashWithSalt _salt BrokerInstanceOption' {..} =
    _salt `Prelude.hashWithSalt` engineType
      `Prelude.hashWithSalt` supportedDeploymentModes
      `Prelude.hashWithSalt` availabilityZones
      `Prelude.hashWithSalt` storageType
      `Prelude.hashWithSalt` hostInstanceType
      `Prelude.hashWithSalt` supportedEngineVersions

instance Prelude.NFData BrokerInstanceOption where
  rnf BrokerInstanceOption' {..} =
    Prelude.rnf engineType
      `Prelude.seq` Prelude.rnf supportedDeploymentModes
      `Prelude.seq` Prelude.rnf availabilityZones
      `Prelude.seq` Prelude.rnf storageType
      `Prelude.seq` Prelude.rnf hostInstanceType
      `Prelude.seq` Prelude.rnf supportedEngineVersions
