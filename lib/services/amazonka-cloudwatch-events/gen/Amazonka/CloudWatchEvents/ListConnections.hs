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
-- Module      : Amazonka.CloudWatchEvents.ListConnections
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of connections from the account.
module Amazonka.CloudWatchEvents.ListConnections
  ( -- * Creating a Request
    ListConnections (..),
    newListConnections,

    -- * Request Lenses
    listConnections_nextToken,
    listConnections_connectionState,
    listConnections_limit,
    listConnections_namePrefix,

    -- * Destructuring the Response
    ListConnectionsResponse (..),
    newListConnectionsResponse,

    -- * Response Lenses
    listConnectionsResponse_nextToken,
    listConnectionsResponse_connections,
    listConnectionsResponse_httpStatus,
  )
where

import Amazonka.CloudWatchEvents.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListConnections' smart constructor.
data ListConnections = ListConnections'
  { -- | The token returned by a previous call to retrieve the next set of
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The state of the connection.
    connectionState :: Prelude.Maybe ConnectionState,
    -- | The maximum number of connections to return.
    limit :: Prelude.Maybe Prelude.Natural,
    -- | A name prefix to filter results returned. Only connections with a name
    -- that starts with the prefix are returned.
    namePrefix :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListConnections' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listConnections_nextToken' - The token returned by a previous call to retrieve the next set of
-- results.
--
-- 'connectionState', 'listConnections_connectionState' - The state of the connection.
--
-- 'limit', 'listConnections_limit' - The maximum number of connections to return.
--
-- 'namePrefix', 'listConnections_namePrefix' - A name prefix to filter results returned. Only connections with a name
-- that starts with the prefix are returned.
newListConnections ::
  ListConnections
newListConnections =
  ListConnections'
    { nextToken = Prelude.Nothing,
      connectionState = Prelude.Nothing,
      limit = Prelude.Nothing,
      namePrefix = Prelude.Nothing
    }

-- | The token returned by a previous call to retrieve the next set of
-- results.
listConnections_nextToken :: Lens.Lens' ListConnections (Prelude.Maybe Prelude.Text)
listConnections_nextToken = Lens.lens (\ListConnections' {nextToken} -> nextToken) (\s@ListConnections' {} a -> s {nextToken = a} :: ListConnections)

-- | The state of the connection.
listConnections_connectionState :: Lens.Lens' ListConnections (Prelude.Maybe ConnectionState)
listConnections_connectionState = Lens.lens (\ListConnections' {connectionState} -> connectionState) (\s@ListConnections' {} a -> s {connectionState = a} :: ListConnections)

-- | The maximum number of connections to return.
listConnections_limit :: Lens.Lens' ListConnections (Prelude.Maybe Prelude.Natural)
listConnections_limit = Lens.lens (\ListConnections' {limit} -> limit) (\s@ListConnections' {} a -> s {limit = a} :: ListConnections)

-- | A name prefix to filter results returned. Only connections with a name
-- that starts with the prefix are returned.
listConnections_namePrefix :: Lens.Lens' ListConnections (Prelude.Maybe Prelude.Text)
listConnections_namePrefix = Lens.lens (\ListConnections' {namePrefix} -> namePrefix) (\s@ListConnections' {} a -> s {namePrefix = a} :: ListConnections)

instance Core.AWSRequest ListConnections where
  type
    AWSResponse ListConnections =
      ListConnectionsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListConnectionsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "Connections" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListConnections where
  hashWithSalt _salt ListConnections' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` connectionState
      `Prelude.hashWithSalt` limit
      `Prelude.hashWithSalt` namePrefix

instance Prelude.NFData ListConnections where
  rnf ListConnections' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf connectionState
      `Prelude.seq` Prelude.rnf limit
      `Prelude.seq` Prelude.rnf namePrefix

instance Core.ToHeaders ListConnections where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("AWSEvents.ListConnections" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListConnections where
  toJSON ListConnections' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("ConnectionState" Core..=)
              Prelude.<$> connectionState,
            ("Limit" Core..=) Prelude.<$> limit,
            ("NamePrefix" Core..=) Prelude.<$> namePrefix
          ]
      )

instance Core.ToPath ListConnections where
  toPath = Prelude.const "/"

instance Core.ToQuery ListConnections where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListConnectionsResponse' smart constructor.
data ListConnectionsResponse = ListConnectionsResponse'
  { -- | A token you can use in a subsequent request to retrieve the next set of
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | An array of connections objects that include details about the
    -- connections.
    connections :: Prelude.Maybe [Connection],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListConnectionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listConnectionsResponse_nextToken' - A token you can use in a subsequent request to retrieve the next set of
-- results.
--
-- 'connections', 'listConnectionsResponse_connections' - An array of connections objects that include details about the
-- connections.
--
-- 'httpStatus', 'listConnectionsResponse_httpStatus' - The response's http status code.
newListConnectionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListConnectionsResponse
newListConnectionsResponse pHttpStatus_ =
  ListConnectionsResponse'
    { nextToken =
        Prelude.Nothing,
      connections = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A token you can use in a subsequent request to retrieve the next set of
-- results.
listConnectionsResponse_nextToken :: Lens.Lens' ListConnectionsResponse (Prelude.Maybe Prelude.Text)
listConnectionsResponse_nextToken = Lens.lens (\ListConnectionsResponse' {nextToken} -> nextToken) (\s@ListConnectionsResponse' {} a -> s {nextToken = a} :: ListConnectionsResponse)

-- | An array of connections objects that include details about the
-- connections.
listConnectionsResponse_connections :: Lens.Lens' ListConnectionsResponse (Prelude.Maybe [Connection])
listConnectionsResponse_connections = Lens.lens (\ListConnectionsResponse' {connections} -> connections) (\s@ListConnectionsResponse' {} a -> s {connections = a} :: ListConnectionsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listConnectionsResponse_httpStatus :: Lens.Lens' ListConnectionsResponse Prelude.Int
listConnectionsResponse_httpStatus = Lens.lens (\ListConnectionsResponse' {httpStatus} -> httpStatus) (\s@ListConnectionsResponse' {} a -> s {httpStatus = a} :: ListConnectionsResponse)

instance Prelude.NFData ListConnectionsResponse where
  rnf ListConnectionsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf connections
      `Prelude.seq` Prelude.rnf httpStatus
