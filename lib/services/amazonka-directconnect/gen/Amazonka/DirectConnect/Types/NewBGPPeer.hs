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
-- Module      : Amazonka.DirectConnect.Types.NewBGPPeer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DirectConnect.Types.NewBGPPeer where

import qualified Amazonka.Core as Core
import Amazonka.DirectConnect.Types.AddressFamily
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about a new BGP peer.
--
-- /See:/ 'newNewBGPPeer' smart constructor.
data NewBGPPeer = NewBGPPeer'
  { -- | The address family for the BGP peer.
    addressFamily :: Prelude.Maybe AddressFamily,
    -- | The authentication key for BGP configuration. This string has a minimum
    -- length of 6 characters and and a maximun lenth of 80 characters.
    authKey :: Prelude.Maybe Prelude.Text,
    -- | The IP address assigned to the customer interface.
    customerAddress :: Prelude.Maybe Prelude.Text,
    -- | The autonomous system (AS) number for Border Gateway Protocol (BGP)
    -- configuration.
    asn :: Prelude.Maybe Prelude.Int,
    -- | The IP address assigned to the Amazon interface.
    amazonAddress :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'NewBGPPeer' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'addressFamily', 'newBGPPeer_addressFamily' - The address family for the BGP peer.
--
-- 'authKey', 'newBGPPeer_authKey' - The authentication key for BGP configuration. This string has a minimum
-- length of 6 characters and and a maximun lenth of 80 characters.
--
-- 'customerAddress', 'newBGPPeer_customerAddress' - The IP address assigned to the customer interface.
--
-- 'asn', 'newBGPPeer_asn' - The autonomous system (AS) number for Border Gateway Protocol (BGP)
-- configuration.
--
-- 'amazonAddress', 'newBGPPeer_amazonAddress' - The IP address assigned to the Amazon interface.
newNewBGPPeer ::
  NewBGPPeer
newNewBGPPeer =
  NewBGPPeer'
    { addressFamily = Prelude.Nothing,
      authKey = Prelude.Nothing,
      customerAddress = Prelude.Nothing,
      asn = Prelude.Nothing,
      amazonAddress = Prelude.Nothing
    }

-- | The address family for the BGP peer.
newBGPPeer_addressFamily :: Lens.Lens' NewBGPPeer (Prelude.Maybe AddressFamily)
newBGPPeer_addressFamily = Lens.lens (\NewBGPPeer' {addressFamily} -> addressFamily) (\s@NewBGPPeer' {} a -> s {addressFamily = a} :: NewBGPPeer)

-- | The authentication key for BGP configuration. This string has a minimum
-- length of 6 characters and and a maximun lenth of 80 characters.
newBGPPeer_authKey :: Lens.Lens' NewBGPPeer (Prelude.Maybe Prelude.Text)
newBGPPeer_authKey = Lens.lens (\NewBGPPeer' {authKey} -> authKey) (\s@NewBGPPeer' {} a -> s {authKey = a} :: NewBGPPeer)

-- | The IP address assigned to the customer interface.
newBGPPeer_customerAddress :: Lens.Lens' NewBGPPeer (Prelude.Maybe Prelude.Text)
newBGPPeer_customerAddress = Lens.lens (\NewBGPPeer' {customerAddress} -> customerAddress) (\s@NewBGPPeer' {} a -> s {customerAddress = a} :: NewBGPPeer)

-- | The autonomous system (AS) number for Border Gateway Protocol (BGP)
-- configuration.
newBGPPeer_asn :: Lens.Lens' NewBGPPeer (Prelude.Maybe Prelude.Int)
newBGPPeer_asn = Lens.lens (\NewBGPPeer' {asn} -> asn) (\s@NewBGPPeer' {} a -> s {asn = a} :: NewBGPPeer)

-- | The IP address assigned to the Amazon interface.
newBGPPeer_amazonAddress :: Lens.Lens' NewBGPPeer (Prelude.Maybe Prelude.Text)
newBGPPeer_amazonAddress = Lens.lens (\NewBGPPeer' {amazonAddress} -> amazonAddress) (\s@NewBGPPeer' {} a -> s {amazonAddress = a} :: NewBGPPeer)

instance Prelude.Hashable NewBGPPeer where
  hashWithSalt _salt NewBGPPeer' {..} =
    _salt `Prelude.hashWithSalt` addressFamily
      `Prelude.hashWithSalt` authKey
      `Prelude.hashWithSalt` customerAddress
      `Prelude.hashWithSalt` asn
      `Prelude.hashWithSalt` amazonAddress

instance Prelude.NFData NewBGPPeer where
  rnf NewBGPPeer' {..} =
    Prelude.rnf addressFamily
      `Prelude.seq` Prelude.rnf authKey
      `Prelude.seq` Prelude.rnf customerAddress
      `Prelude.seq` Prelude.rnf asn
      `Prelude.seq` Prelude.rnf amazonAddress

instance Core.ToJSON NewBGPPeer where
  toJSON NewBGPPeer' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("addressFamily" Core..=) Prelude.<$> addressFamily,
            ("authKey" Core..=) Prelude.<$> authKey,
            ("customerAddress" Core..=)
              Prelude.<$> customerAddress,
            ("asn" Core..=) Prelude.<$> asn,
            ("amazonAddress" Core..=) Prelude.<$> amazonAddress
          ]
      )
