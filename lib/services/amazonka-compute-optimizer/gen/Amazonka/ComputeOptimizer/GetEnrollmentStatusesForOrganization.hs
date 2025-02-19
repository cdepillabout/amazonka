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
-- Module      : Amazonka.ComputeOptimizer.GetEnrollmentStatusesForOrganization
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the Compute Optimizer enrollment (opt-in) status of organization
-- member accounts, if your account is an organization management account.
--
-- To get the enrollment status of standalone accounts, use the
-- GetEnrollmentStatus action.
module Amazonka.ComputeOptimizer.GetEnrollmentStatusesForOrganization
  ( -- * Creating a Request
    GetEnrollmentStatusesForOrganization (..),
    newGetEnrollmentStatusesForOrganization,

    -- * Request Lenses
    getEnrollmentStatusesForOrganization_nextToken,
    getEnrollmentStatusesForOrganization_filters,
    getEnrollmentStatusesForOrganization_maxResults,

    -- * Destructuring the Response
    GetEnrollmentStatusesForOrganizationResponse (..),
    newGetEnrollmentStatusesForOrganizationResponse,

    -- * Response Lenses
    getEnrollmentStatusesForOrganizationResponse_nextToken,
    getEnrollmentStatusesForOrganizationResponse_accountEnrollmentStatuses,
    getEnrollmentStatusesForOrganizationResponse_httpStatus,
  )
where

import Amazonka.ComputeOptimizer.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetEnrollmentStatusesForOrganization' smart constructor.
data GetEnrollmentStatusesForOrganization = GetEnrollmentStatusesForOrganization'
  { -- | The token to advance to the next page of account enrollment statuses.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | An array of objects to specify a filter that returns a more specific
    -- list of account enrollment statuses.
    filters :: Prelude.Maybe [EnrollmentFilter],
    -- | The maximum number of account enrollment statuses to return with a
    -- single request. You can specify up to 100 statuses to return with each
    -- request.
    --
    -- To retrieve the remaining results, make another request with the
    -- returned @nextToken@ value.
    maxResults :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetEnrollmentStatusesForOrganization' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getEnrollmentStatusesForOrganization_nextToken' - The token to advance to the next page of account enrollment statuses.
--
-- 'filters', 'getEnrollmentStatusesForOrganization_filters' - An array of objects to specify a filter that returns a more specific
-- list of account enrollment statuses.
--
-- 'maxResults', 'getEnrollmentStatusesForOrganization_maxResults' - The maximum number of account enrollment statuses to return with a
-- single request. You can specify up to 100 statuses to return with each
-- request.
--
-- To retrieve the remaining results, make another request with the
-- returned @nextToken@ value.
newGetEnrollmentStatusesForOrganization ::
  GetEnrollmentStatusesForOrganization
newGetEnrollmentStatusesForOrganization =
  GetEnrollmentStatusesForOrganization'
    { nextToken =
        Prelude.Nothing,
      filters = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The token to advance to the next page of account enrollment statuses.
getEnrollmentStatusesForOrganization_nextToken :: Lens.Lens' GetEnrollmentStatusesForOrganization (Prelude.Maybe Prelude.Text)
getEnrollmentStatusesForOrganization_nextToken = Lens.lens (\GetEnrollmentStatusesForOrganization' {nextToken} -> nextToken) (\s@GetEnrollmentStatusesForOrganization' {} a -> s {nextToken = a} :: GetEnrollmentStatusesForOrganization)

-- | An array of objects to specify a filter that returns a more specific
-- list of account enrollment statuses.
getEnrollmentStatusesForOrganization_filters :: Lens.Lens' GetEnrollmentStatusesForOrganization (Prelude.Maybe [EnrollmentFilter])
getEnrollmentStatusesForOrganization_filters = Lens.lens (\GetEnrollmentStatusesForOrganization' {filters} -> filters) (\s@GetEnrollmentStatusesForOrganization' {} a -> s {filters = a} :: GetEnrollmentStatusesForOrganization) Prelude.. Lens.mapping Lens.coerced

-- | The maximum number of account enrollment statuses to return with a
-- single request. You can specify up to 100 statuses to return with each
-- request.
--
-- To retrieve the remaining results, make another request with the
-- returned @nextToken@ value.
getEnrollmentStatusesForOrganization_maxResults :: Lens.Lens' GetEnrollmentStatusesForOrganization (Prelude.Maybe Prelude.Int)
getEnrollmentStatusesForOrganization_maxResults = Lens.lens (\GetEnrollmentStatusesForOrganization' {maxResults} -> maxResults) (\s@GetEnrollmentStatusesForOrganization' {} a -> s {maxResults = a} :: GetEnrollmentStatusesForOrganization)

instance
  Core.AWSRequest
    GetEnrollmentStatusesForOrganization
  where
  type
    AWSResponse GetEnrollmentStatusesForOrganization =
      GetEnrollmentStatusesForOrganizationResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetEnrollmentStatusesForOrganizationResponse'
            Prelude.<$> (x Core..?> "nextToken")
              Prelude.<*> ( x Core..?> "accountEnrollmentStatuses"
                              Core..!@ Prelude.mempty
                          )
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    GetEnrollmentStatusesForOrganization
  where
  hashWithSalt
    _salt
    GetEnrollmentStatusesForOrganization' {..} =
      _salt `Prelude.hashWithSalt` nextToken
        `Prelude.hashWithSalt` filters
        `Prelude.hashWithSalt` maxResults

instance
  Prelude.NFData
    GetEnrollmentStatusesForOrganization
  where
  rnf GetEnrollmentStatusesForOrganization' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf filters
      `Prelude.seq` Prelude.rnf maxResults

instance
  Core.ToHeaders
    GetEnrollmentStatusesForOrganization
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "ComputeOptimizerService.GetEnrollmentStatusesForOrganization" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance
  Core.ToJSON
    GetEnrollmentStatusesForOrganization
  where
  toJSON GetEnrollmentStatusesForOrganization' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("nextToken" Core..=) Prelude.<$> nextToken,
            ("filters" Core..=) Prelude.<$> filters,
            ("maxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance
  Core.ToPath
    GetEnrollmentStatusesForOrganization
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    GetEnrollmentStatusesForOrganization
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetEnrollmentStatusesForOrganizationResponse' smart constructor.
data GetEnrollmentStatusesForOrganizationResponse = GetEnrollmentStatusesForOrganizationResponse'
  { -- | The token to use to advance to the next page of account enrollment
    -- statuses.
    --
    -- This value is null when there are no more pages of account enrollment
    -- statuses to return.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | An array of objects that describe the enrollment statuses of
    -- organization member accounts.
    accountEnrollmentStatuses :: Prelude.Maybe [AccountEnrollmentStatus],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetEnrollmentStatusesForOrganizationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getEnrollmentStatusesForOrganizationResponse_nextToken' - The token to use to advance to the next page of account enrollment
-- statuses.
--
-- This value is null when there are no more pages of account enrollment
-- statuses to return.
--
-- 'accountEnrollmentStatuses', 'getEnrollmentStatusesForOrganizationResponse_accountEnrollmentStatuses' - An array of objects that describe the enrollment statuses of
-- organization member accounts.
--
-- 'httpStatus', 'getEnrollmentStatusesForOrganizationResponse_httpStatus' - The response's http status code.
newGetEnrollmentStatusesForOrganizationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetEnrollmentStatusesForOrganizationResponse
newGetEnrollmentStatusesForOrganizationResponse
  pHttpStatus_ =
    GetEnrollmentStatusesForOrganizationResponse'
      { nextToken =
          Prelude.Nothing,
        accountEnrollmentStatuses =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The token to use to advance to the next page of account enrollment
-- statuses.
--
-- This value is null when there are no more pages of account enrollment
-- statuses to return.
getEnrollmentStatusesForOrganizationResponse_nextToken :: Lens.Lens' GetEnrollmentStatusesForOrganizationResponse (Prelude.Maybe Prelude.Text)
getEnrollmentStatusesForOrganizationResponse_nextToken = Lens.lens (\GetEnrollmentStatusesForOrganizationResponse' {nextToken} -> nextToken) (\s@GetEnrollmentStatusesForOrganizationResponse' {} a -> s {nextToken = a} :: GetEnrollmentStatusesForOrganizationResponse)

-- | An array of objects that describe the enrollment statuses of
-- organization member accounts.
getEnrollmentStatusesForOrganizationResponse_accountEnrollmentStatuses :: Lens.Lens' GetEnrollmentStatusesForOrganizationResponse (Prelude.Maybe [AccountEnrollmentStatus])
getEnrollmentStatusesForOrganizationResponse_accountEnrollmentStatuses = Lens.lens (\GetEnrollmentStatusesForOrganizationResponse' {accountEnrollmentStatuses} -> accountEnrollmentStatuses) (\s@GetEnrollmentStatusesForOrganizationResponse' {} a -> s {accountEnrollmentStatuses = a} :: GetEnrollmentStatusesForOrganizationResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
getEnrollmentStatusesForOrganizationResponse_httpStatus :: Lens.Lens' GetEnrollmentStatusesForOrganizationResponse Prelude.Int
getEnrollmentStatusesForOrganizationResponse_httpStatus = Lens.lens (\GetEnrollmentStatusesForOrganizationResponse' {httpStatus} -> httpStatus) (\s@GetEnrollmentStatusesForOrganizationResponse' {} a -> s {httpStatus = a} :: GetEnrollmentStatusesForOrganizationResponse)

instance
  Prelude.NFData
    GetEnrollmentStatusesForOrganizationResponse
  where
  rnf GetEnrollmentStatusesForOrganizationResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf accountEnrollmentStatuses
      `Prelude.seq` Prelude.rnf httpStatus
