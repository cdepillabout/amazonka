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
-- Module      : Amazonka.EC2.Types.InstancePrivateIpAddress
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.InstancePrivateIpAddress where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import Amazonka.EC2.Types.InstanceNetworkInterfaceAssociation
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes a private IPv4 address.
--
-- /See:/ 'newInstancePrivateIpAddress' smart constructor.
data InstancePrivateIpAddress = InstancePrivateIpAddress'
  { -- | The association information for an Elastic IP address for the network
    -- interface.
    association :: Prelude.Maybe InstanceNetworkInterfaceAssociation,
    -- | Indicates whether this IPv4 address is the primary private IP address of
    -- the network interface.
    primary :: Prelude.Maybe Prelude.Bool,
    -- | The private IPv4 address of the network interface.
    privateIpAddress :: Prelude.Maybe Prelude.Text,
    -- | The private IPv4 DNS name.
    privateDnsName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InstancePrivateIpAddress' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'association', 'instancePrivateIpAddress_association' - The association information for an Elastic IP address for the network
-- interface.
--
-- 'primary', 'instancePrivateIpAddress_primary' - Indicates whether this IPv4 address is the primary private IP address of
-- the network interface.
--
-- 'privateIpAddress', 'instancePrivateIpAddress_privateIpAddress' - The private IPv4 address of the network interface.
--
-- 'privateDnsName', 'instancePrivateIpAddress_privateDnsName' - The private IPv4 DNS name.
newInstancePrivateIpAddress ::
  InstancePrivateIpAddress
newInstancePrivateIpAddress =
  InstancePrivateIpAddress'
    { association =
        Prelude.Nothing,
      primary = Prelude.Nothing,
      privateIpAddress = Prelude.Nothing,
      privateDnsName = Prelude.Nothing
    }

-- | The association information for an Elastic IP address for the network
-- interface.
instancePrivateIpAddress_association :: Lens.Lens' InstancePrivateIpAddress (Prelude.Maybe InstanceNetworkInterfaceAssociation)
instancePrivateIpAddress_association = Lens.lens (\InstancePrivateIpAddress' {association} -> association) (\s@InstancePrivateIpAddress' {} a -> s {association = a} :: InstancePrivateIpAddress)

-- | Indicates whether this IPv4 address is the primary private IP address of
-- the network interface.
instancePrivateIpAddress_primary :: Lens.Lens' InstancePrivateIpAddress (Prelude.Maybe Prelude.Bool)
instancePrivateIpAddress_primary = Lens.lens (\InstancePrivateIpAddress' {primary} -> primary) (\s@InstancePrivateIpAddress' {} a -> s {primary = a} :: InstancePrivateIpAddress)

-- | The private IPv4 address of the network interface.
instancePrivateIpAddress_privateIpAddress :: Lens.Lens' InstancePrivateIpAddress (Prelude.Maybe Prelude.Text)
instancePrivateIpAddress_privateIpAddress = Lens.lens (\InstancePrivateIpAddress' {privateIpAddress} -> privateIpAddress) (\s@InstancePrivateIpAddress' {} a -> s {privateIpAddress = a} :: InstancePrivateIpAddress)

-- | The private IPv4 DNS name.
instancePrivateIpAddress_privateDnsName :: Lens.Lens' InstancePrivateIpAddress (Prelude.Maybe Prelude.Text)
instancePrivateIpAddress_privateDnsName = Lens.lens (\InstancePrivateIpAddress' {privateDnsName} -> privateDnsName) (\s@InstancePrivateIpAddress' {} a -> s {privateDnsName = a} :: InstancePrivateIpAddress)

instance Core.FromXML InstancePrivateIpAddress where
  parseXML x =
    InstancePrivateIpAddress'
      Prelude.<$> (x Core..@? "association")
      Prelude.<*> (x Core..@? "primary")
      Prelude.<*> (x Core..@? "privateIpAddress")
      Prelude.<*> (x Core..@? "privateDnsName")

instance Prelude.Hashable InstancePrivateIpAddress where
  hashWithSalt _salt InstancePrivateIpAddress' {..} =
    _salt `Prelude.hashWithSalt` association
      `Prelude.hashWithSalt` primary
      `Prelude.hashWithSalt` privateIpAddress
      `Prelude.hashWithSalt` privateDnsName

instance Prelude.NFData InstancePrivateIpAddress where
  rnf InstancePrivateIpAddress' {..} =
    Prelude.rnf association
      `Prelude.seq` Prelude.rnf primary
      `Prelude.seq` Prelude.rnf privateIpAddress
      `Prelude.seq` Prelude.rnf privateDnsName
