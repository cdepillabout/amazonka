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
-- Module      : Amazonka.GameLift.Types.InstanceAccess
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.GameLift.Types.InstanceAccess where

import qualified Amazonka.Core as Core
import Amazonka.GameLift.Types.InstanceCredentials
import Amazonka.GameLift.Types.OperatingSystem
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information required to remotely connect to a fleet instance. Access is
-- requested by calling GetInstanceAccess.
--
-- /See:/ 'newInstanceAccess' smart constructor.
data InstanceAccess = InstanceAccess'
  { -- | Operating system that is running on the instance.
    operatingSystem :: Prelude.Maybe OperatingSystem,
    -- | A unique identifier for the fleet containing the instance being
    -- accessed.
    fleetId :: Prelude.Maybe Prelude.Text,
    -- | A unique identifier for the instance being accessed.
    instanceId :: Prelude.Maybe Prelude.Text,
    -- | Credentials required to access the instance.
    credentials :: Prelude.Maybe (Core.Sensitive InstanceCredentials),
    -- | IP address that is assigned to the instance.
    ipAddress :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InstanceAccess' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'operatingSystem', 'instanceAccess_operatingSystem' - Operating system that is running on the instance.
--
-- 'fleetId', 'instanceAccess_fleetId' - A unique identifier for the fleet containing the instance being
-- accessed.
--
-- 'instanceId', 'instanceAccess_instanceId' - A unique identifier for the instance being accessed.
--
-- 'credentials', 'instanceAccess_credentials' - Credentials required to access the instance.
--
-- 'ipAddress', 'instanceAccess_ipAddress' - IP address that is assigned to the instance.
newInstanceAccess ::
  InstanceAccess
newInstanceAccess =
  InstanceAccess'
    { operatingSystem = Prelude.Nothing,
      fleetId = Prelude.Nothing,
      instanceId = Prelude.Nothing,
      credentials = Prelude.Nothing,
      ipAddress = Prelude.Nothing
    }

-- | Operating system that is running on the instance.
instanceAccess_operatingSystem :: Lens.Lens' InstanceAccess (Prelude.Maybe OperatingSystem)
instanceAccess_operatingSystem = Lens.lens (\InstanceAccess' {operatingSystem} -> operatingSystem) (\s@InstanceAccess' {} a -> s {operatingSystem = a} :: InstanceAccess)

-- | A unique identifier for the fleet containing the instance being
-- accessed.
instanceAccess_fleetId :: Lens.Lens' InstanceAccess (Prelude.Maybe Prelude.Text)
instanceAccess_fleetId = Lens.lens (\InstanceAccess' {fleetId} -> fleetId) (\s@InstanceAccess' {} a -> s {fleetId = a} :: InstanceAccess)

-- | A unique identifier for the instance being accessed.
instanceAccess_instanceId :: Lens.Lens' InstanceAccess (Prelude.Maybe Prelude.Text)
instanceAccess_instanceId = Lens.lens (\InstanceAccess' {instanceId} -> instanceId) (\s@InstanceAccess' {} a -> s {instanceId = a} :: InstanceAccess)

-- | Credentials required to access the instance.
instanceAccess_credentials :: Lens.Lens' InstanceAccess (Prelude.Maybe InstanceCredentials)
instanceAccess_credentials = Lens.lens (\InstanceAccess' {credentials} -> credentials) (\s@InstanceAccess' {} a -> s {credentials = a} :: InstanceAccess) Prelude.. Lens.mapping Core._Sensitive

-- | IP address that is assigned to the instance.
instanceAccess_ipAddress :: Lens.Lens' InstanceAccess (Prelude.Maybe Prelude.Text)
instanceAccess_ipAddress = Lens.lens (\InstanceAccess' {ipAddress} -> ipAddress) (\s@InstanceAccess' {} a -> s {ipAddress = a} :: InstanceAccess)

instance Core.FromJSON InstanceAccess where
  parseJSON =
    Core.withObject
      "InstanceAccess"
      ( \x ->
          InstanceAccess'
            Prelude.<$> (x Core..:? "OperatingSystem")
            Prelude.<*> (x Core..:? "FleetId")
            Prelude.<*> (x Core..:? "InstanceId")
            Prelude.<*> (x Core..:? "Credentials")
            Prelude.<*> (x Core..:? "IpAddress")
      )

instance Prelude.Hashable InstanceAccess where
  hashWithSalt _salt InstanceAccess' {..} =
    _salt `Prelude.hashWithSalt` operatingSystem
      `Prelude.hashWithSalt` fleetId
      `Prelude.hashWithSalt` instanceId
      `Prelude.hashWithSalt` credentials
      `Prelude.hashWithSalt` ipAddress

instance Prelude.NFData InstanceAccess where
  rnf InstanceAccess' {..} =
    Prelude.rnf operatingSystem
      `Prelude.seq` Prelude.rnf fleetId
      `Prelude.seq` Prelude.rnf instanceId
      `Prelude.seq` Prelude.rnf credentials
      `Prelude.seq` Prelude.rnf ipAddress
