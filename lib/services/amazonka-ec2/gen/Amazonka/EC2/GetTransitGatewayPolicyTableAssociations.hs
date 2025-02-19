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
-- Module      : Amazonka.EC2.GetTransitGatewayPolicyTableAssociations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of the transit gateway policy table associations.
--
-- This operation returns paginated results.
module Amazonka.EC2.GetTransitGatewayPolicyTableAssociations
  ( -- * Creating a Request
    GetTransitGatewayPolicyTableAssociations (..),
    newGetTransitGatewayPolicyTableAssociations,

    -- * Request Lenses
    getTransitGatewayPolicyTableAssociations_nextToken,
    getTransitGatewayPolicyTableAssociations_filters,
    getTransitGatewayPolicyTableAssociations_dryRun,
    getTransitGatewayPolicyTableAssociations_maxResults,
    getTransitGatewayPolicyTableAssociations_transitGatewayPolicyTableId,

    -- * Destructuring the Response
    GetTransitGatewayPolicyTableAssociationsResponse (..),
    newGetTransitGatewayPolicyTableAssociationsResponse,

    -- * Response Lenses
    getTransitGatewayPolicyTableAssociationsResponse_nextToken,
    getTransitGatewayPolicyTableAssociationsResponse_associations,
    getTransitGatewayPolicyTableAssociationsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetTransitGatewayPolicyTableAssociations' smart constructor.
data GetTransitGatewayPolicyTableAssociations = GetTransitGatewayPolicyTableAssociations'
  { -- | The token for the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The filters associated with the transit gateway policy table.
    filters :: Prelude.Maybe [Filter],
    -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | The maximum number of results to return with a single call. To retrieve
    -- the remaining results, make another call with the returned @nextToken@
    -- value.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The ID of the transit gateway policy table.
    transitGatewayPolicyTableId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetTransitGatewayPolicyTableAssociations' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getTransitGatewayPolicyTableAssociations_nextToken' - The token for the next page of results.
--
-- 'filters', 'getTransitGatewayPolicyTableAssociations_filters' - The filters associated with the transit gateway policy table.
--
-- 'dryRun', 'getTransitGatewayPolicyTableAssociations_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'maxResults', 'getTransitGatewayPolicyTableAssociations_maxResults' - The maximum number of results to return with a single call. To retrieve
-- the remaining results, make another call with the returned @nextToken@
-- value.
--
-- 'transitGatewayPolicyTableId', 'getTransitGatewayPolicyTableAssociations_transitGatewayPolicyTableId' - The ID of the transit gateway policy table.
newGetTransitGatewayPolicyTableAssociations ::
  -- | 'transitGatewayPolicyTableId'
  Prelude.Text ->
  GetTransitGatewayPolicyTableAssociations
newGetTransitGatewayPolicyTableAssociations
  pTransitGatewayPolicyTableId_ =
    GetTransitGatewayPolicyTableAssociations'
      { nextToken =
          Prelude.Nothing,
        filters = Prelude.Nothing,
        dryRun = Prelude.Nothing,
        maxResults = Prelude.Nothing,
        transitGatewayPolicyTableId =
          pTransitGatewayPolicyTableId_
      }

-- | The token for the next page of results.
getTransitGatewayPolicyTableAssociations_nextToken :: Lens.Lens' GetTransitGatewayPolicyTableAssociations (Prelude.Maybe Prelude.Text)
getTransitGatewayPolicyTableAssociations_nextToken = Lens.lens (\GetTransitGatewayPolicyTableAssociations' {nextToken} -> nextToken) (\s@GetTransitGatewayPolicyTableAssociations' {} a -> s {nextToken = a} :: GetTransitGatewayPolicyTableAssociations)

-- | The filters associated with the transit gateway policy table.
getTransitGatewayPolicyTableAssociations_filters :: Lens.Lens' GetTransitGatewayPolicyTableAssociations (Prelude.Maybe [Filter])
getTransitGatewayPolicyTableAssociations_filters = Lens.lens (\GetTransitGatewayPolicyTableAssociations' {filters} -> filters) (\s@GetTransitGatewayPolicyTableAssociations' {} a -> s {filters = a} :: GetTransitGatewayPolicyTableAssociations) Prelude.. Lens.mapping Lens.coerced

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
getTransitGatewayPolicyTableAssociations_dryRun :: Lens.Lens' GetTransitGatewayPolicyTableAssociations (Prelude.Maybe Prelude.Bool)
getTransitGatewayPolicyTableAssociations_dryRun = Lens.lens (\GetTransitGatewayPolicyTableAssociations' {dryRun} -> dryRun) (\s@GetTransitGatewayPolicyTableAssociations' {} a -> s {dryRun = a} :: GetTransitGatewayPolicyTableAssociations)

-- | The maximum number of results to return with a single call. To retrieve
-- the remaining results, make another call with the returned @nextToken@
-- value.
getTransitGatewayPolicyTableAssociations_maxResults :: Lens.Lens' GetTransitGatewayPolicyTableAssociations (Prelude.Maybe Prelude.Natural)
getTransitGatewayPolicyTableAssociations_maxResults = Lens.lens (\GetTransitGatewayPolicyTableAssociations' {maxResults} -> maxResults) (\s@GetTransitGatewayPolicyTableAssociations' {} a -> s {maxResults = a} :: GetTransitGatewayPolicyTableAssociations)

-- | The ID of the transit gateway policy table.
getTransitGatewayPolicyTableAssociations_transitGatewayPolicyTableId :: Lens.Lens' GetTransitGatewayPolicyTableAssociations Prelude.Text
getTransitGatewayPolicyTableAssociations_transitGatewayPolicyTableId = Lens.lens (\GetTransitGatewayPolicyTableAssociations' {transitGatewayPolicyTableId} -> transitGatewayPolicyTableId) (\s@GetTransitGatewayPolicyTableAssociations' {} a -> s {transitGatewayPolicyTableId = a} :: GetTransitGatewayPolicyTableAssociations)

instance
  Core.AWSPager
    GetTransitGatewayPolicyTableAssociations
  where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? getTransitGatewayPolicyTableAssociationsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? getTransitGatewayPolicyTableAssociationsResponse_associations
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& getTransitGatewayPolicyTableAssociations_nextToken
          Lens..~ rs
            Lens.^? getTransitGatewayPolicyTableAssociationsResponse_nextToken
              Prelude.. Lens._Just

instance
  Core.AWSRequest
    GetTransitGatewayPolicyTableAssociations
  where
  type
    AWSResponse
      GetTransitGatewayPolicyTableAssociations =
      GetTransitGatewayPolicyTableAssociationsResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          GetTransitGatewayPolicyTableAssociationsResponse'
            Prelude.<$> (x Core..@? "nextToken")
              Prelude.<*> ( x Core..@? "associations" Core..!@ Prelude.mempty
                              Prelude.>>= Core.may (Core.parseXMLList "item")
                          )
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    GetTransitGatewayPolicyTableAssociations
  where
  hashWithSalt
    _salt
    GetTransitGatewayPolicyTableAssociations' {..} =
      _salt `Prelude.hashWithSalt` nextToken
        `Prelude.hashWithSalt` filters
        `Prelude.hashWithSalt` dryRun
        `Prelude.hashWithSalt` maxResults
        `Prelude.hashWithSalt` transitGatewayPolicyTableId

instance
  Prelude.NFData
    GetTransitGatewayPolicyTableAssociations
  where
  rnf GetTransitGatewayPolicyTableAssociations' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf filters
      `Prelude.seq` Prelude.rnf dryRun
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf transitGatewayPolicyTableId

instance
  Core.ToHeaders
    GetTransitGatewayPolicyTableAssociations
  where
  toHeaders = Prelude.const Prelude.mempty

instance
  Core.ToPath
    GetTransitGatewayPolicyTableAssociations
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    GetTransitGatewayPolicyTableAssociations
  where
  toQuery GetTransitGatewayPolicyTableAssociations' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ( "GetTransitGatewayPolicyTableAssociations" ::
                      Prelude.ByteString
                  ),
        "Version"
          Core.=: ("2016-11-15" :: Prelude.ByteString),
        "NextToken" Core.=: nextToken,
        Core.toQuery
          (Core.toQueryList "Filter" Prelude.<$> filters),
        "DryRun" Core.=: dryRun,
        "MaxResults" Core.=: maxResults,
        "TransitGatewayPolicyTableId"
          Core.=: transitGatewayPolicyTableId
      ]

-- | /See:/ 'newGetTransitGatewayPolicyTableAssociationsResponse' smart constructor.
data GetTransitGatewayPolicyTableAssociationsResponse = GetTransitGatewayPolicyTableAssociationsResponse'
  { -- | The token for the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Returns details about the transit gateway policy table association.
    associations :: Prelude.Maybe [TransitGatewayPolicyTableAssociation],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetTransitGatewayPolicyTableAssociationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getTransitGatewayPolicyTableAssociationsResponse_nextToken' - The token for the next page of results.
--
-- 'associations', 'getTransitGatewayPolicyTableAssociationsResponse_associations' - Returns details about the transit gateway policy table association.
--
-- 'httpStatus', 'getTransitGatewayPolicyTableAssociationsResponse_httpStatus' - The response's http status code.
newGetTransitGatewayPolicyTableAssociationsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetTransitGatewayPolicyTableAssociationsResponse
newGetTransitGatewayPolicyTableAssociationsResponse
  pHttpStatus_ =
    GetTransitGatewayPolicyTableAssociationsResponse'
      { nextToken =
          Prelude.Nothing,
        associations =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The token for the next page of results.
getTransitGatewayPolicyTableAssociationsResponse_nextToken :: Lens.Lens' GetTransitGatewayPolicyTableAssociationsResponse (Prelude.Maybe Prelude.Text)
getTransitGatewayPolicyTableAssociationsResponse_nextToken = Lens.lens (\GetTransitGatewayPolicyTableAssociationsResponse' {nextToken} -> nextToken) (\s@GetTransitGatewayPolicyTableAssociationsResponse' {} a -> s {nextToken = a} :: GetTransitGatewayPolicyTableAssociationsResponse)

-- | Returns details about the transit gateway policy table association.
getTransitGatewayPolicyTableAssociationsResponse_associations :: Lens.Lens' GetTransitGatewayPolicyTableAssociationsResponse (Prelude.Maybe [TransitGatewayPolicyTableAssociation])
getTransitGatewayPolicyTableAssociationsResponse_associations = Lens.lens (\GetTransitGatewayPolicyTableAssociationsResponse' {associations} -> associations) (\s@GetTransitGatewayPolicyTableAssociationsResponse' {} a -> s {associations = a} :: GetTransitGatewayPolicyTableAssociationsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
getTransitGatewayPolicyTableAssociationsResponse_httpStatus :: Lens.Lens' GetTransitGatewayPolicyTableAssociationsResponse Prelude.Int
getTransitGatewayPolicyTableAssociationsResponse_httpStatus = Lens.lens (\GetTransitGatewayPolicyTableAssociationsResponse' {httpStatus} -> httpStatus) (\s@GetTransitGatewayPolicyTableAssociationsResponse' {} a -> s {httpStatus = a} :: GetTransitGatewayPolicyTableAssociationsResponse)

instance
  Prelude.NFData
    GetTransitGatewayPolicyTableAssociationsResponse
  where
  rnf
    GetTransitGatewayPolicyTableAssociationsResponse' {..} =
      Prelude.rnf nextToken
        `Prelude.seq` Prelude.rnf associations
        `Prelude.seq` Prelude.rnf httpStatus
