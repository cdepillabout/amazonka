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
-- Module      : Amazonka.Outposts.ListSites
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the Outpost sites for your Amazon Web Services account. Add
-- operating address filters to your request to return a more specific list
-- of results. Use filters to match site city, country code, or
-- state\/region of the operating address.
--
-- If you specify multiple filters, the filters are joined with an @AND@,
-- and the request returns only results that match all of the specified
-- filters.
module Amazonka.Outposts.ListSites
  ( -- * Creating a Request
    ListSites (..),
    newListSites,

    -- * Request Lenses
    listSites_operatingAddressCityFilter,
    listSites_nextToken,
    listSites_maxResults,
    listSites_operatingAddressCountryCodeFilter,
    listSites_operatingAddressStateOrRegionFilter,

    -- * Destructuring the Response
    ListSitesResponse (..),
    newListSitesResponse,

    -- * Response Lenses
    listSitesResponse_sites,
    listSitesResponse_nextToken,
    listSitesResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.Outposts.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListSites' smart constructor.
data ListSites = ListSites'
  { -- | A filter for the city of the Outpost site.
    --
    -- Filter values are case sensitive. If you specify multiple values for a
    -- filter, the values are joined with an @OR@, and the request returns all
    -- results that match any of the specified values.
    operatingAddressCityFilter :: Prelude.Maybe [Prelude.Text],
    nextToken :: Prelude.Maybe Prelude.Text,
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | A filter for the country code of the Outpost site.
    --
    -- Filter values are case sensitive. If you specify multiple values for a
    -- filter, the values are joined with an @OR@, and the request returns all
    -- results that match any of the specified values.
    operatingAddressCountryCodeFilter :: Prelude.Maybe [Prelude.Text],
    -- | A filter for the state\/region of the Outpost site.
    --
    -- Filter values are case sensitive. If you specify multiple values for a
    -- filter, the values are joined with an @OR@, and the request returns all
    -- results that match any of the specified values.
    operatingAddressStateOrRegionFilter :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListSites' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'operatingAddressCityFilter', 'listSites_operatingAddressCityFilter' - A filter for the city of the Outpost site.
--
-- Filter values are case sensitive. If you specify multiple values for a
-- filter, the values are joined with an @OR@, and the request returns all
-- results that match any of the specified values.
--
-- 'nextToken', 'listSites_nextToken' - Undocumented member.
--
-- 'maxResults', 'listSites_maxResults' - Undocumented member.
--
-- 'operatingAddressCountryCodeFilter', 'listSites_operatingAddressCountryCodeFilter' - A filter for the country code of the Outpost site.
--
-- Filter values are case sensitive. If you specify multiple values for a
-- filter, the values are joined with an @OR@, and the request returns all
-- results that match any of the specified values.
--
-- 'operatingAddressStateOrRegionFilter', 'listSites_operatingAddressStateOrRegionFilter' - A filter for the state\/region of the Outpost site.
--
-- Filter values are case sensitive. If you specify multiple values for a
-- filter, the values are joined with an @OR@, and the request returns all
-- results that match any of the specified values.
newListSites ::
  ListSites
newListSites =
  ListSites'
    { operatingAddressCityFilter =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      operatingAddressCountryCodeFilter = Prelude.Nothing,
      operatingAddressStateOrRegionFilter =
        Prelude.Nothing
    }

-- | A filter for the city of the Outpost site.
--
-- Filter values are case sensitive. If you specify multiple values for a
-- filter, the values are joined with an @OR@, and the request returns all
-- results that match any of the specified values.
listSites_operatingAddressCityFilter :: Lens.Lens' ListSites (Prelude.Maybe [Prelude.Text])
listSites_operatingAddressCityFilter = Lens.lens (\ListSites' {operatingAddressCityFilter} -> operatingAddressCityFilter) (\s@ListSites' {} a -> s {operatingAddressCityFilter = a} :: ListSites) Prelude.. Lens.mapping Lens.coerced

-- | Undocumented member.
listSites_nextToken :: Lens.Lens' ListSites (Prelude.Maybe Prelude.Text)
listSites_nextToken = Lens.lens (\ListSites' {nextToken} -> nextToken) (\s@ListSites' {} a -> s {nextToken = a} :: ListSites)

-- | Undocumented member.
listSites_maxResults :: Lens.Lens' ListSites (Prelude.Maybe Prelude.Natural)
listSites_maxResults = Lens.lens (\ListSites' {maxResults} -> maxResults) (\s@ListSites' {} a -> s {maxResults = a} :: ListSites)

-- | A filter for the country code of the Outpost site.
--
-- Filter values are case sensitive. If you specify multiple values for a
-- filter, the values are joined with an @OR@, and the request returns all
-- results that match any of the specified values.
listSites_operatingAddressCountryCodeFilter :: Lens.Lens' ListSites (Prelude.Maybe [Prelude.Text])
listSites_operatingAddressCountryCodeFilter = Lens.lens (\ListSites' {operatingAddressCountryCodeFilter} -> operatingAddressCountryCodeFilter) (\s@ListSites' {} a -> s {operatingAddressCountryCodeFilter = a} :: ListSites) Prelude.. Lens.mapping Lens.coerced

-- | A filter for the state\/region of the Outpost site.
--
-- Filter values are case sensitive. If you specify multiple values for a
-- filter, the values are joined with an @OR@, and the request returns all
-- results that match any of the specified values.
listSites_operatingAddressStateOrRegionFilter :: Lens.Lens' ListSites (Prelude.Maybe [Prelude.Text])
listSites_operatingAddressStateOrRegionFilter = Lens.lens (\ListSites' {operatingAddressStateOrRegionFilter} -> operatingAddressStateOrRegionFilter) (\s@ListSites' {} a -> s {operatingAddressStateOrRegionFilter = a} :: ListSites) Prelude.. Lens.mapping Lens.coerced

instance Core.AWSRequest ListSites where
  type AWSResponse ListSites = ListSitesResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListSitesResponse'
            Prelude.<$> (x Core..?> "Sites" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListSites where
  hashWithSalt _salt ListSites' {..} =
    _salt
      `Prelude.hashWithSalt` operatingAddressCityFilter
      `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` operatingAddressCountryCodeFilter
      `Prelude.hashWithSalt` operatingAddressStateOrRegionFilter

instance Prelude.NFData ListSites where
  rnf ListSites' {..} =
    Prelude.rnf operatingAddressCityFilter
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf operatingAddressCountryCodeFilter
      `Prelude.seq` Prelude.rnf operatingAddressStateOrRegionFilter

instance Core.ToHeaders ListSites where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListSites where
  toPath = Prelude.const "/sites"

instance Core.ToQuery ListSites where
  toQuery ListSites' {..} =
    Prelude.mconcat
      [ "OperatingAddressCityFilter"
          Core.=: Core.toQuery
            ( Core.toQueryList "member"
                Prelude.<$> operatingAddressCityFilter
            ),
        "NextToken" Core.=: nextToken,
        "MaxResults" Core.=: maxResults,
        "OperatingAddressCountryCodeFilter"
          Core.=: Core.toQuery
            ( Core.toQueryList "member"
                Prelude.<$> operatingAddressCountryCodeFilter
            ),
        "OperatingAddressStateOrRegionFilter"
          Core.=: Core.toQuery
            ( Core.toQueryList "member"
                Prelude.<$> operatingAddressStateOrRegionFilter
            )
      ]

-- | /See:/ 'newListSitesResponse' smart constructor.
data ListSitesResponse = ListSitesResponse'
  { sites :: Prelude.Maybe [Site],
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListSitesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sites', 'listSitesResponse_sites' - Undocumented member.
--
-- 'nextToken', 'listSitesResponse_nextToken' - Undocumented member.
--
-- 'httpStatus', 'listSitesResponse_httpStatus' - The response's http status code.
newListSitesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListSitesResponse
newListSitesResponse pHttpStatus_ =
  ListSitesResponse'
    { sites = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
listSitesResponse_sites :: Lens.Lens' ListSitesResponse (Prelude.Maybe [Site])
listSitesResponse_sites = Lens.lens (\ListSitesResponse' {sites} -> sites) (\s@ListSitesResponse' {} a -> s {sites = a} :: ListSitesResponse) Prelude.. Lens.mapping Lens.coerced

-- | Undocumented member.
listSitesResponse_nextToken :: Lens.Lens' ListSitesResponse (Prelude.Maybe Prelude.Text)
listSitesResponse_nextToken = Lens.lens (\ListSitesResponse' {nextToken} -> nextToken) (\s@ListSitesResponse' {} a -> s {nextToken = a} :: ListSitesResponse)

-- | The response's http status code.
listSitesResponse_httpStatus :: Lens.Lens' ListSitesResponse Prelude.Int
listSitesResponse_httpStatus = Lens.lens (\ListSitesResponse' {httpStatus} -> httpStatus) (\s@ListSitesResponse' {} a -> s {httpStatus = a} :: ListSitesResponse)

instance Prelude.NFData ListSitesResponse where
  rnf ListSitesResponse' {..} =
    Prelude.rnf sites
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
