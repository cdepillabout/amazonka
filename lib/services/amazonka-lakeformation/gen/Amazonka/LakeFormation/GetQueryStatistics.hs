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
-- Module      : Amazonka.LakeFormation.GetQueryStatistics
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves statistics on the planning and execution of a query.
module Amazonka.LakeFormation.GetQueryStatistics
  ( -- * Creating a Request
    GetQueryStatistics (..),
    newGetQueryStatistics,

    -- * Request Lenses
    getQueryStatistics_queryId,

    -- * Destructuring the Response
    GetQueryStatisticsResponse (..),
    newGetQueryStatisticsResponse,

    -- * Response Lenses
    getQueryStatisticsResponse_querySubmissionTime,
    getQueryStatisticsResponse_executionStatistics,
    getQueryStatisticsResponse_planningStatistics,
    getQueryStatisticsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.LakeFormation.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetQueryStatistics' smart constructor.
data GetQueryStatistics = GetQueryStatistics'
  { -- | The ID of the plan query operation.
    queryId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetQueryStatistics' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'queryId', 'getQueryStatistics_queryId' - The ID of the plan query operation.
newGetQueryStatistics ::
  -- | 'queryId'
  Prelude.Text ->
  GetQueryStatistics
newGetQueryStatistics pQueryId_ =
  GetQueryStatistics' {queryId = pQueryId_}

-- | The ID of the plan query operation.
getQueryStatistics_queryId :: Lens.Lens' GetQueryStatistics Prelude.Text
getQueryStatistics_queryId = Lens.lens (\GetQueryStatistics' {queryId} -> queryId) (\s@GetQueryStatistics' {} a -> s {queryId = a} :: GetQueryStatistics)

instance Core.AWSRequest GetQueryStatistics where
  type
    AWSResponse GetQueryStatistics =
      GetQueryStatisticsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetQueryStatisticsResponse'
            Prelude.<$> (x Core..?> "QuerySubmissionTime")
            Prelude.<*> (x Core..?> "ExecutionStatistics")
            Prelude.<*> (x Core..?> "PlanningStatistics")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetQueryStatistics where
  hashWithSalt _salt GetQueryStatistics' {..} =
    _salt `Prelude.hashWithSalt` queryId

instance Prelude.NFData GetQueryStatistics where
  rnf GetQueryStatistics' {..} = Prelude.rnf queryId

instance Core.ToHeaders GetQueryStatistics where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetQueryStatistics where
  toJSON GetQueryStatistics' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("QueryId" Core..= queryId)]
      )

instance Core.ToPath GetQueryStatistics where
  toPath = Prelude.const "/GetQueryStatistics"

instance Core.ToQuery GetQueryStatistics where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetQueryStatisticsResponse' smart constructor.
data GetQueryStatisticsResponse = GetQueryStatisticsResponse'
  { -- | The time that the query was submitted.
    querySubmissionTime :: Prelude.Maybe Core.POSIX,
    -- | An @ExecutionStatistics@ structure containing execution statistics.
    executionStatistics :: Prelude.Maybe ExecutionStatistics,
    -- | A @PlanningStatistics@ structure containing query planning statistics.
    planningStatistics :: Prelude.Maybe PlanningStatistics,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetQueryStatisticsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'querySubmissionTime', 'getQueryStatisticsResponse_querySubmissionTime' - The time that the query was submitted.
--
-- 'executionStatistics', 'getQueryStatisticsResponse_executionStatistics' - An @ExecutionStatistics@ structure containing execution statistics.
--
-- 'planningStatistics', 'getQueryStatisticsResponse_planningStatistics' - A @PlanningStatistics@ structure containing query planning statistics.
--
-- 'httpStatus', 'getQueryStatisticsResponse_httpStatus' - The response's http status code.
newGetQueryStatisticsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetQueryStatisticsResponse
newGetQueryStatisticsResponse pHttpStatus_ =
  GetQueryStatisticsResponse'
    { querySubmissionTime =
        Prelude.Nothing,
      executionStatistics = Prelude.Nothing,
      planningStatistics = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The time that the query was submitted.
getQueryStatisticsResponse_querySubmissionTime :: Lens.Lens' GetQueryStatisticsResponse (Prelude.Maybe Prelude.UTCTime)
getQueryStatisticsResponse_querySubmissionTime = Lens.lens (\GetQueryStatisticsResponse' {querySubmissionTime} -> querySubmissionTime) (\s@GetQueryStatisticsResponse' {} a -> s {querySubmissionTime = a} :: GetQueryStatisticsResponse) Prelude.. Lens.mapping Core._Time

-- | An @ExecutionStatistics@ structure containing execution statistics.
getQueryStatisticsResponse_executionStatistics :: Lens.Lens' GetQueryStatisticsResponse (Prelude.Maybe ExecutionStatistics)
getQueryStatisticsResponse_executionStatistics = Lens.lens (\GetQueryStatisticsResponse' {executionStatistics} -> executionStatistics) (\s@GetQueryStatisticsResponse' {} a -> s {executionStatistics = a} :: GetQueryStatisticsResponse)

-- | A @PlanningStatistics@ structure containing query planning statistics.
getQueryStatisticsResponse_planningStatistics :: Lens.Lens' GetQueryStatisticsResponse (Prelude.Maybe PlanningStatistics)
getQueryStatisticsResponse_planningStatistics = Lens.lens (\GetQueryStatisticsResponse' {planningStatistics} -> planningStatistics) (\s@GetQueryStatisticsResponse' {} a -> s {planningStatistics = a} :: GetQueryStatisticsResponse)

-- | The response's http status code.
getQueryStatisticsResponse_httpStatus :: Lens.Lens' GetQueryStatisticsResponse Prelude.Int
getQueryStatisticsResponse_httpStatus = Lens.lens (\GetQueryStatisticsResponse' {httpStatus} -> httpStatus) (\s@GetQueryStatisticsResponse' {} a -> s {httpStatus = a} :: GetQueryStatisticsResponse)

instance Prelude.NFData GetQueryStatisticsResponse where
  rnf GetQueryStatisticsResponse' {..} =
    Prelude.rnf querySubmissionTime
      `Prelude.seq` Prelude.rnf executionStatistics
      `Prelude.seq` Prelude.rnf planningStatistics
      `Prelude.seq` Prelude.rnf httpStatus
