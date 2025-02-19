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
-- Module      : Amazonka.EC2.Types.HostProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.HostProperties where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes the properties of a Dedicated Host.
--
-- /See:/ 'newHostProperties' smart constructor.
data HostProperties = HostProperties'
  { -- | The number of cores on the Dedicated Host.
    cores :: Prelude.Maybe Prelude.Int,
    -- | The number of sockets on the Dedicated Host.
    sockets :: Prelude.Maybe Prelude.Int,
    -- | The instance type supported by the Dedicated Host. For example,
    -- @m5.large@. If the host supports multiple instance types, no
    -- __instanceType__ is returned.
    instanceType :: Prelude.Maybe Prelude.Text,
    -- | The total number of vCPUs on the Dedicated Host.
    totalVCpus :: Prelude.Maybe Prelude.Int,
    -- | The instance family supported by the Dedicated Host. For example, @m5@.
    instanceFamily :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'HostProperties' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'cores', 'hostProperties_cores' - The number of cores on the Dedicated Host.
--
-- 'sockets', 'hostProperties_sockets' - The number of sockets on the Dedicated Host.
--
-- 'instanceType', 'hostProperties_instanceType' - The instance type supported by the Dedicated Host. For example,
-- @m5.large@. If the host supports multiple instance types, no
-- __instanceType__ is returned.
--
-- 'totalVCpus', 'hostProperties_totalVCpus' - The total number of vCPUs on the Dedicated Host.
--
-- 'instanceFamily', 'hostProperties_instanceFamily' - The instance family supported by the Dedicated Host. For example, @m5@.
newHostProperties ::
  HostProperties
newHostProperties =
  HostProperties'
    { cores = Prelude.Nothing,
      sockets = Prelude.Nothing,
      instanceType = Prelude.Nothing,
      totalVCpus = Prelude.Nothing,
      instanceFamily = Prelude.Nothing
    }

-- | The number of cores on the Dedicated Host.
hostProperties_cores :: Lens.Lens' HostProperties (Prelude.Maybe Prelude.Int)
hostProperties_cores = Lens.lens (\HostProperties' {cores} -> cores) (\s@HostProperties' {} a -> s {cores = a} :: HostProperties)

-- | The number of sockets on the Dedicated Host.
hostProperties_sockets :: Lens.Lens' HostProperties (Prelude.Maybe Prelude.Int)
hostProperties_sockets = Lens.lens (\HostProperties' {sockets} -> sockets) (\s@HostProperties' {} a -> s {sockets = a} :: HostProperties)

-- | The instance type supported by the Dedicated Host. For example,
-- @m5.large@. If the host supports multiple instance types, no
-- __instanceType__ is returned.
hostProperties_instanceType :: Lens.Lens' HostProperties (Prelude.Maybe Prelude.Text)
hostProperties_instanceType = Lens.lens (\HostProperties' {instanceType} -> instanceType) (\s@HostProperties' {} a -> s {instanceType = a} :: HostProperties)

-- | The total number of vCPUs on the Dedicated Host.
hostProperties_totalVCpus :: Lens.Lens' HostProperties (Prelude.Maybe Prelude.Int)
hostProperties_totalVCpus = Lens.lens (\HostProperties' {totalVCpus} -> totalVCpus) (\s@HostProperties' {} a -> s {totalVCpus = a} :: HostProperties)

-- | The instance family supported by the Dedicated Host. For example, @m5@.
hostProperties_instanceFamily :: Lens.Lens' HostProperties (Prelude.Maybe Prelude.Text)
hostProperties_instanceFamily = Lens.lens (\HostProperties' {instanceFamily} -> instanceFamily) (\s@HostProperties' {} a -> s {instanceFamily = a} :: HostProperties)

instance Core.FromXML HostProperties where
  parseXML x =
    HostProperties'
      Prelude.<$> (x Core..@? "cores")
      Prelude.<*> (x Core..@? "sockets")
      Prelude.<*> (x Core..@? "instanceType")
      Prelude.<*> (x Core..@? "totalVCpus")
      Prelude.<*> (x Core..@? "instanceFamily")

instance Prelude.Hashable HostProperties where
  hashWithSalt _salt HostProperties' {..} =
    _salt `Prelude.hashWithSalt` cores
      `Prelude.hashWithSalt` sockets
      `Prelude.hashWithSalt` instanceType
      `Prelude.hashWithSalt` totalVCpus
      `Prelude.hashWithSalt` instanceFamily

instance Prelude.NFData HostProperties where
  rnf HostProperties' {..} =
    Prelude.rnf cores
      `Prelude.seq` Prelude.rnf sockets
      `Prelude.seq` Prelude.rnf instanceType
      `Prelude.seq` Prelude.rnf totalVCpus
      `Prelude.seq` Prelude.rnf instanceFamily
