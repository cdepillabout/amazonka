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
-- Module      : Amazonka.DMS.DescribeFleetAdvisorLsaAnalysis
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides descriptions of large-scale assessment (LSA) analyses produced
-- by your Fleet Advisor collectors.
module Amazonka.DMS.DescribeFleetAdvisorLsaAnalysis
  ( -- * Creating a Request
    DescribeFleetAdvisorLsaAnalysis (..),
    newDescribeFleetAdvisorLsaAnalysis,

    -- * Request Lenses
    describeFleetAdvisorLsaAnalysis_nextToken,
    describeFleetAdvisorLsaAnalysis_maxRecords,

    -- * Destructuring the Response
    DescribeFleetAdvisorLsaAnalysisResponse (..),
    newDescribeFleetAdvisorLsaAnalysisResponse,

    -- * Response Lenses
    describeFleetAdvisorLsaAnalysisResponse_nextToken,
    describeFleetAdvisorLsaAnalysisResponse_analysis,
    describeFleetAdvisorLsaAnalysisResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.DMS.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeFleetAdvisorLsaAnalysis' smart constructor.
data DescribeFleetAdvisorLsaAnalysis = DescribeFleetAdvisorLsaAnalysis'
  { -- | If @NextToken@ is returned by a previous response, there are more
    -- results available. The value of @NextToken@ is a unique pagination token
    -- for each page. Make the call again using the returned token to retrieve
    -- the next page. Keep all other arguments unchanged.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Sets the maximum number of records returned in the response.
    maxRecords :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeFleetAdvisorLsaAnalysis' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeFleetAdvisorLsaAnalysis_nextToken' - If @NextToken@ is returned by a previous response, there are more
-- results available. The value of @NextToken@ is a unique pagination token
-- for each page. Make the call again using the returned token to retrieve
-- the next page. Keep all other arguments unchanged.
--
-- 'maxRecords', 'describeFleetAdvisorLsaAnalysis_maxRecords' - Sets the maximum number of records returned in the response.
newDescribeFleetAdvisorLsaAnalysis ::
  DescribeFleetAdvisorLsaAnalysis
newDescribeFleetAdvisorLsaAnalysis =
  DescribeFleetAdvisorLsaAnalysis'
    { nextToken =
        Prelude.Nothing,
      maxRecords = Prelude.Nothing
    }

-- | If @NextToken@ is returned by a previous response, there are more
-- results available. The value of @NextToken@ is a unique pagination token
-- for each page. Make the call again using the returned token to retrieve
-- the next page. Keep all other arguments unchanged.
describeFleetAdvisorLsaAnalysis_nextToken :: Lens.Lens' DescribeFleetAdvisorLsaAnalysis (Prelude.Maybe Prelude.Text)
describeFleetAdvisorLsaAnalysis_nextToken = Lens.lens (\DescribeFleetAdvisorLsaAnalysis' {nextToken} -> nextToken) (\s@DescribeFleetAdvisorLsaAnalysis' {} a -> s {nextToken = a} :: DescribeFleetAdvisorLsaAnalysis)

-- | Sets the maximum number of records returned in the response.
describeFleetAdvisorLsaAnalysis_maxRecords :: Lens.Lens' DescribeFleetAdvisorLsaAnalysis (Prelude.Maybe Prelude.Int)
describeFleetAdvisorLsaAnalysis_maxRecords = Lens.lens (\DescribeFleetAdvisorLsaAnalysis' {maxRecords} -> maxRecords) (\s@DescribeFleetAdvisorLsaAnalysis' {} a -> s {maxRecords = a} :: DescribeFleetAdvisorLsaAnalysis)

instance
  Core.AWSRequest
    DescribeFleetAdvisorLsaAnalysis
  where
  type
    AWSResponse DescribeFleetAdvisorLsaAnalysis =
      DescribeFleetAdvisorLsaAnalysisResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeFleetAdvisorLsaAnalysisResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "Analysis" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DescribeFleetAdvisorLsaAnalysis
  where
  hashWithSalt
    _salt
    DescribeFleetAdvisorLsaAnalysis' {..} =
      _salt `Prelude.hashWithSalt` nextToken
        `Prelude.hashWithSalt` maxRecords

instance
  Prelude.NFData
    DescribeFleetAdvisorLsaAnalysis
  where
  rnf DescribeFleetAdvisorLsaAnalysis' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxRecords

instance
  Core.ToHeaders
    DescribeFleetAdvisorLsaAnalysis
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonDMSv20160101.DescribeFleetAdvisorLsaAnalysis" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeFleetAdvisorLsaAnalysis where
  toJSON DescribeFleetAdvisorLsaAnalysis' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("MaxRecords" Core..=) Prelude.<$> maxRecords
          ]
      )

instance Core.ToPath DescribeFleetAdvisorLsaAnalysis where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeFleetAdvisorLsaAnalysis where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeFleetAdvisorLsaAnalysisResponse' smart constructor.
data DescribeFleetAdvisorLsaAnalysisResponse = DescribeFleetAdvisorLsaAnalysisResponse'
  { -- | If @NextToken@ is returned, there are more results available. The value
    -- of @NextToken@ is a unique pagination token for each page. Make the call
    -- again using the returned token to retrieve the next page. Keep all other
    -- arguments unchanged.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of @FleetAdvisorLsaAnalysisResponse@ objects.
    analysis :: Prelude.Maybe [FleetAdvisorLsaAnalysisResponse],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeFleetAdvisorLsaAnalysisResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeFleetAdvisorLsaAnalysisResponse_nextToken' - If @NextToken@ is returned, there are more results available. The value
-- of @NextToken@ is a unique pagination token for each page. Make the call
-- again using the returned token to retrieve the next page. Keep all other
-- arguments unchanged.
--
-- 'analysis', 'describeFleetAdvisorLsaAnalysisResponse_analysis' - A list of @FleetAdvisorLsaAnalysisResponse@ objects.
--
-- 'httpStatus', 'describeFleetAdvisorLsaAnalysisResponse_httpStatus' - The response's http status code.
newDescribeFleetAdvisorLsaAnalysisResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeFleetAdvisorLsaAnalysisResponse
newDescribeFleetAdvisorLsaAnalysisResponse
  pHttpStatus_ =
    DescribeFleetAdvisorLsaAnalysisResponse'
      { nextToken =
          Prelude.Nothing,
        analysis = Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | If @NextToken@ is returned, there are more results available. The value
-- of @NextToken@ is a unique pagination token for each page. Make the call
-- again using the returned token to retrieve the next page. Keep all other
-- arguments unchanged.
describeFleetAdvisorLsaAnalysisResponse_nextToken :: Lens.Lens' DescribeFleetAdvisorLsaAnalysisResponse (Prelude.Maybe Prelude.Text)
describeFleetAdvisorLsaAnalysisResponse_nextToken = Lens.lens (\DescribeFleetAdvisorLsaAnalysisResponse' {nextToken} -> nextToken) (\s@DescribeFleetAdvisorLsaAnalysisResponse' {} a -> s {nextToken = a} :: DescribeFleetAdvisorLsaAnalysisResponse)

-- | A list of @FleetAdvisorLsaAnalysisResponse@ objects.
describeFleetAdvisorLsaAnalysisResponse_analysis :: Lens.Lens' DescribeFleetAdvisorLsaAnalysisResponse (Prelude.Maybe [FleetAdvisorLsaAnalysisResponse])
describeFleetAdvisorLsaAnalysisResponse_analysis = Lens.lens (\DescribeFleetAdvisorLsaAnalysisResponse' {analysis} -> analysis) (\s@DescribeFleetAdvisorLsaAnalysisResponse' {} a -> s {analysis = a} :: DescribeFleetAdvisorLsaAnalysisResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeFleetAdvisorLsaAnalysisResponse_httpStatus :: Lens.Lens' DescribeFleetAdvisorLsaAnalysisResponse Prelude.Int
describeFleetAdvisorLsaAnalysisResponse_httpStatus = Lens.lens (\DescribeFleetAdvisorLsaAnalysisResponse' {httpStatus} -> httpStatus) (\s@DescribeFleetAdvisorLsaAnalysisResponse' {} a -> s {httpStatus = a} :: DescribeFleetAdvisorLsaAnalysisResponse)

instance
  Prelude.NFData
    DescribeFleetAdvisorLsaAnalysisResponse
  where
  rnf DescribeFleetAdvisorLsaAnalysisResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf analysis
      `Prelude.seq` Prelude.rnf httpStatus
