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
-- Module      : Amazonka.AuditManager.ListControlDomainInsightsByAssessment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists analytics data for control domains within a specified active
-- assessment.
--
-- A control domain is listed only if at least one of the controls within
-- that domain collected evidence on the @lastUpdated@ date of
-- @controlDomainInsights@. If this condition isn’t met, no data is listed
-- for that domain.
module Amazonka.AuditManager.ListControlDomainInsightsByAssessment
  ( -- * Creating a Request
    ListControlDomainInsightsByAssessment (..),
    newListControlDomainInsightsByAssessment,

    -- * Request Lenses
    listControlDomainInsightsByAssessment_nextToken,
    listControlDomainInsightsByAssessment_maxResults,
    listControlDomainInsightsByAssessment_assessmentId,

    -- * Destructuring the Response
    ListControlDomainInsightsByAssessmentResponse (..),
    newListControlDomainInsightsByAssessmentResponse,

    -- * Response Lenses
    listControlDomainInsightsByAssessmentResponse_nextToken,
    listControlDomainInsightsByAssessmentResponse_controlDomainInsights,
    listControlDomainInsightsByAssessmentResponse_httpStatus,
  )
where

import Amazonka.AuditManager.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListControlDomainInsightsByAssessment' smart constructor.
data ListControlDomainInsightsByAssessment = ListControlDomainInsightsByAssessment'
  { -- | The pagination token that\'s used to fetch the next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Represents the maximum number of results on a page or for an API request
    -- call.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The unique identifier for the active assessment.
    assessmentId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListControlDomainInsightsByAssessment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listControlDomainInsightsByAssessment_nextToken' - The pagination token that\'s used to fetch the next set of results.
--
-- 'maxResults', 'listControlDomainInsightsByAssessment_maxResults' - Represents the maximum number of results on a page or for an API request
-- call.
--
-- 'assessmentId', 'listControlDomainInsightsByAssessment_assessmentId' - The unique identifier for the active assessment.
newListControlDomainInsightsByAssessment ::
  -- | 'assessmentId'
  Prelude.Text ->
  ListControlDomainInsightsByAssessment
newListControlDomainInsightsByAssessment
  pAssessmentId_ =
    ListControlDomainInsightsByAssessment'
      { nextToken =
          Prelude.Nothing,
        maxResults = Prelude.Nothing,
        assessmentId = pAssessmentId_
      }

-- | The pagination token that\'s used to fetch the next set of results.
listControlDomainInsightsByAssessment_nextToken :: Lens.Lens' ListControlDomainInsightsByAssessment (Prelude.Maybe Prelude.Text)
listControlDomainInsightsByAssessment_nextToken = Lens.lens (\ListControlDomainInsightsByAssessment' {nextToken} -> nextToken) (\s@ListControlDomainInsightsByAssessment' {} a -> s {nextToken = a} :: ListControlDomainInsightsByAssessment)

-- | Represents the maximum number of results on a page or for an API request
-- call.
listControlDomainInsightsByAssessment_maxResults :: Lens.Lens' ListControlDomainInsightsByAssessment (Prelude.Maybe Prelude.Natural)
listControlDomainInsightsByAssessment_maxResults = Lens.lens (\ListControlDomainInsightsByAssessment' {maxResults} -> maxResults) (\s@ListControlDomainInsightsByAssessment' {} a -> s {maxResults = a} :: ListControlDomainInsightsByAssessment)

-- | The unique identifier for the active assessment.
listControlDomainInsightsByAssessment_assessmentId :: Lens.Lens' ListControlDomainInsightsByAssessment Prelude.Text
listControlDomainInsightsByAssessment_assessmentId = Lens.lens (\ListControlDomainInsightsByAssessment' {assessmentId} -> assessmentId) (\s@ListControlDomainInsightsByAssessment' {} a -> s {assessmentId = a} :: ListControlDomainInsightsByAssessment)

instance
  Core.AWSRequest
    ListControlDomainInsightsByAssessment
  where
  type
    AWSResponse
      ListControlDomainInsightsByAssessment =
      ListControlDomainInsightsByAssessmentResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListControlDomainInsightsByAssessmentResponse'
            Prelude.<$> (x Core..?> "nextToken")
              Prelude.<*> ( x Core..?> "controlDomainInsights"
                              Core..!@ Prelude.mempty
                          )
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    ListControlDomainInsightsByAssessment
  where
  hashWithSalt
    _salt
    ListControlDomainInsightsByAssessment' {..} =
      _salt `Prelude.hashWithSalt` nextToken
        `Prelude.hashWithSalt` maxResults
        `Prelude.hashWithSalt` assessmentId

instance
  Prelude.NFData
    ListControlDomainInsightsByAssessment
  where
  rnf ListControlDomainInsightsByAssessment' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf assessmentId

instance
  Core.ToHeaders
    ListControlDomainInsightsByAssessment
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance
  Core.ToPath
    ListControlDomainInsightsByAssessment
  where
  toPath =
    Prelude.const
      "/insights/control-domains-by-assessment"

instance
  Core.ToQuery
    ListControlDomainInsightsByAssessment
  where
  toQuery ListControlDomainInsightsByAssessment' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults,
        "assessmentId" Core.=: assessmentId
      ]

-- | /See:/ 'newListControlDomainInsightsByAssessmentResponse' smart constructor.
data ListControlDomainInsightsByAssessmentResponse = ListControlDomainInsightsByAssessmentResponse'
  { -- | The pagination token that\'s used to fetch the next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The control domain analytics data that the
    -- @ListControlDomainInsightsByAssessment@ API returned.
    controlDomainInsights :: Prelude.Maybe [ControlDomainInsights],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListControlDomainInsightsByAssessmentResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listControlDomainInsightsByAssessmentResponse_nextToken' - The pagination token that\'s used to fetch the next set of results.
--
-- 'controlDomainInsights', 'listControlDomainInsightsByAssessmentResponse_controlDomainInsights' - The control domain analytics data that the
-- @ListControlDomainInsightsByAssessment@ API returned.
--
-- 'httpStatus', 'listControlDomainInsightsByAssessmentResponse_httpStatus' - The response's http status code.
newListControlDomainInsightsByAssessmentResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListControlDomainInsightsByAssessmentResponse
newListControlDomainInsightsByAssessmentResponse
  pHttpStatus_ =
    ListControlDomainInsightsByAssessmentResponse'
      { nextToken =
          Prelude.Nothing,
        controlDomainInsights =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The pagination token that\'s used to fetch the next set of results.
listControlDomainInsightsByAssessmentResponse_nextToken :: Lens.Lens' ListControlDomainInsightsByAssessmentResponse (Prelude.Maybe Prelude.Text)
listControlDomainInsightsByAssessmentResponse_nextToken = Lens.lens (\ListControlDomainInsightsByAssessmentResponse' {nextToken} -> nextToken) (\s@ListControlDomainInsightsByAssessmentResponse' {} a -> s {nextToken = a} :: ListControlDomainInsightsByAssessmentResponse)

-- | The control domain analytics data that the
-- @ListControlDomainInsightsByAssessment@ API returned.
listControlDomainInsightsByAssessmentResponse_controlDomainInsights :: Lens.Lens' ListControlDomainInsightsByAssessmentResponse (Prelude.Maybe [ControlDomainInsights])
listControlDomainInsightsByAssessmentResponse_controlDomainInsights = Lens.lens (\ListControlDomainInsightsByAssessmentResponse' {controlDomainInsights} -> controlDomainInsights) (\s@ListControlDomainInsightsByAssessmentResponse' {} a -> s {controlDomainInsights = a} :: ListControlDomainInsightsByAssessmentResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listControlDomainInsightsByAssessmentResponse_httpStatus :: Lens.Lens' ListControlDomainInsightsByAssessmentResponse Prelude.Int
listControlDomainInsightsByAssessmentResponse_httpStatus = Lens.lens (\ListControlDomainInsightsByAssessmentResponse' {httpStatus} -> httpStatus) (\s@ListControlDomainInsightsByAssessmentResponse' {} a -> s {httpStatus = a} :: ListControlDomainInsightsByAssessmentResponse)

instance
  Prelude.NFData
    ListControlDomainInsightsByAssessmentResponse
  where
  rnf
    ListControlDomainInsightsByAssessmentResponse' {..} =
      Prelude.rnf nextToken
        `Prelude.seq` Prelude.rnf controlDomainInsights
        `Prelude.seq` Prelude.rnf httpStatus
