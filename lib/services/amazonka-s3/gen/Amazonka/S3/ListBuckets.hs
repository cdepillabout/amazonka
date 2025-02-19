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
-- Module      : Amazonka.S3.ListBuckets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of all buckets owned by the authenticated sender of the
-- request. To use this operation, you must have the @s3:ListAllMyBuckets@
-- permission.
module Amazonka.S3.ListBuckets
  ( -- * Creating a Request
    ListBuckets (..),
    newListBuckets,

    -- * Destructuring the Response
    ListBucketsResponse (..),
    newListBucketsResponse,

    -- * Response Lenses
    listBucketsResponse_owner,
    listBucketsResponse_buckets,
    listBucketsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.S3.Types

-- | /See:/ 'newListBuckets' smart constructor.
data ListBuckets = ListBuckets'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListBuckets' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newListBuckets ::
  ListBuckets
newListBuckets = ListBuckets'

instance Core.AWSRequest ListBuckets where
  type AWSResponse ListBuckets = ListBucketsResponse
  request =
    Request.s3vhost
      Prelude.. Request.get defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          ListBucketsResponse'
            Prelude.<$> (x Core..@? "Owner")
            Prelude.<*> ( x Core..@? "Buckets" Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "Bucket")
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListBuckets where
  hashWithSalt _salt _ =
    _salt `Prelude.hashWithSalt` ()

instance Prelude.NFData ListBuckets where
  rnf _ = ()

instance Core.ToHeaders ListBuckets where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath ListBuckets where
  toPath = Prelude.const "/"

instance Core.ToQuery ListBuckets where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListBucketsResponse' smart constructor.
data ListBucketsResponse = ListBucketsResponse'
  { -- | The owner of the buckets listed.
    owner :: Prelude.Maybe Owner,
    -- | The list of buckets owned by the requester.
    buckets :: Prelude.Maybe [Bucket],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListBucketsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'owner', 'listBucketsResponse_owner' - The owner of the buckets listed.
--
-- 'buckets', 'listBucketsResponse_buckets' - The list of buckets owned by the requester.
--
-- 'httpStatus', 'listBucketsResponse_httpStatus' - The response's http status code.
newListBucketsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListBucketsResponse
newListBucketsResponse pHttpStatus_ =
  ListBucketsResponse'
    { owner = Prelude.Nothing,
      buckets = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The owner of the buckets listed.
listBucketsResponse_owner :: Lens.Lens' ListBucketsResponse (Prelude.Maybe Owner)
listBucketsResponse_owner = Lens.lens (\ListBucketsResponse' {owner} -> owner) (\s@ListBucketsResponse' {} a -> s {owner = a} :: ListBucketsResponse)

-- | The list of buckets owned by the requester.
listBucketsResponse_buckets :: Lens.Lens' ListBucketsResponse (Prelude.Maybe [Bucket])
listBucketsResponse_buckets = Lens.lens (\ListBucketsResponse' {buckets} -> buckets) (\s@ListBucketsResponse' {} a -> s {buckets = a} :: ListBucketsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listBucketsResponse_httpStatus :: Lens.Lens' ListBucketsResponse Prelude.Int
listBucketsResponse_httpStatus = Lens.lens (\ListBucketsResponse' {httpStatus} -> httpStatus) (\s@ListBucketsResponse' {} a -> s {httpStatus = a} :: ListBucketsResponse)

instance Prelude.NFData ListBucketsResponse where
  rnf ListBucketsResponse' {..} =
    Prelude.rnf owner
      `Prelude.seq` Prelude.rnf buckets
      `Prelude.seq` Prelude.rnf httpStatus
