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
-- Module      : Amazonka.EC2.DescribeLocalGateways
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more local gateways. By default, all local gateways are
-- described. Alternatively, you can filter the results.
--
-- This operation returns paginated results.
module Amazonka.EC2.DescribeLocalGateways
  ( -- * Creating a Request
    DescribeLocalGateways (..),
    newDescribeLocalGateways,

    -- * Request Lenses
    describeLocalGateways_nextToken,
    describeLocalGateways_filters,
    describeLocalGateways_localGatewayIds,
    describeLocalGateways_dryRun,
    describeLocalGateways_maxResults,

    -- * Destructuring the Response
    DescribeLocalGatewaysResponse (..),
    newDescribeLocalGatewaysResponse,

    -- * Response Lenses
    describeLocalGatewaysResponse_nextToken,
    describeLocalGatewaysResponse_localGateways,
    describeLocalGatewaysResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeLocalGateways' smart constructor.
data DescribeLocalGateways = DescribeLocalGateways'
  { -- | The token for the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | One or more filters.
    --
    -- -   @local-gateway-id@ - The ID of a local gateway.
    --
    -- -   @outpost-arn@ - The Amazon Resource Name (ARN) of the Outpost.
    --
    -- -   @owner-id@ - The ID of the Amazon Web Services account that owns the
    --     local gateway.
    --
    -- -   @state@ - The state of the association.
    filters :: Prelude.Maybe [Filter],
    -- | The IDs of the local gateways.
    localGatewayIds :: Prelude.Maybe [Prelude.Text],
    -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | The maximum number of results to return with a single call. To retrieve
    -- the remaining results, make another call with the returned @nextToken@
    -- value.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeLocalGateways' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeLocalGateways_nextToken' - The token for the next page of results.
--
-- 'filters', 'describeLocalGateways_filters' - One or more filters.
--
-- -   @local-gateway-id@ - The ID of a local gateway.
--
-- -   @outpost-arn@ - The Amazon Resource Name (ARN) of the Outpost.
--
-- -   @owner-id@ - The ID of the Amazon Web Services account that owns the
--     local gateway.
--
-- -   @state@ - The state of the association.
--
-- 'localGatewayIds', 'describeLocalGateways_localGatewayIds' - The IDs of the local gateways.
--
-- 'dryRun', 'describeLocalGateways_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'maxResults', 'describeLocalGateways_maxResults' - The maximum number of results to return with a single call. To retrieve
-- the remaining results, make another call with the returned @nextToken@
-- value.
newDescribeLocalGateways ::
  DescribeLocalGateways
newDescribeLocalGateways =
  DescribeLocalGateways'
    { nextToken = Prelude.Nothing,
      filters = Prelude.Nothing,
      localGatewayIds = Prelude.Nothing,
      dryRun = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The token for the next page of results.
describeLocalGateways_nextToken :: Lens.Lens' DescribeLocalGateways (Prelude.Maybe Prelude.Text)
describeLocalGateways_nextToken = Lens.lens (\DescribeLocalGateways' {nextToken} -> nextToken) (\s@DescribeLocalGateways' {} a -> s {nextToken = a} :: DescribeLocalGateways)

-- | One or more filters.
--
-- -   @local-gateway-id@ - The ID of a local gateway.
--
-- -   @outpost-arn@ - The Amazon Resource Name (ARN) of the Outpost.
--
-- -   @owner-id@ - The ID of the Amazon Web Services account that owns the
--     local gateway.
--
-- -   @state@ - The state of the association.
describeLocalGateways_filters :: Lens.Lens' DescribeLocalGateways (Prelude.Maybe [Filter])
describeLocalGateways_filters = Lens.lens (\DescribeLocalGateways' {filters} -> filters) (\s@DescribeLocalGateways' {} a -> s {filters = a} :: DescribeLocalGateways) Prelude.. Lens.mapping Lens.coerced

-- | The IDs of the local gateways.
describeLocalGateways_localGatewayIds :: Lens.Lens' DescribeLocalGateways (Prelude.Maybe [Prelude.Text])
describeLocalGateways_localGatewayIds = Lens.lens (\DescribeLocalGateways' {localGatewayIds} -> localGatewayIds) (\s@DescribeLocalGateways' {} a -> s {localGatewayIds = a} :: DescribeLocalGateways) Prelude.. Lens.mapping Lens.coerced

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
describeLocalGateways_dryRun :: Lens.Lens' DescribeLocalGateways (Prelude.Maybe Prelude.Bool)
describeLocalGateways_dryRun = Lens.lens (\DescribeLocalGateways' {dryRun} -> dryRun) (\s@DescribeLocalGateways' {} a -> s {dryRun = a} :: DescribeLocalGateways)

-- | The maximum number of results to return with a single call. To retrieve
-- the remaining results, make another call with the returned @nextToken@
-- value.
describeLocalGateways_maxResults :: Lens.Lens' DescribeLocalGateways (Prelude.Maybe Prelude.Natural)
describeLocalGateways_maxResults = Lens.lens (\DescribeLocalGateways' {maxResults} -> maxResults) (\s@DescribeLocalGateways' {} a -> s {maxResults = a} :: DescribeLocalGateways)

instance Core.AWSPager DescribeLocalGateways where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeLocalGatewaysResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeLocalGatewaysResponse_localGateways
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeLocalGateways_nextToken
          Lens..~ rs
          Lens.^? describeLocalGatewaysResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest DescribeLocalGateways where
  type
    AWSResponse DescribeLocalGateways =
      DescribeLocalGatewaysResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          DescribeLocalGatewaysResponse'
            Prelude.<$> (x Core..@? "nextToken")
            Prelude.<*> ( x Core..@? "localGatewaySet" Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "item")
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeLocalGateways where
  hashWithSalt _salt DescribeLocalGateways' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` filters
      `Prelude.hashWithSalt` localGatewayIds
      `Prelude.hashWithSalt` dryRun
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData DescribeLocalGateways where
  rnf DescribeLocalGateways' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf filters
      `Prelude.seq` Prelude.rnf localGatewayIds
      `Prelude.seq` Prelude.rnf dryRun
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders DescribeLocalGateways where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DescribeLocalGateways where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeLocalGateways where
  toQuery DescribeLocalGateways' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("DescribeLocalGateways" :: Prelude.ByteString),
        "Version"
          Core.=: ("2016-11-15" :: Prelude.ByteString),
        "NextToken" Core.=: nextToken,
        Core.toQuery
          (Core.toQueryList "Filter" Prelude.<$> filters),
        Core.toQuery
          ( Core.toQueryList "LocalGatewayId"
              Prelude.<$> localGatewayIds
          ),
        "DryRun" Core.=: dryRun,
        "MaxResults" Core.=: maxResults
      ]

-- | /See:/ 'newDescribeLocalGatewaysResponse' smart constructor.
data DescribeLocalGatewaysResponse = DescribeLocalGatewaysResponse'
  { -- | The token to use to retrieve the next page of results. This value is
    -- @null@ when there are no more results to return.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Information about the local gateways.
    localGateways :: Prelude.Maybe [LocalGateway],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeLocalGatewaysResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeLocalGatewaysResponse_nextToken' - The token to use to retrieve the next page of results. This value is
-- @null@ when there are no more results to return.
--
-- 'localGateways', 'describeLocalGatewaysResponse_localGateways' - Information about the local gateways.
--
-- 'httpStatus', 'describeLocalGatewaysResponse_httpStatus' - The response's http status code.
newDescribeLocalGatewaysResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeLocalGatewaysResponse
newDescribeLocalGatewaysResponse pHttpStatus_ =
  DescribeLocalGatewaysResponse'
    { nextToken =
        Prelude.Nothing,
      localGateways = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token to use to retrieve the next page of results. This value is
-- @null@ when there are no more results to return.
describeLocalGatewaysResponse_nextToken :: Lens.Lens' DescribeLocalGatewaysResponse (Prelude.Maybe Prelude.Text)
describeLocalGatewaysResponse_nextToken = Lens.lens (\DescribeLocalGatewaysResponse' {nextToken} -> nextToken) (\s@DescribeLocalGatewaysResponse' {} a -> s {nextToken = a} :: DescribeLocalGatewaysResponse)

-- | Information about the local gateways.
describeLocalGatewaysResponse_localGateways :: Lens.Lens' DescribeLocalGatewaysResponse (Prelude.Maybe [LocalGateway])
describeLocalGatewaysResponse_localGateways = Lens.lens (\DescribeLocalGatewaysResponse' {localGateways} -> localGateways) (\s@DescribeLocalGatewaysResponse' {} a -> s {localGateways = a} :: DescribeLocalGatewaysResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeLocalGatewaysResponse_httpStatus :: Lens.Lens' DescribeLocalGatewaysResponse Prelude.Int
describeLocalGatewaysResponse_httpStatus = Lens.lens (\DescribeLocalGatewaysResponse' {httpStatus} -> httpStatus) (\s@DescribeLocalGatewaysResponse' {} a -> s {httpStatus = a} :: DescribeLocalGatewaysResponse)

instance Prelude.NFData DescribeLocalGatewaysResponse where
  rnf DescribeLocalGatewaysResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf localGateways
      `Prelude.seq` Prelude.rnf httpStatus
