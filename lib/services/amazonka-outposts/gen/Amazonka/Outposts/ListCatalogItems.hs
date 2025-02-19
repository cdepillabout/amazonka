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
-- Module      : Amazonka.Outposts.ListCatalogItems
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the items in the catalog. Add filters to your request to return a
-- more specific list of results. Use filters to match an item class,
-- storage option, or EC2 family.
--
-- If you specify multiple filters, the filters are joined with an @AND@,
-- and the request returns only results that match all of the specified
-- filters.
module Amazonka.Outposts.ListCatalogItems
  ( -- * Creating a Request
    ListCatalogItems (..),
    newListCatalogItems,

    -- * Request Lenses
    listCatalogItems_nextToken,
    listCatalogItems_itemClassFilter,
    listCatalogItems_supportedStorageFilter,
    listCatalogItems_eC2FamilyFilter,
    listCatalogItems_maxResults,

    -- * Destructuring the Response
    ListCatalogItemsResponse (..),
    newListCatalogItemsResponse,

    -- * Response Lenses
    listCatalogItemsResponse_nextToken,
    listCatalogItemsResponse_catalogItems,
    listCatalogItemsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.Outposts.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListCatalogItems' smart constructor.
data ListCatalogItems = ListCatalogItems'
  { nextToken :: Prelude.Maybe Prelude.Text,
    -- | A filter for the class of items in the catalog.
    --
    -- Filter values are case sensitive. If you specify multiple values for a
    -- filter, the values are joined with an @OR@, and the request returns all
    -- results that match any of the specified values.
    itemClassFilter :: Prelude.Maybe [CatalogItemClass],
    -- | A filter for the storage options of items in the catalog.
    --
    -- Filter values are case sensitive. If you specify multiple values for a
    -- filter, the values are joined with an @OR@, and the request returns all
    -- results that match any of the specified values.
    supportedStorageFilter :: Prelude.Maybe [SupportedStorageEnum],
    -- | A filter for EC2 family options for items in the catalog.
    --
    -- Filter values are case sensitive. If you specify multiple values for a
    -- filter, the values are joined with an @OR@, and the request returns all
    -- results that match any of the specified values.
    eC2FamilyFilter :: Prelude.Maybe [Prelude.Text],
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListCatalogItems' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listCatalogItems_nextToken' - Undocumented member.
--
-- 'itemClassFilter', 'listCatalogItems_itemClassFilter' - A filter for the class of items in the catalog.
--
-- Filter values are case sensitive. If you specify multiple values for a
-- filter, the values are joined with an @OR@, and the request returns all
-- results that match any of the specified values.
--
-- 'supportedStorageFilter', 'listCatalogItems_supportedStorageFilter' - A filter for the storage options of items in the catalog.
--
-- Filter values are case sensitive. If you specify multiple values for a
-- filter, the values are joined with an @OR@, and the request returns all
-- results that match any of the specified values.
--
-- 'eC2FamilyFilter', 'listCatalogItems_eC2FamilyFilter' - A filter for EC2 family options for items in the catalog.
--
-- Filter values are case sensitive. If you specify multiple values for a
-- filter, the values are joined with an @OR@, and the request returns all
-- results that match any of the specified values.
--
-- 'maxResults', 'listCatalogItems_maxResults' - Undocumented member.
newListCatalogItems ::
  ListCatalogItems
newListCatalogItems =
  ListCatalogItems'
    { nextToken = Prelude.Nothing,
      itemClassFilter = Prelude.Nothing,
      supportedStorageFilter = Prelude.Nothing,
      eC2FamilyFilter = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | Undocumented member.
listCatalogItems_nextToken :: Lens.Lens' ListCatalogItems (Prelude.Maybe Prelude.Text)
listCatalogItems_nextToken = Lens.lens (\ListCatalogItems' {nextToken} -> nextToken) (\s@ListCatalogItems' {} a -> s {nextToken = a} :: ListCatalogItems)

-- | A filter for the class of items in the catalog.
--
-- Filter values are case sensitive. If you specify multiple values for a
-- filter, the values are joined with an @OR@, and the request returns all
-- results that match any of the specified values.
listCatalogItems_itemClassFilter :: Lens.Lens' ListCatalogItems (Prelude.Maybe [CatalogItemClass])
listCatalogItems_itemClassFilter = Lens.lens (\ListCatalogItems' {itemClassFilter} -> itemClassFilter) (\s@ListCatalogItems' {} a -> s {itemClassFilter = a} :: ListCatalogItems) Prelude.. Lens.mapping Lens.coerced

-- | A filter for the storage options of items in the catalog.
--
-- Filter values are case sensitive. If you specify multiple values for a
-- filter, the values are joined with an @OR@, and the request returns all
-- results that match any of the specified values.
listCatalogItems_supportedStorageFilter :: Lens.Lens' ListCatalogItems (Prelude.Maybe [SupportedStorageEnum])
listCatalogItems_supportedStorageFilter = Lens.lens (\ListCatalogItems' {supportedStorageFilter} -> supportedStorageFilter) (\s@ListCatalogItems' {} a -> s {supportedStorageFilter = a} :: ListCatalogItems) Prelude.. Lens.mapping Lens.coerced

-- | A filter for EC2 family options for items in the catalog.
--
-- Filter values are case sensitive. If you specify multiple values for a
-- filter, the values are joined with an @OR@, and the request returns all
-- results that match any of the specified values.
listCatalogItems_eC2FamilyFilter :: Lens.Lens' ListCatalogItems (Prelude.Maybe [Prelude.Text])
listCatalogItems_eC2FamilyFilter = Lens.lens (\ListCatalogItems' {eC2FamilyFilter} -> eC2FamilyFilter) (\s@ListCatalogItems' {} a -> s {eC2FamilyFilter = a} :: ListCatalogItems) Prelude.. Lens.mapping Lens.coerced

-- | Undocumented member.
listCatalogItems_maxResults :: Lens.Lens' ListCatalogItems (Prelude.Maybe Prelude.Natural)
listCatalogItems_maxResults = Lens.lens (\ListCatalogItems' {maxResults} -> maxResults) (\s@ListCatalogItems' {} a -> s {maxResults = a} :: ListCatalogItems)

instance Core.AWSRequest ListCatalogItems where
  type
    AWSResponse ListCatalogItems =
      ListCatalogItemsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListCatalogItemsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "CatalogItems" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListCatalogItems where
  hashWithSalt _salt ListCatalogItems' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` itemClassFilter
      `Prelude.hashWithSalt` supportedStorageFilter
      `Prelude.hashWithSalt` eC2FamilyFilter
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData ListCatalogItems where
  rnf ListCatalogItems' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf itemClassFilter
      `Prelude.seq` Prelude.rnf supportedStorageFilter
      `Prelude.seq` Prelude.rnf eC2FamilyFilter
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders ListCatalogItems where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListCatalogItems where
  toPath = Prelude.const "/catalog/items"

instance Core.ToQuery ListCatalogItems where
  toQuery ListCatalogItems' {..} =
    Prelude.mconcat
      [ "NextToken" Core.=: nextToken,
        "ItemClassFilter"
          Core.=: Core.toQuery
            ( Core.toQueryList "member"
                Prelude.<$> itemClassFilter
            ),
        "SupportedStorageFilter"
          Core.=: Core.toQuery
            ( Core.toQueryList "member"
                Prelude.<$> supportedStorageFilter
            ),
        "EC2FamilyFilter"
          Core.=: Core.toQuery
            ( Core.toQueryList "member"
                Prelude.<$> eC2FamilyFilter
            ),
        "MaxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListCatalogItemsResponse' smart constructor.
data ListCatalogItemsResponse = ListCatalogItemsResponse'
  { nextToken :: Prelude.Maybe Prelude.Text,
    -- | Information about the catalog items.
    catalogItems :: Prelude.Maybe [CatalogItem],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListCatalogItemsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listCatalogItemsResponse_nextToken' - Undocumented member.
--
-- 'catalogItems', 'listCatalogItemsResponse_catalogItems' - Information about the catalog items.
--
-- 'httpStatus', 'listCatalogItemsResponse_httpStatus' - The response's http status code.
newListCatalogItemsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListCatalogItemsResponse
newListCatalogItemsResponse pHttpStatus_ =
  ListCatalogItemsResponse'
    { nextToken =
        Prelude.Nothing,
      catalogItems = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
listCatalogItemsResponse_nextToken :: Lens.Lens' ListCatalogItemsResponse (Prelude.Maybe Prelude.Text)
listCatalogItemsResponse_nextToken = Lens.lens (\ListCatalogItemsResponse' {nextToken} -> nextToken) (\s@ListCatalogItemsResponse' {} a -> s {nextToken = a} :: ListCatalogItemsResponse)

-- | Information about the catalog items.
listCatalogItemsResponse_catalogItems :: Lens.Lens' ListCatalogItemsResponse (Prelude.Maybe [CatalogItem])
listCatalogItemsResponse_catalogItems = Lens.lens (\ListCatalogItemsResponse' {catalogItems} -> catalogItems) (\s@ListCatalogItemsResponse' {} a -> s {catalogItems = a} :: ListCatalogItemsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listCatalogItemsResponse_httpStatus :: Lens.Lens' ListCatalogItemsResponse Prelude.Int
listCatalogItemsResponse_httpStatus = Lens.lens (\ListCatalogItemsResponse' {httpStatus} -> httpStatus) (\s@ListCatalogItemsResponse' {} a -> s {httpStatus = a} :: ListCatalogItemsResponse)

instance Prelude.NFData ListCatalogItemsResponse where
  rnf ListCatalogItemsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf catalogItems
      `Prelude.seq` Prelude.rnf httpStatus
