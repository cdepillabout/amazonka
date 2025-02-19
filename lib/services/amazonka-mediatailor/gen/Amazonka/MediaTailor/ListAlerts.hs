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
-- Module      : Amazonka.MediaTailor.ListAlerts
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of alerts for the given resource.
--
-- This operation returns paginated results.
module Amazonka.MediaTailor.ListAlerts
  ( -- * Creating a Request
    ListAlerts (..),
    newListAlerts,

    -- * Request Lenses
    listAlerts_nextToken,
    listAlerts_maxResults,
    listAlerts_resourceArn,

    -- * Destructuring the Response
    ListAlertsResponse (..),
    newListAlertsResponse,

    -- * Response Lenses
    listAlertsResponse_items,
    listAlertsResponse_nextToken,
    listAlertsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaTailor.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListAlerts' smart constructor.
data ListAlerts = ListAlerts'
  { -- | Pagination token from the GET list request. Use the token to fetch the
    -- next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Upper bound on number of records to return. The maximum number of
    -- results is 100.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The Amazon Resource Name (ARN) of the resource.
    resourceArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListAlerts' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listAlerts_nextToken' - Pagination token from the GET list request. Use the token to fetch the
-- next page of results.
--
-- 'maxResults', 'listAlerts_maxResults' - Upper bound on number of records to return. The maximum number of
-- results is 100.
--
-- 'resourceArn', 'listAlerts_resourceArn' - The Amazon Resource Name (ARN) of the resource.
newListAlerts ::
  -- | 'resourceArn'
  Prelude.Text ->
  ListAlerts
newListAlerts pResourceArn_ =
  ListAlerts'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      resourceArn = pResourceArn_
    }

-- | Pagination token from the GET list request. Use the token to fetch the
-- next page of results.
listAlerts_nextToken :: Lens.Lens' ListAlerts (Prelude.Maybe Prelude.Text)
listAlerts_nextToken = Lens.lens (\ListAlerts' {nextToken} -> nextToken) (\s@ListAlerts' {} a -> s {nextToken = a} :: ListAlerts)

-- | Upper bound on number of records to return. The maximum number of
-- results is 100.
listAlerts_maxResults :: Lens.Lens' ListAlerts (Prelude.Maybe Prelude.Natural)
listAlerts_maxResults = Lens.lens (\ListAlerts' {maxResults} -> maxResults) (\s@ListAlerts' {} a -> s {maxResults = a} :: ListAlerts)

-- | The Amazon Resource Name (ARN) of the resource.
listAlerts_resourceArn :: Lens.Lens' ListAlerts Prelude.Text
listAlerts_resourceArn = Lens.lens (\ListAlerts' {resourceArn} -> resourceArn) (\s@ListAlerts' {} a -> s {resourceArn = a} :: ListAlerts)

instance Core.AWSPager ListAlerts where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listAlertsResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listAlertsResponse_items Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listAlerts_nextToken
          Lens..~ rs
          Lens.^? listAlertsResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListAlerts where
  type AWSResponse ListAlerts = ListAlertsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListAlertsResponse'
            Prelude.<$> (x Core..?> "Items" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListAlerts where
  hashWithSalt _salt ListAlerts' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` resourceArn

instance Prelude.NFData ListAlerts where
  rnf ListAlerts' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf resourceArn

instance Core.ToHeaders ListAlerts where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListAlerts where
  toPath = Prelude.const "/alerts"

instance Core.ToQuery ListAlerts where
  toQuery ListAlerts' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults,
        "resourceArn" Core.=: resourceArn
      ]

-- | /See:/ 'newListAlertsResponse' smart constructor.
data ListAlertsResponse = ListAlertsResponse'
  { -- | A list of alerts that are associated with this resource.
    items :: Prelude.Maybe [Alert],
    -- | Pagination token from the list request. Use the token to fetch the next
    -- page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListAlertsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'items', 'listAlertsResponse_items' - A list of alerts that are associated with this resource.
--
-- 'nextToken', 'listAlertsResponse_nextToken' - Pagination token from the list request. Use the token to fetch the next
-- page of results.
--
-- 'httpStatus', 'listAlertsResponse_httpStatus' - The response's http status code.
newListAlertsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListAlertsResponse
newListAlertsResponse pHttpStatus_ =
  ListAlertsResponse'
    { items = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of alerts that are associated with this resource.
listAlertsResponse_items :: Lens.Lens' ListAlertsResponse (Prelude.Maybe [Alert])
listAlertsResponse_items = Lens.lens (\ListAlertsResponse' {items} -> items) (\s@ListAlertsResponse' {} a -> s {items = a} :: ListAlertsResponse) Prelude.. Lens.mapping Lens.coerced

-- | Pagination token from the list request. Use the token to fetch the next
-- page of results.
listAlertsResponse_nextToken :: Lens.Lens' ListAlertsResponse (Prelude.Maybe Prelude.Text)
listAlertsResponse_nextToken = Lens.lens (\ListAlertsResponse' {nextToken} -> nextToken) (\s@ListAlertsResponse' {} a -> s {nextToken = a} :: ListAlertsResponse)

-- | The response's http status code.
listAlertsResponse_httpStatus :: Lens.Lens' ListAlertsResponse Prelude.Int
listAlertsResponse_httpStatus = Lens.lens (\ListAlertsResponse' {httpStatus} -> httpStatus) (\s@ListAlertsResponse' {} a -> s {httpStatus = a} :: ListAlertsResponse)

instance Prelude.NFData ListAlertsResponse where
  rnf ListAlertsResponse' {..} =
    Prelude.rnf items
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
