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
-- Module      : Amazonka.EC2.DescribeInstanceEventWindows
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified event windows or all event windows.
--
-- If you specify event window IDs, the output includes information for
-- only the specified event windows. If you specify filters, the output
-- includes information for only those event windows that meet the filter
-- criteria. If you do not specify event windows IDs or filters, the output
-- includes information for all event windows, which can affect
-- performance. We recommend that you use pagination to ensure that the
-- operation returns quickly and successfully.
--
-- For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/event-windows.html Define event windows for scheduled events>
-- in the /Amazon EC2 User Guide/.
--
-- This operation returns paginated results.
module Amazonka.EC2.DescribeInstanceEventWindows
  ( -- * Creating a Request
    DescribeInstanceEventWindows (..),
    newDescribeInstanceEventWindows,

    -- * Request Lenses
    describeInstanceEventWindows_nextToken,
    describeInstanceEventWindows_filters,
    describeInstanceEventWindows_instanceEventWindowIds,
    describeInstanceEventWindows_dryRun,
    describeInstanceEventWindows_maxResults,

    -- * Destructuring the Response
    DescribeInstanceEventWindowsResponse (..),
    newDescribeInstanceEventWindowsResponse,

    -- * Response Lenses
    describeInstanceEventWindowsResponse_nextToken,
    describeInstanceEventWindowsResponse_instanceEventWindows,
    describeInstanceEventWindowsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Describe instance event windows by InstanceEventWindow.
--
-- /See:/ 'newDescribeInstanceEventWindows' smart constructor.
data DescribeInstanceEventWindows = DescribeInstanceEventWindows'
  { -- | The token to request the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | One or more filters.
    --
    -- -   @dedicated-host-id@ - The event windows associated with the
    --     specified Dedicated Host ID.
    --
    -- -   @event-window-name@ - The event windows associated with the
    --     specified names.
    --
    -- -   @instance-id@ - The event windows associated with the specified
    --     instance ID.
    --
    -- -   @instance-tag@ - The event windows associated with the specified tag
    --     and value.
    --
    -- -   @instance-tag-key@ - The event windows associated with the specified
    --     tag key, regardless of the value.
    --
    -- -   @instance-tag-value@ - The event windows associated with the
    --     specified tag value, regardless of the key.
    --
    -- -   @tag:\<key>@ - The key\/value combination of a tag assigned to the
    --     event window. Use the tag key in the filter name and the tag value
    --     as the filter value. For example, to find all resources that have a
    --     tag with the key @Owner@ and the value @CMX@, specify @tag:Owner@
    --     for the filter name and @CMX@ for the filter value.
    --
    -- -   @tag-key@ - The key of a tag assigned to the event window. Use this
    --     filter to find all event windows that have a tag with a specific
    --     key, regardless of the tag value.
    --
    -- -   @tag-value@ - The value of a tag assigned to the event window. Use
    --     this filter to find all event windows that have a tag with a
    --     specific value, regardless of the tag key.
    filters :: Prelude.Maybe [Filter],
    -- | The IDs of the event windows.
    instanceEventWindowIds :: Prelude.Maybe [Prelude.Text],
    -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | The maximum number of results to return in a single call. To retrieve
    -- the remaining results, make another call with the returned @NextToken@
    -- value. This value can be between 20 and 500. You cannot specify this
    -- parameter and the event window IDs parameter in the same call.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeInstanceEventWindows' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeInstanceEventWindows_nextToken' - The token to request the next page of results.
--
-- 'filters', 'describeInstanceEventWindows_filters' - One or more filters.
--
-- -   @dedicated-host-id@ - The event windows associated with the
--     specified Dedicated Host ID.
--
-- -   @event-window-name@ - The event windows associated with the
--     specified names.
--
-- -   @instance-id@ - The event windows associated with the specified
--     instance ID.
--
-- -   @instance-tag@ - The event windows associated with the specified tag
--     and value.
--
-- -   @instance-tag-key@ - The event windows associated with the specified
--     tag key, regardless of the value.
--
-- -   @instance-tag-value@ - The event windows associated with the
--     specified tag value, regardless of the key.
--
-- -   @tag:\<key>@ - The key\/value combination of a tag assigned to the
--     event window. Use the tag key in the filter name and the tag value
--     as the filter value. For example, to find all resources that have a
--     tag with the key @Owner@ and the value @CMX@, specify @tag:Owner@
--     for the filter name and @CMX@ for the filter value.
--
-- -   @tag-key@ - The key of a tag assigned to the event window. Use this
--     filter to find all event windows that have a tag with a specific
--     key, regardless of the tag value.
--
-- -   @tag-value@ - The value of a tag assigned to the event window. Use
--     this filter to find all event windows that have a tag with a
--     specific value, regardless of the tag key.
--
-- 'instanceEventWindowIds', 'describeInstanceEventWindows_instanceEventWindowIds' - The IDs of the event windows.
--
-- 'dryRun', 'describeInstanceEventWindows_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'maxResults', 'describeInstanceEventWindows_maxResults' - The maximum number of results to return in a single call. To retrieve
-- the remaining results, make another call with the returned @NextToken@
-- value. This value can be between 20 and 500. You cannot specify this
-- parameter and the event window IDs parameter in the same call.
newDescribeInstanceEventWindows ::
  DescribeInstanceEventWindows
newDescribeInstanceEventWindows =
  DescribeInstanceEventWindows'
    { nextToken =
        Prelude.Nothing,
      filters = Prelude.Nothing,
      instanceEventWindowIds = Prelude.Nothing,
      dryRun = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The token to request the next page of results.
describeInstanceEventWindows_nextToken :: Lens.Lens' DescribeInstanceEventWindows (Prelude.Maybe Prelude.Text)
describeInstanceEventWindows_nextToken = Lens.lens (\DescribeInstanceEventWindows' {nextToken} -> nextToken) (\s@DescribeInstanceEventWindows' {} a -> s {nextToken = a} :: DescribeInstanceEventWindows)

-- | One or more filters.
--
-- -   @dedicated-host-id@ - The event windows associated with the
--     specified Dedicated Host ID.
--
-- -   @event-window-name@ - The event windows associated with the
--     specified names.
--
-- -   @instance-id@ - The event windows associated with the specified
--     instance ID.
--
-- -   @instance-tag@ - The event windows associated with the specified tag
--     and value.
--
-- -   @instance-tag-key@ - The event windows associated with the specified
--     tag key, regardless of the value.
--
-- -   @instance-tag-value@ - The event windows associated with the
--     specified tag value, regardless of the key.
--
-- -   @tag:\<key>@ - The key\/value combination of a tag assigned to the
--     event window. Use the tag key in the filter name and the tag value
--     as the filter value. For example, to find all resources that have a
--     tag with the key @Owner@ and the value @CMX@, specify @tag:Owner@
--     for the filter name and @CMX@ for the filter value.
--
-- -   @tag-key@ - The key of a tag assigned to the event window. Use this
--     filter to find all event windows that have a tag with a specific
--     key, regardless of the tag value.
--
-- -   @tag-value@ - The value of a tag assigned to the event window. Use
--     this filter to find all event windows that have a tag with a
--     specific value, regardless of the tag key.
describeInstanceEventWindows_filters :: Lens.Lens' DescribeInstanceEventWindows (Prelude.Maybe [Filter])
describeInstanceEventWindows_filters = Lens.lens (\DescribeInstanceEventWindows' {filters} -> filters) (\s@DescribeInstanceEventWindows' {} a -> s {filters = a} :: DescribeInstanceEventWindows) Prelude.. Lens.mapping Lens.coerced

-- | The IDs of the event windows.
describeInstanceEventWindows_instanceEventWindowIds :: Lens.Lens' DescribeInstanceEventWindows (Prelude.Maybe [Prelude.Text])
describeInstanceEventWindows_instanceEventWindowIds = Lens.lens (\DescribeInstanceEventWindows' {instanceEventWindowIds} -> instanceEventWindowIds) (\s@DescribeInstanceEventWindows' {} a -> s {instanceEventWindowIds = a} :: DescribeInstanceEventWindows) Prelude.. Lens.mapping Lens.coerced

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
describeInstanceEventWindows_dryRun :: Lens.Lens' DescribeInstanceEventWindows (Prelude.Maybe Prelude.Bool)
describeInstanceEventWindows_dryRun = Lens.lens (\DescribeInstanceEventWindows' {dryRun} -> dryRun) (\s@DescribeInstanceEventWindows' {} a -> s {dryRun = a} :: DescribeInstanceEventWindows)

-- | The maximum number of results to return in a single call. To retrieve
-- the remaining results, make another call with the returned @NextToken@
-- value. This value can be between 20 and 500. You cannot specify this
-- parameter and the event window IDs parameter in the same call.
describeInstanceEventWindows_maxResults :: Lens.Lens' DescribeInstanceEventWindows (Prelude.Maybe Prelude.Natural)
describeInstanceEventWindows_maxResults = Lens.lens (\DescribeInstanceEventWindows' {maxResults} -> maxResults) (\s@DescribeInstanceEventWindows' {} a -> s {maxResults = a} :: DescribeInstanceEventWindows)

instance Core.AWSPager DescribeInstanceEventWindows where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeInstanceEventWindowsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeInstanceEventWindowsResponse_instanceEventWindows
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeInstanceEventWindows_nextToken
          Lens..~ rs
          Lens.^? describeInstanceEventWindowsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest DescribeInstanceEventWindows where
  type
    AWSResponse DescribeInstanceEventWindows =
      DescribeInstanceEventWindowsResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          DescribeInstanceEventWindowsResponse'
            Prelude.<$> (x Core..@? "nextToken")
            Prelude.<*> ( x Core..@? "instanceEventWindowSet"
                            Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "item")
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DescribeInstanceEventWindows
  where
  hashWithSalt _salt DescribeInstanceEventWindows' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` filters
      `Prelude.hashWithSalt` instanceEventWindowIds
      `Prelude.hashWithSalt` dryRun
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData DescribeInstanceEventWindows where
  rnf DescribeInstanceEventWindows' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf filters
      `Prelude.seq` Prelude.rnf instanceEventWindowIds
      `Prelude.seq` Prelude.rnf dryRun
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders DescribeInstanceEventWindows where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DescribeInstanceEventWindows where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeInstanceEventWindows where
  toQuery DescribeInstanceEventWindows' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ( "DescribeInstanceEventWindows" ::
                      Prelude.ByteString
                  ),
        "Version"
          Core.=: ("2016-11-15" :: Prelude.ByteString),
        "NextToken" Core.=: nextToken,
        Core.toQuery
          (Core.toQueryList "Filter" Prelude.<$> filters),
        Core.toQuery
          ( Core.toQueryList "InstanceEventWindowId"
              Prelude.<$> instanceEventWindowIds
          ),
        "DryRun" Core.=: dryRun,
        "MaxResults" Core.=: maxResults
      ]

-- | /See:/ 'newDescribeInstanceEventWindowsResponse' smart constructor.
data DescribeInstanceEventWindowsResponse = DescribeInstanceEventWindowsResponse'
  { -- | The token to use to retrieve the next page of results. This value is
    -- @null@ when there are no more results to return.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Information about the event windows.
    instanceEventWindows :: Prelude.Maybe [InstanceEventWindow],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeInstanceEventWindowsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeInstanceEventWindowsResponse_nextToken' - The token to use to retrieve the next page of results. This value is
-- @null@ when there are no more results to return.
--
-- 'instanceEventWindows', 'describeInstanceEventWindowsResponse_instanceEventWindows' - Information about the event windows.
--
-- 'httpStatus', 'describeInstanceEventWindowsResponse_httpStatus' - The response's http status code.
newDescribeInstanceEventWindowsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeInstanceEventWindowsResponse
newDescribeInstanceEventWindowsResponse pHttpStatus_ =
  DescribeInstanceEventWindowsResponse'
    { nextToken =
        Prelude.Nothing,
      instanceEventWindows =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token to use to retrieve the next page of results. This value is
-- @null@ when there are no more results to return.
describeInstanceEventWindowsResponse_nextToken :: Lens.Lens' DescribeInstanceEventWindowsResponse (Prelude.Maybe Prelude.Text)
describeInstanceEventWindowsResponse_nextToken = Lens.lens (\DescribeInstanceEventWindowsResponse' {nextToken} -> nextToken) (\s@DescribeInstanceEventWindowsResponse' {} a -> s {nextToken = a} :: DescribeInstanceEventWindowsResponse)

-- | Information about the event windows.
describeInstanceEventWindowsResponse_instanceEventWindows :: Lens.Lens' DescribeInstanceEventWindowsResponse (Prelude.Maybe [InstanceEventWindow])
describeInstanceEventWindowsResponse_instanceEventWindows = Lens.lens (\DescribeInstanceEventWindowsResponse' {instanceEventWindows} -> instanceEventWindows) (\s@DescribeInstanceEventWindowsResponse' {} a -> s {instanceEventWindows = a} :: DescribeInstanceEventWindowsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeInstanceEventWindowsResponse_httpStatus :: Lens.Lens' DescribeInstanceEventWindowsResponse Prelude.Int
describeInstanceEventWindowsResponse_httpStatus = Lens.lens (\DescribeInstanceEventWindowsResponse' {httpStatus} -> httpStatus) (\s@DescribeInstanceEventWindowsResponse' {} a -> s {httpStatus = a} :: DescribeInstanceEventWindowsResponse)

instance
  Prelude.NFData
    DescribeInstanceEventWindowsResponse
  where
  rnf DescribeInstanceEventWindowsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf instanceEventWindows
      `Prelude.seq` Prelude.rnf httpStatus
