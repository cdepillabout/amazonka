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
-- Module      : Amazonka.EC2.Types.VpnGateway
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.VpnGateway where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import Amazonka.EC2.Types.GatewayType
import Amazonka.EC2.Types.Tag
import Amazonka.EC2.Types.VpcAttachment
import Amazonka.EC2.Types.VpnState
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes a virtual private gateway.
--
-- /See:/ 'newVpnGateway' smart constructor.
data VpnGateway = VpnGateway'
  { -- | Any tags assigned to the virtual private gateway.
    tags :: Prelude.Maybe [Tag],
    -- | The type of VPN connection the virtual private gateway supports.
    type' :: Prelude.Maybe GatewayType,
    -- | The current state of the virtual private gateway.
    state :: Prelude.Maybe VpnState,
    -- | The Availability Zone where the virtual private gateway was created, if
    -- applicable. This field may be empty or not returned.
    availabilityZone :: Prelude.Maybe Prelude.Text,
    -- | The ID of the virtual private gateway.
    vpnGatewayId :: Prelude.Maybe Prelude.Text,
    -- | Any VPCs attached to the virtual private gateway.
    vpcAttachments :: Prelude.Maybe [VpcAttachment],
    -- | The private Autonomous System Number (ASN) for the Amazon side of a BGP
    -- session.
    amazonSideAsn :: Prelude.Maybe Prelude.Integer
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'VpnGateway' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'vpnGateway_tags' - Any tags assigned to the virtual private gateway.
--
-- 'type'', 'vpnGateway_type' - The type of VPN connection the virtual private gateway supports.
--
-- 'state', 'vpnGateway_state' - The current state of the virtual private gateway.
--
-- 'availabilityZone', 'vpnGateway_availabilityZone' - The Availability Zone where the virtual private gateway was created, if
-- applicable. This field may be empty or not returned.
--
-- 'vpnGatewayId', 'vpnGateway_vpnGatewayId' - The ID of the virtual private gateway.
--
-- 'vpcAttachments', 'vpnGateway_vpcAttachments' - Any VPCs attached to the virtual private gateway.
--
-- 'amazonSideAsn', 'vpnGateway_amazonSideAsn' - The private Autonomous System Number (ASN) for the Amazon side of a BGP
-- session.
newVpnGateway ::
  VpnGateway
newVpnGateway =
  VpnGateway'
    { tags = Prelude.Nothing,
      type' = Prelude.Nothing,
      state = Prelude.Nothing,
      availabilityZone = Prelude.Nothing,
      vpnGatewayId = Prelude.Nothing,
      vpcAttachments = Prelude.Nothing,
      amazonSideAsn = Prelude.Nothing
    }

-- | Any tags assigned to the virtual private gateway.
vpnGateway_tags :: Lens.Lens' VpnGateway (Prelude.Maybe [Tag])
vpnGateway_tags = Lens.lens (\VpnGateway' {tags} -> tags) (\s@VpnGateway' {} a -> s {tags = a} :: VpnGateway) Prelude.. Lens.mapping Lens.coerced

-- | The type of VPN connection the virtual private gateway supports.
vpnGateway_type :: Lens.Lens' VpnGateway (Prelude.Maybe GatewayType)
vpnGateway_type = Lens.lens (\VpnGateway' {type'} -> type') (\s@VpnGateway' {} a -> s {type' = a} :: VpnGateway)

-- | The current state of the virtual private gateway.
vpnGateway_state :: Lens.Lens' VpnGateway (Prelude.Maybe VpnState)
vpnGateway_state = Lens.lens (\VpnGateway' {state} -> state) (\s@VpnGateway' {} a -> s {state = a} :: VpnGateway)

-- | The Availability Zone where the virtual private gateway was created, if
-- applicable. This field may be empty or not returned.
vpnGateway_availabilityZone :: Lens.Lens' VpnGateway (Prelude.Maybe Prelude.Text)
vpnGateway_availabilityZone = Lens.lens (\VpnGateway' {availabilityZone} -> availabilityZone) (\s@VpnGateway' {} a -> s {availabilityZone = a} :: VpnGateway)

-- | The ID of the virtual private gateway.
vpnGateway_vpnGatewayId :: Lens.Lens' VpnGateway (Prelude.Maybe Prelude.Text)
vpnGateway_vpnGatewayId = Lens.lens (\VpnGateway' {vpnGatewayId} -> vpnGatewayId) (\s@VpnGateway' {} a -> s {vpnGatewayId = a} :: VpnGateway)

-- | Any VPCs attached to the virtual private gateway.
vpnGateway_vpcAttachments :: Lens.Lens' VpnGateway (Prelude.Maybe [VpcAttachment])
vpnGateway_vpcAttachments = Lens.lens (\VpnGateway' {vpcAttachments} -> vpcAttachments) (\s@VpnGateway' {} a -> s {vpcAttachments = a} :: VpnGateway) Prelude.. Lens.mapping Lens.coerced

-- | The private Autonomous System Number (ASN) for the Amazon side of a BGP
-- session.
vpnGateway_amazonSideAsn :: Lens.Lens' VpnGateway (Prelude.Maybe Prelude.Integer)
vpnGateway_amazonSideAsn = Lens.lens (\VpnGateway' {amazonSideAsn} -> amazonSideAsn) (\s@VpnGateway' {} a -> s {amazonSideAsn = a} :: VpnGateway)

instance Core.FromXML VpnGateway where
  parseXML x =
    VpnGateway'
      Prelude.<$> ( x Core..@? "tagSet" Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "item")
                  )
      Prelude.<*> (x Core..@? "type")
      Prelude.<*> (x Core..@? "state")
      Prelude.<*> (x Core..@? "availabilityZone")
      Prelude.<*> (x Core..@? "vpnGatewayId")
      Prelude.<*> ( x Core..@? "attachments" Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "item")
                  )
      Prelude.<*> (x Core..@? "amazonSideAsn")

instance Prelude.Hashable VpnGateway where
  hashWithSalt _salt VpnGateway' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` state
      `Prelude.hashWithSalt` availabilityZone
      `Prelude.hashWithSalt` vpnGatewayId
      `Prelude.hashWithSalt` vpcAttachments
      `Prelude.hashWithSalt` amazonSideAsn

instance Prelude.NFData VpnGateway where
  rnf VpnGateway' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf type'
      `Prelude.seq` Prelude.rnf state
      `Prelude.seq` Prelude.rnf availabilityZone
      `Prelude.seq` Prelude.rnf vpnGatewayId
      `Prelude.seq` Prelude.rnf vpcAttachments
      `Prelude.seq` Prelude.rnf amazonSideAsn
