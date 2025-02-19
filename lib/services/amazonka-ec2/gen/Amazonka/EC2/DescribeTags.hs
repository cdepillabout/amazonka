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
-- Module      : Amazonka.EC2.DescribeTags
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified tags for your EC2 resources.
--
-- For more information about tags, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html Tag your Amazon EC2 resources>
-- in the /Amazon Elastic Compute Cloud User Guide/.
--
-- This operation returns paginated results.
module Amazonka.EC2.DescribeTags
  ( -- * Creating a Request
    DescribeTags (..),
    newDescribeTags,

    -- * Request Lenses
    describeTags_nextToken,
    describeTags_filters,
    describeTags_dryRun,
    describeTags_maxResults,

    -- * Destructuring the Response
    DescribeTagsResponse (..),
    newDescribeTagsResponse,

    -- * Response Lenses
    describeTagsResponse_tags,
    describeTagsResponse_nextToken,
    describeTagsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeTags' smart constructor.
data DescribeTags = DescribeTags'
  { -- | The token to retrieve the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The filters.
    --
    -- -   @key@ - The tag key.
    --
    -- -   @resource-id@ - The ID of the resource.
    --
    -- -   @resource-type@ - The resource type (@customer-gateway@ |
    --     @dedicated-host@ | @dhcp-options@ | @elastic-ip@ | @fleet@ |
    --     @fpga-image@ | @host-reservation@ | @image@ | @instance@ |
    --     @internet-gateway@ | @key-pair@ | @launch-template@ | @natgateway@ |
    --     @network-acl@ | @network-interface@ | @placement-group@ |
    --     @reserved-instances@ | @route-table@ | @security-group@ | @snapshot@
    --     | @spot-instances-request@ | @subnet@ | @volume@ | @vpc@ |
    --     @vpc-endpoint@ | @vpc-endpoint-service@ | @vpc-peering-connection@ |
    --     @vpn-connection@ | @vpn-gateway@).
    --
    -- -   @tag@:\<key> - The key\/value combination of the tag. For example,
    --     specify \"tag:Owner\" for the filter name and \"TeamA\" for the
    --     filter value to find resources with the tag \"Owner=TeamA\".
    --
    -- -   @value@ - The tag value.
    filters :: Prelude.Maybe [Filter],
    -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | The maximum number of results to return in a single call. This value can
    -- be between 5 and 1000. To retrieve the remaining results, make another
    -- call with the returned @NextToken@ value.
    maxResults :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeTags' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeTags_nextToken' - The token to retrieve the next page of results.
--
-- 'filters', 'describeTags_filters' - The filters.
--
-- -   @key@ - The tag key.
--
-- -   @resource-id@ - The ID of the resource.
--
-- -   @resource-type@ - The resource type (@customer-gateway@ |
--     @dedicated-host@ | @dhcp-options@ | @elastic-ip@ | @fleet@ |
--     @fpga-image@ | @host-reservation@ | @image@ | @instance@ |
--     @internet-gateway@ | @key-pair@ | @launch-template@ | @natgateway@ |
--     @network-acl@ | @network-interface@ | @placement-group@ |
--     @reserved-instances@ | @route-table@ | @security-group@ | @snapshot@
--     | @spot-instances-request@ | @subnet@ | @volume@ | @vpc@ |
--     @vpc-endpoint@ | @vpc-endpoint-service@ | @vpc-peering-connection@ |
--     @vpn-connection@ | @vpn-gateway@).
--
-- -   @tag@:\<key> - The key\/value combination of the tag. For example,
--     specify \"tag:Owner\" for the filter name and \"TeamA\" for the
--     filter value to find resources with the tag \"Owner=TeamA\".
--
-- -   @value@ - The tag value.
--
-- 'dryRun', 'describeTags_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'maxResults', 'describeTags_maxResults' - The maximum number of results to return in a single call. This value can
-- be between 5 and 1000. To retrieve the remaining results, make another
-- call with the returned @NextToken@ value.
newDescribeTags ::
  DescribeTags
newDescribeTags =
  DescribeTags'
    { nextToken = Prelude.Nothing,
      filters = Prelude.Nothing,
      dryRun = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The token to retrieve the next page of results.
describeTags_nextToken :: Lens.Lens' DescribeTags (Prelude.Maybe Prelude.Text)
describeTags_nextToken = Lens.lens (\DescribeTags' {nextToken} -> nextToken) (\s@DescribeTags' {} a -> s {nextToken = a} :: DescribeTags)

-- | The filters.
--
-- -   @key@ - The tag key.
--
-- -   @resource-id@ - The ID of the resource.
--
-- -   @resource-type@ - The resource type (@customer-gateway@ |
--     @dedicated-host@ | @dhcp-options@ | @elastic-ip@ | @fleet@ |
--     @fpga-image@ | @host-reservation@ | @image@ | @instance@ |
--     @internet-gateway@ | @key-pair@ | @launch-template@ | @natgateway@ |
--     @network-acl@ | @network-interface@ | @placement-group@ |
--     @reserved-instances@ | @route-table@ | @security-group@ | @snapshot@
--     | @spot-instances-request@ | @subnet@ | @volume@ | @vpc@ |
--     @vpc-endpoint@ | @vpc-endpoint-service@ | @vpc-peering-connection@ |
--     @vpn-connection@ | @vpn-gateway@).
--
-- -   @tag@:\<key> - The key\/value combination of the tag. For example,
--     specify \"tag:Owner\" for the filter name and \"TeamA\" for the
--     filter value to find resources with the tag \"Owner=TeamA\".
--
-- -   @value@ - The tag value.
describeTags_filters :: Lens.Lens' DescribeTags (Prelude.Maybe [Filter])
describeTags_filters = Lens.lens (\DescribeTags' {filters} -> filters) (\s@DescribeTags' {} a -> s {filters = a} :: DescribeTags) Prelude.. Lens.mapping Lens.coerced

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
describeTags_dryRun :: Lens.Lens' DescribeTags (Prelude.Maybe Prelude.Bool)
describeTags_dryRun = Lens.lens (\DescribeTags' {dryRun} -> dryRun) (\s@DescribeTags' {} a -> s {dryRun = a} :: DescribeTags)

-- | The maximum number of results to return in a single call. This value can
-- be between 5 and 1000. To retrieve the remaining results, make another
-- call with the returned @NextToken@ value.
describeTags_maxResults :: Lens.Lens' DescribeTags (Prelude.Maybe Prelude.Int)
describeTags_maxResults = Lens.lens (\DescribeTags' {maxResults} -> maxResults) (\s@DescribeTags' {} a -> s {maxResults = a} :: DescribeTags)

instance Core.AWSPager DescribeTags where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeTagsResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeTagsResponse_tags Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeTags_nextToken
          Lens..~ rs
          Lens.^? describeTagsResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest DescribeTags where
  type AWSResponse DescribeTags = DescribeTagsResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          DescribeTagsResponse'
            Prelude.<$> ( x Core..@? "tagSet" Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "item")
                        )
            Prelude.<*> (x Core..@? "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeTags where
  hashWithSalt _salt DescribeTags' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` filters
      `Prelude.hashWithSalt` dryRun
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData DescribeTags where
  rnf DescribeTags' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf filters
      `Prelude.seq` Prelude.rnf dryRun
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders DescribeTags where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DescribeTags where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeTags where
  toQuery DescribeTags' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("DescribeTags" :: Prelude.ByteString),
        "Version"
          Core.=: ("2016-11-15" :: Prelude.ByteString),
        "NextToken" Core.=: nextToken,
        Core.toQuery
          (Core.toQueryList "Filter" Prelude.<$> filters),
        "DryRun" Core.=: dryRun,
        "MaxResults" Core.=: maxResults
      ]

-- | /See:/ 'newDescribeTagsResponse' smart constructor.
data DescribeTagsResponse = DescribeTagsResponse'
  { -- | The tags.
    tags :: Prelude.Maybe [TagDescription],
    -- | The token to use to retrieve the next page of results. This value is
    -- @null@ when there are no more results to return.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeTagsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'describeTagsResponse_tags' - The tags.
--
-- 'nextToken', 'describeTagsResponse_nextToken' - The token to use to retrieve the next page of results. This value is
-- @null@ when there are no more results to return.
--
-- 'httpStatus', 'describeTagsResponse_httpStatus' - The response's http status code.
newDescribeTagsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeTagsResponse
newDescribeTagsResponse pHttpStatus_ =
  DescribeTagsResponse'
    { tags = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The tags.
describeTagsResponse_tags :: Lens.Lens' DescribeTagsResponse (Prelude.Maybe [TagDescription])
describeTagsResponse_tags = Lens.lens (\DescribeTagsResponse' {tags} -> tags) (\s@DescribeTagsResponse' {} a -> s {tags = a} :: DescribeTagsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The token to use to retrieve the next page of results. This value is
-- @null@ when there are no more results to return.
describeTagsResponse_nextToken :: Lens.Lens' DescribeTagsResponse (Prelude.Maybe Prelude.Text)
describeTagsResponse_nextToken = Lens.lens (\DescribeTagsResponse' {nextToken} -> nextToken) (\s@DescribeTagsResponse' {} a -> s {nextToken = a} :: DescribeTagsResponse)

-- | The response's http status code.
describeTagsResponse_httpStatus :: Lens.Lens' DescribeTagsResponse Prelude.Int
describeTagsResponse_httpStatus = Lens.lens (\DescribeTagsResponse' {httpStatus} -> httpStatus) (\s@DescribeTagsResponse' {} a -> s {httpStatus = a} :: DescribeTagsResponse)

instance Prelude.NFData DescribeTagsResponse where
  rnf DescribeTagsResponse' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
