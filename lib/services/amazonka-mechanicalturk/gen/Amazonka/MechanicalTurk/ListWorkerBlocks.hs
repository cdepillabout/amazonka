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
-- Module      : Amazonka.MechanicalTurk.ListWorkerBlocks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The @ListWorkersBlocks@ operation retrieves a list of Workers who are
-- blocked from working on your HITs.
--
-- This operation returns paginated results.
module Amazonka.MechanicalTurk.ListWorkerBlocks
  ( -- * Creating a Request
    ListWorkerBlocks (..),
    newListWorkerBlocks,

    -- * Request Lenses
    listWorkerBlocks_nextToken,
    listWorkerBlocks_maxResults,

    -- * Destructuring the Response
    ListWorkerBlocksResponse (..),
    newListWorkerBlocksResponse,

    -- * Response Lenses
    listWorkerBlocksResponse_nextToken,
    listWorkerBlocksResponse_numResults,
    listWorkerBlocksResponse_workerBlocks,
    listWorkerBlocksResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MechanicalTurk.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListWorkerBlocks' smart constructor.
data ListWorkerBlocks = ListWorkerBlocks'
  { -- | Pagination token
    nextToken :: Prelude.Maybe Prelude.Text,
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListWorkerBlocks' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listWorkerBlocks_nextToken' - Pagination token
--
-- 'maxResults', 'listWorkerBlocks_maxResults' - Undocumented member.
newListWorkerBlocks ::
  ListWorkerBlocks
newListWorkerBlocks =
  ListWorkerBlocks'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | Pagination token
listWorkerBlocks_nextToken :: Lens.Lens' ListWorkerBlocks (Prelude.Maybe Prelude.Text)
listWorkerBlocks_nextToken = Lens.lens (\ListWorkerBlocks' {nextToken} -> nextToken) (\s@ListWorkerBlocks' {} a -> s {nextToken = a} :: ListWorkerBlocks)

-- | Undocumented member.
listWorkerBlocks_maxResults :: Lens.Lens' ListWorkerBlocks (Prelude.Maybe Prelude.Natural)
listWorkerBlocks_maxResults = Lens.lens (\ListWorkerBlocks' {maxResults} -> maxResults) (\s@ListWorkerBlocks' {} a -> s {maxResults = a} :: ListWorkerBlocks)

instance Core.AWSPager ListWorkerBlocks where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listWorkerBlocksResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listWorkerBlocksResponse_workerBlocks
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listWorkerBlocks_nextToken
          Lens..~ rs
          Lens.^? listWorkerBlocksResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListWorkerBlocks where
  type
    AWSResponse ListWorkerBlocks =
      ListWorkerBlocksResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListWorkerBlocksResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "NumResults")
            Prelude.<*> (x Core..?> "WorkerBlocks" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListWorkerBlocks where
  hashWithSalt _salt ListWorkerBlocks' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData ListWorkerBlocks where
  rnf ListWorkerBlocks' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders ListWorkerBlocks where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "MTurkRequesterServiceV20170117.ListWorkerBlocks" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListWorkerBlocks where
  toJSON ListWorkerBlocks' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("MaxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath ListWorkerBlocks where
  toPath = Prelude.const "/"

instance Core.ToQuery ListWorkerBlocks where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListWorkerBlocksResponse' smart constructor.
data ListWorkerBlocksResponse = ListWorkerBlocksResponse'
  { nextToken :: Prelude.Maybe Prelude.Text,
    -- | The number of assignments on the page in the filtered results list,
    -- equivalent to the number of assignments returned by this call.
    numResults :: Prelude.Maybe Prelude.Int,
    -- | The list of WorkerBlocks, containing the collection of Worker IDs and
    -- reasons for blocking.
    workerBlocks :: Prelude.Maybe [WorkerBlock],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListWorkerBlocksResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listWorkerBlocksResponse_nextToken' - Undocumented member.
--
-- 'numResults', 'listWorkerBlocksResponse_numResults' - The number of assignments on the page in the filtered results list,
-- equivalent to the number of assignments returned by this call.
--
-- 'workerBlocks', 'listWorkerBlocksResponse_workerBlocks' - The list of WorkerBlocks, containing the collection of Worker IDs and
-- reasons for blocking.
--
-- 'httpStatus', 'listWorkerBlocksResponse_httpStatus' - The response's http status code.
newListWorkerBlocksResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListWorkerBlocksResponse
newListWorkerBlocksResponse pHttpStatus_ =
  ListWorkerBlocksResponse'
    { nextToken =
        Prelude.Nothing,
      numResults = Prelude.Nothing,
      workerBlocks = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
listWorkerBlocksResponse_nextToken :: Lens.Lens' ListWorkerBlocksResponse (Prelude.Maybe Prelude.Text)
listWorkerBlocksResponse_nextToken = Lens.lens (\ListWorkerBlocksResponse' {nextToken} -> nextToken) (\s@ListWorkerBlocksResponse' {} a -> s {nextToken = a} :: ListWorkerBlocksResponse)

-- | The number of assignments on the page in the filtered results list,
-- equivalent to the number of assignments returned by this call.
listWorkerBlocksResponse_numResults :: Lens.Lens' ListWorkerBlocksResponse (Prelude.Maybe Prelude.Int)
listWorkerBlocksResponse_numResults = Lens.lens (\ListWorkerBlocksResponse' {numResults} -> numResults) (\s@ListWorkerBlocksResponse' {} a -> s {numResults = a} :: ListWorkerBlocksResponse)

-- | The list of WorkerBlocks, containing the collection of Worker IDs and
-- reasons for blocking.
listWorkerBlocksResponse_workerBlocks :: Lens.Lens' ListWorkerBlocksResponse (Prelude.Maybe [WorkerBlock])
listWorkerBlocksResponse_workerBlocks = Lens.lens (\ListWorkerBlocksResponse' {workerBlocks} -> workerBlocks) (\s@ListWorkerBlocksResponse' {} a -> s {workerBlocks = a} :: ListWorkerBlocksResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listWorkerBlocksResponse_httpStatus :: Lens.Lens' ListWorkerBlocksResponse Prelude.Int
listWorkerBlocksResponse_httpStatus = Lens.lens (\ListWorkerBlocksResponse' {httpStatus} -> httpStatus) (\s@ListWorkerBlocksResponse' {} a -> s {httpStatus = a} :: ListWorkerBlocksResponse)

instance Prelude.NFData ListWorkerBlocksResponse where
  rnf ListWorkerBlocksResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf numResults
      `Prelude.seq` Prelude.rnf workerBlocks
      `Prelude.seq` Prelude.rnf httpStatus
