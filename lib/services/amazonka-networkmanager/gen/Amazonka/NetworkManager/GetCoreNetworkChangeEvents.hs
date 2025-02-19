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
-- Module      : Amazonka.NetworkManager.GetCoreNetworkChangeEvents
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a core network change event.
--
-- This operation returns paginated results.
module Amazonka.NetworkManager.GetCoreNetworkChangeEvents
  ( -- * Creating a Request
    GetCoreNetworkChangeEvents (..),
    newGetCoreNetworkChangeEvents,

    -- * Request Lenses
    getCoreNetworkChangeEvents_nextToken,
    getCoreNetworkChangeEvents_maxResults,
    getCoreNetworkChangeEvents_coreNetworkId,
    getCoreNetworkChangeEvents_policyVersionId,

    -- * Destructuring the Response
    GetCoreNetworkChangeEventsResponse (..),
    newGetCoreNetworkChangeEventsResponse,

    -- * Response Lenses
    getCoreNetworkChangeEventsResponse_nextToken,
    getCoreNetworkChangeEventsResponse_coreNetworkChangeEvents,
    getCoreNetworkChangeEventsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.NetworkManager.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetCoreNetworkChangeEvents' smart constructor.
data GetCoreNetworkChangeEvents = GetCoreNetworkChangeEvents'
  { -- | The token for the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The ID of a core network.
    coreNetworkId :: Prelude.Text,
    -- | The ID of the policy version.
    policyVersionId :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetCoreNetworkChangeEvents' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getCoreNetworkChangeEvents_nextToken' - The token for the next page of results.
--
-- 'maxResults', 'getCoreNetworkChangeEvents_maxResults' - The maximum number of results to return.
--
-- 'coreNetworkId', 'getCoreNetworkChangeEvents_coreNetworkId' - The ID of a core network.
--
-- 'policyVersionId', 'getCoreNetworkChangeEvents_policyVersionId' - The ID of the policy version.
newGetCoreNetworkChangeEvents ::
  -- | 'coreNetworkId'
  Prelude.Text ->
  -- | 'policyVersionId'
  Prelude.Int ->
  GetCoreNetworkChangeEvents
newGetCoreNetworkChangeEvents
  pCoreNetworkId_
  pPolicyVersionId_ =
    GetCoreNetworkChangeEvents'
      { nextToken =
          Prelude.Nothing,
        maxResults = Prelude.Nothing,
        coreNetworkId = pCoreNetworkId_,
        policyVersionId = pPolicyVersionId_
      }

-- | The token for the next page of results.
getCoreNetworkChangeEvents_nextToken :: Lens.Lens' GetCoreNetworkChangeEvents (Prelude.Maybe Prelude.Text)
getCoreNetworkChangeEvents_nextToken = Lens.lens (\GetCoreNetworkChangeEvents' {nextToken} -> nextToken) (\s@GetCoreNetworkChangeEvents' {} a -> s {nextToken = a} :: GetCoreNetworkChangeEvents)

-- | The maximum number of results to return.
getCoreNetworkChangeEvents_maxResults :: Lens.Lens' GetCoreNetworkChangeEvents (Prelude.Maybe Prelude.Natural)
getCoreNetworkChangeEvents_maxResults = Lens.lens (\GetCoreNetworkChangeEvents' {maxResults} -> maxResults) (\s@GetCoreNetworkChangeEvents' {} a -> s {maxResults = a} :: GetCoreNetworkChangeEvents)

-- | The ID of a core network.
getCoreNetworkChangeEvents_coreNetworkId :: Lens.Lens' GetCoreNetworkChangeEvents Prelude.Text
getCoreNetworkChangeEvents_coreNetworkId = Lens.lens (\GetCoreNetworkChangeEvents' {coreNetworkId} -> coreNetworkId) (\s@GetCoreNetworkChangeEvents' {} a -> s {coreNetworkId = a} :: GetCoreNetworkChangeEvents)

-- | The ID of the policy version.
getCoreNetworkChangeEvents_policyVersionId :: Lens.Lens' GetCoreNetworkChangeEvents Prelude.Int
getCoreNetworkChangeEvents_policyVersionId = Lens.lens (\GetCoreNetworkChangeEvents' {policyVersionId} -> policyVersionId) (\s@GetCoreNetworkChangeEvents' {} a -> s {policyVersionId = a} :: GetCoreNetworkChangeEvents)

instance Core.AWSPager GetCoreNetworkChangeEvents where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? getCoreNetworkChangeEventsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? getCoreNetworkChangeEventsResponse_coreNetworkChangeEvents
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& getCoreNetworkChangeEvents_nextToken
          Lens..~ rs
          Lens.^? getCoreNetworkChangeEventsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest GetCoreNetworkChangeEvents where
  type
    AWSResponse GetCoreNetworkChangeEvents =
      GetCoreNetworkChangeEventsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetCoreNetworkChangeEventsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> ( x Core..?> "CoreNetworkChangeEvents"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetCoreNetworkChangeEvents where
  hashWithSalt _salt GetCoreNetworkChangeEvents' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` coreNetworkId
      `Prelude.hashWithSalt` policyVersionId

instance Prelude.NFData GetCoreNetworkChangeEvents where
  rnf GetCoreNetworkChangeEvents' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf coreNetworkId
      `Prelude.seq` Prelude.rnf policyVersionId

instance Core.ToHeaders GetCoreNetworkChangeEvents where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetCoreNetworkChangeEvents where
  toPath GetCoreNetworkChangeEvents' {..} =
    Prelude.mconcat
      [ "/core-networks/",
        Core.toBS coreNetworkId,
        "/core-network-change-events/",
        Core.toBS policyVersionId
      ]

instance Core.ToQuery GetCoreNetworkChangeEvents where
  toQuery GetCoreNetworkChangeEvents' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newGetCoreNetworkChangeEventsResponse' smart constructor.
data GetCoreNetworkChangeEventsResponse = GetCoreNetworkChangeEventsResponse'
  { -- | The token for the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response to @GetCoreNetworkChangeEventsRequest@.
    coreNetworkChangeEvents :: Prelude.Maybe [CoreNetworkChangeEvent],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetCoreNetworkChangeEventsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getCoreNetworkChangeEventsResponse_nextToken' - The token for the next page of results.
--
-- 'coreNetworkChangeEvents', 'getCoreNetworkChangeEventsResponse_coreNetworkChangeEvents' - The response to @GetCoreNetworkChangeEventsRequest@.
--
-- 'httpStatus', 'getCoreNetworkChangeEventsResponse_httpStatus' - The response's http status code.
newGetCoreNetworkChangeEventsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetCoreNetworkChangeEventsResponse
newGetCoreNetworkChangeEventsResponse pHttpStatus_ =
  GetCoreNetworkChangeEventsResponse'
    { nextToken =
        Prelude.Nothing,
      coreNetworkChangeEvents =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token for the next page of results.
getCoreNetworkChangeEventsResponse_nextToken :: Lens.Lens' GetCoreNetworkChangeEventsResponse (Prelude.Maybe Prelude.Text)
getCoreNetworkChangeEventsResponse_nextToken = Lens.lens (\GetCoreNetworkChangeEventsResponse' {nextToken} -> nextToken) (\s@GetCoreNetworkChangeEventsResponse' {} a -> s {nextToken = a} :: GetCoreNetworkChangeEventsResponse)

-- | The response to @GetCoreNetworkChangeEventsRequest@.
getCoreNetworkChangeEventsResponse_coreNetworkChangeEvents :: Lens.Lens' GetCoreNetworkChangeEventsResponse (Prelude.Maybe [CoreNetworkChangeEvent])
getCoreNetworkChangeEventsResponse_coreNetworkChangeEvents = Lens.lens (\GetCoreNetworkChangeEventsResponse' {coreNetworkChangeEvents} -> coreNetworkChangeEvents) (\s@GetCoreNetworkChangeEventsResponse' {} a -> s {coreNetworkChangeEvents = a} :: GetCoreNetworkChangeEventsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
getCoreNetworkChangeEventsResponse_httpStatus :: Lens.Lens' GetCoreNetworkChangeEventsResponse Prelude.Int
getCoreNetworkChangeEventsResponse_httpStatus = Lens.lens (\GetCoreNetworkChangeEventsResponse' {httpStatus} -> httpStatus) (\s@GetCoreNetworkChangeEventsResponse' {} a -> s {httpStatus = a} :: GetCoreNetworkChangeEventsResponse)

instance
  Prelude.NFData
    GetCoreNetworkChangeEventsResponse
  where
  rnf GetCoreNetworkChangeEventsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf coreNetworkChangeEvents
      `Prelude.seq` Prelude.rnf httpStatus
