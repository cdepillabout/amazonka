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
-- Module      : Amazonka.CostExplorer.ListCostCategoryDefinitions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the name, Amazon Resource Name (ARN), @NumberOfRules@ and
-- effective dates of all Cost Categories defined in the account. You have
-- the option to use @EffectiveOn@ to return a list of Cost Categories that
-- were active on a specific date. If there is no @EffectiveOn@ specified,
-- you’ll see Cost Categories that are effective on the current date. If
-- Cost Category is still effective, @EffectiveEnd@ is omitted in the
-- response. @ListCostCategoryDefinitions@ supports pagination. The request
-- can have a @MaxResults@ range up to 100.
module Amazonka.CostExplorer.ListCostCategoryDefinitions
  ( -- * Creating a Request
    ListCostCategoryDefinitions (..),
    newListCostCategoryDefinitions,

    -- * Request Lenses
    listCostCategoryDefinitions_effectiveOn,
    listCostCategoryDefinitions_nextToken,
    listCostCategoryDefinitions_maxResults,

    -- * Destructuring the Response
    ListCostCategoryDefinitionsResponse (..),
    newListCostCategoryDefinitionsResponse,

    -- * Response Lenses
    listCostCategoryDefinitionsResponse_nextToken,
    listCostCategoryDefinitionsResponse_costCategoryReferences,
    listCostCategoryDefinitionsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.CostExplorer.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListCostCategoryDefinitions' smart constructor.
data ListCostCategoryDefinitions = ListCostCategoryDefinitions'
  { -- | The date when the Cost Category was effective.
    effectiveOn :: Prelude.Maybe Prelude.Text,
    -- | The token to retrieve the next set of results. Amazon Web Services
    -- provides the token when the response from a previous call has more
    -- results than the maximum page size.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The number of entries a paginated response contains.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListCostCategoryDefinitions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'effectiveOn', 'listCostCategoryDefinitions_effectiveOn' - The date when the Cost Category was effective.
--
-- 'nextToken', 'listCostCategoryDefinitions_nextToken' - The token to retrieve the next set of results. Amazon Web Services
-- provides the token when the response from a previous call has more
-- results than the maximum page size.
--
-- 'maxResults', 'listCostCategoryDefinitions_maxResults' - The number of entries a paginated response contains.
newListCostCategoryDefinitions ::
  ListCostCategoryDefinitions
newListCostCategoryDefinitions =
  ListCostCategoryDefinitions'
    { effectiveOn =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The date when the Cost Category was effective.
listCostCategoryDefinitions_effectiveOn :: Lens.Lens' ListCostCategoryDefinitions (Prelude.Maybe Prelude.Text)
listCostCategoryDefinitions_effectiveOn = Lens.lens (\ListCostCategoryDefinitions' {effectiveOn} -> effectiveOn) (\s@ListCostCategoryDefinitions' {} a -> s {effectiveOn = a} :: ListCostCategoryDefinitions)

-- | The token to retrieve the next set of results. Amazon Web Services
-- provides the token when the response from a previous call has more
-- results than the maximum page size.
listCostCategoryDefinitions_nextToken :: Lens.Lens' ListCostCategoryDefinitions (Prelude.Maybe Prelude.Text)
listCostCategoryDefinitions_nextToken = Lens.lens (\ListCostCategoryDefinitions' {nextToken} -> nextToken) (\s@ListCostCategoryDefinitions' {} a -> s {nextToken = a} :: ListCostCategoryDefinitions)

-- | The number of entries a paginated response contains.
listCostCategoryDefinitions_maxResults :: Lens.Lens' ListCostCategoryDefinitions (Prelude.Maybe Prelude.Natural)
listCostCategoryDefinitions_maxResults = Lens.lens (\ListCostCategoryDefinitions' {maxResults} -> maxResults) (\s@ListCostCategoryDefinitions' {} a -> s {maxResults = a} :: ListCostCategoryDefinitions)

instance Core.AWSRequest ListCostCategoryDefinitions where
  type
    AWSResponse ListCostCategoryDefinitions =
      ListCostCategoryDefinitionsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListCostCategoryDefinitionsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> ( x Core..?> "CostCategoryReferences"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListCostCategoryDefinitions where
  hashWithSalt _salt ListCostCategoryDefinitions' {..} =
    _salt `Prelude.hashWithSalt` effectiveOn
      `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData ListCostCategoryDefinitions where
  rnf ListCostCategoryDefinitions' {..} =
    Prelude.rnf effectiveOn
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders ListCostCategoryDefinitions where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSInsightsIndexService.ListCostCategoryDefinitions" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListCostCategoryDefinitions where
  toJSON ListCostCategoryDefinitions' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("EffectiveOn" Core..=) Prelude.<$> effectiveOn,
            ("NextToken" Core..=) Prelude.<$> nextToken,
            ("MaxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath ListCostCategoryDefinitions where
  toPath = Prelude.const "/"

instance Core.ToQuery ListCostCategoryDefinitions where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListCostCategoryDefinitionsResponse' smart constructor.
data ListCostCategoryDefinitionsResponse = ListCostCategoryDefinitionsResponse'
  { -- | The token to retrieve the next set of results. Amazon Web Services
    -- provides the token when the response from a previous call has more
    -- results than the maximum page size.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A reference to a Cost Category that contains enough information to
    -- identify the Cost Category.
    costCategoryReferences :: Prelude.Maybe [CostCategoryReference],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListCostCategoryDefinitionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listCostCategoryDefinitionsResponse_nextToken' - The token to retrieve the next set of results. Amazon Web Services
-- provides the token when the response from a previous call has more
-- results than the maximum page size.
--
-- 'costCategoryReferences', 'listCostCategoryDefinitionsResponse_costCategoryReferences' - A reference to a Cost Category that contains enough information to
-- identify the Cost Category.
--
-- 'httpStatus', 'listCostCategoryDefinitionsResponse_httpStatus' - The response's http status code.
newListCostCategoryDefinitionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListCostCategoryDefinitionsResponse
newListCostCategoryDefinitionsResponse pHttpStatus_ =
  ListCostCategoryDefinitionsResponse'
    { nextToken =
        Prelude.Nothing,
      costCategoryReferences =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token to retrieve the next set of results. Amazon Web Services
-- provides the token when the response from a previous call has more
-- results than the maximum page size.
listCostCategoryDefinitionsResponse_nextToken :: Lens.Lens' ListCostCategoryDefinitionsResponse (Prelude.Maybe Prelude.Text)
listCostCategoryDefinitionsResponse_nextToken = Lens.lens (\ListCostCategoryDefinitionsResponse' {nextToken} -> nextToken) (\s@ListCostCategoryDefinitionsResponse' {} a -> s {nextToken = a} :: ListCostCategoryDefinitionsResponse)

-- | A reference to a Cost Category that contains enough information to
-- identify the Cost Category.
listCostCategoryDefinitionsResponse_costCategoryReferences :: Lens.Lens' ListCostCategoryDefinitionsResponse (Prelude.Maybe [CostCategoryReference])
listCostCategoryDefinitionsResponse_costCategoryReferences = Lens.lens (\ListCostCategoryDefinitionsResponse' {costCategoryReferences} -> costCategoryReferences) (\s@ListCostCategoryDefinitionsResponse' {} a -> s {costCategoryReferences = a} :: ListCostCategoryDefinitionsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listCostCategoryDefinitionsResponse_httpStatus :: Lens.Lens' ListCostCategoryDefinitionsResponse Prelude.Int
listCostCategoryDefinitionsResponse_httpStatus = Lens.lens (\ListCostCategoryDefinitionsResponse' {httpStatus} -> httpStatus) (\s@ListCostCategoryDefinitionsResponse' {} a -> s {httpStatus = a} :: ListCostCategoryDefinitionsResponse)

instance
  Prelude.NFData
    ListCostCategoryDefinitionsResponse
  where
  rnf ListCostCategoryDefinitionsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf costCategoryReferences
      `Prelude.seq` Prelude.rnf httpStatus
