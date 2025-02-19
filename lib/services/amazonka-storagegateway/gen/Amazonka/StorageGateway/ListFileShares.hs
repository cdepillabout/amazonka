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
-- Module      : Amazonka.StorageGateway.ListFileShares
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of the file shares for a specific S3 File Gateway, or the
-- list of file shares that belong to the calling user account. This
-- operation is only supported for S3 File Gateways.
--
-- This operation returns paginated results.
module Amazonka.StorageGateway.ListFileShares
  ( -- * Creating a Request
    ListFileShares (..),
    newListFileShares,

    -- * Request Lenses
    listFileShares_marker,
    listFileShares_gatewayARN,
    listFileShares_limit,

    -- * Destructuring the Response
    ListFileSharesResponse (..),
    newListFileSharesResponse,

    -- * Response Lenses
    listFileSharesResponse_marker,
    listFileSharesResponse_fileShareInfoList,
    listFileSharesResponse_nextMarker,
    listFileSharesResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.StorageGateway.Types

-- | ListFileShareInput
--
-- /See:/ 'newListFileShares' smart constructor.
data ListFileShares = ListFileShares'
  { -- | Opaque pagination token returned from a previous ListFileShares
    -- operation. If present, @Marker@ specifies where to continue the list
    -- from after a previous call to ListFileShares. Optional.
    marker :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the gateway whose file shares you want
    -- to list. If this field is not present, all file shares under your
    -- account are listed.
    gatewayARN :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of file shares to return in the response. The value
    -- must be an integer with a value greater than zero. Optional.
    limit :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListFileShares' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'marker', 'listFileShares_marker' - Opaque pagination token returned from a previous ListFileShares
-- operation. If present, @Marker@ specifies where to continue the list
-- from after a previous call to ListFileShares. Optional.
--
-- 'gatewayARN', 'listFileShares_gatewayARN' - The Amazon Resource Name (ARN) of the gateway whose file shares you want
-- to list. If this field is not present, all file shares under your
-- account are listed.
--
-- 'limit', 'listFileShares_limit' - The maximum number of file shares to return in the response. The value
-- must be an integer with a value greater than zero. Optional.
newListFileShares ::
  ListFileShares
newListFileShares =
  ListFileShares'
    { marker = Prelude.Nothing,
      gatewayARN = Prelude.Nothing,
      limit = Prelude.Nothing
    }

-- | Opaque pagination token returned from a previous ListFileShares
-- operation. If present, @Marker@ specifies where to continue the list
-- from after a previous call to ListFileShares. Optional.
listFileShares_marker :: Lens.Lens' ListFileShares (Prelude.Maybe Prelude.Text)
listFileShares_marker = Lens.lens (\ListFileShares' {marker} -> marker) (\s@ListFileShares' {} a -> s {marker = a} :: ListFileShares)

-- | The Amazon Resource Name (ARN) of the gateway whose file shares you want
-- to list. If this field is not present, all file shares under your
-- account are listed.
listFileShares_gatewayARN :: Lens.Lens' ListFileShares (Prelude.Maybe Prelude.Text)
listFileShares_gatewayARN = Lens.lens (\ListFileShares' {gatewayARN} -> gatewayARN) (\s@ListFileShares' {} a -> s {gatewayARN = a} :: ListFileShares)

-- | The maximum number of file shares to return in the response. The value
-- must be an integer with a value greater than zero. Optional.
listFileShares_limit :: Lens.Lens' ListFileShares (Prelude.Maybe Prelude.Natural)
listFileShares_limit = Lens.lens (\ListFileShares' {limit} -> limit) (\s@ListFileShares' {} a -> s {limit = a} :: ListFileShares)

instance Core.AWSPager ListFileShares where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listFileSharesResponse_nextMarker
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listFileSharesResponse_fileShareInfoList
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listFileShares_marker
          Lens..~ rs
          Lens.^? listFileSharesResponse_nextMarker
            Prelude.. Lens._Just

instance Core.AWSRequest ListFileShares where
  type
    AWSResponse ListFileShares =
      ListFileSharesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListFileSharesResponse'
            Prelude.<$> (x Core..?> "Marker")
            Prelude.<*> ( x Core..?> "FileShareInfoList"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "NextMarker")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListFileShares where
  hashWithSalt _salt ListFileShares' {..} =
    _salt `Prelude.hashWithSalt` marker
      `Prelude.hashWithSalt` gatewayARN
      `Prelude.hashWithSalt` limit

instance Prelude.NFData ListFileShares where
  rnf ListFileShares' {..} =
    Prelude.rnf marker
      `Prelude.seq` Prelude.rnf gatewayARN
      `Prelude.seq` Prelude.rnf limit

instance Core.ToHeaders ListFileShares where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "StorageGateway_20130630.ListFileShares" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListFileShares where
  toJSON ListFileShares' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Marker" Core..=) Prelude.<$> marker,
            ("GatewayARN" Core..=) Prelude.<$> gatewayARN,
            ("Limit" Core..=) Prelude.<$> limit
          ]
      )

instance Core.ToPath ListFileShares where
  toPath = Prelude.const "/"

instance Core.ToQuery ListFileShares where
  toQuery = Prelude.const Prelude.mempty

-- | ListFileShareOutput
--
-- /See:/ 'newListFileSharesResponse' smart constructor.
data ListFileSharesResponse = ListFileSharesResponse'
  { -- | If the request includes @Marker@, the response returns that value in
    -- this field.
    marker :: Prelude.Maybe Prelude.Text,
    -- | An array of information about the S3 File Gateway\'s file shares.
    fileShareInfoList :: Prelude.Maybe [FileShareInfo],
    -- | If a value is present, there are more file shares to return. In a
    -- subsequent request, use @NextMarker@ as the value for @Marker@ to
    -- retrieve the next set of file shares.
    nextMarker :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListFileSharesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'marker', 'listFileSharesResponse_marker' - If the request includes @Marker@, the response returns that value in
-- this field.
--
-- 'fileShareInfoList', 'listFileSharesResponse_fileShareInfoList' - An array of information about the S3 File Gateway\'s file shares.
--
-- 'nextMarker', 'listFileSharesResponse_nextMarker' - If a value is present, there are more file shares to return. In a
-- subsequent request, use @NextMarker@ as the value for @Marker@ to
-- retrieve the next set of file shares.
--
-- 'httpStatus', 'listFileSharesResponse_httpStatus' - The response's http status code.
newListFileSharesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListFileSharesResponse
newListFileSharesResponse pHttpStatus_ =
  ListFileSharesResponse'
    { marker = Prelude.Nothing,
      fileShareInfoList = Prelude.Nothing,
      nextMarker = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If the request includes @Marker@, the response returns that value in
-- this field.
listFileSharesResponse_marker :: Lens.Lens' ListFileSharesResponse (Prelude.Maybe Prelude.Text)
listFileSharesResponse_marker = Lens.lens (\ListFileSharesResponse' {marker} -> marker) (\s@ListFileSharesResponse' {} a -> s {marker = a} :: ListFileSharesResponse)

-- | An array of information about the S3 File Gateway\'s file shares.
listFileSharesResponse_fileShareInfoList :: Lens.Lens' ListFileSharesResponse (Prelude.Maybe [FileShareInfo])
listFileSharesResponse_fileShareInfoList = Lens.lens (\ListFileSharesResponse' {fileShareInfoList} -> fileShareInfoList) (\s@ListFileSharesResponse' {} a -> s {fileShareInfoList = a} :: ListFileSharesResponse) Prelude.. Lens.mapping Lens.coerced

-- | If a value is present, there are more file shares to return. In a
-- subsequent request, use @NextMarker@ as the value for @Marker@ to
-- retrieve the next set of file shares.
listFileSharesResponse_nextMarker :: Lens.Lens' ListFileSharesResponse (Prelude.Maybe Prelude.Text)
listFileSharesResponse_nextMarker = Lens.lens (\ListFileSharesResponse' {nextMarker} -> nextMarker) (\s@ListFileSharesResponse' {} a -> s {nextMarker = a} :: ListFileSharesResponse)

-- | The response's http status code.
listFileSharesResponse_httpStatus :: Lens.Lens' ListFileSharesResponse Prelude.Int
listFileSharesResponse_httpStatus = Lens.lens (\ListFileSharesResponse' {httpStatus} -> httpStatus) (\s@ListFileSharesResponse' {} a -> s {httpStatus = a} :: ListFileSharesResponse)

instance Prelude.NFData ListFileSharesResponse where
  rnf ListFileSharesResponse' {..} =
    Prelude.rnf marker
      `Prelude.seq` Prelude.rnf fileShareInfoList
      `Prelude.seq` Prelude.rnf nextMarker
      `Prelude.seq` Prelude.rnf httpStatus
