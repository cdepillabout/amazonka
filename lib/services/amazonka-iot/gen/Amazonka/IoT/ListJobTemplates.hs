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
-- Module      : Amazonka.IoT.ListJobTemplates
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of job templates.
--
-- Requires permission to access the
-- <https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions ListJobTemplates>
-- action.
--
-- This operation returns paginated results.
module Amazonka.IoT.ListJobTemplates
  ( -- * Creating a Request
    ListJobTemplates (..),
    newListJobTemplates,

    -- * Request Lenses
    listJobTemplates_nextToken,
    listJobTemplates_maxResults,

    -- * Destructuring the Response
    ListJobTemplatesResponse (..),
    newListJobTemplatesResponse,

    -- * Response Lenses
    listJobTemplatesResponse_nextToken,
    listJobTemplatesResponse_jobTemplates,
    listJobTemplatesResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IoT.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListJobTemplates' smart constructor.
data ListJobTemplates = ListJobTemplates'
  { -- | The token to use to return the next set of results in the list.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return in the list.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListJobTemplates' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listJobTemplates_nextToken' - The token to use to return the next set of results in the list.
--
-- 'maxResults', 'listJobTemplates_maxResults' - The maximum number of results to return in the list.
newListJobTemplates ::
  ListJobTemplates
newListJobTemplates =
  ListJobTemplates'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The token to use to return the next set of results in the list.
listJobTemplates_nextToken :: Lens.Lens' ListJobTemplates (Prelude.Maybe Prelude.Text)
listJobTemplates_nextToken = Lens.lens (\ListJobTemplates' {nextToken} -> nextToken) (\s@ListJobTemplates' {} a -> s {nextToken = a} :: ListJobTemplates)

-- | The maximum number of results to return in the list.
listJobTemplates_maxResults :: Lens.Lens' ListJobTemplates (Prelude.Maybe Prelude.Natural)
listJobTemplates_maxResults = Lens.lens (\ListJobTemplates' {maxResults} -> maxResults) (\s@ListJobTemplates' {} a -> s {maxResults = a} :: ListJobTemplates)

instance Core.AWSPager ListJobTemplates where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listJobTemplatesResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listJobTemplatesResponse_jobTemplates
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listJobTemplates_nextToken
          Lens..~ rs
          Lens.^? listJobTemplatesResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListJobTemplates where
  type
    AWSResponse ListJobTemplates =
      ListJobTemplatesResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListJobTemplatesResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (x Core..?> "jobTemplates" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListJobTemplates where
  hashWithSalt _salt ListJobTemplates' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData ListJobTemplates where
  rnf ListJobTemplates' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders ListJobTemplates where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath ListJobTemplates where
  toPath = Prelude.const "/job-templates"

instance Core.ToQuery ListJobTemplates where
  toQuery ListJobTemplates' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListJobTemplatesResponse' smart constructor.
data ListJobTemplatesResponse = ListJobTemplatesResponse'
  { -- | The token for the next set of results, or __null__ if there are no
    -- additional results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of objects that contain information about the job templates.
    jobTemplates :: Prelude.Maybe [JobTemplateSummary],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListJobTemplatesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listJobTemplatesResponse_nextToken' - The token for the next set of results, or __null__ if there are no
-- additional results.
--
-- 'jobTemplates', 'listJobTemplatesResponse_jobTemplates' - A list of objects that contain information about the job templates.
--
-- 'httpStatus', 'listJobTemplatesResponse_httpStatus' - The response's http status code.
newListJobTemplatesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListJobTemplatesResponse
newListJobTemplatesResponse pHttpStatus_ =
  ListJobTemplatesResponse'
    { nextToken =
        Prelude.Nothing,
      jobTemplates = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token for the next set of results, or __null__ if there are no
-- additional results.
listJobTemplatesResponse_nextToken :: Lens.Lens' ListJobTemplatesResponse (Prelude.Maybe Prelude.Text)
listJobTemplatesResponse_nextToken = Lens.lens (\ListJobTemplatesResponse' {nextToken} -> nextToken) (\s@ListJobTemplatesResponse' {} a -> s {nextToken = a} :: ListJobTemplatesResponse)

-- | A list of objects that contain information about the job templates.
listJobTemplatesResponse_jobTemplates :: Lens.Lens' ListJobTemplatesResponse (Prelude.Maybe [JobTemplateSummary])
listJobTemplatesResponse_jobTemplates = Lens.lens (\ListJobTemplatesResponse' {jobTemplates} -> jobTemplates) (\s@ListJobTemplatesResponse' {} a -> s {jobTemplates = a} :: ListJobTemplatesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listJobTemplatesResponse_httpStatus :: Lens.Lens' ListJobTemplatesResponse Prelude.Int
listJobTemplatesResponse_httpStatus = Lens.lens (\ListJobTemplatesResponse' {httpStatus} -> httpStatus) (\s@ListJobTemplatesResponse' {} a -> s {httpStatus = a} :: ListJobTemplatesResponse)

instance Prelude.NFData ListJobTemplatesResponse where
  rnf ListJobTemplatesResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf jobTemplates
      `Prelude.seq` Prelude.rnf httpStatus
