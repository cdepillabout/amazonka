{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.NetworkManager.CreateConnectPeer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a core network Connect peer for a specified core network connect
-- attachment between a core network and an appliance. The peer address and
-- transit gateway address must be the same IP address family (IPv4 or
-- IPv6).
module Amazonka.NetworkManager.CreateConnectPeer
  ( -- * Creating a Request
    CreateConnectPeer (..),
    newCreateConnectPeer,

    -- * Request Lenses
    createConnectPeer_tags,
    createConnectPeer_clientToken,
    createConnectPeer_coreNetworkAddress,
    createConnectPeer_bgpOptions,
    createConnectPeer_connectAttachmentId,
    createConnectPeer_peerAddress,
    createConnectPeer_insideCidrBlocks,

    -- * Destructuring the Response
    CreateConnectPeerResponse (..),
    newCreateConnectPeerResponse,

    -- * Response Lenses
    createConnectPeerResponse_connectPeer,
    createConnectPeerResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.NetworkManager.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateConnectPeer' smart constructor.
data CreateConnectPeer = CreateConnectPeer'
  { -- | The tags associated with the peer request.
    tags :: Prelude.Maybe [Tag],
    -- | The client token associated with the request.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | A Connect peer core network address.
    coreNetworkAddress :: Prelude.Maybe Prelude.Text,
    -- | The Connect peer BGP options.
    bgpOptions :: Prelude.Maybe BgpOptions,
    -- | The ID of the connection attachment.
    connectAttachmentId :: Prelude.Text,
    -- | The Connect peer address.
    peerAddress :: Prelude.Text,
    -- | The inside IP addresses used for BGP peering.
    insideCidrBlocks :: [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateConnectPeer' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createConnectPeer_tags' - The tags associated with the peer request.
--
-- 'clientToken', 'createConnectPeer_clientToken' - The client token associated with the request.
--
-- 'coreNetworkAddress', 'createConnectPeer_coreNetworkAddress' - A Connect peer core network address.
--
-- 'bgpOptions', 'createConnectPeer_bgpOptions' - The Connect peer BGP options.
--
-- 'connectAttachmentId', 'createConnectPeer_connectAttachmentId' - The ID of the connection attachment.
--
-- 'peerAddress', 'createConnectPeer_peerAddress' - The Connect peer address.
--
-- 'insideCidrBlocks', 'createConnectPeer_insideCidrBlocks' - The inside IP addresses used for BGP peering.
newCreateConnectPeer ::
  -- | 'connectAttachmentId'
  Prelude.Text ->
  -- | 'peerAddress'
  Prelude.Text ->
  CreateConnectPeer
newCreateConnectPeer
  pConnectAttachmentId_
  pPeerAddress_ =
    CreateConnectPeer'
      { tags = Prelude.Nothing,
        clientToken = Prelude.Nothing,
        coreNetworkAddress = Prelude.Nothing,
        bgpOptions = Prelude.Nothing,
        connectAttachmentId = pConnectAttachmentId_,
        peerAddress = pPeerAddress_,
        insideCidrBlocks = Prelude.mempty
      }

-- | The tags associated with the peer request.
createConnectPeer_tags :: Lens.Lens' CreateConnectPeer (Prelude.Maybe [Tag])
createConnectPeer_tags = Lens.lens (\CreateConnectPeer' {tags} -> tags) (\s@CreateConnectPeer' {} a -> s {tags = a} :: CreateConnectPeer) Prelude.. Lens.mapping Lens.coerced

-- | The client token associated with the request.
createConnectPeer_clientToken :: Lens.Lens' CreateConnectPeer (Prelude.Maybe Prelude.Text)
createConnectPeer_clientToken = Lens.lens (\CreateConnectPeer' {clientToken} -> clientToken) (\s@CreateConnectPeer' {} a -> s {clientToken = a} :: CreateConnectPeer)

-- | A Connect peer core network address.
createConnectPeer_coreNetworkAddress :: Lens.Lens' CreateConnectPeer (Prelude.Maybe Prelude.Text)
createConnectPeer_coreNetworkAddress = Lens.lens (\CreateConnectPeer' {coreNetworkAddress} -> coreNetworkAddress) (\s@CreateConnectPeer' {} a -> s {coreNetworkAddress = a} :: CreateConnectPeer)

-- | The Connect peer BGP options.
createConnectPeer_bgpOptions :: Lens.Lens' CreateConnectPeer (Prelude.Maybe BgpOptions)
createConnectPeer_bgpOptions = Lens.lens (\CreateConnectPeer' {bgpOptions} -> bgpOptions) (\s@CreateConnectPeer' {} a -> s {bgpOptions = a} :: CreateConnectPeer)

-- | The ID of the connection attachment.
createConnectPeer_connectAttachmentId :: Lens.Lens' CreateConnectPeer Prelude.Text
createConnectPeer_connectAttachmentId = Lens.lens (\CreateConnectPeer' {connectAttachmentId} -> connectAttachmentId) (\s@CreateConnectPeer' {} a -> s {connectAttachmentId = a} :: CreateConnectPeer)

-- | The Connect peer address.
createConnectPeer_peerAddress :: Lens.Lens' CreateConnectPeer Prelude.Text
createConnectPeer_peerAddress = Lens.lens (\CreateConnectPeer' {peerAddress} -> peerAddress) (\s@CreateConnectPeer' {} a -> s {peerAddress = a} :: CreateConnectPeer)

-- | The inside IP addresses used for BGP peering.
createConnectPeer_insideCidrBlocks :: Lens.Lens' CreateConnectPeer [Prelude.Text]
createConnectPeer_insideCidrBlocks = Lens.lens (\CreateConnectPeer' {insideCidrBlocks} -> insideCidrBlocks) (\s@CreateConnectPeer' {} a -> s {insideCidrBlocks = a} :: CreateConnectPeer) Prelude.. Lens.coerced

instance Core.AWSRequest CreateConnectPeer where
  type
    AWSResponse CreateConnectPeer =
      CreateConnectPeerResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateConnectPeerResponse'
            Prelude.<$> (x Core..?> "ConnectPeer")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateConnectPeer where
  hashWithSalt _salt CreateConnectPeer' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` clientToken
      `Prelude.hashWithSalt` coreNetworkAddress
      `Prelude.hashWithSalt` bgpOptions
      `Prelude.hashWithSalt` connectAttachmentId
      `Prelude.hashWithSalt` peerAddress
      `Prelude.hashWithSalt` insideCidrBlocks

instance Prelude.NFData CreateConnectPeer where
  rnf CreateConnectPeer' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf clientToken
      `Prelude.seq` Prelude.rnf coreNetworkAddress
      `Prelude.seq` Prelude.rnf bgpOptions
      `Prelude.seq` Prelude.rnf connectAttachmentId
      `Prelude.seq` Prelude.rnf peerAddress
      `Prelude.seq` Prelude.rnf insideCidrBlocks

instance Core.ToHeaders CreateConnectPeer where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateConnectPeer where
  toJSON CreateConnectPeer' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            ("ClientToken" Core..=) Prelude.<$> clientToken,
            ("CoreNetworkAddress" Core..=)
              Prelude.<$> coreNetworkAddress,
            ("BgpOptions" Core..=) Prelude.<$> bgpOptions,
            Prelude.Just
              ("ConnectAttachmentId" Core..= connectAttachmentId),
            Prelude.Just ("PeerAddress" Core..= peerAddress),
            Prelude.Just
              ("InsideCidrBlocks" Core..= insideCidrBlocks)
          ]
      )

instance Core.ToPath CreateConnectPeer where
  toPath = Prelude.const "/connect-peers"

instance Core.ToQuery CreateConnectPeer where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateConnectPeerResponse' smart constructor.
data CreateConnectPeerResponse = CreateConnectPeerResponse'
  { -- | The response to the request.
    connectPeer :: Prelude.Maybe ConnectPeer,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateConnectPeerResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'connectPeer', 'createConnectPeerResponse_connectPeer' - The response to the request.
--
-- 'httpStatus', 'createConnectPeerResponse_httpStatus' - The response's http status code.
newCreateConnectPeerResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateConnectPeerResponse
newCreateConnectPeerResponse pHttpStatus_ =
  CreateConnectPeerResponse'
    { connectPeer =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The response to the request.
createConnectPeerResponse_connectPeer :: Lens.Lens' CreateConnectPeerResponse (Prelude.Maybe ConnectPeer)
createConnectPeerResponse_connectPeer = Lens.lens (\CreateConnectPeerResponse' {connectPeer} -> connectPeer) (\s@CreateConnectPeerResponse' {} a -> s {connectPeer = a} :: CreateConnectPeerResponse)

-- | The response's http status code.
createConnectPeerResponse_httpStatus :: Lens.Lens' CreateConnectPeerResponse Prelude.Int
createConnectPeerResponse_httpStatus = Lens.lens (\CreateConnectPeerResponse' {httpStatus} -> httpStatus) (\s@CreateConnectPeerResponse' {} a -> s {httpStatus = a} :: CreateConnectPeerResponse)

instance Prelude.NFData CreateConnectPeerResponse where
  rnf CreateConnectPeerResponse' {..} =
    Prelude.rnf connectPeer
      `Prelude.seq` Prelude.rnf httpStatus
