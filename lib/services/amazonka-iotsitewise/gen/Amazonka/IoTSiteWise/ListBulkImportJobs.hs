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
-- Module      : Amazonka.IoTSiteWise.ListBulkImportJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API operation is in preview release for IoT SiteWise and is subject
-- to change. We recommend that you use this operation only with test data,
-- and not in production environments.
--
-- Retrieves a paginated list of bulk import job requests. For more
-- information, see
-- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/ListBulkImportJobs.html List bulk import jobs (CLI)>
-- in the /Amazon Simple Storage Service User Guide/.
--
-- This operation returns paginated results.
module Amazonka.IoTSiteWise.ListBulkImportJobs
  ( -- * Creating a Request
    ListBulkImportJobs (..),
    newListBulkImportJobs,

    -- * Request Lenses
    listBulkImportJobs_nextToken,
    listBulkImportJobs_filter,
    listBulkImportJobs_maxResults,

    -- * Destructuring the Response
    ListBulkImportJobsResponse (..),
    newListBulkImportJobsResponse,

    -- * Response Lenses
    listBulkImportJobsResponse_nextToken,
    listBulkImportJobsResponse_httpStatus,
    listBulkImportJobsResponse_jobSummaries,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IoTSiteWise.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListBulkImportJobs' smart constructor.
data ListBulkImportJobs = ListBulkImportJobs'
  { -- | The token to be used for the next set of paginated results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | You can use a filter to select the bulk import jobs that you want to
    -- retrieve.
    filter' :: Prelude.Maybe ListBulkImportJobsFilter,
    -- | The maximum number of results to return for each paginated request.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListBulkImportJobs' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listBulkImportJobs_nextToken' - The token to be used for the next set of paginated results.
--
-- 'filter'', 'listBulkImportJobs_filter' - You can use a filter to select the bulk import jobs that you want to
-- retrieve.
--
-- 'maxResults', 'listBulkImportJobs_maxResults' - The maximum number of results to return for each paginated request.
newListBulkImportJobs ::
  ListBulkImportJobs
newListBulkImportJobs =
  ListBulkImportJobs'
    { nextToken = Prelude.Nothing,
      filter' = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The token to be used for the next set of paginated results.
listBulkImportJobs_nextToken :: Lens.Lens' ListBulkImportJobs (Prelude.Maybe Prelude.Text)
listBulkImportJobs_nextToken = Lens.lens (\ListBulkImportJobs' {nextToken} -> nextToken) (\s@ListBulkImportJobs' {} a -> s {nextToken = a} :: ListBulkImportJobs)

-- | You can use a filter to select the bulk import jobs that you want to
-- retrieve.
listBulkImportJobs_filter :: Lens.Lens' ListBulkImportJobs (Prelude.Maybe ListBulkImportJobsFilter)
listBulkImportJobs_filter = Lens.lens (\ListBulkImportJobs' {filter'} -> filter') (\s@ListBulkImportJobs' {} a -> s {filter' = a} :: ListBulkImportJobs)

-- | The maximum number of results to return for each paginated request.
listBulkImportJobs_maxResults :: Lens.Lens' ListBulkImportJobs (Prelude.Maybe Prelude.Natural)
listBulkImportJobs_maxResults = Lens.lens (\ListBulkImportJobs' {maxResults} -> maxResults) (\s@ListBulkImportJobs' {} a -> s {maxResults = a} :: ListBulkImportJobs)

instance Core.AWSPager ListBulkImportJobs where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listBulkImportJobsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        (rs Lens.^. listBulkImportJobsResponse_jobSummaries) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listBulkImportJobs_nextToken
          Lens..~ rs
          Lens.^? listBulkImportJobsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListBulkImportJobs where
  type
    AWSResponse ListBulkImportJobs =
      ListBulkImportJobsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListBulkImportJobsResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..?> "jobSummaries" Core..!@ Prelude.mempty)
      )

instance Prelude.Hashable ListBulkImportJobs where
  hashWithSalt _salt ListBulkImportJobs' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` filter'
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData ListBulkImportJobs where
  rnf ListBulkImportJobs' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf filter'
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders ListBulkImportJobs where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListBulkImportJobs where
  toPath = Prelude.const "/jobs"

instance Core.ToQuery ListBulkImportJobs where
  toQuery ListBulkImportJobs' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "filter" Core.=: filter',
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListBulkImportJobsResponse' smart constructor.
data ListBulkImportJobsResponse = ListBulkImportJobsResponse'
  { -- | The token for the next set of results, or null if there are no
    -- additional results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | One or more job summaries to list.
    jobSummaries :: [JobSummary]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListBulkImportJobsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listBulkImportJobsResponse_nextToken' - The token for the next set of results, or null if there are no
-- additional results.
--
-- 'httpStatus', 'listBulkImportJobsResponse_httpStatus' - The response's http status code.
--
-- 'jobSummaries', 'listBulkImportJobsResponse_jobSummaries' - One or more job summaries to list.
newListBulkImportJobsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListBulkImportJobsResponse
newListBulkImportJobsResponse pHttpStatus_ =
  ListBulkImportJobsResponse'
    { nextToken =
        Prelude.Nothing,
      httpStatus = pHttpStatus_,
      jobSummaries = Prelude.mempty
    }

-- | The token for the next set of results, or null if there are no
-- additional results.
listBulkImportJobsResponse_nextToken :: Lens.Lens' ListBulkImportJobsResponse (Prelude.Maybe Prelude.Text)
listBulkImportJobsResponse_nextToken = Lens.lens (\ListBulkImportJobsResponse' {nextToken} -> nextToken) (\s@ListBulkImportJobsResponse' {} a -> s {nextToken = a} :: ListBulkImportJobsResponse)

-- | The response's http status code.
listBulkImportJobsResponse_httpStatus :: Lens.Lens' ListBulkImportJobsResponse Prelude.Int
listBulkImportJobsResponse_httpStatus = Lens.lens (\ListBulkImportJobsResponse' {httpStatus} -> httpStatus) (\s@ListBulkImportJobsResponse' {} a -> s {httpStatus = a} :: ListBulkImportJobsResponse)

-- | One or more job summaries to list.
listBulkImportJobsResponse_jobSummaries :: Lens.Lens' ListBulkImportJobsResponse [JobSummary]
listBulkImportJobsResponse_jobSummaries = Lens.lens (\ListBulkImportJobsResponse' {jobSummaries} -> jobSummaries) (\s@ListBulkImportJobsResponse' {} a -> s {jobSummaries = a} :: ListBulkImportJobsResponse) Prelude.. Lens.coerced

instance Prelude.NFData ListBulkImportJobsResponse where
  rnf ListBulkImportJobsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf jobSummaries
