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
-- Module      : Amazonka.IoTDeviceAdvisor.GetSuiteRun
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a Device Advisor test suite run.
--
-- Requires permission to access the
-- <https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions GetSuiteRun>
-- action.
module Amazonka.IoTDeviceAdvisor.GetSuiteRun
  ( -- * Creating a Request
    GetSuiteRun (..),
    newGetSuiteRun,

    -- * Request Lenses
    getSuiteRun_suiteDefinitionId,
    getSuiteRun_suiteRunId,

    -- * Destructuring the Response
    GetSuiteRunResponse (..),
    newGetSuiteRunResponse,

    -- * Response Lenses
    getSuiteRunResponse_tags,
    getSuiteRunResponse_errorReason,
    getSuiteRunResponse_suiteRunArn,
    getSuiteRunResponse_suiteRunConfiguration,
    getSuiteRunResponse_status,
    getSuiteRunResponse_endTime,
    getSuiteRunResponse_suiteDefinitionVersion,
    getSuiteRunResponse_testResult,
    getSuiteRunResponse_suiteDefinitionId,
    getSuiteRunResponse_startTime,
    getSuiteRunResponse_suiteRunId,
    getSuiteRunResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IoTDeviceAdvisor.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetSuiteRun' smart constructor.
data GetSuiteRun = GetSuiteRun'
  { -- | Suite definition ID for the test suite run.
    suiteDefinitionId :: Prelude.Text,
    -- | Suite run ID for the test suite run.
    suiteRunId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetSuiteRun' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'suiteDefinitionId', 'getSuiteRun_suiteDefinitionId' - Suite definition ID for the test suite run.
--
-- 'suiteRunId', 'getSuiteRun_suiteRunId' - Suite run ID for the test suite run.
newGetSuiteRun ::
  -- | 'suiteDefinitionId'
  Prelude.Text ->
  -- | 'suiteRunId'
  Prelude.Text ->
  GetSuiteRun
newGetSuiteRun pSuiteDefinitionId_ pSuiteRunId_ =
  GetSuiteRun'
    { suiteDefinitionId =
        pSuiteDefinitionId_,
      suiteRunId = pSuiteRunId_
    }

-- | Suite definition ID for the test suite run.
getSuiteRun_suiteDefinitionId :: Lens.Lens' GetSuiteRun Prelude.Text
getSuiteRun_suiteDefinitionId = Lens.lens (\GetSuiteRun' {suiteDefinitionId} -> suiteDefinitionId) (\s@GetSuiteRun' {} a -> s {suiteDefinitionId = a} :: GetSuiteRun)

-- | Suite run ID for the test suite run.
getSuiteRun_suiteRunId :: Lens.Lens' GetSuiteRun Prelude.Text
getSuiteRun_suiteRunId = Lens.lens (\GetSuiteRun' {suiteRunId} -> suiteRunId) (\s@GetSuiteRun' {} a -> s {suiteRunId = a} :: GetSuiteRun)

instance Core.AWSRequest GetSuiteRun where
  type AWSResponse GetSuiteRun = GetSuiteRunResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetSuiteRunResponse'
            Prelude.<$> (x Core..?> "tags" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "errorReason")
            Prelude.<*> (x Core..?> "suiteRunArn")
            Prelude.<*> (x Core..?> "suiteRunConfiguration")
            Prelude.<*> (x Core..?> "status")
            Prelude.<*> (x Core..?> "endTime")
            Prelude.<*> (x Core..?> "suiteDefinitionVersion")
            Prelude.<*> (x Core..?> "testResult")
            Prelude.<*> (x Core..?> "suiteDefinitionId")
            Prelude.<*> (x Core..?> "startTime")
            Prelude.<*> (x Core..?> "suiteRunId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetSuiteRun where
  hashWithSalt _salt GetSuiteRun' {..} =
    _salt `Prelude.hashWithSalt` suiteDefinitionId
      `Prelude.hashWithSalt` suiteRunId

instance Prelude.NFData GetSuiteRun where
  rnf GetSuiteRun' {..} =
    Prelude.rnf suiteDefinitionId
      `Prelude.seq` Prelude.rnf suiteRunId

instance Core.ToHeaders GetSuiteRun where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetSuiteRun where
  toPath GetSuiteRun' {..} =
    Prelude.mconcat
      [ "/suiteDefinitions/",
        Core.toBS suiteDefinitionId,
        "/suiteRuns/",
        Core.toBS suiteRunId
      ]

instance Core.ToQuery GetSuiteRun where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetSuiteRunResponse' smart constructor.
data GetSuiteRunResponse = GetSuiteRunResponse'
  { -- | The tags attached to the suite run.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Error reason for any test suite run failure.
    errorReason :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the suite run.
    suiteRunArn :: Prelude.Maybe Prelude.Text,
    -- | Suite run configuration for the test suite run.
    suiteRunConfiguration :: Prelude.Maybe SuiteRunConfiguration,
    -- | Status for the test suite run.
    status :: Prelude.Maybe SuiteRunStatus,
    -- | Date (in Unix epoch time) when the test suite run ended.
    endTime :: Prelude.Maybe Core.POSIX,
    -- | Suite definition version for the test suite run.
    suiteDefinitionVersion :: Prelude.Maybe Prelude.Text,
    -- | Test results for the test suite run.
    testResult :: Prelude.Maybe TestResult,
    -- | Suite definition ID for the test suite run.
    suiteDefinitionId :: Prelude.Maybe Prelude.Text,
    -- | Date (in Unix epoch time) when the test suite run started.
    startTime :: Prelude.Maybe Core.POSIX,
    -- | Suite run ID for the test suite run.
    suiteRunId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetSuiteRunResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'getSuiteRunResponse_tags' - The tags attached to the suite run.
--
-- 'errorReason', 'getSuiteRunResponse_errorReason' - Error reason for any test suite run failure.
--
-- 'suiteRunArn', 'getSuiteRunResponse_suiteRunArn' - The ARN of the suite run.
--
-- 'suiteRunConfiguration', 'getSuiteRunResponse_suiteRunConfiguration' - Suite run configuration for the test suite run.
--
-- 'status', 'getSuiteRunResponse_status' - Status for the test suite run.
--
-- 'endTime', 'getSuiteRunResponse_endTime' - Date (in Unix epoch time) when the test suite run ended.
--
-- 'suiteDefinitionVersion', 'getSuiteRunResponse_suiteDefinitionVersion' - Suite definition version for the test suite run.
--
-- 'testResult', 'getSuiteRunResponse_testResult' - Test results for the test suite run.
--
-- 'suiteDefinitionId', 'getSuiteRunResponse_suiteDefinitionId' - Suite definition ID for the test suite run.
--
-- 'startTime', 'getSuiteRunResponse_startTime' - Date (in Unix epoch time) when the test suite run started.
--
-- 'suiteRunId', 'getSuiteRunResponse_suiteRunId' - Suite run ID for the test suite run.
--
-- 'httpStatus', 'getSuiteRunResponse_httpStatus' - The response's http status code.
newGetSuiteRunResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetSuiteRunResponse
newGetSuiteRunResponse pHttpStatus_ =
  GetSuiteRunResponse'
    { tags = Prelude.Nothing,
      errorReason = Prelude.Nothing,
      suiteRunArn = Prelude.Nothing,
      suiteRunConfiguration = Prelude.Nothing,
      status = Prelude.Nothing,
      endTime = Prelude.Nothing,
      suiteDefinitionVersion = Prelude.Nothing,
      testResult = Prelude.Nothing,
      suiteDefinitionId = Prelude.Nothing,
      startTime = Prelude.Nothing,
      suiteRunId = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The tags attached to the suite run.
getSuiteRunResponse_tags :: Lens.Lens' GetSuiteRunResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
getSuiteRunResponse_tags = Lens.lens (\GetSuiteRunResponse' {tags} -> tags) (\s@GetSuiteRunResponse' {} a -> s {tags = a} :: GetSuiteRunResponse) Prelude.. Lens.mapping Lens.coerced

-- | Error reason for any test suite run failure.
getSuiteRunResponse_errorReason :: Lens.Lens' GetSuiteRunResponse (Prelude.Maybe Prelude.Text)
getSuiteRunResponse_errorReason = Lens.lens (\GetSuiteRunResponse' {errorReason} -> errorReason) (\s@GetSuiteRunResponse' {} a -> s {errorReason = a} :: GetSuiteRunResponse)

-- | The ARN of the suite run.
getSuiteRunResponse_suiteRunArn :: Lens.Lens' GetSuiteRunResponse (Prelude.Maybe Prelude.Text)
getSuiteRunResponse_suiteRunArn = Lens.lens (\GetSuiteRunResponse' {suiteRunArn} -> suiteRunArn) (\s@GetSuiteRunResponse' {} a -> s {suiteRunArn = a} :: GetSuiteRunResponse)

-- | Suite run configuration for the test suite run.
getSuiteRunResponse_suiteRunConfiguration :: Lens.Lens' GetSuiteRunResponse (Prelude.Maybe SuiteRunConfiguration)
getSuiteRunResponse_suiteRunConfiguration = Lens.lens (\GetSuiteRunResponse' {suiteRunConfiguration} -> suiteRunConfiguration) (\s@GetSuiteRunResponse' {} a -> s {suiteRunConfiguration = a} :: GetSuiteRunResponse)

-- | Status for the test suite run.
getSuiteRunResponse_status :: Lens.Lens' GetSuiteRunResponse (Prelude.Maybe SuiteRunStatus)
getSuiteRunResponse_status = Lens.lens (\GetSuiteRunResponse' {status} -> status) (\s@GetSuiteRunResponse' {} a -> s {status = a} :: GetSuiteRunResponse)

-- | Date (in Unix epoch time) when the test suite run ended.
getSuiteRunResponse_endTime :: Lens.Lens' GetSuiteRunResponse (Prelude.Maybe Prelude.UTCTime)
getSuiteRunResponse_endTime = Lens.lens (\GetSuiteRunResponse' {endTime} -> endTime) (\s@GetSuiteRunResponse' {} a -> s {endTime = a} :: GetSuiteRunResponse) Prelude.. Lens.mapping Core._Time

-- | Suite definition version for the test suite run.
getSuiteRunResponse_suiteDefinitionVersion :: Lens.Lens' GetSuiteRunResponse (Prelude.Maybe Prelude.Text)
getSuiteRunResponse_suiteDefinitionVersion = Lens.lens (\GetSuiteRunResponse' {suiteDefinitionVersion} -> suiteDefinitionVersion) (\s@GetSuiteRunResponse' {} a -> s {suiteDefinitionVersion = a} :: GetSuiteRunResponse)

-- | Test results for the test suite run.
getSuiteRunResponse_testResult :: Lens.Lens' GetSuiteRunResponse (Prelude.Maybe TestResult)
getSuiteRunResponse_testResult = Lens.lens (\GetSuiteRunResponse' {testResult} -> testResult) (\s@GetSuiteRunResponse' {} a -> s {testResult = a} :: GetSuiteRunResponse)

-- | Suite definition ID for the test suite run.
getSuiteRunResponse_suiteDefinitionId :: Lens.Lens' GetSuiteRunResponse (Prelude.Maybe Prelude.Text)
getSuiteRunResponse_suiteDefinitionId = Lens.lens (\GetSuiteRunResponse' {suiteDefinitionId} -> suiteDefinitionId) (\s@GetSuiteRunResponse' {} a -> s {suiteDefinitionId = a} :: GetSuiteRunResponse)

-- | Date (in Unix epoch time) when the test suite run started.
getSuiteRunResponse_startTime :: Lens.Lens' GetSuiteRunResponse (Prelude.Maybe Prelude.UTCTime)
getSuiteRunResponse_startTime = Lens.lens (\GetSuiteRunResponse' {startTime} -> startTime) (\s@GetSuiteRunResponse' {} a -> s {startTime = a} :: GetSuiteRunResponse) Prelude.. Lens.mapping Core._Time

-- | Suite run ID for the test suite run.
getSuiteRunResponse_suiteRunId :: Lens.Lens' GetSuiteRunResponse (Prelude.Maybe Prelude.Text)
getSuiteRunResponse_suiteRunId = Lens.lens (\GetSuiteRunResponse' {suiteRunId} -> suiteRunId) (\s@GetSuiteRunResponse' {} a -> s {suiteRunId = a} :: GetSuiteRunResponse)

-- | The response's http status code.
getSuiteRunResponse_httpStatus :: Lens.Lens' GetSuiteRunResponse Prelude.Int
getSuiteRunResponse_httpStatus = Lens.lens (\GetSuiteRunResponse' {httpStatus} -> httpStatus) (\s@GetSuiteRunResponse' {} a -> s {httpStatus = a} :: GetSuiteRunResponse)

instance Prelude.NFData GetSuiteRunResponse where
  rnf GetSuiteRunResponse' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf errorReason
      `Prelude.seq` Prelude.rnf suiteRunArn
      `Prelude.seq` Prelude.rnf suiteRunConfiguration
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf endTime
      `Prelude.seq` Prelude.rnf suiteDefinitionVersion
      `Prelude.seq` Prelude.rnf testResult
      `Prelude.seq` Prelude.rnf suiteDefinitionId
      `Prelude.seq` Prelude.rnf startTime
      `Prelude.seq` Prelude.rnf suiteRunId
      `Prelude.seq` Prelude.rnf httpStatus
