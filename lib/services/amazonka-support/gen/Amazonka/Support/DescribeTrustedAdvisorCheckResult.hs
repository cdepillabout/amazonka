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
-- Module      : Amazonka.Support.DescribeTrustedAdvisorCheckResult
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the results of the Trusted Advisor check that has the specified
-- check ID. You can get the check IDs by calling the
-- DescribeTrustedAdvisorChecks operation.
--
-- The response contains a TrustedAdvisorCheckResult object, which contains
-- these three objects:
--
-- -   TrustedAdvisorCategorySpecificSummary
--
-- -   TrustedAdvisorResourceDetail
--
-- -   TrustedAdvisorResourcesSummary
--
-- In addition, the response contains these fields:
--
-- -   __status__ - The alert status of the check can be @ok@ (green),
--     @warning@ (yellow), @error@ (red), or @not_available@.
--
-- -   __timestamp__ - The time of the last refresh of the check.
--
-- -   __checkId__ - The unique identifier for the check.
--
-- -   You must have a Business, Enterprise On-Ramp, or Enterprise Support
--     plan to use the Amazon Web Services Support API.
--
-- -   If you call the Amazon Web Services Support API from an account that
--     does not have a Business, Enterprise On-Ramp, or Enterprise Support
--     plan, the @SubscriptionRequiredException@ error message appears. For
--     information about changing your support plan, see
--     <http://aws.amazon.com/premiumsupport/ Amazon Web Services Support>.
module Amazonka.Support.DescribeTrustedAdvisorCheckResult
  ( -- * Creating a Request
    DescribeTrustedAdvisorCheckResult (..),
    newDescribeTrustedAdvisorCheckResult,

    -- * Request Lenses
    describeTrustedAdvisorCheckResult_language,
    describeTrustedAdvisorCheckResult_checkId,

    -- * Destructuring the Response
    DescribeTrustedAdvisorCheckResultResponse (..),
    newDescribeTrustedAdvisorCheckResultResponse,

    -- * Response Lenses
    describeTrustedAdvisorCheckResultResponse_result,
    describeTrustedAdvisorCheckResultResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.Support.Types

-- |
--
-- /See:/ 'newDescribeTrustedAdvisorCheckResult' smart constructor.
data DescribeTrustedAdvisorCheckResult = DescribeTrustedAdvisorCheckResult'
  { -- | The ISO 639-1 code for the language in which Amazon Web Services
    -- provides support. Amazon Web Services Support currently supports English
    -- (\"en\") and Japanese (\"ja\"). Language parameters must be passed
    -- explicitly for operations that take them.
    language :: Prelude.Maybe Prelude.Text,
    -- | The unique identifier for the Trusted Advisor check.
    checkId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeTrustedAdvisorCheckResult' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'language', 'describeTrustedAdvisorCheckResult_language' - The ISO 639-1 code for the language in which Amazon Web Services
-- provides support. Amazon Web Services Support currently supports English
-- (\"en\") and Japanese (\"ja\"). Language parameters must be passed
-- explicitly for operations that take them.
--
-- 'checkId', 'describeTrustedAdvisorCheckResult_checkId' - The unique identifier for the Trusted Advisor check.
newDescribeTrustedAdvisorCheckResult ::
  -- | 'checkId'
  Prelude.Text ->
  DescribeTrustedAdvisorCheckResult
newDescribeTrustedAdvisorCheckResult pCheckId_ =
  DescribeTrustedAdvisorCheckResult'
    { language =
        Prelude.Nothing,
      checkId = pCheckId_
    }

-- | The ISO 639-1 code for the language in which Amazon Web Services
-- provides support. Amazon Web Services Support currently supports English
-- (\"en\") and Japanese (\"ja\"). Language parameters must be passed
-- explicitly for operations that take them.
describeTrustedAdvisorCheckResult_language :: Lens.Lens' DescribeTrustedAdvisorCheckResult (Prelude.Maybe Prelude.Text)
describeTrustedAdvisorCheckResult_language = Lens.lens (\DescribeTrustedAdvisorCheckResult' {language} -> language) (\s@DescribeTrustedAdvisorCheckResult' {} a -> s {language = a} :: DescribeTrustedAdvisorCheckResult)

-- | The unique identifier for the Trusted Advisor check.
describeTrustedAdvisorCheckResult_checkId :: Lens.Lens' DescribeTrustedAdvisorCheckResult Prelude.Text
describeTrustedAdvisorCheckResult_checkId = Lens.lens (\DescribeTrustedAdvisorCheckResult' {checkId} -> checkId) (\s@DescribeTrustedAdvisorCheckResult' {} a -> s {checkId = a} :: DescribeTrustedAdvisorCheckResult)

instance
  Core.AWSRequest
    DescribeTrustedAdvisorCheckResult
  where
  type
    AWSResponse DescribeTrustedAdvisorCheckResult =
      DescribeTrustedAdvisorCheckResultResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeTrustedAdvisorCheckResultResponse'
            Prelude.<$> (x Core..?> "result")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DescribeTrustedAdvisorCheckResult
  where
  hashWithSalt
    _salt
    DescribeTrustedAdvisorCheckResult' {..} =
      _salt `Prelude.hashWithSalt` language
        `Prelude.hashWithSalt` checkId

instance
  Prelude.NFData
    DescribeTrustedAdvisorCheckResult
  where
  rnf DescribeTrustedAdvisorCheckResult' {..} =
    Prelude.rnf language
      `Prelude.seq` Prelude.rnf checkId

instance
  Core.ToHeaders
    DescribeTrustedAdvisorCheckResult
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSSupport_20130415.DescribeTrustedAdvisorCheckResult" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance
  Core.ToJSON
    DescribeTrustedAdvisorCheckResult
  where
  toJSON DescribeTrustedAdvisorCheckResult' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("language" Core..=) Prelude.<$> language,
            Prelude.Just ("checkId" Core..= checkId)
          ]
      )

instance
  Core.ToPath
    DescribeTrustedAdvisorCheckResult
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    DescribeTrustedAdvisorCheckResult
  where
  toQuery = Prelude.const Prelude.mempty

-- | The result of the Trusted Advisor check returned by the
-- DescribeTrustedAdvisorCheckResult operation.
--
-- /See:/ 'newDescribeTrustedAdvisorCheckResultResponse' smart constructor.
data DescribeTrustedAdvisorCheckResultResponse = DescribeTrustedAdvisorCheckResultResponse'
  { -- | The detailed results of the Trusted Advisor check.
    result :: Prelude.Maybe TrustedAdvisorCheckResult,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeTrustedAdvisorCheckResultResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'result', 'describeTrustedAdvisorCheckResultResponse_result' - The detailed results of the Trusted Advisor check.
--
-- 'httpStatus', 'describeTrustedAdvisorCheckResultResponse_httpStatus' - The response's http status code.
newDescribeTrustedAdvisorCheckResultResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeTrustedAdvisorCheckResultResponse
newDescribeTrustedAdvisorCheckResultResponse
  pHttpStatus_ =
    DescribeTrustedAdvisorCheckResultResponse'
      { result =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The detailed results of the Trusted Advisor check.
describeTrustedAdvisorCheckResultResponse_result :: Lens.Lens' DescribeTrustedAdvisorCheckResultResponse (Prelude.Maybe TrustedAdvisorCheckResult)
describeTrustedAdvisorCheckResultResponse_result = Lens.lens (\DescribeTrustedAdvisorCheckResultResponse' {result} -> result) (\s@DescribeTrustedAdvisorCheckResultResponse' {} a -> s {result = a} :: DescribeTrustedAdvisorCheckResultResponse)

-- | The response's http status code.
describeTrustedAdvisorCheckResultResponse_httpStatus :: Lens.Lens' DescribeTrustedAdvisorCheckResultResponse Prelude.Int
describeTrustedAdvisorCheckResultResponse_httpStatus = Lens.lens (\DescribeTrustedAdvisorCheckResultResponse' {httpStatus} -> httpStatus) (\s@DescribeTrustedAdvisorCheckResultResponse' {} a -> s {httpStatus = a} :: DescribeTrustedAdvisorCheckResultResponse)

instance
  Prelude.NFData
    DescribeTrustedAdvisorCheckResultResponse
  where
  rnf DescribeTrustedAdvisorCheckResultResponse' {..} =
    Prelude.rnf result
      `Prelude.seq` Prelude.rnf httpStatus
