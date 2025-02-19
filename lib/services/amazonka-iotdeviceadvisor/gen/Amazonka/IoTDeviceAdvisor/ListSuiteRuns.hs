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
-- Module      : Amazonka.IoTDeviceAdvisor.ListSuiteRuns
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists runs of the specified Device Advisor test suite. You can list all
-- runs of the test suite, or the runs of a specific version of the test
-- suite.
--
-- Requires permission to access the
-- <https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions ListSuiteRuns>
-- action.
module Amazonka.IoTDeviceAdvisor.ListSuiteRuns
  ( -- * Creating a Request
    ListSuiteRuns (..),
    newListSuiteRuns,

    -- * Request Lenses
    listSuiteRuns_nextToken,
    listSuiteRuns_maxResults,
    listSuiteRuns_suiteDefinitionVersion,
    listSuiteRuns_suiteDefinitionId,

    -- * Destructuring the Response
    ListSuiteRunsResponse (..),
    newListSuiteRunsResponse,

    -- * Response Lenses
    listSuiteRunsResponse_suiteRunsList,
    listSuiteRunsResponse_nextToken,
    listSuiteRunsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IoTDeviceAdvisor.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListSuiteRuns' smart constructor.
data ListSuiteRuns = ListSuiteRuns'
  { -- | A token to retrieve the next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return at once.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | Must be passed along with @suiteDefinitionId@. Lists the test suite runs
    -- of the specified test suite based on suite definition version.
    suiteDefinitionVersion :: Prelude.Maybe Prelude.Text,
    -- | Lists the test suite runs of the specified test suite based on suite
    -- definition ID.
    suiteDefinitionId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListSuiteRuns' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listSuiteRuns_nextToken' - A token to retrieve the next set of results.
--
-- 'maxResults', 'listSuiteRuns_maxResults' - The maximum number of results to return at once.
--
-- 'suiteDefinitionVersion', 'listSuiteRuns_suiteDefinitionVersion' - Must be passed along with @suiteDefinitionId@. Lists the test suite runs
-- of the specified test suite based on suite definition version.
--
-- 'suiteDefinitionId', 'listSuiteRuns_suiteDefinitionId' - Lists the test suite runs of the specified test suite based on suite
-- definition ID.
newListSuiteRuns ::
  ListSuiteRuns
newListSuiteRuns =
  ListSuiteRuns'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      suiteDefinitionVersion = Prelude.Nothing,
      suiteDefinitionId = Prelude.Nothing
    }

-- | A token to retrieve the next set of results.
listSuiteRuns_nextToken :: Lens.Lens' ListSuiteRuns (Prelude.Maybe Prelude.Text)
listSuiteRuns_nextToken = Lens.lens (\ListSuiteRuns' {nextToken} -> nextToken) (\s@ListSuiteRuns' {} a -> s {nextToken = a} :: ListSuiteRuns)

-- | The maximum number of results to return at once.
listSuiteRuns_maxResults :: Lens.Lens' ListSuiteRuns (Prelude.Maybe Prelude.Natural)
listSuiteRuns_maxResults = Lens.lens (\ListSuiteRuns' {maxResults} -> maxResults) (\s@ListSuiteRuns' {} a -> s {maxResults = a} :: ListSuiteRuns)

-- | Must be passed along with @suiteDefinitionId@. Lists the test suite runs
-- of the specified test suite based on suite definition version.
listSuiteRuns_suiteDefinitionVersion :: Lens.Lens' ListSuiteRuns (Prelude.Maybe Prelude.Text)
listSuiteRuns_suiteDefinitionVersion = Lens.lens (\ListSuiteRuns' {suiteDefinitionVersion} -> suiteDefinitionVersion) (\s@ListSuiteRuns' {} a -> s {suiteDefinitionVersion = a} :: ListSuiteRuns)

-- | Lists the test suite runs of the specified test suite based on suite
-- definition ID.
listSuiteRuns_suiteDefinitionId :: Lens.Lens' ListSuiteRuns (Prelude.Maybe Prelude.Text)
listSuiteRuns_suiteDefinitionId = Lens.lens (\ListSuiteRuns' {suiteDefinitionId} -> suiteDefinitionId) (\s@ListSuiteRuns' {} a -> s {suiteDefinitionId = a} :: ListSuiteRuns)

instance Core.AWSRequest ListSuiteRuns where
  type
    AWSResponse ListSuiteRuns =
      ListSuiteRunsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListSuiteRunsResponse'
            Prelude.<$> (x Core..?> "suiteRunsList" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListSuiteRuns where
  hashWithSalt _salt ListSuiteRuns' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` suiteDefinitionVersion
      `Prelude.hashWithSalt` suiteDefinitionId

instance Prelude.NFData ListSuiteRuns where
  rnf ListSuiteRuns' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf suiteDefinitionVersion
      `Prelude.seq` Prelude.rnf suiteDefinitionId

instance Core.ToHeaders ListSuiteRuns where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListSuiteRuns where
  toPath = Prelude.const "/suiteRuns"

instance Core.ToQuery ListSuiteRuns where
  toQuery ListSuiteRuns' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults,
        "suiteDefinitionVersion"
          Core.=: suiteDefinitionVersion,
        "suiteDefinitionId" Core.=: suiteDefinitionId
      ]

-- | /See:/ 'newListSuiteRunsResponse' smart constructor.
data ListSuiteRunsResponse = ListSuiteRunsResponse'
  { -- | An array of objects that provide summaries of information about the
    -- suite runs in the list.
    suiteRunsList :: Prelude.Maybe [SuiteRunInformation],
    -- | A token to retrieve the next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListSuiteRunsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'suiteRunsList', 'listSuiteRunsResponse_suiteRunsList' - An array of objects that provide summaries of information about the
-- suite runs in the list.
--
-- 'nextToken', 'listSuiteRunsResponse_nextToken' - A token to retrieve the next set of results.
--
-- 'httpStatus', 'listSuiteRunsResponse_httpStatus' - The response's http status code.
newListSuiteRunsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListSuiteRunsResponse
newListSuiteRunsResponse pHttpStatus_ =
  ListSuiteRunsResponse'
    { suiteRunsList =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An array of objects that provide summaries of information about the
-- suite runs in the list.
listSuiteRunsResponse_suiteRunsList :: Lens.Lens' ListSuiteRunsResponse (Prelude.Maybe [SuiteRunInformation])
listSuiteRunsResponse_suiteRunsList = Lens.lens (\ListSuiteRunsResponse' {suiteRunsList} -> suiteRunsList) (\s@ListSuiteRunsResponse' {} a -> s {suiteRunsList = a} :: ListSuiteRunsResponse) Prelude.. Lens.mapping Lens.coerced

-- | A token to retrieve the next set of results.
listSuiteRunsResponse_nextToken :: Lens.Lens' ListSuiteRunsResponse (Prelude.Maybe Prelude.Text)
listSuiteRunsResponse_nextToken = Lens.lens (\ListSuiteRunsResponse' {nextToken} -> nextToken) (\s@ListSuiteRunsResponse' {} a -> s {nextToken = a} :: ListSuiteRunsResponse)

-- | The response's http status code.
listSuiteRunsResponse_httpStatus :: Lens.Lens' ListSuiteRunsResponse Prelude.Int
listSuiteRunsResponse_httpStatus = Lens.lens (\ListSuiteRunsResponse' {httpStatus} -> httpStatus) (\s@ListSuiteRunsResponse' {} a -> s {httpStatus = a} :: ListSuiteRunsResponse)

instance Prelude.NFData ListSuiteRunsResponse where
  rnf ListSuiteRunsResponse' {..} =
    Prelude.rnf suiteRunsList
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
