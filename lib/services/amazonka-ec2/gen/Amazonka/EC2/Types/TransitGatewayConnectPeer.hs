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
-- Module      : Amazonka.EC2.Types.TransitGatewayConnectPeer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.TransitGatewayConnectPeer where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import Amazonka.EC2.Types.Tag
import Amazonka.EC2.Types.TransitGatewayConnectPeerConfiguration
import Amazonka.EC2.Types.TransitGatewayConnectPeerState
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes a transit gateway Connect peer.
--
-- /See:/ 'newTransitGatewayConnectPeer' smart constructor.
data TransitGatewayConnectPeer = TransitGatewayConnectPeer'
  { -- | The tags for the Connect peer.
    tags :: Prelude.Maybe [Tag],
    -- | The ID of the Connect peer.
    transitGatewayConnectPeerId :: Prelude.Maybe Prelude.Text,
    -- | The state of the Connect peer.
    state :: Prelude.Maybe TransitGatewayConnectPeerState,
    -- | The ID of the Connect attachment.
    transitGatewayAttachmentId :: Prelude.Maybe Prelude.Text,
    -- | The Connect peer details.
    connectPeerConfiguration :: Prelude.Maybe TransitGatewayConnectPeerConfiguration,
    -- | The creation time.
    creationTime :: Prelude.Maybe Core.ISO8601
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TransitGatewayConnectPeer' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'transitGatewayConnectPeer_tags' - The tags for the Connect peer.
--
-- 'transitGatewayConnectPeerId', 'transitGatewayConnectPeer_transitGatewayConnectPeerId' - The ID of the Connect peer.
--
-- 'state', 'transitGatewayConnectPeer_state' - The state of the Connect peer.
--
-- 'transitGatewayAttachmentId', 'transitGatewayConnectPeer_transitGatewayAttachmentId' - The ID of the Connect attachment.
--
-- 'connectPeerConfiguration', 'transitGatewayConnectPeer_connectPeerConfiguration' - The Connect peer details.
--
-- 'creationTime', 'transitGatewayConnectPeer_creationTime' - The creation time.
newTransitGatewayConnectPeer ::
  TransitGatewayConnectPeer
newTransitGatewayConnectPeer =
  TransitGatewayConnectPeer'
    { tags = Prelude.Nothing,
      transitGatewayConnectPeerId = Prelude.Nothing,
      state = Prelude.Nothing,
      transitGatewayAttachmentId = Prelude.Nothing,
      connectPeerConfiguration = Prelude.Nothing,
      creationTime = Prelude.Nothing
    }

-- | The tags for the Connect peer.
transitGatewayConnectPeer_tags :: Lens.Lens' TransitGatewayConnectPeer (Prelude.Maybe [Tag])
transitGatewayConnectPeer_tags = Lens.lens (\TransitGatewayConnectPeer' {tags} -> tags) (\s@TransitGatewayConnectPeer' {} a -> s {tags = a} :: TransitGatewayConnectPeer) Prelude.. Lens.mapping Lens.coerced

-- | The ID of the Connect peer.
transitGatewayConnectPeer_transitGatewayConnectPeerId :: Lens.Lens' TransitGatewayConnectPeer (Prelude.Maybe Prelude.Text)
transitGatewayConnectPeer_transitGatewayConnectPeerId = Lens.lens (\TransitGatewayConnectPeer' {transitGatewayConnectPeerId} -> transitGatewayConnectPeerId) (\s@TransitGatewayConnectPeer' {} a -> s {transitGatewayConnectPeerId = a} :: TransitGatewayConnectPeer)

-- | The state of the Connect peer.
transitGatewayConnectPeer_state :: Lens.Lens' TransitGatewayConnectPeer (Prelude.Maybe TransitGatewayConnectPeerState)
transitGatewayConnectPeer_state = Lens.lens (\TransitGatewayConnectPeer' {state} -> state) (\s@TransitGatewayConnectPeer' {} a -> s {state = a} :: TransitGatewayConnectPeer)

-- | The ID of the Connect attachment.
transitGatewayConnectPeer_transitGatewayAttachmentId :: Lens.Lens' TransitGatewayConnectPeer (Prelude.Maybe Prelude.Text)
transitGatewayConnectPeer_transitGatewayAttachmentId = Lens.lens (\TransitGatewayConnectPeer' {transitGatewayAttachmentId} -> transitGatewayAttachmentId) (\s@TransitGatewayConnectPeer' {} a -> s {transitGatewayAttachmentId = a} :: TransitGatewayConnectPeer)

-- | The Connect peer details.
transitGatewayConnectPeer_connectPeerConfiguration :: Lens.Lens' TransitGatewayConnectPeer (Prelude.Maybe TransitGatewayConnectPeerConfiguration)
transitGatewayConnectPeer_connectPeerConfiguration = Lens.lens (\TransitGatewayConnectPeer' {connectPeerConfiguration} -> connectPeerConfiguration) (\s@TransitGatewayConnectPeer' {} a -> s {connectPeerConfiguration = a} :: TransitGatewayConnectPeer)

-- | The creation time.
transitGatewayConnectPeer_creationTime :: Lens.Lens' TransitGatewayConnectPeer (Prelude.Maybe Prelude.UTCTime)
transitGatewayConnectPeer_creationTime = Lens.lens (\TransitGatewayConnectPeer' {creationTime} -> creationTime) (\s@TransitGatewayConnectPeer' {} a -> s {creationTime = a} :: TransitGatewayConnectPeer) Prelude.. Lens.mapping Core._Time

instance Core.FromXML TransitGatewayConnectPeer where
  parseXML x =
    TransitGatewayConnectPeer'
      Prelude.<$> ( x Core..@? "tagSet" Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "item")
                  )
      Prelude.<*> (x Core..@? "transitGatewayConnectPeerId")
      Prelude.<*> (x Core..@? "state")
      Prelude.<*> (x Core..@? "transitGatewayAttachmentId")
      Prelude.<*> (x Core..@? "connectPeerConfiguration")
      Prelude.<*> (x Core..@? "creationTime")

instance Prelude.Hashable TransitGatewayConnectPeer where
  hashWithSalt _salt TransitGatewayConnectPeer' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` transitGatewayConnectPeerId
      `Prelude.hashWithSalt` state
      `Prelude.hashWithSalt` transitGatewayAttachmentId
      `Prelude.hashWithSalt` connectPeerConfiguration
      `Prelude.hashWithSalt` creationTime

instance Prelude.NFData TransitGatewayConnectPeer where
  rnf TransitGatewayConnectPeer' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf transitGatewayConnectPeerId
      `Prelude.seq` Prelude.rnf state
      `Prelude.seq` Prelude.rnf transitGatewayAttachmentId
      `Prelude.seq` Prelude.rnf connectPeerConfiguration
      `Prelude.seq` Prelude.rnf creationTime
