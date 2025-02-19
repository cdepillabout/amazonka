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
-- Module      : Amazonka.Backup.ListBackupPlanTemplates
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns metadata of your saved backup plan templates, including the
-- template ID, name, and the creation and deletion dates.
--
-- This operation returns paginated results.
module Amazonka.Backup.ListBackupPlanTemplates
  ( -- * Creating a Request
    ListBackupPlanTemplates (..),
    newListBackupPlanTemplates,

    -- * Request Lenses
    listBackupPlanTemplates_nextToken,
    listBackupPlanTemplates_maxResults,

    -- * Destructuring the Response
    ListBackupPlanTemplatesResponse (..),
    newListBackupPlanTemplatesResponse,

    -- * Response Lenses
    listBackupPlanTemplatesResponse_nextToken,
    listBackupPlanTemplatesResponse_backupPlanTemplatesList,
    listBackupPlanTemplatesResponse_httpStatus,
  )
where

import Amazonka.Backup.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListBackupPlanTemplates' smart constructor.
data ListBackupPlanTemplates = ListBackupPlanTemplates'
  { -- | The next item following a partial list of returned items. For example,
    -- if a request is made to return @maxResults@ number of items, @NextToken@
    -- allows you to return more items in your list starting at the location
    -- pointed to by the next token.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of items to be returned.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListBackupPlanTemplates' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listBackupPlanTemplates_nextToken' - The next item following a partial list of returned items. For example,
-- if a request is made to return @maxResults@ number of items, @NextToken@
-- allows you to return more items in your list starting at the location
-- pointed to by the next token.
--
-- 'maxResults', 'listBackupPlanTemplates_maxResults' - The maximum number of items to be returned.
newListBackupPlanTemplates ::
  ListBackupPlanTemplates
newListBackupPlanTemplates =
  ListBackupPlanTemplates'
    { nextToken =
        Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The next item following a partial list of returned items. For example,
-- if a request is made to return @maxResults@ number of items, @NextToken@
-- allows you to return more items in your list starting at the location
-- pointed to by the next token.
listBackupPlanTemplates_nextToken :: Lens.Lens' ListBackupPlanTemplates (Prelude.Maybe Prelude.Text)
listBackupPlanTemplates_nextToken = Lens.lens (\ListBackupPlanTemplates' {nextToken} -> nextToken) (\s@ListBackupPlanTemplates' {} a -> s {nextToken = a} :: ListBackupPlanTemplates)

-- | The maximum number of items to be returned.
listBackupPlanTemplates_maxResults :: Lens.Lens' ListBackupPlanTemplates (Prelude.Maybe Prelude.Natural)
listBackupPlanTemplates_maxResults = Lens.lens (\ListBackupPlanTemplates' {maxResults} -> maxResults) (\s@ListBackupPlanTemplates' {} a -> s {maxResults = a} :: ListBackupPlanTemplates)

instance Core.AWSPager ListBackupPlanTemplates where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listBackupPlanTemplatesResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listBackupPlanTemplatesResponse_backupPlanTemplatesList
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listBackupPlanTemplates_nextToken
          Lens..~ rs
          Lens.^? listBackupPlanTemplatesResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListBackupPlanTemplates where
  type
    AWSResponse ListBackupPlanTemplates =
      ListBackupPlanTemplatesResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListBackupPlanTemplatesResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> ( x Core..?> "BackupPlanTemplatesList"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListBackupPlanTemplates where
  hashWithSalt _salt ListBackupPlanTemplates' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData ListBackupPlanTemplates where
  rnf ListBackupPlanTemplates' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders ListBackupPlanTemplates where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListBackupPlanTemplates where
  toPath = Prelude.const "/backup/template/plans"

instance Core.ToQuery ListBackupPlanTemplates where
  toQuery ListBackupPlanTemplates' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListBackupPlanTemplatesResponse' smart constructor.
data ListBackupPlanTemplatesResponse = ListBackupPlanTemplatesResponse'
  { -- | The next item following a partial list of returned items. For example,
    -- if a request is made to return @maxResults@ number of items, @NextToken@
    -- allows you to return more items in your list starting at the location
    -- pointed to by the next token.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | An array of template list items containing metadata about your saved
    -- templates.
    backupPlanTemplatesList :: Prelude.Maybe [BackupPlanTemplatesListMember],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListBackupPlanTemplatesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listBackupPlanTemplatesResponse_nextToken' - The next item following a partial list of returned items. For example,
-- if a request is made to return @maxResults@ number of items, @NextToken@
-- allows you to return more items in your list starting at the location
-- pointed to by the next token.
--
-- 'backupPlanTemplatesList', 'listBackupPlanTemplatesResponse_backupPlanTemplatesList' - An array of template list items containing metadata about your saved
-- templates.
--
-- 'httpStatus', 'listBackupPlanTemplatesResponse_httpStatus' - The response's http status code.
newListBackupPlanTemplatesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListBackupPlanTemplatesResponse
newListBackupPlanTemplatesResponse pHttpStatus_ =
  ListBackupPlanTemplatesResponse'
    { nextToken =
        Prelude.Nothing,
      backupPlanTemplatesList = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The next item following a partial list of returned items. For example,
-- if a request is made to return @maxResults@ number of items, @NextToken@
-- allows you to return more items in your list starting at the location
-- pointed to by the next token.
listBackupPlanTemplatesResponse_nextToken :: Lens.Lens' ListBackupPlanTemplatesResponse (Prelude.Maybe Prelude.Text)
listBackupPlanTemplatesResponse_nextToken = Lens.lens (\ListBackupPlanTemplatesResponse' {nextToken} -> nextToken) (\s@ListBackupPlanTemplatesResponse' {} a -> s {nextToken = a} :: ListBackupPlanTemplatesResponse)

-- | An array of template list items containing metadata about your saved
-- templates.
listBackupPlanTemplatesResponse_backupPlanTemplatesList :: Lens.Lens' ListBackupPlanTemplatesResponse (Prelude.Maybe [BackupPlanTemplatesListMember])
listBackupPlanTemplatesResponse_backupPlanTemplatesList = Lens.lens (\ListBackupPlanTemplatesResponse' {backupPlanTemplatesList} -> backupPlanTemplatesList) (\s@ListBackupPlanTemplatesResponse' {} a -> s {backupPlanTemplatesList = a} :: ListBackupPlanTemplatesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listBackupPlanTemplatesResponse_httpStatus :: Lens.Lens' ListBackupPlanTemplatesResponse Prelude.Int
listBackupPlanTemplatesResponse_httpStatus = Lens.lens (\ListBackupPlanTemplatesResponse' {httpStatus} -> httpStatus) (\s@ListBackupPlanTemplatesResponse' {} a -> s {httpStatus = a} :: ListBackupPlanTemplatesResponse)

instance
  Prelude.NFData
    ListBackupPlanTemplatesResponse
  where
  rnf ListBackupPlanTemplatesResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf backupPlanTemplatesList
      `Prelude.seq` Prelude.rnf httpStatus
