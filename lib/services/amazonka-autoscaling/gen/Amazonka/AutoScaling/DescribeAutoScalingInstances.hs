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
-- Module      : Amazonka.AutoScaling.DescribeAutoScalingInstances
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the Auto Scaling instances in the account and
-- Region.
--
-- This operation returns paginated results.
module Amazonka.AutoScaling.DescribeAutoScalingInstances
  ( -- * Creating a Request
    DescribeAutoScalingInstances (..),
    newDescribeAutoScalingInstances,

    -- * Request Lenses
    describeAutoScalingInstances_nextToken,
    describeAutoScalingInstances_maxRecords,
    describeAutoScalingInstances_instanceIds,

    -- * Destructuring the Response
    DescribeAutoScalingInstancesResponse (..),
    newDescribeAutoScalingInstancesResponse,

    -- * Response Lenses
    describeAutoScalingInstancesResponse_nextToken,
    describeAutoScalingInstancesResponse_autoScalingInstances,
    describeAutoScalingInstancesResponse_httpStatus,
  )
where

import Amazonka.AutoScaling.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeAutoScalingInstances' smart constructor.
data DescribeAutoScalingInstances = DescribeAutoScalingInstances'
  { -- | The token for the next set of items to return. (You received this token
    -- from a previous call.)
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of items to return with this call. The default value
    -- is @50@ and the maximum value is @50@.
    maxRecords :: Prelude.Maybe Prelude.Int,
    -- | The IDs of the instances. If you omit this property, all Auto Scaling
    -- instances are described. If you specify an ID that does not exist, it is
    -- ignored with no error.
    --
    -- Array Members: Maximum number of 50 items.
    instanceIds :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeAutoScalingInstances' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeAutoScalingInstances_nextToken' - The token for the next set of items to return. (You received this token
-- from a previous call.)
--
-- 'maxRecords', 'describeAutoScalingInstances_maxRecords' - The maximum number of items to return with this call. The default value
-- is @50@ and the maximum value is @50@.
--
-- 'instanceIds', 'describeAutoScalingInstances_instanceIds' - The IDs of the instances. If you omit this property, all Auto Scaling
-- instances are described. If you specify an ID that does not exist, it is
-- ignored with no error.
--
-- Array Members: Maximum number of 50 items.
newDescribeAutoScalingInstances ::
  DescribeAutoScalingInstances
newDescribeAutoScalingInstances =
  DescribeAutoScalingInstances'
    { nextToken =
        Prelude.Nothing,
      maxRecords = Prelude.Nothing,
      instanceIds = Prelude.Nothing
    }

-- | The token for the next set of items to return. (You received this token
-- from a previous call.)
describeAutoScalingInstances_nextToken :: Lens.Lens' DescribeAutoScalingInstances (Prelude.Maybe Prelude.Text)
describeAutoScalingInstances_nextToken = Lens.lens (\DescribeAutoScalingInstances' {nextToken} -> nextToken) (\s@DescribeAutoScalingInstances' {} a -> s {nextToken = a} :: DescribeAutoScalingInstances)

-- | The maximum number of items to return with this call. The default value
-- is @50@ and the maximum value is @50@.
describeAutoScalingInstances_maxRecords :: Lens.Lens' DescribeAutoScalingInstances (Prelude.Maybe Prelude.Int)
describeAutoScalingInstances_maxRecords = Lens.lens (\DescribeAutoScalingInstances' {maxRecords} -> maxRecords) (\s@DescribeAutoScalingInstances' {} a -> s {maxRecords = a} :: DescribeAutoScalingInstances)

-- | The IDs of the instances. If you omit this property, all Auto Scaling
-- instances are described. If you specify an ID that does not exist, it is
-- ignored with no error.
--
-- Array Members: Maximum number of 50 items.
describeAutoScalingInstances_instanceIds :: Lens.Lens' DescribeAutoScalingInstances (Prelude.Maybe [Prelude.Text])
describeAutoScalingInstances_instanceIds = Lens.lens (\DescribeAutoScalingInstances' {instanceIds} -> instanceIds) (\s@DescribeAutoScalingInstances' {} a -> s {instanceIds = a} :: DescribeAutoScalingInstances) Prelude.. Lens.mapping Lens.coerced

instance Core.AWSPager DescribeAutoScalingInstances where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeAutoScalingInstancesResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeAutoScalingInstancesResponse_autoScalingInstances
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeAutoScalingInstances_nextToken
          Lens..~ rs
          Lens.^? describeAutoScalingInstancesResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest DescribeAutoScalingInstances where
  type
    AWSResponse DescribeAutoScalingInstances =
      DescribeAutoScalingInstancesResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "DescribeAutoScalingInstancesResult"
      ( \s h x ->
          DescribeAutoScalingInstancesResponse'
            Prelude.<$> (x Core..@? "NextToken")
            Prelude.<*> ( x Core..@? "AutoScalingInstances"
                            Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "member")
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DescribeAutoScalingInstances
  where
  hashWithSalt _salt DescribeAutoScalingInstances' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxRecords
      `Prelude.hashWithSalt` instanceIds

instance Prelude.NFData DescribeAutoScalingInstances where
  rnf DescribeAutoScalingInstances' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxRecords
      `Prelude.seq` Prelude.rnf instanceIds

instance Core.ToHeaders DescribeAutoScalingInstances where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DescribeAutoScalingInstances where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeAutoScalingInstances where
  toQuery DescribeAutoScalingInstances' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ( "DescribeAutoScalingInstances" ::
                      Prelude.ByteString
                  ),
        "Version"
          Core.=: ("2011-01-01" :: Prelude.ByteString),
        "NextToken" Core.=: nextToken,
        "MaxRecords" Core.=: maxRecords,
        "InstanceIds"
          Core.=: Core.toQuery
            (Core.toQueryList "member" Prelude.<$> instanceIds)
      ]

-- | /See:/ 'newDescribeAutoScalingInstancesResponse' smart constructor.
data DescribeAutoScalingInstancesResponse = DescribeAutoScalingInstancesResponse'
  { -- | A string that indicates that the response contains more items than can
    -- be returned in a single response. To receive additional items, specify
    -- this string for the @NextToken@ value when requesting the next set of
    -- items. This value is null when there are no more items to return.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The instances.
    autoScalingInstances :: Prelude.Maybe [AutoScalingInstanceDetails],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeAutoScalingInstancesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeAutoScalingInstancesResponse_nextToken' - A string that indicates that the response contains more items than can
-- be returned in a single response. To receive additional items, specify
-- this string for the @NextToken@ value when requesting the next set of
-- items. This value is null when there are no more items to return.
--
-- 'autoScalingInstances', 'describeAutoScalingInstancesResponse_autoScalingInstances' - The instances.
--
-- 'httpStatus', 'describeAutoScalingInstancesResponse_httpStatus' - The response's http status code.
newDescribeAutoScalingInstancesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeAutoScalingInstancesResponse
newDescribeAutoScalingInstancesResponse pHttpStatus_ =
  DescribeAutoScalingInstancesResponse'
    { nextToken =
        Prelude.Nothing,
      autoScalingInstances =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A string that indicates that the response contains more items than can
-- be returned in a single response. To receive additional items, specify
-- this string for the @NextToken@ value when requesting the next set of
-- items. This value is null when there are no more items to return.
describeAutoScalingInstancesResponse_nextToken :: Lens.Lens' DescribeAutoScalingInstancesResponse (Prelude.Maybe Prelude.Text)
describeAutoScalingInstancesResponse_nextToken = Lens.lens (\DescribeAutoScalingInstancesResponse' {nextToken} -> nextToken) (\s@DescribeAutoScalingInstancesResponse' {} a -> s {nextToken = a} :: DescribeAutoScalingInstancesResponse)

-- | The instances.
describeAutoScalingInstancesResponse_autoScalingInstances :: Lens.Lens' DescribeAutoScalingInstancesResponse (Prelude.Maybe [AutoScalingInstanceDetails])
describeAutoScalingInstancesResponse_autoScalingInstances = Lens.lens (\DescribeAutoScalingInstancesResponse' {autoScalingInstances} -> autoScalingInstances) (\s@DescribeAutoScalingInstancesResponse' {} a -> s {autoScalingInstances = a} :: DescribeAutoScalingInstancesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeAutoScalingInstancesResponse_httpStatus :: Lens.Lens' DescribeAutoScalingInstancesResponse Prelude.Int
describeAutoScalingInstancesResponse_httpStatus = Lens.lens (\DescribeAutoScalingInstancesResponse' {httpStatus} -> httpStatus) (\s@DescribeAutoScalingInstancesResponse' {} a -> s {httpStatus = a} :: DescribeAutoScalingInstancesResponse)

instance
  Prelude.NFData
    DescribeAutoScalingInstancesResponse
  where
  rnf DescribeAutoScalingInstancesResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf autoScalingInstances
      `Prelude.seq` Prelude.rnf httpStatus
