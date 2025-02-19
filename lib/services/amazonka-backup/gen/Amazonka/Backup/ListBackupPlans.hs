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
-- Module      : Amazonka.Backup.ListBackupPlans
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of all active backup plans for an authenticated account.
-- The list contains information such as Amazon Resource Names (ARNs), plan
-- IDs, creation and deletion dates, version IDs, plan names, and creator
-- request IDs.
--
-- This operation returns paginated results.
module Amazonka.Backup.ListBackupPlans
  ( -- * Creating a Request
    ListBackupPlans (..),
    newListBackupPlans,

    -- * Request Lenses
    listBackupPlans_nextToken,
    listBackupPlans_includeDeleted,
    listBackupPlans_maxResults,

    -- * Destructuring the Response
    ListBackupPlansResponse (..),
    newListBackupPlansResponse,

    -- * Response Lenses
    listBackupPlansResponse_nextToken,
    listBackupPlansResponse_backupPlansList,
    listBackupPlansResponse_httpStatus,
  )
where

import Amazonka.Backup.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListBackupPlans' smart constructor.
data ListBackupPlans = ListBackupPlans'
  { -- | The next item following a partial list of returned items. For example,
    -- if a request is made to return @maxResults@ number of items, @NextToken@
    -- allows you to return more items in your list starting at the location
    -- pointed to by the next token.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A Boolean value with a default value of @FALSE@ that returns deleted
    -- backup plans when set to @TRUE@.
    includeDeleted :: Prelude.Maybe Prelude.Bool,
    -- | The maximum number of items to be returned.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListBackupPlans' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listBackupPlans_nextToken' - The next item following a partial list of returned items. For example,
-- if a request is made to return @maxResults@ number of items, @NextToken@
-- allows you to return more items in your list starting at the location
-- pointed to by the next token.
--
-- 'includeDeleted', 'listBackupPlans_includeDeleted' - A Boolean value with a default value of @FALSE@ that returns deleted
-- backup plans when set to @TRUE@.
--
-- 'maxResults', 'listBackupPlans_maxResults' - The maximum number of items to be returned.
newListBackupPlans ::
  ListBackupPlans
newListBackupPlans =
  ListBackupPlans'
    { nextToken = Prelude.Nothing,
      includeDeleted = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The next item following a partial list of returned items. For example,
-- if a request is made to return @maxResults@ number of items, @NextToken@
-- allows you to return more items in your list starting at the location
-- pointed to by the next token.
listBackupPlans_nextToken :: Lens.Lens' ListBackupPlans (Prelude.Maybe Prelude.Text)
listBackupPlans_nextToken = Lens.lens (\ListBackupPlans' {nextToken} -> nextToken) (\s@ListBackupPlans' {} a -> s {nextToken = a} :: ListBackupPlans)

-- | A Boolean value with a default value of @FALSE@ that returns deleted
-- backup plans when set to @TRUE@.
listBackupPlans_includeDeleted :: Lens.Lens' ListBackupPlans (Prelude.Maybe Prelude.Bool)
listBackupPlans_includeDeleted = Lens.lens (\ListBackupPlans' {includeDeleted} -> includeDeleted) (\s@ListBackupPlans' {} a -> s {includeDeleted = a} :: ListBackupPlans)

-- | The maximum number of items to be returned.
listBackupPlans_maxResults :: Lens.Lens' ListBackupPlans (Prelude.Maybe Prelude.Natural)
listBackupPlans_maxResults = Lens.lens (\ListBackupPlans' {maxResults} -> maxResults) (\s@ListBackupPlans' {} a -> s {maxResults = a} :: ListBackupPlans)

instance Core.AWSPager ListBackupPlans where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listBackupPlansResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listBackupPlansResponse_backupPlansList
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listBackupPlans_nextToken
          Lens..~ rs
          Lens.^? listBackupPlansResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListBackupPlans where
  type
    AWSResponse ListBackupPlans =
      ListBackupPlansResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListBackupPlansResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> ( x Core..?> "BackupPlansList"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListBackupPlans where
  hashWithSalt _salt ListBackupPlans' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` includeDeleted
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData ListBackupPlans where
  rnf ListBackupPlans' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf includeDeleted
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders ListBackupPlans where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListBackupPlans where
  toPath = Prelude.const "/backup/plans/"

instance Core.ToQuery ListBackupPlans where
  toQuery ListBackupPlans' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "includeDeleted" Core.=: includeDeleted,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListBackupPlansResponse' smart constructor.
data ListBackupPlansResponse = ListBackupPlansResponse'
  { -- | The next item following a partial list of returned items. For example,
    -- if a request is made to return @maxResults@ number of items, @NextToken@
    -- allows you to return more items in your list starting at the location
    -- pointed to by the next token.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | An array of backup plan list items containing metadata about your saved
    -- backup plans.
    backupPlansList :: Prelude.Maybe [BackupPlansListMember],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListBackupPlansResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listBackupPlansResponse_nextToken' - The next item following a partial list of returned items. For example,
-- if a request is made to return @maxResults@ number of items, @NextToken@
-- allows you to return more items in your list starting at the location
-- pointed to by the next token.
--
-- 'backupPlansList', 'listBackupPlansResponse_backupPlansList' - An array of backup plan list items containing metadata about your saved
-- backup plans.
--
-- 'httpStatus', 'listBackupPlansResponse_httpStatus' - The response's http status code.
newListBackupPlansResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListBackupPlansResponse
newListBackupPlansResponse pHttpStatus_ =
  ListBackupPlansResponse'
    { nextToken =
        Prelude.Nothing,
      backupPlansList = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The next item following a partial list of returned items. For example,
-- if a request is made to return @maxResults@ number of items, @NextToken@
-- allows you to return more items in your list starting at the location
-- pointed to by the next token.
listBackupPlansResponse_nextToken :: Lens.Lens' ListBackupPlansResponse (Prelude.Maybe Prelude.Text)
listBackupPlansResponse_nextToken = Lens.lens (\ListBackupPlansResponse' {nextToken} -> nextToken) (\s@ListBackupPlansResponse' {} a -> s {nextToken = a} :: ListBackupPlansResponse)

-- | An array of backup plan list items containing metadata about your saved
-- backup plans.
listBackupPlansResponse_backupPlansList :: Lens.Lens' ListBackupPlansResponse (Prelude.Maybe [BackupPlansListMember])
listBackupPlansResponse_backupPlansList = Lens.lens (\ListBackupPlansResponse' {backupPlansList} -> backupPlansList) (\s@ListBackupPlansResponse' {} a -> s {backupPlansList = a} :: ListBackupPlansResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listBackupPlansResponse_httpStatus :: Lens.Lens' ListBackupPlansResponse Prelude.Int
listBackupPlansResponse_httpStatus = Lens.lens (\ListBackupPlansResponse' {httpStatus} -> httpStatus) (\s@ListBackupPlansResponse' {} a -> s {httpStatus = a} :: ListBackupPlansResponse)

instance Prelude.NFData ListBackupPlansResponse where
  rnf ListBackupPlansResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf backupPlansList
      `Prelude.seq` Prelude.rnf httpStatus
