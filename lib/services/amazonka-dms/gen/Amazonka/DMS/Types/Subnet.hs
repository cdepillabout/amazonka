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
-- Module      : Amazonka.DMS.Types.Subnet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DMS.Types.Subnet where

import qualified Amazonka.Core as Core
import Amazonka.DMS.Types.AvailabilityZone
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | In response to a request by the @DescribeReplicationSubnetGroups@
-- operation, this object identifies a subnet by its given Availability
-- Zone, subnet identifier, and status.
--
-- /See:/ 'newSubnet' smart constructor.
data Subnet = Subnet'
  { -- | The subnet identifier.
    subnetIdentifier :: Prelude.Maybe Prelude.Text,
    -- | The status of the subnet.
    subnetStatus :: Prelude.Maybe Prelude.Text,
    -- | The Availability Zone of the subnet.
    subnetAvailabilityZone :: Prelude.Maybe AvailabilityZone
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Subnet' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'subnetIdentifier', 'subnet_subnetIdentifier' - The subnet identifier.
--
-- 'subnetStatus', 'subnet_subnetStatus' - The status of the subnet.
--
-- 'subnetAvailabilityZone', 'subnet_subnetAvailabilityZone' - The Availability Zone of the subnet.
newSubnet ::
  Subnet
newSubnet =
  Subnet'
    { subnetIdentifier = Prelude.Nothing,
      subnetStatus = Prelude.Nothing,
      subnetAvailabilityZone = Prelude.Nothing
    }

-- | The subnet identifier.
subnet_subnetIdentifier :: Lens.Lens' Subnet (Prelude.Maybe Prelude.Text)
subnet_subnetIdentifier = Lens.lens (\Subnet' {subnetIdentifier} -> subnetIdentifier) (\s@Subnet' {} a -> s {subnetIdentifier = a} :: Subnet)

-- | The status of the subnet.
subnet_subnetStatus :: Lens.Lens' Subnet (Prelude.Maybe Prelude.Text)
subnet_subnetStatus = Lens.lens (\Subnet' {subnetStatus} -> subnetStatus) (\s@Subnet' {} a -> s {subnetStatus = a} :: Subnet)

-- | The Availability Zone of the subnet.
subnet_subnetAvailabilityZone :: Lens.Lens' Subnet (Prelude.Maybe AvailabilityZone)
subnet_subnetAvailabilityZone = Lens.lens (\Subnet' {subnetAvailabilityZone} -> subnetAvailabilityZone) (\s@Subnet' {} a -> s {subnetAvailabilityZone = a} :: Subnet)

instance Core.FromJSON Subnet where
  parseJSON =
    Core.withObject
      "Subnet"
      ( \x ->
          Subnet'
            Prelude.<$> (x Core..:? "SubnetIdentifier")
            Prelude.<*> (x Core..:? "SubnetStatus")
            Prelude.<*> (x Core..:? "SubnetAvailabilityZone")
      )

instance Prelude.Hashable Subnet where
  hashWithSalt _salt Subnet' {..} =
    _salt `Prelude.hashWithSalt` subnetIdentifier
      `Prelude.hashWithSalt` subnetStatus
      `Prelude.hashWithSalt` subnetAvailabilityZone

instance Prelude.NFData Subnet where
  rnf Subnet' {..} =
    Prelude.rnf subnetIdentifier
      `Prelude.seq` Prelude.rnf subnetStatus
      `Prelude.seq` Prelude.rnf subnetAvailabilityZone
