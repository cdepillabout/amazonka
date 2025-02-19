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
-- Module      : Amazonka.IoT.ListAuthorizers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the authorizers registered in your account.
--
-- Requires permission to access the
-- <https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions ListAuthorizers>
-- action.
--
-- This operation returns paginated results.
module Amazonka.IoT.ListAuthorizers
  ( -- * Creating a Request
    ListAuthorizers (..),
    newListAuthorizers,

    -- * Request Lenses
    listAuthorizers_marker,
    listAuthorizers_status,
    listAuthorizers_pageSize,
    listAuthorizers_ascendingOrder,

    -- * Destructuring the Response
    ListAuthorizersResponse (..),
    newListAuthorizersResponse,

    -- * Response Lenses
    listAuthorizersResponse_authorizers,
    listAuthorizersResponse_nextMarker,
    listAuthorizersResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IoT.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListAuthorizers' smart constructor.
data ListAuthorizers = ListAuthorizers'
  { -- | A marker used to get the next set of results.
    marker :: Prelude.Maybe Prelude.Text,
    -- | The status of the list authorizers request.
    status :: Prelude.Maybe AuthorizerStatus,
    -- | The maximum number of results to return at one time.
    pageSize :: Prelude.Maybe Prelude.Natural,
    -- | Return the list of authorizers in ascending alphabetical order.
    ascendingOrder :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListAuthorizers' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'marker', 'listAuthorizers_marker' - A marker used to get the next set of results.
--
-- 'status', 'listAuthorizers_status' - The status of the list authorizers request.
--
-- 'pageSize', 'listAuthorizers_pageSize' - The maximum number of results to return at one time.
--
-- 'ascendingOrder', 'listAuthorizers_ascendingOrder' - Return the list of authorizers in ascending alphabetical order.
newListAuthorizers ::
  ListAuthorizers
newListAuthorizers =
  ListAuthorizers'
    { marker = Prelude.Nothing,
      status = Prelude.Nothing,
      pageSize = Prelude.Nothing,
      ascendingOrder = Prelude.Nothing
    }

-- | A marker used to get the next set of results.
listAuthorizers_marker :: Lens.Lens' ListAuthorizers (Prelude.Maybe Prelude.Text)
listAuthorizers_marker = Lens.lens (\ListAuthorizers' {marker} -> marker) (\s@ListAuthorizers' {} a -> s {marker = a} :: ListAuthorizers)

-- | The status of the list authorizers request.
listAuthorizers_status :: Lens.Lens' ListAuthorizers (Prelude.Maybe AuthorizerStatus)
listAuthorizers_status = Lens.lens (\ListAuthorizers' {status} -> status) (\s@ListAuthorizers' {} a -> s {status = a} :: ListAuthorizers)

-- | The maximum number of results to return at one time.
listAuthorizers_pageSize :: Lens.Lens' ListAuthorizers (Prelude.Maybe Prelude.Natural)
listAuthorizers_pageSize = Lens.lens (\ListAuthorizers' {pageSize} -> pageSize) (\s@ListAuthorizers' {} a -> s {pageSize = a} :: ListAuthorizers)

-- | Return the list of authorizers in ascending alphabetical order.
listAuthorizers_ascendingOrder :: Lens.Lens' ListAuthorizers (Prelude.Maybe Prelude.Bool)
listAuthorizers_ascendingOrder = Lens.lens (\ListAuthorizers' {ascendingOrder} -> ascendingOrder) (\s@ListAuthorizers' {} a -> s {ascendingOrder = a} :: ListAuthorizers)

instance Core.AWSPager ListAuthorizers where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listAuthorizersResponse_nextMarker
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listAuthorizersResponse_authorizers
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listAuthorizers_marker
          Lens..~ rs
          Lens.^? listAuthorizersResponse_nextMarker
            Prelude.. Lens._Just

instance Core.AWSRequest ListAuthorizers where
  type
    AWSResponse ListAuthorizers =
      ListAuthorizersResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListAuthorizersResponse'
            Prelude.<$> (x Core..?> "authorizers" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "nextMarker")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListAuthorizers where
  hashWithSalt _salt ListAuthorizers' {..} =
    _salt `Prelude.hashWithSalt` marker
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` pageSize
      `Prelude.hashWithSalt` ascendingOrder

instance Prelude.NFData ListAuthorizers where
  rnf ListAuthorizers' {..} =
    Prelude.rnf marker
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf pageSize
      `Prelude.seq` Prelude.rnf ascendingOrder

instance Core.ToHeaders ListAuthorizers where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath ListAuthorizers where
  toPath = Prelude.const "/authorizers/"

instance Core.ToQuery ListAuthorizers where
  toQuery ListAuthorizers' {..} =
    Prelude.mconcat
      [ "marker" Core.=: marker,
        "status" Core.=: status,
        "pageSize" Core.=: pageSize,
        "isAscendingOrder" Core.=: ascendingOrder
      ]

-- | /See:/ 'newListAuthorizersResponse' smart constructor.
data ListAuthorizersResponse = ListAuthorizersResponse'
  { -- | The authorizers.
    authorizers :: Prelude.Maybe [AuthorizerSummary],
    -- | A marker used to get the next set of results.
    nextMarker :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListAuthorizersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'authorizers', 'listAuthorizersResponse_authorizers' - The authorizers.
--
-- 'nextMarker', 'listAuthorizersResponse_nextMarker' - A marker used to get the next set of results.
--
-- 'httpStatus', 'listAuthorizersResponse_httpStatus' - The response's http status code.
newListAuthorizersResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListAuthorizersResponse
newListAuthorizersResponse pHttpStatus_ =
  ListAuthorizersResponse'
    { authorizers =
        Prelude.Nothing,
      nextMarker = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The authorizers.
listAuthorizersResponse_authorizers :: Lens.Lens' ListAuthorizersResponse (Prelude.Maybe [AuthorizerSummary])
listAuthorizersResponse_authorizers = Lens.lens (\ListAuthorizersResponse' {authorizers} -> authorizers) (\s@ListAuthorizersResponse' {} a -> s {authorizers = a} :: ListAuthorizersResponse) Prelude.. Lens.mapping Lens.coerced

-- | A marker used to get the next set of results.
listAuthorizersResponse_nextMarker :: Lens.Lens' ListAuthorizersResponse (Prelude.Maybe Prelude.Text)
listAuthorizersResponse_nextMarker = Lens.lens (\ListAuthorizersResponse' {nextMarker} -> nextMarker) (\s@ListAuthorizersResponse' {} a -> s {nextMarker = a} :: ListAuthorizersResponse)

-- | The response's http status code.
listAuthorizersResponse_httpStatus :: Lens.Lens' ListAuthorizersResponse Prelude.Int
listAuthorizersResponse_httpStatus = Lens.lens (\ListAuthorizersResponse' {httpStatus} -> httpStatus) (\s@ListAuthorizersResponse' {} a -> s {httpStatus = a} :: ListAuthorizersResponse)

instance Prelude.NFData ListAuthorizersResponse where
  rnf ListAuthorizersResponse' {..} =
    Prelude.rnf authorizers
      `Prelude.seq` Prelude.rnf nextMarker
      `Prelude.seq` Prelude.rnf httpStatus
