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
-- Module      : Amazonka.SSM.ListComplianceItems
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- For a specified resource ID, this API operation returns a list of
-- compliance statuses for different resource types. Currently, you can
-- only specify one resource ID per call. List results depend on the
-- criteria specified in the filter.
--
-- This operation returns paginated results.
module Amazonka.SSM.ListComplianceItems
  ( -- * Creating a Request
    ListComplianceItems (..),
    newListComplianceItems,

    -- * Request Lenses
    listComplianceItems_nextToken,
    listComplianceItems_filters,
    listComplianceItems_resourceTypes,
    listComplianceItems_resourceIds,
    listComplianceItems_maxResults,

    -- * Destructuring the Response
    ListComplianceItemsResponse (..),
    newListComplianceItemsResponse,

    -- * Response Lenses
    listComplianceItemsResponse_complianceItems,
    listComplianceItemsResponse_nextToken,
    listComplianceItemsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SSM.Types

-- | /See:/ 'newListComplianceItems' smart constructor.
data ListComplianceItems = ListComplianceItems'
  { -- | A token to start the list. Use this token to get the next set of
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | One or more compliance filters. Use a filter to return a more specific
    -- list of results.
    filters :: Prelude.Maybe [ComplianceStringFilter],
    -- | The type of resource from which to get compliance information.
    -- Currently, the only supported resource type is @ManagedInstance@.
    resourceTypes :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | The ID for the resources from which to get compliance information.
    -- Currently, you can only specify one resource ID.
    resourceIds :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | The maximum number of items to return for this call. The call also
    -- returns a token that you can specify in a subsequent call to get the
    -- next set of results.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListComplianceItems' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listComplianceItems_nextToken' - A token to start the list. Use this token to get the next set of
-- results.
--
-- 'filters', 'listComplianceItems_filters' - One or more compliance filters. Use a filter to return a more specific
-- list of results.
--
-- 'resourceTypes', 'listComplianceItems_resourceTypes' - The type of resource from which to get compliance information.
-- Currently, the only supported resource type is @ManagedInstance@.
--
-- 'resourceIds', 'listComplianceItems_resourceIds' - The ID for the resources from which to get compliance information.
-- Currently, you can only specify one resource ID.
--
-- 'maxResults', 'listComplianceItems_maxResults' - The maximum number of items to return for this call. The call also
-- returns a token that you can specify in a subsequent call to get the
-- next set of results.
newListComplianceItems ::
  ListComplianceItems
newListComplianceItems =
  ListComplianceItems'
    { nextToken = Prelude.Nothing,
      filters = Prelude.Nothing,
      resourceTypes = Prelude.Nothing,
      resourceIds = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | A token to start the list. Use this token to get the next set of
-- results.
listComplianceItems_nextToken :: Lens.Lens' ListComplianceItems (Prelude.Maybe Prelude.Text)
listComplianceItems_nextToken = Lens.lens (\ListComplianceItems' {nextToken} -> nextToken) (\s@ListComplianceItems' {} a -> s {nextToken = a} :: ListComplianceItems)

-- | One or more compliance filters. Use a filter to return a more specific
-- list of results.
listComplianceItems_filters :: Lens.Lens' ListComplianceItems (Prelude.Maybe [ComplianceStringFilter])
listComplianceItems_filters = Lens.lens (\ListComplianceItems' {filters} -> filters) (\s@ListComplianceItems' {} a -> s {filters = a} :: ListComplianceItems) Prelude.. Lens.mapping Lens.coerced

-- | The type of resource from which to get compliance information.
-- Currently, the only supported resource type is @ManagedInstance@.
listComplianceItems_resourceTypes :: Lens.Lens' ListComplianceItems (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
listComplianceItems_resourceTypes = Lens.lens (\ListComplianceItems' {resourceTypes} -> resourceTypes) (\s@ListComplianceItems' {} a -> s {resourceTypes = a} :: ListComplianceItems) Prelude.. Lens.mapping Lens.coerced

-- | The ID for the resources from which to get compliance information.
-- Currently, you can only specify one resource ID.
listComplianceItems_resourceIds :: Lens.Lens' ListComplianceItems (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
listComplianceItems_resourceIds = Lens.lens (\ListComplianceItems' {resourceIds} -> resourceIds) (\s@ListComplianceItems' {} a -> s {resourceIds = a} :: ListComplianceItems) Prelude.. Lens.mapping Lens.coerced

-- | The maximum number of items to return for this call. The call also
-- returns a token that you can specify in a subsequent call to get the
-- next set of results.
listComplianceItems_maxResults :: Lens.Lens' ListComplianceItems (Prelude.Maybe Prelude.Natural)
listComplianceItems_maxResults = Lens.lens (\ListComplianceItems' {maxResults} -> maxResults) (\s@ListComplianceItems' {} a -> s {maxResults = a} :: ListComplianceItems)

instance Core.AWSPager ListComplianceItems where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listComplianceItemsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listComplianceItemsResponse_complianceItems
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listComplianceItems_nextToken
          Lens..~ rs
          Lens.^? listComplianceItemsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListComplianceItems where
  type
    AWSResponse ListComplianceItems =
      ListComplianceItemsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListComplianceItemsResponse'
            Prelude.<$> ( x Core..?> "ComplianceItems"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListComplianceItems where
  hashWithSalt _salt ListComplianceItems' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` filters
      `Prelude.hashWithSalt` resourceTypes
      `Prelude.hashWithSalt` resourceIds
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData ListComplianceItems where
  rnf ListComplianceItems' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf filters
      `Prelude.seq` Prelude.rnf resourceTypes
      `Prelude.seq` Prelude.rnf resourceIds
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders ListComplianceItems where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonSSM.ListComplianceItems" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListComplianceItems where
  toJSON ListComplianceItems' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("Filters" Core..=) Prelude.<$> filters,
            ("ResourceTypes" Core..=) Prelude.<$> resourceTypes,
            ("ResourceIds" Core..=) Prelude.<$> resourceIds,
            ("MaxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath ListComplianceItems where
  toPath = Prelude.const "/"

instance Core.ToQuery ListComplianceItems where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListComplianceItemsResponse' smart constructor.
data ListComplianceItemsResponse = ListComplianceItemsResponse'
  { -- | A list of compliance information for the specified resource ID.
    complianceItems :: Prelude.Maybe [ComplianceItem],
    -- | The token for the next set of items to return. Use this token to get the
    -- next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListComplianceItemsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'complianceItems', 'listComplianceItemsResponse_complianceItems' - A list of compliance information for the specified resource ID.
--
-- 'nextToken', 'listComplianceItemsResponse_nextToken' - The token for the next set of items to return. Use this token to get the
-- next set of results.
--
-- 'httpStatus', 'listComplianceItemsResponse_httpStatus' - The response's http status code.
newListComplianceItemsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListComplianceItemsResponse
newListComplianceItemsResponse pHttpStatus_ =
  ListComplianceItemsResponse'
    { complianceItems =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of compliance information for the specified resource ID.
listComplianceItemsResponse_complianceItems :: Lens.Lens' ListComplianceItemsResponse (Prelude.Maybe [ComplianceItem])
listComplianceItemsResponse_complianceItems = Lens.lens (\ListComplianceItemsResponse' {complianceItems} -> complianceItems) (\s@ListComplianceItemsResponse' {} a -> s {complianceItems = a} :: ListComplianceItemsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The token for the next set of items to return. Use this token to get the
-- next set of results.
listComplianceItemsResponse_nextToken :: Lens.Lens' ListComplianceItemsResponse (Prelude.Maybe Prelude.Text)
listComplianceItemsResponse_nextToken = Lens.lens (\ListComplianceItemsResponse' {nextToken} -> nextToken) (\s@ListComplianceItemsResponse' {} a -> s {nextToken = a} :: ListComplianceItemsResponse)

-- | The response's http status code.
listComplianceItemsResponse_httpStatus :: Lens.Lens' ListComplianceItemsResponse Prelude.Int
listComplianceItemsResponse_httpStatus = Lens.lens (\ListComplianceItemsResponse' {httpStatus} -> httpStatus) (\s@ListComplianceItemsResponse' {} a -> s {httpStatus = a} :: ListComplianceItemsResponse)

instance Prelude.NFData ListComplianceItemsResponse where
  rnf ListComplianceItemsResponse' {..} =
    Prelude.rnf complianceItems
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
