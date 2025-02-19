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
-- Module      : Amazonka.DirectConnect.Types.NewPublicVirtualInterface
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DirectConnect.Types.NewPublicVirtualInterface where

import qualified Amazonka.Core as Core
import Amazonka.DirectConnect.Types.AddressFamily
import Amazonka.DirectConnect.Types.RouteFilterPrefix
import Amazonka.DirectConnect.Types.Tag
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about a public virtual interface.
--
-- /See:/ 'newNewPublicVirtualInterface' smart constructor.
data NewPublicVirtualInterface = NewPublicVirtualInterface'
  { -- | The tags associated with the public virtual interface.
    tags :: Prelude.Maybe (Prelude.NonEmpty Tag),
    -- | The address family for the BGP peer.
    addressFamily :: Prelude.Maybe AddressFamily,
    -- | The authentication key for BGP configuration. This string has a minimum
    -- length of 6 characters and and a maximun lenth of 80 characters.
    authKey :: Prelude.Maybe Prelude.Text,
    -- | The routes to be advertised to the Amazon Web Services network in this
    -- Region. Applies to public virtual interfaces.
    routeFilterPrefixes :: Prelude.Maybe [RouteFilterPrefix],
    -- | The IP address assigned to the customer interface.
    customerAddress :: Prelude.Maybe Prelude.Text,
    -- | The IP address assigned to the Amazon interface.
    amazonAddress :: Prelude.Maybe Prelude.Text,
    -- | The name of the virtual interface assigned by the customer network. The
    -- name has a maximum of 100 characters. The following are valid
    -- characters: a-z, 0-9 and a hyphen (-).
    virtualInterfaceName :: Prelude.Text,
    -- | The ID of the VLAN.
    vlan :: Prelude.Int,
    -- | The autonomous system (AS) number for Border Gateway Protocol (BGP)
    -- configuration.
    --
    -- The valid values are 1-2147483647.
    asn :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'NewPublicVirtualInterface' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'newPublicVirtualInterface_tags' - The tags associated with the public virtual interface.
--
-- 'addressFamily', 'newPublicVirtualInterface_addressFamily' - The address family for the BGP peer.
--
-- 'authKey', 'newPublicVirtualInterface_authKey' - The authentication key for BGP configuration. This string has a minimum
-- length of 6 characters and and a maximun lenth of 80 characters.
--
-- 'routeFilterPrefixes', 'newPublicVirtualInterface_routeFilterPrefixes' - The routes to be advertised to the Amazon Web Services network in this
-- Region. Applies to public virtual interfaces.
--
-- 'customerAddress', 'newPublicVirtualInterface_customerAddress' - The IP address assigned to the customer interface.
--
-- 'amazonAddress', 'newPublicVirtualInterface_amazonAddress' - The IP address assigned to the Amazon interface.
--
-- 'virtualInterfaceName', 'newPublicVirtualInterface_virtualInterfaceName' - The name of the virtual interface assigned by the customer network. The
-- name has a maximum of 100 characters. The following are valid
-- characters: a-z, 0-9 and a hyphen (-).
--
-- 'vlan', 'newPublicVirtualInterface_vlan' - The ID of the VLAN.
--
-- 'asn', 'newPublicVirtualInterface_asn' - The autonomous system (AS) number for Border Gateway Protocol (BGP)
-- configuration.
--
-- The valid values are 1-2147483647.
newNewPublicVirtualInterface ::
  -- | 'virtualInterfaceName'
  Prelude.Text ->
  -- | 'vlan'
  Prelude.Int ->
  -- | 'asn'
  Prelude.Int ->
  NewPublicVirtualInterface
newNewPublicVirtualInterface
  pVirtualInterfaceName_
  pVlan_
  pAsn_ =
    NewPublicVirtualInterface'
      { tags = Prelude.Nothing,
        addressFamily = Prelude.Nothing,
        authKey = Prelude.Nothing,
        routeFilterPrefixes = Prelude.Nothing,
        customerAddress = Prelude.Nothing,
        amazonAddress = Prelude.Nothing,
        virtualInterfaceName = pVirtualInterfaceName_,
        vlan = pVlan_,
        asn = pAsn_
      }

-- | The tags associated with the public virtual interface.
newPublicVirtualInterface_tags :: Lens.Lens' NewPublicVirtualInterface (Prelude.Maybe (Prelude.NonEmpty Tag))
newPublicVirtualInterface_tags = Lens.lens (\NewPublicVirtualInterface' {tags} -> tags) (\s@NewPublicVirtualInterface' {} a -> s {tags = a} :: NewPublicVirtualInterface) Prelude.. Lens.mapping Lens.coerced

-- | The address family for the BGP peer.
newPublicVirtualInterface_addressFamily :: Lens.Lens' NewPublicVirtualInterface (Prelude.Maybe AddressFamily)
newPublicVirtualInterface_addressFamily = Lens.lens (\NewPublicVirtualInterface' {addressFamily} -> addressFamily) (\s@NewPublicVirtualInterface' {} a -> s {addressFamily = a} :: NewPublicVirtualInterface)

-- | The authentication key for BGP configuration. This string has a minimum
-- length of 6 characters and and a maximun lenth of 80 characters.
newPublicVirtualInterface_authKey :: Lens.Lens' NewPublicVirtualInterface (Prelude.Maybe Prelude.Text)
newPublicVirtualInterface_authKey = Lens.lens (\NewPublicVirtualInterface' {authKey} -> authKey) (\s@NewPublicVirtualInterface' {} a -> s {authKey = a} :: NewPublicVirtualInterface)

-- | The routes to be advertised to the Amazon Web Services network in this
-- Region. Applies to public virtual interfaces.
newPublicVirtualInterface_routeFilterPrefixes :: Lens.Lens' NewPublicVirtualInterface (Prelude.Maybe [RouteFilterPrefix])
newPublicVirtualInterface_routeFilterPrefixes = Lens.lens (\NewPublicVirtualInterface' {routeFilterPrefixes} -> routeFilterPrefixes) (\s@NewPublicVirtualInterface' {} a -> s {routeFilterPrefixes = a} :: NewPublicVirtualInterface) Prelude.. Lens.mapping Lens.coerced

-- | The IP address assigned to the customer interface.
newPublicVirtualInterface_customerAddress :: Lens.Lens' NewPublicVirtualInterface (Prelude.Maybe Prelude.Text)
newPublicVirtualInterface_customerAddress = Lens.lens (\NewPublicVirtualInterface' {customerAddress} -> customerAddress) (\s@NewPublicVirtualInterface' {} a -> s {customerAddress = a} :: NewPublicVirtualInterface)

-- | The IP address assigned to the Amazon interface.
newPublicVirtualInterface_amazonAddress :: Lens.Lens' NewPublicVirtualInterface (Prelude.Maybe Prelude.Text)
newPublicVirtualInterface_amazonAddress = Lens.lens (\NewPublicVirtualInterface' {amazonAddress} -> amazonAddress) (\s@NewPublicVirtualInterface' {} a -> s {amazonAddress = a} :: NewPublicVirtualInterface)

-- | The name of the virtual interface assigned by the customer network. The
-- name has a maximum of 100 characters. The following are valid
-- characters: a-z, 0-9 and a hyphen (-).
newPublicVirtualInterface_virtualInterfaceName :: Lens.Lens' NewPublicVirtualInterface Prelude.Text
newPublicVirtualInterface_virtualInterfaceName = Lens.lens (\NewPublicVirtualInterface' {virtualInterfaceName} -> virtualInterfaceName) (\s@NewPublicVirtualInterface' {} a -> s {virtualInterfaceName = a} :: NewPublicVirtualInterface)

-- | The ID of the VLAN.
newPublicVirtualInterface_vlan :: Lens.Lens' NewPublicVirtualInterface Prelude.Int
newPublicVirtualInterface_vlan = Lens.lens (\NewPublicVirtualInterface' {vlan} -> vlan) (\s@NewPublicVirtualInterface' {} a -> s {vlan = a} :: NewPublicVirtualInterface)

-- | The autonomous system (AS) number for Border Gateway Protocol (BGP)
-- configuration.
--
-- The valid values are 1-2147483647.
newPublicVirtualInterface_asn :: Lens.Lens' NewPublicVirtualInterface Prelude.Int
newPublicVirtualInterface_asn = Lens.lens (\NewPublicVirtualInterface' {asn} -> asn) (\s@NewPublicVirtualInterface' {} a -> s {asn = a} :: NewPublicVirtualInterface)

instance Prelude.Hashable NewPublicVirtualInterface where
  hashWithSalt _salt NewPublicVirtualInterface' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` addressFamily
      `Prelude.hashWithSalt` authKey
      `Prelude.hashWithSalt` routeFilterPrefixes
      `Prelude.hashWithSalt` customerAddress
      `Prelude.hashWithSalt` amazonAddress
      `Prelude.hashWithSalt` virtualInterfaceName
      `Prelude.hashWithSalt` vlan
      `Prelude.hashWithSalt` asn

instance Prelude.NFData NewPublicVirtualInterface where
  rnf NewPublicVirtualInterface' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf addressFamily
      `Prelude.seq` Prelude.rnf authKey
      `Prelude.seq` Prelude.rnf routeFilterPrefixes
      `Prelude.seq` Prelude.rnf customerAddress
      `Prelude.seq` Prelude.rnf amazonAddress
      `Prelude.seq` Prelude.rnf virtualInterfaceName
      `Prelude.seq` Prelude.rnf vlan
      `Prelude.seq` Prelude.rnf asn

instance Core.ToJSON NewPublicVirtualInterface where
  toJSON NewPublicVirtualInterface' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            ("addressFamily" Core..=) Prelude.<$> addressFamily,
            ("authKey" Core..=) Prelude.<$> authKey,
            ("routeFilterPrefixes" Core..=)
              Prelude.<$> routeFilterPrefixes,
            ("customerAddress" Core..=)
              Prelude.<$> customerAddress,
            ("amazonAddress" Core..=) Prelude.<$> amazonAddress,
            Prelude.Just
              ( "virtualInterfaceName"
                  Core..= virtualInterfaceName
              ),
            Prelude.Just ("vlan" Core..= vlan),
            Prelude.Just ("asn" Core..= asn)
          ]
      )
