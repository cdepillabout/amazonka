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
-- Module      : Amazonka.EC2.DescribeSpotPriceHistory
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the Spot price history. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-spot-instances-history.html Spot Instance pricing history>
-- in the /Amazon EC2 User Guide for Linux Instances/.
--
-- When you specify a start and end time, the operation returns the prices
-- of the instance types within that time range. It also returns the last
-- price change before the start time, which is the effective price as of
-- the start time.
--
-- This operation returns paginated results.
module Amazonka.EC2.DescribeSpotPriceHistory
  ( -- * Creating a Request
    DescribeSpotPriceHistory (..),
    newDescribeSpotPriceHistory,

    -- * Request Lenses
    describeSpotPriceHistory_nextToken,
    describeSpotPriceHistory_instanceTypes,
    describeSpotPriceHistory_productDescriptions,
    describeSpotPriceHistory_filters,
    describeSpotPriceHistory_availabilityZone,
    describeSpotPriceHistory_endTime,
    describeSpotPriceHistory_dryRun,
    describeSpotPriceHistory_maxResults,
    describeSpotPriceHistory_startTime,

    -- * Destructuring the Response
    DescribeSpotPriceHistoryResponse (..),
    newDescribeSpotPriceHistoryResponse,

    -- * Response Lenses
    describeSpotPriceHistoryResponse_nextToken,
    describeSpotPriceHistoryResponse_spotPriceHistory,
    describeSpotPriceHistoryResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Contains the parameters for DescribeSpotPriceHistory.
--
-- /See:/ 'newDescribeSpotPriceHistory' smart constructor.
data DescribeSpotPriceHistory = DescribeSpotPriceHistory'
  { -- | The token for the next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Filters the results by the specified instance types.
    instanceTypes :: Prelude.Maybe [InstanceType],
    -- | Filters the results by the specified basic product descriptions.
    productDescriptions :: Prelude.Maybe [Prelude.Text],
    -- | One or more filters.
    --
    -- -   @availability-zone@ - The Availability Zone for which prices should
    --     be returned.
    --
    -- -   @instance-type@ - The type of instance (for example, @m3.medium@).
    --
    -- -   @product-description@ - The product description for the Spot price
    --     (@Linux\/UNIX@ | @Red Hat Enterprise Linux@ | @SUSE Linux@ |
    --     @Windows@ | @Linux\/UNIX (Amazon VPC)@ |
    --     @Red Hat Enterprise Linux (Amazon VPC)@ | @SUSE Linux (Amazon VPC)@
    --     | @Windows (Amazon VPC)@).
    --
    -- -   @spot-price@ - The Spot price. The value must match exactly (or use
    --     wildcards; greater than or less than comparison is not supported).
    --
    -- -   @timestamp@ - The time stamp of the Spot price history, in UTC
    --     format (for example, /YYYY/-/MM/-/DD/T/HH/:/MM/:/SS/Z). You can use
    --     wildcards (* and ?). Greater than or less than comparison is not
    --     supported.
    filters :: Prelude.Maybe [Filter],
    -- | Filters the results by the specified Availability Zone.
    availabilityZone :: Prelude.Maybe Prelude.Text,
    -- | The date and time, up to the current date, from which to stop retrieving
    -- the price history data, in UTC format (for example,
    -- /YYYY/-/MM/-/DD/T/HH/:/MM/:/SS/Z).
    endTime :: Prelude.Maybe Core.ISO8601,
    -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | The maximum number of results to return in a single call. Specify a
    -- value between 1 and 1000. The default value is 1000. To retrieve the
    -- remaining results, make another call with the returned @NextToken@
    -- value.
    maxResults :: Prelude.Maybe Prelude.Int,
    -- | The date and time, up to the past 90 days, from which to start
    -- retrieving the price history data, in UTC format (for example,
    -- /YYYY/-/MM/-/DD/T/HH/:/MM/:/SS/Z).
    startTime :: Prelude.Maybe Core.ISO8601
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeSpotPriceHistory' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeSpotPriceHistory_nextToken' - The token for the next set of results.
--
-- 'instanceTypes', 'describeSpotPriceHistory_instanceTypes' - Filters the results by the specified instance types.
--
-- 'productDescriptions', 'describeSpotPriceHistory_productDescriptions' - Filters the results by the specified basic product descriptions.
--
-- 'filters', 'describeSpotPriceHistory_filters' - One or more filters.
--
-- -   @availability-zone@ - The Availability Zone for which prices should
--     be returned.
--
-- -   @instance-type@ - The type of instance (for example, @m3.medium@).
--
-- -   @product-description@ - The product description for the Spot price
--     (@Linux\/UNIX@ | @Red Hat Enterprise Linux@ | @SUSE Linux@ |
--     @Windows@ | @Linux\/UNIX (Amazon VPC)@ |
--     @Red Hat Enterprise Linux (Amazon VPC)@ | @SUSE Linux (Amazon VPC)@
--     | @Windows (Amazon VPC)@).
--
-- -   @spot-price@ - The Spot price. The value must match exactly (or use
--     wildcards; greater than or less than comparison is not supported).
--
-- -   @timestamp@ - The time stamp of the Spot price history, in UTC
--     format (for example, /YYYY/-/MM/-/DD/T/HH/:/MM/:/SS/Z). You can use
--     wildcards (* and ?). Greater than or less than comparison is not
--     supported.
--
-- 'availabilityZone', 'describeSpotPriceHistory_availabilityZone' - Filters the results by the specified Availability Zone.
--
-- 'endTime', 'describeSpotPriceHistory_endTime' - The date and time, up to the current date, from which to stop retrieving
-- the price history data, in UTC format (for example,
-- /YYYY/-/MM/-/DD/T/HH/:/MM/:/SS/Z).
--
-- 'dryRun', 'describeSpotPriceHistory_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'maxResults', 'describeSpotPriceHistory_maxResults' - The maximum number of results to return in a single call. Specify a
-- value between 1 and 1000. The default value is 1000. To retrieve the
-- remaining results, make another call with the returned @NextToken@
-- value.
--
-- 'startTime', 'describeSpotPriceHistory_startTime' - The date and time, up to the past 90 days, from which to start
-- retrieving the price history data, in UTC format (for example,
-- /YYYY/-/MM/-/DD/T/HH/:/MM/:/SS/Z).
newDescribeSpotPriceHistory ::
  DescribeSpotPriceHistory
newDescribeSpotPriceHistory =
  DescribeSpotPriceHistory'
    { nextToken =
        Prelude.Nothing,
      instanceTypes = Prelude.Nothing,
      productDescriptions = Prelude.Nothing,
      filters = Prelude.Nothing,
      availabilityZone = Prelude.Nothing,
      endTime = Prelude.Nothing,
      dryRun = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      startTime = Prelude.Nothing
    }

-- | The token for the next set of results.
describeSpotPriceHistory_nextToken :: Lens.Lens' DescribeSpotPriceHistory (Prelude.Maybe Prelude.Text)
describeSpotPriceHistory_nextToken = Lens.lens (\DescribeSpotPriceHistory' {nextToken} -> nextToken) (\s@DescribeSpotPriceHistory' {} a -> s {nextToken = a} :: DescribeSpotPriceHistory)

-- | Filters the results by the specified instance types.
describeSpotPriceHistory_instanceTypes :: Lens.Lens' DescribeSpotPriceHistory (Prelude.Maybe [InstanceType])
describeSpotPriceHistory_instanceTypes = Lens.lens (\DescribeSpotPriceHistory' {instanceTypes} -> instanceTypes) (\s@DescribeSpotPriceHistory' {} a -> s {instanceTypes = a} :: DescribeSpotPriceHistory) Prelude.. Lens.mapping Lens.coerced

-- | Filters the results by the specified basic product descriptions.
describeSpotPriceHistory_productDescriptions :: Lens.Lens' DescribeSpotPriceHistory (Prelude.Maybe [Prelude.Text])
describeSpotPriceHistory_productDescriptions = Lens.lens (\DescribeSpotPriceHistory' {productDescriptions} -> productDescriptions) (\s@DescribeSpotPriceHistory' {} a -> s {productDescriptions = a} :: DescribeSpotPriceHistory) Prelude.. Lens.mapping Lens.coerced

-- | One or more filters.
--
-- -   @availability-zone@ - The Availability Zone for which prices should
--     be returned.
--
-- -   @instance-type@ - The type of instance (for example, @m3.medium@).
--
-- -   @product-description@ - The product description for the Spot price
--     (@Linux\/UNIX@ | @Red Hat Enterprise Linux@ | @SUSE Linux@ |
--     @Windows@ | @Linux\/UNIX (Amazon VPC)@ |
--     @Red Hat Enterprise Linux (Amazon VPC)@ | @SUSE Linux (Amazon VPC)@
--     | @Windows (Amazon VPC)@).
--
-- -   @spot-price@ - The Spot price. The value must match exactly (or use
--     wildcards; greater than or less than comparison is not supported).
--
-- -   @timestamp@ - The time stamp of the Spot price history, in UTC
--     format (for example, /YYYY/-/MM/-/DD/T/HH/:/MM/:/SS/Z). You can use
--     wildcards (* and ?). Greater than or less than comparison is not
--     supported.
describeSpotPriceHistory_filters :: Lens.Lens' DescribeSpotPriceHistory (Prelude.Maybe [Filter])
describeSpotPriceHistory_filters = Lens.lens (\DescribeSpotPriceHistory' {filters} -> filters) (\s@DescribeSpotPriceHistory' {} a -> s {filters = a} :: DescribeSpotPriceHistory) Prelude.. Lens.mapping Lens.coerced

-- | Filters the results by the specified Availability Zone.
describeSpotPriceHistory_availabilityZone :: Lens.Lens' DescribeSpotPriceHistory (Prelude.Maybe Prelude.Text)
describeSpotPriceHistory_availabilityZone = Lens.lens (\DescribeSpotPriceHistory' {availabilityZone} -> availabilityZone) (\s@DescribeSpotPriceHistory' {} a -> s {availabilityZone = a} :: DescribeSpotPriceHistory)

-- | The date and time, up to the current date, from which to stop retrieving
-- the price history data, in UTC format (for example,
-- /YYYY/-/MM/-/DD/T/HH/:/MM/:/SS/Z).
describeSpotPriceHistory_endTime :: Lens.Lens' DescribeSpotPriceHistory (Prelude.Maybe Prelude.UTCTime)
describeSpotPriceHistory_endTime = Lens.lens (\DescribeSpotPriceHistory' {endTime} -> endTime) (\s@DescribeSpotPriceHistory' {} a -> s {endTime = a} :: DescribeSpotPriceHistory) Prelude.. Lens.mapping Core._Time

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
describeSpotPriceHistory_dryRun :: Lens.Lens' DescribeSpotPriceHistory (Prelude.Maybe Prelude.Bool)
describeSpotPriceHistory_dryRun = Lens.lens (\DescribeSpotPriceHistory' {dryRun} -> dryRun) (\s@DescribeSpotPriceHistory' {} a -> s {dryRun = a} :: DescribeSpotPriceHistory)

-- | The maximum number of results to return in a single call. Specify a
-- value between 1 and 1000. The default value is 1000. To retrieve the
-- remaining results, make another call with the returned @NextToken@
-- value.
describeSpotPriceHistory_maxResults :: Lens.Lens' DescribeSpotPriceHistory (Prelude.Maybe Prelude.Int)
describeSpotPriceHistory_maxResults = Lens.lens (\DescribeSpotPriceHistory' {maxResults} -> maxResults) (\s@DescribeSpotPriceHistory' {} a -> s {maxResults = a} :: DescribeSpotPriceHistory)

-- | The date and time, up to the past 90 days, from which to start
-- retrieving the price history data, in UTC format (for example,
-- /YYYY/-/MM/-/DD/T/HH/:/MM/:/SS/Z).
describeSpotPriceHistory_startTime :: Lens.Lens' DescribeSpotPriceHistory (Prelude.Maybe Prelude.UTCTime)
describeSpotPriceHistory_startTime = Lens.lens (\DescribeSpotPriceHistory' {startTime} -> startTime) (\s@DescribeSpotPriceHistory' {} a -> s {startTime = a} :: DescribeSpotPriceHistory) Prelude.. Lens.mapping Core._Time

instance Core.AWSPager DescribeSpotPriceHistory where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeSpotPriceHistoryResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeSpotPriceHistoryResponse_spotPriceHistory
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeSpotPriceHistory_nextToken
          Lens..~ rs
          Lens.^? describeSpotPriceHistoryResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest DescribeSpotPriceHistory where
  type
    AWSResponse DescribeSpotPriceHistory =
      DescribeSpotPriceHistoryResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          DescribeSpotPriceHistoryResponse'
            Prelude.<$> (x Core..@? "nextToken")
            Prelude.<*> ( x Core..@? "spotPriceHistorySet"
                            Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "item")
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeSpotPriceHistory where
  hashWithSalt _salt DescribeSpotPriceHistory' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` instanceTypes
      `Prelude.hashWithSalt` productDescriptions
      `Prelude.hashWithSalt` filters
      `Prelude.hashWithSalt` availabilityZone
      `Prelude.hashWithSalt` endTime
      `Prelude.hashWithSalt` dryRun
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` startTime

instance Prelude.NFData DescribeSpotPriceHistory where
  rnf DescribeSpotPriceHistory' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf instanceTypes
      `Prelude.seq` Prelude.rnf productDescriptions
      `Prelude.seq` Prelude.rnf filters
      `Prelude.seq` Prelude.rnf availabilityZone
      `Prelude.seq` Prelude.rnf endTime
      `Prelude.seq` Prelude.rnf dryRun
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf startTime

instance Core.ToHeaders DescribeSpotPriceHistory where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DescribeSpotPriceHistory where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeSpotPriceHistory where
  toQuery DescribeSpotPriceHistory' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("DescribeSpotPriceHistory" :: Prelude.ByteString),
        "Version"
          Core.=: ("2016-11-15" :: Prelude.ByteString),
        "NextToken" Core.=: nextToken,
        Core.toQuery
          ( Core.toQueryList "InstanceType"
              Prelude.<$> instanceTypes
          ),
        Core.toQuery
          ( Core.toQueryList "ProductDescription"
              Prelude.<$> productDescriptions
          ),
        Core.toQuery
          (Core.toQueryList "Filter" Prelude.<$> filters),
        "AvailabilityZone" Core.=: availabilityZone,
        "EndTime" Core.=: endTime,
        "DryRun" Core.=: dryRun,
        "MaxResults" Core.=: maxResults,
        "StartTime" Core.=: startTime
      ]

-- | Contains the output of DescribeSpotPriceHistory.
--
-- /See:/ 'newDescribeSpotPriceHistoryResponse' smart constructor.
data DescribeSpotPriceHistoryResponse = DescribeSpotPriceHistoryResponse'
  { -- | The token required to retrieve the next set of results. This value is
    -- null or an empty string when there are no more results to return.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The historical Spot prices.
    spotPriceHistory :: Prelude.Maybe [SpotPrice],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeSpotPriceHistoryResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeSpotPriceHistoryResponse_nextToken' - The token required to retrieve the next set of results. This value is
-- null or an empty string when there are no more results to return.
--
-- 'spotPriceHistory', 'describeSpotPriceHistoryResponse_spotPriceHistory' - The historical Spot prices.
--
-- 'httpStatus', 'describeSpotPriceHistoryResponse_httpStatus' - The response's http status code.
newDescribeSpotPriceHistoryResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeSpotPriceHistoryResponse
newDescribeSpotPriceHistoryResponse pHttpStatus_ =
  DescribeSpotPriceHistoryResponse'
    { nextToken =
        Prelude.Nothing,
      spotPriceHistory = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token required to retrieve the next set of results. This value is
-- null or an empty string when there are no more results to return.
describeSpotPriceHistoryResponse_nextToken :: Lens.Lens' DescribeSpotPriceHistoryResponse (Prelude.Maybe Prelude.Text)
describeSpotPriceHistoryResponse_nextToken = Lens.lens (\DescribeSpotPriceHistoryResponse' {nextToken} -> nextToken) (\s@DescribeSpotPriceHistoryResponse' {} a -> s {nextToken = a} :: DescribeSpotPriceHistoryResponse)

-- | The historical Spot prices.
describeSpotPriceHistoryResponse_spotPriceHistory :: Lens.Lens' DescribeSpotPriceHistoryResponse (Prelude.Maybe [SpotPrice])
describeSpotPriceHistoryResponse_spotPriceHistory = Lens.lens (\DescribeSpotPriceHistoryResponse' {spotPriceHistory} -> spotPriceHistory) (\s@DescribeSpotPriceHistoryResponse' {} a -> s {spotPriceHistory = a} :: DescribeSpotPriceHistoryResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeSpotPriceHistoryResponse_httpStatus :: Lens.Lens' DescribeSpotPriceHistoryResponse Prelude.Int
describeSpotPriceHistoryResponse_httpStatus = Lens.lens (\DescribeSpotPriceHistoryResponse' {httpStatus} -> httpStatus) (\s@DescribeSpotPriceHistoryResponse' {} a -> s {httpStatus = a} :: DescribeSpotPriceHistoryResponse)

instance
  Prelude.NFData
    DescribeSpotPriceHistoryResponse
  where
  rnf DescribeSpotPriceHistoryResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf spotPriceHistory
      `Prelude.seq` Prelude.rnf httpStatus
