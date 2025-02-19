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
-- Module      : Amazonka.CustomerProfiles.ListWorkflows
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Query to list all workflows.
module Amazonka.CustomerProfiles.ListWorkflows
  ( -- * Creating a Request
    ListWorkflows (..),
    newListWorkflows,

    -- * Request Lenses
    listWorkflows_nextToken,
    listWorkflows_queryStartDate,
    listWorkflows_queryEndDate,
    listWorkflows_status,
    listWorkflows_workflowType,
    listWorkflows_maxResults,
    listWorkflows_domainName,

    -- * Destructuring the Response
    ListWorkflowsResponse (..),
    newListWorkflowsResponse,

    -- * Response Lenses
    listWorkflowsResponse_items,
    listWorkflowsResponse_nextToken,
    listWorkflowsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.CustomerProfiles.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListWorkflows' smart constructor.
data ListWorkflows = ListWorkflows'
  { -- | The token for the next set of results. Use the value returned in the
    -- previous response in the next request to retrieve the next set of
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Retrieve workflows started after timestamp.
    queryStartDate :: Prelude.Maybe Core.POSIX,
    -- | Retrieve workflows ended after timestamp.
    queryEndDate :: Prelude.Maybe Core.POSIX,
    -- | Status of workflow execution.
    status :: Prelude.Maybe Status,
    -- | The type of workflow. The only supported value is APPFLOW_INTEGRATION.
    workflowType :: Prelude.Maybe WorkflowType,
    -- | The maximum number of results to return per page.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The unique name of the domain.
    domainName :: Prelude.Text
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
-- 'nextToken', 'listWorkflows_nextToken' - The token for the next set of results. Use the value returned in the
-- previous response in the next request to retrieve the next set of
-- results.
--
-- 'queryStartDate', 'listWorkflows_queryStartDate' - Retrieve workflows started after timestamp.
--
-- 'queryEndDate', 'listWorkflows_queryEndDate' - Retrieve workflows ended after timestamp.
--
-- 'status', 'listWorkflows_status' - Status of workflow execution.
--
-- 'workflowType', 'listWorkflows_workflowType' - The type of workflow. The only supported value is APPFLOW_INTEGRATION.
--
-- 'maxResults', 'listWorkflows_maxResults' - The maximum number of results to return per page.
--
-- 'domainName', 'listWorkflows_domainName' - The unique name of the domain.
newListWorkflows ::
  -- | 'domainName'
  Prelude.Text ->
  ListWorkflows
newListWorkflows pDomainName_ =
  ListWorkflows'
    { nextToken = Prelude.Nothing,
      queryStartDate = Prelude.Nothing,
      queryEndDate = Prelude.Nothing,
      status = Prelude.Nothing,
      workflowType = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      domainName = pDomainName_
    }

-- | The token for the next set of results. Use the value returned in the
-- previous response in the next request to retrieve the next set of
-- results.
listWorkflows_nextToken :: Lens.Lens' ListWorkflows (Prelude.Maybe Prelude.Text)
listWorkflows_nextToken = Lens.lens (\ListWorkflows' {nextToken} -> nextToken) (\s@ListWorkflows' {} a -> s {nextToken = a} :: ListWorkflows)

-- | Retrieve workflows started after timestamp.
listWorkflows_queryStartDate :: Lens.Lens' ListWorkflows (Prelude.Maybe Prelude.UTCTime)
listWorkflows_queryStartDate = Lens.lens (\ListWorkflows' {queryStartDate} -> queryStartDate) (\s@ListWorkflows' {} a -> s {queryStartDate = a} :: ListWorkflows) Prelude.. Lens.mapping Core._Time

-- | Retrieve workflows ended after timestamp.
listWorkflows_queryEndDate :: Lens.Lens' ListWorkflows (Prelude.Maybe Prelude.UTCTime)
listWorkflows_queryEndDate = Lens.lens (\ListWorkflows' {queryEndDate} -> queryEndDate) (\s@ListWorkflows' {} a -> s {queryEndDate = a} :: ListWorkflows) Prelude.. Lens.mapping Core._Time

-- | Status of workflow execution.
listWorkflows_status :: Lens.Lens' ListWorkflows (Prelude.Maybe Status)
listWorkflows_status = Lens.lens (\ListWorkflows' {status} -> status) (\s@ListWorkflows' {} a -> s {status = a} :: ListWorkflows)

-- | The type of workflow. The only supported value is APPFLOW_INTEGRATION.
listWorkflows_workflowType :: Lens.Lens' ListWorkflows (Prelude.Maybe WorkflowType)
listWorkflows_workflowType = Lens.lens (\ListWorkflows' {workflowType} -> workflowType) (\s@ListWorkflows' {} a -> s {workflowType = a} :: ListWorkflows)

-- | The maximum number of results to return per page.
listWorkflows_maxResults :: Lens.Lens' ListWorkflows (Prelude.Maybe Prelude.Natural)
listWorkflows_maxResults = Lens.lens (\ListWorkflows' {maxResults} -> maxResults) (\s@ListWorkflows' {} a -> s {maxResults = a} :: ListWorkflows)

-- | The unique name of the domain.
listWorkflows_domainName :: Lens.Lens' ListWorkflows Prelude.Text
listWorkflows_domainName = Lens.lens (\ListWorkflows' {domainName} -> domainName) (\s@ListWorkflows' {} a -> s {domainName = a} :: ListWorkflows)

instance Core.AWSRequest ListWorkflows where
  type
    AWSResponse ListWorkflows =
      ListWorkflowsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListWorkflowsResponse'
            Prelude.<$> (x Core..?> "Items" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListWorkflows where
  hashWithSalt _salt ListWorkflows' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` queryStartDate
      `Prelude.hashWithSalt` queryEndDate
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` workflowType
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` domainName

instance Prelude.NFData ListWorkflows where
  rnf ListWorkflows' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf queryStartDate
      `Prelude.seq` Prelude.rnf queryEndDate
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf workflowType
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf domainName

instance Core.ToHeaders ListWorkflows where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListWorkflows where
  toJSON ListWorkflows' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("QueryStartDate" Core..=)
              Prelude.<$> queryStartDate,
            ("QueryEndDate" Core..=) Prelude.<$> queryEndDate,
            ("Status" Core..=) Prelude.<$> status,
            ("WorkflowType" Core..=) Prelude.<$> workflowType
          ]
      )

instance Core.ToPath ListWorkflows where
  toPath ListWorkflows' {..} =
    Prelude.mconcat
      ["/domains/", Core.toBS domainName, "/workflows"]

instance Core.ToQuery ListWorkflows where
  toQuery ListWorkflows' {..} =
    Prelude.mconcat
      [ "next-token" Core.=: nextToken,
        "max-results" Core.=: maxResults
      ]

-- | /See:/ 'newListWorkflowsResponse' smart constructor.
data ListWorkflowsResponse = ListWorkflowsResponse'
  { -- | List containing workflow details.
    items :: Prelude.Maybe [ListWorkflowsItem],
    -- | If there are additional results, this is the token for the next set of
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
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
-- 'items', 'listWorkflowsResponse_items' - List containing workflow details.
--
-- 'nextToken', 'listWorkflowsResponse_nextToken' - If there are additional results, this is the token for the next set of
-- results.
--
-- 'httpStatus', 'listWorkflowsResponse_httpStatus' - The response's http status code.
newListWorkflowsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListWorkflowsResponse
newListWorkflowsResponse pHttpStatus_ =
  ListWorkflowsResponse'
    { items = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | List containing workflow details.
listWorkflowsResponse_items :: Lens.Lens' ListWorkflowsResponse (Prelude.Maybe [ListWorkflowsItem])
listWorkflowsResponse_items = Lens.lens (\ListWorkflowsResponse' {items} -> items) (\s@ListWorkflowsResponse' {} a -> s {items = a} :: ListWorkflowsResponse) Prelude.. Lens.mapping Lens.coerced

-- | If there are additional results, this is the token for the next set of
-- results.
listWorkflowsResponse_nextToken :: Lens.Lens' ListWorkflowsResponse (Prelude.Maybe Prelude.Text)
listWorkflowsResponse_nextToken = Lens.lens (\ListWorkflowsResponse' {nextToken} -> nextToken) (\s@ListWorkflowsResponse' {} a -> s {nextToken = a} :: ListWorkflowsResponse)

-- | The response's http status code.
listWorkflowsResponse_httpStatus :: Lens.Lens' ListWorkflowsResponse Prelude.Int
listWorkflowsResponse_httpStatus = Lens.lens (\ListWorkflowsResponse' {httpStatus} -> httpStatus) (\s@ListWorkflowsResponse' {} a -> s {httpStatus = a} :: ListWorkflowsResponse)

instance Prelude.NFData ListWorkflowsResponse where
  rnf ListWorkflowsResponse' {..} =
    Prelude.rnf items
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
