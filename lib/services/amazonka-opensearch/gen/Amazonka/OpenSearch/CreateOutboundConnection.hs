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
-- Module      : Amazonka.OpenSearch.CreateOutboundConnection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new cross-cluster connection from a local OpenSearch domain to
-- a remote OpenSearch domain.
module Amazonka.OpenSearch.CreateOutboundConnection
  ( -- * Creating a Request
    CreateOutboundConnection (..),
    newCreateOutboundConnection,

    -- * Request Lenses
    createOutboundConnection_localDomainInfo,
    createOutboundConnection_remoteDomainInfo,
    createOutboundConnection_connectionAlias,

    -- * Destructuring the Response
    CreateOutboundConnectionResponse (..),
    newCreateOutboundConnectionResponse,

    -- * Response Lenses
    createOutboundConnectionResponse_connectionAlias,
    createOutboundConnectionResponse_remoteDomainInfo,
    createOutboundConnectionResponse_connectionId,
    createOutboundConnectionResponse_localDomainInfo,
    createOutboundConnectionResponse_connectionStatus,
    createOutboundConnectionResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.OpenSearch.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Container for the parameters to the @ CreateOutboundConnection @
-- operation.
--
-- /See:/ 'newCreateOutboundConnection' smart constructor.
data CreateOutboundConnection = CreateOutboundConnection'
  { -- | The @ AWSDomainInformation @ for the local OpenSearch domain.
    localDomainInfo :: DomainInformationContainer,
    -- | The @ AWSDomainInformation @ for the remote OpenSearch domain.
    remoteDomainInfo :: DomainInformationContainer,
    -- | The connection alias used used by the customer for this cross-cluster
    -- connection.
    connectionAlias :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateOutboundConnection' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'localDomainInfo', 'createOutboundConnection_localDomainInfo' - The @ AWSDomainInformation @ for the local OpenSearch domain.
--
-- 'remoteDomainInfo', 'createOutboundConnection_remoteDomainInfo' - The @ AWSDomainInformation @ for the remote OpenSearch domain.
--
-- 'connectionAlias', 'createOutboundConnection_connectionAlias' - The connection alias used used by the customer for this cross-cluster
-- connection.
newCreateOutboundConnection ::
  -- | 'localDomainInfo'
  DomainInformationContainer ->
  -- | 'remoteDomainInfo'
  DomainInformationContainer ->
  -- | 'connectionAlias'
  Prelude.Text ->
  CreateOutboundConnection
newCreateOutboundConnection
  pLocalDomainInfo_
  pRemoteDomainInfo_
  pConnectionAlias_ =
    CreateOutboundConnection'
      { localDomainInfo =
          pLocalDomainInfo_,
        remoteDomainInfo = pRemoteDomainInfo_,
        connectionAlias = pConnectionAlias_
      }

-- | The @ AWSDomainInformation @ for the local OpenSearch domain.
createOutboundConnection_localDomainInfo :: Lens.Lens' CreateOutboundConnection DomainInformationContainer
createOutboundConnection_localDomainInfo = Lens.lens (\CreateOutboundConnection' {localDomainInfo} -> localDomainInfo) (\s@CreateOutboundConnection' {} a -> s {localDomainInfo = a} :: CreateOutboundConnection)

-- | The @ AWSDomainInformation @ for the remote OpenSearch domain.
createOutboundConnection_remoteDomainInfo :: Lens.Lens' CreateOutboundConnection DomainInformationContainer
createOutboundConnection_remoteDomainInfo = Lens.lens (\CreateOutboundConnection' {remoteDomainInfo} -> remoteDomainInfo) (\s@CreateOutboundConnection' {} a -> s {remoteDomainInfo = a} :: CreateOutboundConnection)

-- | The connection alias used used by the customer for this cross-cluster
-- connection.
createOutboundConnection_connectionAlias :: Lens.Lens' CreateOutboundConnection Prelude.Text
createOutboundConnection_connectionAlias = Lens.lens (\CreateOutboundConnection' {connectionAlias} -> connectionAlias) (\s@CreateOutboundConnection' {} a -> s {connectionAlias = a} :: CreateOutboundConnection)

instance Core.AWSRequest CreateOutboundConnection where
  type
    AWSResponse CreateOutboundConnection =
      CreateOutboundConnectionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateOutboundConnectionResponse'
            Prelude.<$> (x Core..?> "ConnectionAlias")
            Prelude.<*> (x Core..?> "RemoteDomainInfo")
            Prelude.<*> (x Core..?> "ConnectionId")
            Prelude.<*> (x Core..?> "LocalDomainInfo")
            Prelude.<*> (x Core..?> "ConnectionStatus")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateOutboundConnection where
  hashWithSalt _salt CreateOutboundConnection' {..} =
    _salt `Prelude.hashWithSalt` localDomainInfo
      `Prelude.hashWithSalt` remoteDomainInfo
      `Prelude.hashWithSalt` connectionAlias

instance Prelude.NFData CreateOutboundConnection where
  rnf CreateOutboundConnection' {..} =
    Prelude.rnf localDomainInfo
      `Prelude.seq` Prelude.rnf remoteDomainInfo
      `Prelude.seq` Prelude.rnf connectionAlias

instance Core.ToHeaders CreateOutboundConnection where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON CreateOutboundConnection where
  toJSON CreateOutboundConnection' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("LocalDomainInfo" Core..= localDomainInfo),
            Prelude.Just
              ("RemoteDomainInfo" Core..= remoteDomainInfo),
            Prelude.Just
              ("ConnectionAlias" Core..= connectionAlias)
          ]
      )

instance Core.ToPath CreateOutboundConnection where
  toPath =
    Prelude.const
      "/2021-01-01/opensearch/cc/outboundConnection"

instance Core.ToQuery CreateOutboundConnection where
  toQuery = Prelude.const Prelude.mempty

-- | The result of a @ CreateOutboundConnection @ request. Contains the
-- details about the newly created cross-cluster connection.
--
-- /See:/ 'newCreateOutboundConnectionResponse' smart constructor.
data CreateOutboundConnectionResponse = CreateOutboundConnectionResponse'
  { -- | The connection alias provided during the create connection request.
    connectionAlias :: Prelude.Maybe Prelude.Text,
    -- | The @ AWSDomainInformation @ for the remote OpenSearch domain.
    remoteDomainInfo :: Prelude.Maybe DomainInformationContainer,
    -- | The unique ID for the created outbound connection, which is used for
    -- subsequent operations on the connection.
    connectionId :: Prelude.Maybe Prelude.Text,
    -- | The @ AWSDomainInformation @ for the local OpenSearch domain.
    localDomainInfo :: Prelude.Maybe DomainInformationContainer,
    -- | The @ OutboundConnectionStatus @ for the newly created connection.
    connectionStatus :: Prelude.Maybe OutboundConnectionStatus,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateOutboundConnectionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'connectionAlias', 'createOutboundConnectionResponse_connectionAlias' - The connection alias provided during the create connection request.
--
-- 'remoteDomainInfo', 'createOutboundConnectionResponse_remoteDomainInfo' - The @ AWSDomainInformation @ for the remote OpenSearch domain.
--
-- 'connectionId', 'createOutboundConnectionResponse_connectionId' - The unique ID for the created outbound connection, which is used for
-- subsequent operations on the connection.
--
-- 'localDomainInfo', 'createOutboundConnectionResponse_localDomainInfo' - The @ AWSDomainInformation @ for the local OpenSearch domain.
--
-- 'connectionStatus', 'createOutboundConnectionResponse_connectionStatus' - The @ OutboundConnectionStatus @ for the newly created connection.
--
-- 'httpStatus', 'createOutboundConnectionResponse_httpStatus' - The response's http status code.
newCreateOutboundConnectionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateOutboundConnectionResponse
newCreateOutboundConnectionResponse pHttpStatus_ =
  CreateOutboundConnectionResponse'
    { connectionAlias =
        Prelude.Nothing,
      remoteDomainInfo = Prelude.Nothing,
      connectionId = Prelude.Nothing,
      localDomainInfo = Prelude.Nothing,
      connectionStatus = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The connection alias provided during the create connection request.
createOutboundConnectionResponse_connectionAlias :: Lens.Lens' CreateOutboundConnectionResponse (Prelude.Maybe Prelude.Text)
createOutboundConnectionResponse_connectionAlias = Lens.lens (\CreateOutboundConnectionResponse' {connectionAlias} -> connectionAlias) (\s@CreateOutboundConnectionResponse' {} a -> s {connectionAlias = a} :: CreateOutboundConnectionResponse)

-- | The @ AWSDomainInformation @ for the remote OpenSearch domain.
createOutboundConnectionResponse_remoteDomainInfo :: Lens.Lens' CreateOutboundConnectionResponse (Prelude.Maybe DomainInformationContainer)
createOutboundConnectionResponse_remoteDomainInfo = Lens.lens (\CreateOutboundConnectionResponse' {remoteDomainInfo} -> remoteDomainInfo) (\s@CreateOutboundConnectionResponse' {} a -> s {remoteDomainInfo = a} :: CreateOutboundConnectionResponse)

-- | The unique ID for the created outbound connection, which is used for
-- subsequent operations on the connection.
createOutboundConnectionResponse_connectionId :: Lens.Lens' CreateOutboundConnectionResponse (Prelude.Maybe Prelude.Text)
createOutboundConnectionResponse_connectionId = Lens.lens (\CreateOutboundConnectionResponse' {connectionId} -> connectionId) (\s@CreateOutboundConnectionResponse' {} a -> s {connectionId = a} :: CreateOutboundConnectionResponse)

-- | The @ AWSDomainInformation @ for the local OpenSearch domain.
createOutboundConnectionResponse_localDomainInfo :: Lens.Lens' CreateOutboundConnectionResponse (Prelude.Maybe DomainInformationContainer)
createOutboundConnectionResponse_localDomainInfo = Lens.lens (\CreateOutboundConnectionResponse' {localDomainInfo} -> localDomainInfo) (\s@CreateOutboundConnectionResponse' {} a -> s {localDomainInfo = a} :: CreateOutboundConnectionResponse)

-- | The @ OutboundConnectionStatus @ for the newly created connection.
createOutboundConnectionResponse_connectionStatus :: Lens.Lens' CreateOutboundConnectionResponse (Prelude.Maybe OutboundConnectionStatus)
createOutboundConnectionResponse_connectionStatus = Lens.lens (\CreateOutboundConnectionResponse' {connectionStatus} -> connectionStatus) (\s@CreateOutboundConnectionResponse' {} a -> s {connectionStatus = a} :: CreateOutboundConnectionResponse)

-- | The response's http status code.
createOutboundConnectionResponse_httpStatus :: Lens.Lens' CreateOutboundConnectionResponse Prelude.Int
createOutboundConnectionResponse_httpStatus = Lens.lens (\CreateOutboundConnectionResponse' {httpStatus} -> httpStatus) (\s@CreateOutboundConnectionResponse' {} a -> s {httpStatus = a} :: CreateOutboundConnectionResponse)

instance
  Prelude.NFData
    CreateOutboundConnectionResponse
  where
  rnf CreateOutboundConnectionResponse' {..} =
    Prelude.rnf connectionAlias
      `Prelude.seq` Prelude.rnf remoteDomainInfo
      `Prelude.seq` Prelude.rnf connectionId
      `Prelude.seq` Prelude.rnf localDomainInfo
      `Prelude.seq` Prelude.rnf connectionStatus
      `Prelude.seq` Prelude.rnf httpStatus
