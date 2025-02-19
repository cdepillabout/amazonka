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
-- Module      : Amazonka.MediaConvert.ListJobTemplates
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve a JSON array of up to twenty of your job templates. This will
-- return the templates themselves, not just a list of them. To retrieve
-- the next twenty templates, use the nextToken string returned with the
-- array
--
-- This operation returns paginated results.
module Amazonka.MediaConvert.ListJobTemplates
  ( -- * Creating a Request
    ListJobTemplates (..),
    newListJobTemplates,

    -- * Request Lenses
    listJobTemplates_nextToken,
    listJobTemplates_listBy,
    listJobTemplates_maxResults,
    listJobTemplates_category,
    listJobTemplates_order,

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
import qualified Amazonka.Lens as Lens
import Amazonka.MediaConvert.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListJobTemplates' smart constructor.
data ListJobTemplates = ListJobTemplates'
  { -- | Use this string, provided with the response to a previous request, to
    -- request the next batch of job templates.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Optional. When you request a list of job templates, you can choose to
    -- list them alphabetically by NAME or chronologically by CREATION_DATE. If
    -- you don\'t specify, the service will list them by name.
    listBy :: Prelude.Maybe JobTemplateListBy,
    -- | Optional. Number of job templates, up to twenty, that will be returned
    -- at one time.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | Optionally, specify a job template category to limit responses to only
    -- job templates from that category.
    category :: Prelude.Maybe Prelude.Text,
    -- | Optional. When you request lists of resources, you can specify whether
    -- they are sorted in ASCENDING or DESCENDING order. Default varies by
    -- resource.
    order :: Prelude.Maybe Order
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
-- 'nextToken', 'listJobTemplates_nextToken' - Use this string, provided with the response to a previous request, to
-- request the next batch of job templates.
--
-- 'listBy', 'listJobTemplates_listBy' - Optional. When you request a list of job templates, you can choose to
-- list them alphabetically by NAME or chronologically by CREATION_DATE. If
-- you don\'t specify, the service will list them by name.
--
-- 'maxResults', 'listJobTemplates_maxResults' - Optional. Number of job templates, up to twenty, that will be returned
-- at one time.
--
-- 'category', 'listJobTemplates_category' - Optionally, specify a job template category to limit responses to only
-- job templates from that category.
--
-- 'order', 'listJobTemplates_order' - Optional. When you request lists of resources, you can specify whether
-- they are sorted in ASCENDING or DESCENDING order. Default varies by
-- resource.
newListJobTemplates ::
  ListJobTemplates
newListJobTemplates =
  ListJobTemplates'
    { nextToken = Prelude.Nothing,
      listBy = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      category = Prelude.Nothing,
      order = Prelude.Nothing
    }

-- | Use this string, provided with the response to a previous request, to
-- request the next batch of job templates.
listJobTemplates_nextToken :: Lens.Lens' ListJobTemplates (Prelude.Maybe Prelude.Text)
listJobTemplates_nextToken = Lens.lens (\ListJobTemplates' {nextToken} -> nextToken) (\s@ListJobTemplates' {} a -> s {nextToken = a} :: ListJobTemplates)

-- | Optional. When you request a list of job templates, you can choose to
-- list them alphabetically by NAME or chronologically by CREATION_DATE. If
-- you don\'t specify, the service will list them by name.
listJobTemplates_listBy :: Lens.Lens' ListJobTemplates (Prelude.Maybe JobTemplateListBy)
listJobTemplates_listBy = Lens.lens (\ListJobTemplates' {listBy} -> listBy) (\s@ListJobTemplates' {} a -> s {listBy = a} :: ListJobTemplates)

-- | Optional. Number of job templates, up to twenty, that will be returned
-- at one time.
listJobTemplates_maxResults :: Lens.Lens' ListJobTemplates (Prelude.Maybe Prelude.Natural)
listJobTemplates_maxResults = Lens.lens (\ListJobTemplates' {maxResults} -> maxResults) (\s@ListJobTemplates' {} a -> s {maxResults = a} :: ListJobTemplates)

-- | Optionally, specify a job template category to limit responses to only
-- job templates from that category.
listJobTemplates_category :: Lens.Lens' ListJobTemplates (Prelude.Maybe Prelude.Text)
listJobTemplates_category = Lens.lens (\ListJobTemplates' {category} -> category) (\s@ListJobTemplates' {} a -> s {category = a} :: ListJobTemplates)

-- | Optional. When you request lists of resources, you can specify whether
-- they are sorted in ASCENDING or DESCENDING order. Default varies by
-- resource.
listJobTemplates_order :: Lens.Lens' ListJobTemplates (Prelude.Maybe Order)
listJobTemplates_order = Lens.lens (\ListJobTemplates' {order} -> order) (\s@ListJobTemplates' {} a -> s {order = a} :: ListJobTemplates)

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
      `Prelude.hashWithSalt` listBy
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` category
      `Prelude.hashWithSalt` order

instance Prelude.NFData ListJobTemplates where
  rnf ListJobTemplates' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf listBy
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf category
      `Prelude.seq` Prelude.rnf order

instance Core.ToHeaders ListJobTemplates where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListJobTemplates where
  toPath = Prelude.const "/2017-08-29/jobTemplates"

instance Core.ToQuery ListJobTemplates where
  toQuery ListJobTemplates' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "listBy" Core.=: listBy,
        "maxResults" Core.=: maxResults,
        "category" Core.=: category,
        "order" Core.=: order
      ]

-- | /See:/ 'newListJobTemplatesResponse' smart constructor.
data ListJobTemplatesResponse = ListJobTemplatesResponse'
  { -- | Use this string to request the next batch of job templates.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | List of Job templates.
    jobTemplates :: Prelude.Maybe [JobTemplate],
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
-- 'nextToken', 'listJobTemplatesResponse_nextToken' - Use this string to request the next batch of job templates.
--
-- 'jobTemplates', 'listJobTemplatesResponse_jobTemplates' - List of Job templates.
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

-- | Use this string to request the next batch of job templates.
listJobTemplatesResponse_nextToken :: Lens.Lens' ListJobTemplatesResponse (Prelude.Maybe Prelude.Text)
listJobTemplatesResponse_nextToken = Lens.lens (\ListJobTemplatesResponse' {nextToken} -> nextToken) (\s@ListJobTemplatesResponse' {} a -> s {nextToken = a} :: ListJobTemplatesResponse)

-- | List of Job templates.
listJobTemplatesResponse_jobTemplates :: Lens.Lens' ListJobTemplatesResponse (Prelude.Maybe [JobTemplate])
listJobTemplatesResponse_jobTemplates = Lens.lens (\ListJobTemplatesResponse' {jobTemplates} -> jobTemplates) (\s@ListJobTemplatesResponse' {} a -> s {jobTemplates = a} :: ListJobTemplatesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listJobTemplatesResponse_httpStatus :: Lens.Lens' ListJobTemplatesResponse Prelude.Int
listJobTemplatesResponse_httpStatus = Lens.lens (\ListJobTemplatesResponse' {httpStatus} -> httpStatus) (\s@ListJobTemplatesResponse' {} a -> s {httpStatus = a} :: ListJobTemplatesResponse)

instance Prelude.NFData ListJobTemplatesResponse where
  rnf ListJobTemplatesResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf jobTemplates
      `Prelude.seq` Prelude.rnf httpStatus
