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
-- Module      : Amazonka.Transfer.ListWorkflows
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all of your workflows.
--
-- This operation returns paginated results.
module Amazonka.Transfer.ListWorkflows
  ( -- * Creating a Request
    ListWorkflows (..),
    newListWorkflows,

    -- * Request Lenses
    listWorkflows_nextToken,
    listWorkflows_maxResults,

    -- * Destructuring the Response
    ListWorkflowsResponse (..),
    newListWorkflowsResponse,

    -- * Response Lenses
    listWorkflowsResponse_nextToken,
    listWorkflowsResponse_httpStatus,
    listWorkflowsResponse_workflows,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.Transfer.Types

-- | /See:/ 'newListWorkflows' smart constructor.
data ListWorkflows = ListWorkflows'
  { -- | @ListWorkflows@ returns the @NextToken@ parameter in the output. You can
    -- then pass the @NextToken@ parameter in a subsequent command to continue
    -- listing additional workflows.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Specifies the maximum number of workflows to return.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListWorkflows' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listWorkflows_nextToken' - @ListWorkflows@ returns the @NextToken@ parameter in the output. You can
-- then pass the @NextToken@ parameter in a subsequent command to continue
-- listing additional workflows.
--
-- 'maxResults', 'listWorkflows_maxResults' - Specifies the maximum number of workflows to return.
newListWorkflows ::
  ListWorkflows
newListWorkflows =
  ListWorkflows'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | @ListWorkflows@ returns the @NextToken@ parameter in the output. You can
-- then pass the @NextToken@ parameter in a subsequent command to continue
-- listing additional workflows.
listWorkflows_nextToken :: Lens.Lens' ListWorkflows (Prelude.Maybe Prelude.Text)
listWorkflows_nextToken = Lens.lens (\ListWorkflows' {nextToken} -> nextToken) (\s@ListWorkflows' {} a -> s {nextToken = a} :: ListWorkflows)

-- | Specifies the maximum number of workflows to return.
listWorkflows_maxResults :: Lens.Lens' ListWorkflows (Prelude.Maybe Prelude.Natural)
listWorkflows_maxResults = Lens.lens (\ListWorkflows' {maxResults} -> maxResults) (\s@ListWorkflows' {} a -> s {maxResults = a} :: ListWorkflows)

instance Core.AWSPager ListWorkflows where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listWorkflowsResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        (rs Lens.^. listWorkflowsResponse_workflows) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listWorkflows_nextToken
          Lens..~ rs
          Lens.^? listWorkflowsResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListWorkflows where
  type
    AWSResponse ListWorkflows =
      ListWorkflowsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListWorkflowsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..?> "Workflows" Core..!@ Prelude.mempty)
      )

instance Prelude.Hashable ListWorkflows where
  hashWithSalt _salt ListWorkflows' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData ListWorkflows where
  rnf ListWorkflows' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders ListWorkflows where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "TransferService.ListWorkflows" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListWorkflows where
  toJSON ListWorkflows' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("MaxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath ListWorkflows where
  toPath = Prelude.const "/"

instance Core.ToQuery ListWorkflows where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListWorkflowsResponse' smart constructor.
data ListWorkflowsResponse = ListWorkflowsResponse'
  { -- | @ListWorkflows@ returns the @NextToken@ parameter in the output. You can
    -- then pass the @NextToken@ parameter in a subsequent command to continue
    -- listing additional workflows.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | Returns the @Arn@, @WorkflowId@, and @Description@ for each workflow.
    workflows :: [ListedWorkflow]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListWorkflowsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listWorkflowsResponse_nextToken' - @ListWorkflows@ returns the @NextToken@ parameter in the output. You can
-- then pass the @NextToken@ parameter in a subsequent command to continue
-- listing additional workflows.
--
-- 'httpStatus', 'listWorkflowsResponse_httpStatus' - The response's http status code.
--
-- 'workflows', 'listWorkflowsResponse_workflows' - Returns the @Arn@, @WorkflowId@, and @Description@ for each workflow.
newListWorkflowsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListWorkflowsResponse
newListWorkflowsResponse pHttpStatus_ =
  ListWorkflowsResponse'
    { nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_,
      workflows = Prelude.mempty
    }

-- | @ListWorkflows@ returns the @NextToken@ parameter in the output. You can
-- then pass the @NextToken@ parameter in a subsequent command to continue
-- listing additional workflows.
listWorkflowsResponse_nextToken :: Lens.Lens' ListWorkflowsResponse (Prelude.Maybe Prelude.Text)
listWorkflowsResponse_nextToken = Lens.lens (\ListWorkflowsResponse' {nextToken} -> nextToken) (\s@ListWorkflowsResponse' {} a -> s {nextToken = a} :: ListWorkflowsResponse)

-- | The response's http status code.
listWorkflowsResponse_httpStatus :: Lens.Lens' ListWorkflowsResponse Prelude.Int
listWorkflowsResponse_httpStatus = Lens.lens (\ListWorkflowsResponse' {httpStatus} -> httpStatus) (\s@ListWorkflowsResponse' {} a -> s {httpStatus = a} :: ListWorkflowsResponse)

-- | Returns the @Arn@, @WorkflowId@, and @Description@ for each workflow.
listWorkflowsResponse_workflows :: Lens.Lens' ListWorkflowsResponse [ListedWorkflow]
listWorkflowsResponse_workflows = Lens.lens (\ListWorkflowsResponse' {workflows} -> workflows) (\s@ListWorkflowsResponse' {} a -> s {workflows = a} :: ListWorkflowsResponse) Prelude.. Lens.coerced

instance Prelude.NFData ListWorkflowsResponse where
  rnf ListWorkflowsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf workflows
