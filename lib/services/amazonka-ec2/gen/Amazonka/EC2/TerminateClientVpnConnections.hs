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
-- Module      : Amazonka.EC2.TerminateClientVpnConnections
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Terminates active Client VPN endpoint connections. This action can be
-- used to terminate a specific client connection, or up to five
-- connections established by a specific user.
module Amazonka.EC2.TerminateClientVpnConnections
  ( -- * Creating a Request
    TerminateClientVpnConnections (..),
    newTerminateClientVpnConnections,

    -- * Request Lenses
    terminateClientVpnConnections_username,
    terminateClientVpnConnections_connectionId,
    terminateClientVpnConnections_dryRun,
    terminateClientVpnConnections_clientVpnEndpointId,

    -- * Destructuring the Response
    TerminateClientVpnConnectionsResponse (..),
    newTerminateClientVpnConnectionsResponse,

    -- * Response Lenses
    terminateClientVpnConnectionsResponse_connectionStatuses,
    terminateClientVpnConnectionsResponse_username,
    terminateClientVpnConnectionsResponse_clientVpnEndpointId,
    terminateClientVpnConnectionsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newTerminateClientVpnConnections' smart constructor.
data TerminateClientVpnConnections = TerminateClientVpnConnections'
  { -- | The name of the user who initiated the connection. Use this option to
    -- terminate all active connections for the specified user. This option can
    -- only be used if the user has established up to five connections.
    username :: Prelude.Maybe Prelude.Text,
    -- | The ID of the client connection to be terminated.
    connectionId :: Prelude.Maybe Prelude.Text,
    -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | The ID of the Client VPN endpoint to which the client is connected.
    clientVpnEndpointId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TerminateClientVpnConnections' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'username', 'terminateClientVpnConnections_username' - The name of the user who initiated the connection. Use this option to
-- terminate all active connections for the specified user. This option can
-- only be used if the user has established up to five connections.
--
-- 'connectionId', 'terminateClientVpnConnections_connectionId' - The ID of the client connection to be terminated.
--
-- 'dryRun', 'terminateClientVpnConnections_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'clientVpnEndpointId', 'terminateClientVpnConnections_clientVpnEndpointId' - The ID of the Client VPN endpoint to which the client is connected.
newTerminateClientVpnConnections ::
  -- | 'clientVpnEndpointId'
  Prelude.Text ->
  TerminateClientVpnConnections
newTerminateClientVpnConnections
  pClientVpnEndpointId_ =
    TerminateClientVpnConnections'
      { username =
          Prelude.Nothing,
        connectionId = Prelude.Nothing,
        dryRun = Prelude.Nothing,
        clientVpnEndpointId = pClientVpnEndpointId_
      }

-- | The name of the user who initiated the connection. Use this option to
-- terminate all active connections for the specified user. This option can
-- only be used if the user has established up to five connections.
terminateClientVpnConnections_username :: Lens.Lens' TerminateClientVpnConnections (Prelude.Maybe Prelude.Text)
terminateClientVpnConnections_username = Lens.lens (\TerminateClientVpnConnections' {username} -> username) (\s@TerminateClientVpnConnections' {} a -> s {username = a} :: TerminateClientVpnConnections)

-- | The ID of the client connection to be terminated.
terminateClientVpnConnections_connectionId :: Lens.Lens' TerminateClientVpnConnections (Prelude.Maybe Prelude.Text)
terminateClientVpnConnections_connectionId = Lens.lens (\TerminateClientVpnConnections' {connectionId} -> connectionId) (\s@TerminateClientVpnConnections' {} a -> s {connectionId = a} :: TerminateClientVpnConnections)

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
terminateClientVpnConnections_dryRun :: Lens.Lens' TerminateClientVpnConnections (Prelude.Maybe Prelude.Bool)
terminateClientVpnConnections_dryRun = Lens.lens (\TerminateClientVpnConnections' {dryRun} -> dryRun) (\s@TerminateClientVpnConnections' {} a -> s {dryRun = a} :: TerminateClientVpnConnections)

-- | The ID of the Client VPN endpoint to which the client is connected.
terminateClientVpnConnections_clientVpnEndpointId :: Lens.Lens' TerminateClientVpnConnections Prelude.Text
terminateClientVpnConnections_clientVpnEndpointId = Lens.lens (\TerminateClientVpnConnections' {clientVpnEndpointId} -> clientVpnEndpointId) (\s@TerminateClientVpnConnections' {} a -> s {clientVpnEndpointId = a} :: TerminateClientVpnConnections)

instance
  Core.AWSRequest
    TerminateClientVpnConnections
  where
  type
    AWSResponse TerminateClientVpnConnections =
      TerminateClientVpnConnectionsResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          TerminateClientVpnConnectionsResponse'
            Prelude.<$> ( x Core..@? "connectionStatuses"
                            Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "item")
                        )
            Prelude.<*> (x Core..@? "username")
            Prelude.<*> (x Core..@? "clientVpnEndpointId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    TerminateClientVpnConnections
  where
  hashWithSalt _salt TerminateClientVpnConnections' {..} =
    _salt `Prelude.hashWithSalt` username
      `Prelude.hashWithSalt` connectionId
      `Prelude.hashWithSalt` dryRun
      `Prelude.hashWithSalt` clientVpnEndpointId

instance Prelude.NFData TerminateClientVpnConnections where
  rnf TerminateClientVpnConnections' {..} =
    Prelude.rnf username
      `Prelude.seq` Prelude.rnf connectionId
      `Prelude.seq` Prelude.rnf dryRun
      `Prelude.seq` Prelude.rnf clientVpnEndpointId

instance Core.ToHeaders TerminateClientVpnConnections where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath TerminateClientVpnConnections where
  toPath = Prelude.const "/"

instance Core.ToQuery TerminateClientVpnConnections where
  toQuery TerminateClientVpnConnections' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ( "TerminateClientVpnConnections" ::
                      Prelude.ByteString
                  ),
        "Version"
          Core.=: ("2016-11-15" :: Prelude.ByteString),
        "Username" Core.=: username,
        "ConnectionId" Core.=: connectionId,
        "DryRun" Core.=: dryRun,
        "ClientVpnEndpointId" Core.=: clientVpnEndpointId
      ]

-- | /See:/ 'newTerminateClientVpnConnectionsResponse' smart constructor.
data TerminateClientVpnConnectionsResponse = TerminateClientVpnConnectionsResponse'
  { -- | The current state of the client connections.
    connectionStatuses :: Prelude.Maybe [TerminateConnectionStatus],
    -- | The user who established the terminated client connections.
    username :: Prelude.Maybe Prelude.Text,
    -- | The ID of the Client VPN endpoint.
    clientVpnEndpointId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TerminateClientVpnConnectionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'connectionStatuses', 'terminateClientVpnConnectionsResponse_connectionStatuses' - The current state of the client connections.
--
-- 'username', 'terminateClientVpnConnectionsResponse_username' - The user who established the terminated client connections.
--
-- 'clientVpnEndpointId', 'terminateClientVpnConnectionsResponse_clientVpnEndpointId' - The ID of the Client VPN endpoint.
--
-- 'httpStatus', 'terminateClientVpnConnectionsResponse_httpStatus' - The response's http status code.
newTerminateClientVpnConnectionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  TerminateClientVpnConnectionsResponse
newTerminateClientVpnConnectionsResponse pHttpStatus_ =
  TerminateClientVpnConnectionsResponse'
    { connectionStatuses =
        Prelude.Nothing,
      username = Prelude.Nothing,
      clientVpnEndpointId =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The current state of the client connections.
terminateClientVpnConnectionsResponse_connectionStatuses :: Lens.Lens' TerminateClientVpnConnectionsResponse (Prelude.Maybe [TerminateConnectionStatus])
terminateClientVpnConnectionsResponse_connectionStatuses = Lens.lens (\TerminateClientVpnConnectionsResponse' {connectionStatuses} -> connectionStatuses) (\s@TerminateClientVpnConnectionsResponse' {} a -> s {connectionStatuses = a} :: TerminateClientVpnConnectionsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The user who established the terminated client connections.
terminateClientVpnConnectionsResponse_username :: Lens.Lens' TerminateClientVpnConnectionsResponse (Prelude.Maybe Prelude.Text)
terminateClientVpnConnectionsResponse_username = Lens.lens (\TerminateClientVpnConnectionsResponse' {username} -> username) (\s@TerminateClientVpnConnectionsResponse' {} a -> s {username = a} :: TerminateClientVpnConnectionsResponse)

-- | The ID of the Client VPN endpoint.
terminateClientVpnConnectionsResponse_clientVpnEndpointId :: Lens.Lens' TerminateClientVpnConnectionsResponse (Prelude.Maybe Prelude.Text)
terminateClientVpnConnectionsResponse_clientVpnEndpointId = Lens.lens (\TerminateClientVpnConnectionsResponse' {clientVpnEndpointId} -> clientVpnEndpointId) (\s@TerminateClientVpnConnectionsResponse' {} a -> s {clientVpnEndpointId = a} :: TerminateClientVpnConnectionsResponse)

-- | The response's http status code.
terminateClientVpnConnectionsResponse_httpStatus :: Lens.Lens' TerminateClientVpnConnectionsResponse Prelude.Int
terminateClientVpnConnectionsResponse_httpStatus = Lens.lens (\TerminateClientVpnConnectionsResponse' {httpStatus} -> httpStatus) (\s@TerminateClientVpnConnectionsResponse' {} a -> s {httpStatus = a} :: TerminateClientVpnConnectionsResponse)

instance
  Prelude.NFData
    TerminateClientVpnConnectionsResponse
  where
  rnf TerminateClientVpnConnectionsResponse' {..} =
    Prelude.rnf connectionStatuses
      `Prelude.seq` Prelude.rnf username
      `Prelude.seq` Prelude.rnf clientVpnEndpointId
      `Prelude.seq` Prelude.rnf httpStatus
