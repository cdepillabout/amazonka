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
-- Module      : Amazonka.Glue.ListCrawls
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns all the crawls of a specified crawler. Returns only the crawls
-- that have occurred since the launch date of the crawler history feature,
-- and only retains up to 12 months of crawls. Older crawls will not be
-- returned.
--
-- You may use this API to:
--
-- -   Retrive all the crawls of a specified crawler.
--
-- -   Retrieve all the crawls of a specified crawler within a limited
--     count.
--
-- -   Retrieve all the crawls of a specified crawler in a specific time
--     range.
--
-- -   Retrieve all the crawls of a specified crawler with a particular
--     state, crawl ID, or DPU hour value.
module Amazonka.Glue.ListCrawls
  ( -- * Creating a Request
    ListCrawls (..),
    newListCrawls,

    -- * Request Lenses
    listCrawls_nextToken,
    listCrawls_filters,
    listCrawls_maxResults,
    listCrawls_crawlerName,

    -- * Destructuring the Response
    ListCrawlsResponse (..),
    newListCrawlsResponse,

    -- * Response Lenses
    listCrawlsResponse_crawls,
    listCrawlsResponse_nextToken,
    listCrawlsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.Glue.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListCrawls' smart constructor.
data ListCrawls = ListCrawls'
  { -- | A continuation token, if this is a continuation call.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Filters the crawls by the criteria you specify in a list of
    -- @CrawlsFilter@ objects.
    filters :: Prelude.Maybe [CrawlsFilter],
    -- | The maximum number of results to return. The default is 20, and maximum
    -- is 100.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The name of the crawler whose runs you want to retrieve.
    crawlerName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListCrawls' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listCrawls_nextToken' - A continuation token, if this is a continuation call.
--
-- 'filters', 'listCrawls_filters' - Filters the crawls by the criteria you specify in a list of
-- @CrawlsFilter@ objects.
--
-- 'maxResults', 'listCrawls_maxResults' - The maximum number of results to return. The default is 20, and maximum
-- is 100.
--
-- 'crawlerName', 'listCrawls_crawlerName' - The name of the crawler whose runs you want to retrieve.
newListCrawls ::
  -- | 'crawlerName'
  Prelude.Text ->
  ListCrawls
newListCrawls pCrawlerName_ =
  ListCrawls'
    { nextToken = Prelude.Nothing,
      filters = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      crawlerName = pCrawlerName_
    }

-- | A continuation token, if this is a continuation call.
listCrawls_nextToken :: Lens.Lens' ListCrawls (Prelude.Maybe Prelude.Text)
listCrawls_nextToken = Lens.lens (\ListCrawls' {nextToken} -> nextToken) (\s@ListCrawls' {} a -> s {nextToken = a} :: ListCrawls)

-- | Filters the crawls by the criteria you specify in a list of
-- @CrawlsFilter@ objects.
listCrawls_filters :: Lens.Lens' ListCrawls (Prelude.Maybe [CrawlsFilter])
listCrawls_filters = Lens.lens (\ListCrawls' {filters} -> filters) (\s@ListCrawls' {} a -> s {filters = a} :: ListCrawls) Prelude.. Lens.mapping Lens.coerced

-- | The maximum number of results to return. The default is 20, and maximum
-- is 100.
listCrawls_maxResults :: Lens.Lens' ListCrawls (Prelude.Maybe Prelude.Natural)
listCrawls_maxResults = Lens.lens (\ListCrawls' {maxResults} -> maxResults) (\s@ListCrawls' {} a -> s {maxResults = a} :: ListCrawls)

-- | The name of the crawler whose runs you want to retrieve.
listCrawls_crawlerName :: Lens.Lens' ListCrawls Prelude.Text
listCrawls_crawlerName = Lens.lens (\ListCrawls' {crawlerName} -> crawlerName) (\s@ListCrawls' {} a -> s {crawlerName = a} :: ListCrawls)

instance Core.AWSRequest ListCrawls where
  type AWSResponse ListCrawls = ListCrawlsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListCrawlsResponse'
            Prelude.<$> (x Core..?> "Crawls" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListCrawls where
  hashWithSalt _salt ListCrawls' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` filters
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` crawlerName

instance Prelude.NFData ListCrawls where
  rnf ListCrawls' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf filters
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf crawlerName

instance Core.ToHeaders ListCrawls where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("AWSGlue.ListCrawls" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListCrawls where
  toJSON ListCrawls' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("Filters" Core..=) Prelude.<$> filters,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just ("CrawlerName" Core..= crawlerName)
          ]
      )

instance Core.ToPath ListCrawls where
  toPath = Prelude.const "/"

instance Core.ToQuery ListCrawls where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListCrawlsResponse' smart constructor.
data ListCrawlsResponse = ListCrawlsResponse'
  { -- | A list of @CrawlerHistory@ objects representing the crawl runs that meet
    -- your criteria.
    crawls :: Prelude.Maybe [CrawlerHistory],
    -- | A continuation token for paginating the returned list of tokens,
    -- returned if the current segment of the list is not the last.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListCrawlsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'crawls', 'listCrawlsResponse_crawls' - A list of @CrawlerHistory@ objects representing the crawl runs that meet
-- your criteria.
--
-- 'nextToken', 'listCrawlsResponse_nextToken' - A continuation token for paginating the returned list of tokens,
-- returned if the current segment of the list is not the last.
--
-- 'httpStatus', 'listCrawlsResponse_httpStatus' - The response's http status code.
newListCrawlsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListCrawlsResponse
newListCrawlsResponse pHttpStatus_ =
  ListCrawlsResponse'
    { crawls = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of @CrawlerHistory@ objects representing the crawl runs that meet
-- your criteria.
listCrawlsResponse_crawls :: Lens.Lens' ListCrawlsResponse (Prelude.Maybe [CrawlerHistory])
listCrawlsResponse_crawls = Lens.lens (\ListCrawlsResponse' {crawls} -> crawls) (\s@ListCrawlsResponse' {} a -> s {crawls = a} :: ListCrawlsResponse) Prelude.. Lens.mapping Lens.coerced

-- | A continuation token for paginating the returned list of tokens,
-- returned if the current segment of the list is not the last.
listCrawlsResponse_nextToken :: Lens.Lens' ListCrawlsResponse (Prelude.Maybe Prelude.Text)
listCrawlsResponse_nextToken = Lens.lens (\ListCrawlsResponse' {nextToken} -> nextToken) (\s@ListCrawlsResponse' {} a -> s {nextToken = a} :: ListCrawlsResponse)

-- | The response's http status code.
listCrawlsResponse_httpStatus :: Lens.Lens' ListCrawlsResponse Prelude.Int
listCrawlsResponse_httpStatus = Lens.lens (\ListCrawlsResponse' {httpStatus} -> httpStatus) (\s@ListCrawlsResponse' {} a -> s {httpStatus = a} :: ListCrawlsResponse)

instance Prelude.NFData ListCrawlsResponse where
  rnf ListCrawlsResponse' {..} =
    Prelude.rnf crawls
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
