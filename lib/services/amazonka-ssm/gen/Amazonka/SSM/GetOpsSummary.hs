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
-- Module      : Amazonka.SSM.GetOpsSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- View a summary of operations metadata (OpsData) based on specified
-- filters and aggregators. OpsData can include information about Amazon
-- Web Services Systems Manager OpsCenter operational workitems (OpsItems)
-- as well as information about any Amazon Web Services resource or service
-- configured to report OpsData to Amazon Web Services Systems Manager
-- Explorer.
--
-- This operation returns paginated results.
module Amazonka.SSM.GetOpsSummary
  ( -- * Creating a Request
    GetOpsSummary (..),
    newGetOpsSummary,

    -- * Request Lenses
    getOpsSummary_resultAttributes,
    getOpsSummary_nextToken,
    getOpsSummary_syncName,
    getOpsSummary_filters,
    getOpsSummary_aggregators,
    getOpsSummary_maxResults,

    -- * Destructuring the Response
    GetOpsSummaryResponse (..),
    newGetOpsSummaryResponse,

    -- * Response Lenses
    getOpsSummaryResponse_entities,
    getOpsSummaryResponse_nextToken,
    getOpsSummaryResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SSM.Types

-- | /See:/ 'newGetOpsSummary' smart constructor.
data GetOpsSummary = GetOpsSummary'
  { -- | The OpsData data type to return.
    resultAttributes :: Prelude.Maybe (Prelude.NonEmpty OpsResultAttribute),
    -- | A token to start the list. Use this token to get the next set of
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Specify the name of a resource data sync to get.
    syncName :: Prelude.Maybe Prelude.Text,
    -- | Optional filters used to scope down the returned OpsData.
    filters :: Prelude.Maybe (Prelude.NonEmpty OpsFilter),
    -- | Optional aggregators that return counts of OpsData based on one or more
    -- expressions.
    aggregators :: Prelude.Maybe (Prelude.NonEmpty OpsAggregator),
    -- | The maximum number of items to return for this call. The call also
    -- returns a token that you can specify in a subsequent call to get the
    -- next set of results.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetOpsSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resultAttributes', 'getOpsSummary_resultAttributes' - The OpsData data type to return.
--
-- 'nextToken', 'getOpsSummary_nextToken' - A token to start the list. Use this token to get the next set of
-- results.
--
-- 'syncName', 'getOpsSummary_syncName' - Specify the name of a resource data sync to get.
--
-- 'filters', 'getOpsSummary_filters' - Optional filters used to scope down the returned OpsData.
--
-- 'aggregators', 'getOpsSummary_aggregators' - Optional aggregators that return counts of OpsData based on one or more
-- expressions.
--
-- 'maxResults', 'getOpsSummary_maxResults' - The maximum number of items to return for this call. The call also
-- returns a token that you can specify in a subsequent call to get the
-- next set of results.
newGetOpsSummary ::
  GetOpsSummary
newGetOpsSummary =
  GetOpsSummary'
    { resultAttributes = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      syncName = Prelude.Nothing,
      filters = Prelude.Nothing,
      aggregators = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The OpsData data type to return.
getOpsSummary_resultAttributes :: Lens.Lens' GetOpsSummary (Prelude.Maybe (Prelude.NonEmpty OpsResultAttribute))
getOpsSummary_resultAttributes = Lens.lens (\GetOpsSummary' {resultAttributes} -> resultAttributes) (\s@GetOpsSummary' {} a -> s {resultAttributes = a} :: GetOpsSummary) Prelude.. Lens.mapping Lens.coerced

-- | A token to start the list. Use this token to get the next set of
-- results.
getOpsSummary_nextToken :: Lens.Lens' GetOpsSummary (Prelude.Maybe Prelude.Text)
getOpsSummary_nextToken = Lens.lens (\GetOpsSummary' {nextToken} -> nextToken) (\s@GetOpsSummary' {} a -> s {nextToken = a} :: GetOpsSummary)

-- | Specify the name of a resource data sync to get.
getOpsSummary_syncName :: Lens.Lens' GetOpsSummary (Prelude.Maybe Prelude.Text)
getOpsSummary_syncName = Lens.lens (\GetOpsSummary' {syncName} -> syncName) (\s@GetOpsSummary' {} a -> s {syncName = a} :: GetOpsSummary)

-- | Optional filters used to scope down the returned OpsData.
getOpsSummary_filters :: Lens.Lens' GetOpsSummary (Prelude.Maybe (Prelude.NonEmpty OpsFilter))
getOpsSummary_filters = Lens.lens (\GetOpsSummary' {filters} -> filters) (\s@GetOpsSummary' {} a -> s {filters = a} :: GetOpsSummary) Prelude.. Lens.mapping Lens.coerced

-- | Optional aggregators that return counts of OpsData based on one or more
-- expressions.
getOpsSummary_aggregators :: Lens.Lens' GetOpsSummary (Prelude.Maybe (Prelude.NonEmpty OpsAggregator))
getOpsSummary_aggregators = Lens.lens (\GetOpsSummary' {aggregators} -> aggregators) (\s@GetOpsSummary' {} a -> s {aggregators = a} :: GetOpsSummary) Prelude.. Lens.mapping Lens.coerced

-- | The maximum number of items to return for this call. The call also
-- returns a token that you can specify in a subsequent call to get the
-- next set of results.
getOpsSummary_maxResults :: Lens.Lens' GetOpsSummary (Prelude.Maybe Prelude.Natural)
getOpsSummary_maxResults = Lens.lens (\GetOpsSummary' {maxResults} -> maxResults) (\s@GetOpsSummary' {} a -> s {maxResults = a} :: GetOpsSummary)

instance Core.AWSPager GetOpsSummary where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? getOpsSummaryResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? getOpsSummaryResponse_entities Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& getOpsSummary_nextToken
          Lens..~ rs
          Lens.^? getOpsSummaryResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest GetOpsSummary where
  type
    AWSResponse GetOpsSummary =
      GetOpsSummaryResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetOpsSummaryResponse'
            Prelude.<$> (x Core..?> "Entities" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetOpsSummary where
  hashWithSalt _salt GetOpsSummary' {..} =
    _salt `Prelude.hashWithSalt` resultAttributes
      `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` syncName
      `Prelude.hashWithSalt` filters
      `Prelude.hashWithSalt` aggregators
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData GetOpsSummary where
  rnf GetOpsSummary' {..} =
    Prelude.rnf resultAttributes
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf syncName
      `Prelude.seq` Prelude.rnf filters
      `Prelude.seq` Prelude.rnf aggregators
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders GetOpsSummary where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("AmazonSSM.GetOpsSummary" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetOpsSummary where
  toJSON GetOpsSummary' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ResultAttributes" Core..=)
              Prelude.<$> resultAttributes,
            ("NextToken" Core..=) Prelude.<$> nextToken,
            ("SyncName" Core..=) Prelude.<$> syncName,
            ("Filters" Core..=) Prelude.<$> filters,
            ("Aggregators" Core..=) Prelude.<$> aggregators,
            ("MaxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath GetOpsSummary where
  toPath = Prelude.const "/"

instance Core.ToQuery GetOpsSummary where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetOpsSummaryResponse' smart constructor.
data GetOpsSummaryResponse = GetOpsSummaryResponse'
  { -- | The list of aggregated details and filtered OpsData.
    entities :: Prelude.Maybe [OpsEntity],
    -- | The token for the next set of items to return. Use this token to get the
    -- next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetOpsSummaryResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'entities', 'getOpsSummaryResponse_entities' - The list of aggregated details and filtered OpsData.
--
-- 'nextToken', 'getOpsSummaryResponse_nextToken' - The token for the next set of items to return. Use this token to get the
-- next set of results.
--
-- 'httpStatus', 'getOpsSummaryResponse_httpStatus' - The response's http status code.
newGetOpsSummaryResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetOpsSummaryResponse
newGetOpsSummaryResponse pHttpStatus_ =
  GetOpsSummaryResponse'
    { entities = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The list of aggregated details and filtered OpsData.
getOpsSummaryResponse_entities :: Lens.Lens' GetOpsSummaryResponse (Prelude.Maybe [OpsEntity])
getOpsSummaryResponse_entities = Lens.lens (\GetOpsSummaryResponse' {entities} -> entities) (\s@GetOpsSummaryResponse' {} a -> s {entities = a} :: GetOpsSummaryResponse) Prelude.. Lens.mapping Lens.coerced

-- | The token for the next set of items to return. Use this token to get the
-- next set of results.
getOpsSummaryResponse_nextToken :: Lens.Lens' GetOpsSummaryResponse (Prelude.Maybe Prelude.Text)
getOpsSummaryResponse_nextToken = Lens.lens (\GetOpsSummaryResponse' {nextToken} -> nextToken) (\s@GetOpsSummaryResponse' {} a -> s {nextToken = a} :: GetOpsSummaryResponse)

-- | The response's http status code.
getOpsSummaryResponse_httpStatus :: Lens.Lens' GetOpsSummaryResponse Prelude.Int
getOpsSummaryResponse_httpStatus = Lens.lens (\GetOpsSummaryResponse' {httpStatus} -> httpStatus) (\s@GetOpsSummaryResponse' {} a -> s {httpStatus = a} :: GetOpsSummaryResponse)

instance Prelude.NFData GetOpsSummaryResponse where
  rnf GetOpsSummaryResponse' {..} =
    Prelude.rnf entities
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
