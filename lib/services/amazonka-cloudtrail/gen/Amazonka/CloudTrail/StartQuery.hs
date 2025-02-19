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
-- Module      : Amazonka.CloudTrail.StartQuery
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts a CloudTrail Lake query. The required @QueryStatement@ parameter
-- provides your SQL query, enclosed in single quotation marks.
module Amazonka.CloudTrail.StartQuery
  ( -- * Creating a Request
    StartQuery (..),
    newStartQuery,

    -- * Request Lenses
    startQuery_queryStatement,

    -- * Destructuring the Response
    StartQueryResponse (..),
    newStartQueryResponse,

    -- * Response Lenses
    startQueryResponse_queryId,
    startQueryResponse_httpStatus,
  )
where

import Amazonka.CloudTrail.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newStartQuery' smart constructor.
data StartQuery = StartQuery'
  { -- | The SQL code of your query.
    queryStatement :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartQuery' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'queryStatement', 'startQuery_queryStatement' - The SQL code of your query.
newStartQuery ::
  -- | 'queryStatement'
  Prelude.Text ->
  StartQuery
newStartQuery pQueryStatement_ =
  StartQuery' {queryStatement = pQueryStatement_}

-- | The SQL code of your query.
startQuery_queryStatement :: Lens.Lens' StartQuery Prelude.Text
startQuery_queryStatement = Lens.lens (\StartQuery' {queryStatement} -> queryStatement) (\s@StartQuery' {} a -> s {queryStatement = a} :: StartQuery)

instance Core.AWSRequest StartQuery where
  type AWSResponse StartQuery = StartQueryResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          StartQueryResponse'
            Prelude.<$> (x Core..?> "QueryId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable StartQuery where
  hashWithSalt _salt StartQuery' {..} =
    _salt `Prelude.hashWithSalt` queryStatement

instance Prelude.NFData StartQuery where
  rnf StartQuery' {..} = Prelude.rnf queryStatement

instance Core.ToHeaders StartQuery where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.StartQuery" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON StartQuery where
  toJSON StartQuery' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("QueryStatement" Core..= queryStatement)
          ]
      )

instance Core.ToPath StartQuery where
  toPath = Prelude.const "/"

instance Core.ToQuery StartQuery where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newStartQueryResponse' smart constructor.
data StartQueryResponse = StartQueryResponse'
  { -- | The ID of the started query.
    queryId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartQueryResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'queryId', 'startQueryResponse_queryId' - The ID of the started query.
--
-- 'httpStatus', 'startQueryResponse_httpStatus' - The response's http status code.
newStartQueryResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  StartQueryResponse
newStartQueryResponse pHttpStatus_ =
  StartQueryResponse'
    { queryId = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ID of the started query.
startQueryResponse_queryId :: Lens.Lens' StartQueryResponse (Prelude.Maybe Prelude.Text)
startQueryResponse_queryId = Lens.lens (\StartQueryResponse' {queryId} -> queryId) (\s@StartQueryResponse' {} a -> s {queryId = a} :: StartQueryResponse)

-- | The response's http status code.
startQueryResponse_httpStatus :: Lens.Lens' StartQueryResponse Prelude.Int
startQueryResponse_httpStatus = Lens.lens (\StartQueryResponse' {httpStatus} -> httpStatus) (\s@StartQueryResponse' {} a -> s {httpStatus = a} :: StartQueryResponse)

instance Prelude.NFData StartQueryResponse where
  rnf StartQueryResponse' {..} =
    Prelude.rnf queryId
      `Prelude.seq` Prelude.rnf httpStatus
