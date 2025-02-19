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
-- Module      : Amazonka.Connect.ListAgentStatuses
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API is in preview release for Amazon Connect and is subject to
-- change.
--
-- Lists agent statuses.
--
-- This operation returns paginated results.
module Amazonka.Connect.ListAgentStatuses
  ( -- * Creating a Request
    ListAgentStatuses (..),
    newListAgentStatuses,

    -- * Request Lenses
    listAgentStatuses_nextToken,
    listAgentStatuses_agentStatusTypes,
    listAgentStatuses_maxResults,
    listAgentStatuses_instanceId,

    -- * Destructuring the Response
    ListAgentStatusesResponse (..),
    newListAgentStatusesResponse,

    -- * Response Lenses
    listAgentStatusesResponse_nextToken,
    listAgentStatusesResponse_agentStatusSummaryList,
    listAgentStatusesResponse_httpStatus,
  )
where

import Amazonka.Connect.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListAgentStatuses' smart constructor.
data ListAgentStatuses = ListAgentStatuses'
  { -- | The token for the next set of results. Use the value returned in the
    -- previous response in the next request to retrieve the next set of
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Available agent status types.
    agentStatusTypes :: Prelude.Maybe [AgentStatusType],
    -- | The maximum number of results to return per page.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The identifier of the Amazon Connect instance. You can find the
    -- instanceId in the ARN of the instance.
    instanceId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListAgentStatuses' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listAgentStatuses_nextToken' - The token for the next set of results. Use the value returned in the
-- previous response in the next request to retrieve the next set of
-- results.
--
-- 'agentStatusTypes', 'listAgentStatuses_agentStatusTypes' - Available agent status types.
--
-- 'maxResults', 'listAgentStatuses_maxResults' - The maximum number of results to return per page.
--
-- 'instanceId', 'listAgentStatuses_instanceId' - The identifier of the Amazon Connect instance. You can find the
-- instanceId in the ARN of the instance.
newListAgentStatuses ::
  -- | 'instanceId'
  Prelude.Text ->
  ListAgentStatuses
newListAgentStatuses pInstanceId_ =
  ListAgentStatuses'
    { nextToken = Prelude.Nothing,
      agentStatusTypes = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      instanceId = pInstanceId_
    }

-- | The token for the next set of results. Use the value returned in the
-- previous response in the next request to retrieve the next set of
-- results.
listAgentStatuses_nextToken :: Lens.Lens' ListAgentStatuses (Prelude.Maybe Prelude.Text)
listAgentStatuses_nextToken = Lens.lens (\ListAgentStatuses' {nextToken} -> nextToken) (\s@ListAgentStatuses' {} a -> s {nextToken = a} :: ListAgentStatuses)

-- | Available agent status types.
listAgentStatuses_agentStatusTypes :: Lens.Lens' ListAgentStatuses (Prelude.Maybe [AgentStatusType])
listAgentStatuses_agentStatusTypes = Lens.lens (\ListAgentStatuses' {agentStatusTypes} -> agentStatusTypes) (\s@ListAgentStatuses' {} a -> s {agentStatusTypes = a} :: ListAgentStatuses) Prelude.. Lens.mapping Lens.coerced

-- | The maximum number of results to return per page.
listAgentStatuses_maxResults :: Lens.Lens' ListAgentStatuses (Prelude.Maybe Prelude.Natural)
listAgentStatuses_maxResults = Lens.lens (\ListAgentStatuses' {maxResults} -> maxResults) (\s@ListAgentStatuses' {} a -> s {maxResults = a} :: ListAgentStatuses)

-- | The identifier of the Amazon Connect instance. You can find the
-- instanceId in the ARN of the instance.
listAgentStatuses_instanceId :: Lens.Lens' ListAgentStatuses Prelude.Text
listAgentStatuses_instanceId = Lens.lens (\ListAgentStatuses' {instanceId} -> instanceId) (\s@ListAgentStatuses' {} a -> s {instanceId = a} :: ListAgentStatuses)

instance Core.AWSPager ListAgentStatuses where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listAgentStatusesResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listAgentStatusesResponse_agentStatusSummaryList
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listAgentStatuses_nextToken
          Lens..~ rs
          Lens.^? listAgentStatusesResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListAgentStatuses where
  type
    AWSResponse ListAgentStatuses =
      ListAgentStatusesResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListAgentStatusesResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> ( x Core..?> "AgentStatusSummaryList"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListAgentStatuses where
  hashWithSalt _salt ListAgentStatuses' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` agentStatusTypes
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` instanceId

instance Prelude.NFData ListAgentStatuses where
  rnf ListAgentStatuses' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf agentStatusTypes
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf instanceId

instance Core.ToHeaders ListAgentStatuses where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListAgentStatuses where
  toPath ListAgentStatuses' {..} =
    Prelude.mconcat
      ["/agent-status/", Core.toBS instanceId]

instance Core.ToQuery ListAgentStatuses where
  toQuery ListAgentStatuses' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "AgentStatusTypes"
          Core.=: Core.toQuery
            ( Core.toQueryList "member"
                Prelude.<$> agentStatusTypes
            ),
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListAgentStatusesResponse' smart constructor.
data ListAgentStatusesResponse = ListAgentStatusesResponse'
  { -- | If there are additional results, this is the token for the next set of
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A summary of agent statuses.
    agentStatusSummaryList :: Prelude.Maybe [AgentStatusSummary],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListAgentStatusesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listAgentStatusesResponse_nextToken' - If there are additional results, this is the token for the next set of
-- results.
--
-- 'agentStatusSummaryList', 'listAgentStatusesResponse_agentStatusSummaryList' - A summary of agent statuses.
--
-- 'httpStatus', 'listAgentStatusesResponse_httpStatus' - The response's http status code.
newListAgentStatusesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListAgentStatusesResponse
newListAgentStatusesResponse pHttpStatus_ =
  ListAgentStatusesResponse'
    { nextToken =
        Prelude.Nothing,
      agentStatusSummaryList = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If there are additional results, this is the token for the next set of
-- results.
listAgentStatusesResponse_nextToken :: Lens.Lens' ListAgentStatusesResponse (Prelude.Maybe Prelude.Text)
listAgentStatusesResponse_nextToken = Lens.lens (\ListAgentStatusesResponse' {nextToken} -> nextToken) (\s@ListAgentStatusesResponse' {} a -> s {nextToken = a} :: ListAgentStatusesResponse)

-- | A summary of agent statuses.
listAgentStatusesResponse_agentStatusSummaryList :: Lens.Lens' ListAgentStatusesResponse (Prelude.Maybe [AgentStatusSummary])
listAgentStatusesResponse_agentStatusSummaryList = Lens.lens (\ListAgentStatusesResponse' {agentStatusSummaryList} -> agentStatusSummaryList) (\s@ListAgentStatusesResponse' {} a -> s {agentStatusSummaryList = a} :: ListAgentStatusesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listAgentStatusesResponse_httpStatus :: Lens.Lens' ListAgentStatusesResponse Prelude.Int
listAgentStatusesResponse_httpStatus = Lens.lens (\ListAgentStatusesResponse' {httpStatus} -> httpStatus) (\s@ListAgentStatusesResponse' {} a -> s {httpStatus = a} :: ListAgentStatusesResponse)

instance Prelude.NFData ListAgentStatusesResponse where
  rnf ListAgentStatusesResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf agentStatusSummaryList
      `Prelude.seq` Prelude.rnf httpStatus
