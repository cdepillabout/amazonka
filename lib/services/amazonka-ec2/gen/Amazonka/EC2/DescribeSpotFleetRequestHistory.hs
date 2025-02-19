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
-- Module      : Amazonka.EC2.DescribeSpotFleetRequestHistory
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the events for the specified Spot Fleet request during the
-- specified time.
--
-- Spot Fleet events are delayed by up to 30 seconds before they can be
-- described. This ensures that you can query by the last evaluated time
-- and not miss a recorded event. Spot Fleet events are available for 48
-- hours.
--
-- For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/fleet-monitor.html Monitor fleet events using Amazon EventBridge>
-- in the /Amazon EC2 User Guide for Linux Instances/.
module Amazonka.EC2.DescribeSpotFleetRequestHistory
  ( -- * Creating a Request
    DescribeSpotFleetRequestHistory (..),
    newDescribeSpotFleetRequestHistory,

    -- * Request Lenses
    describeSpotFleetRequestHistory_eventType,
    describeSpotFleetRequestHistory_nextToken,
    describeSpotFleetRequestHistory_dryRun,
    describeSpotFleetRequestHistory_maxResults,
    describeSpotFleetRequestHistory_spotFleetRequestId,
    describeSpotFleetRequestHistory_startTime,

    -- * Destructuring the Response
    DescribeSpotFleetRequestHistoryResponse (..),
    newDescribeSpotFleetRequestHistoryResponse,

    -- * Response Lenses
    describeSpotFleetRequestHistoryResponse_nextToken,
    describeSpotFleetRequestHistoryResponse_historyRecords,
    describeSpotFleetRequestHistoryResponse_spotFleetRequestId,
    describeSpotFleetRequestHistoryResponse_startTime,
    describeSpotFleetRequestHistoryResponse_lastEvaluatedTime,
    describeSpotFleetRequestHistoryResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Contains the parameters for DescribeSpotFleetRequestHistory.
--
-- /See:/ 'newDescribeSpotFleetRequestHistory' smart constructor.
data DescribeSpotFleetRequestHistory = DescribeSpotFleetRequestHistory'
  { -- | The type of events to describe. By default, all events are described.
    eventType :: Prelude.Maybe EventType,
    -- | The token for the next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | The maximum number of results to return in a single call. Specify a
    -- value between 1 and 1000. The default value is 1000. To retrieve the
    -- remaining results, make another call with the returned @NextToken@
    -- value.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The ID of the Spot Fleet request.
    spotFleetRequestId :: Prelude.Text,
    -- | The starting date and time for the events, in UTC format (for example,
    -- /YYYY/-/MM/-/DD/T/HH/:/MM/:/SS/Z).
    startTime :: Core.ISO8601
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeSpotFleetRequestHistory' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'eventType', 'describeSpotFleetRequestHistory_eventType' - The type of events to describe. By default, all events are described.
--
-- 'nextToken', 'describeSpotFleetRequestHistory_nextToken' - The token for the next set of results.
--
-- 'dryRun', 'describeSpotFleetRequestHistory_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'maxResults', 'describeSpotFleetRequestHistory_maxResults' - The maximum number of results to return in a single call. Specify a
-- value between 1 and 1000. The default value is 1000. To retrieve the
-- remaining results, make another call with the returned @NextToken@
-- value.
--
-- 'spotFleetRequestId', 'describeSpotFleetRequestHistory_spotFleetRequestId' - The ID of the Spot Fleet request.
--
-- 'startTime', 'describeSpotFleetRequestHistory_startTime' - The starting date and time for the events, in UTC format (for example,
-- /YYYY/-/MM/-/DD/T/HH/:/MM/:/SS/Z).
newDescribeSpotFleetRequestHistory ::
  -- | 'spotFleetRequestId'
  Prelude.Text ->
  -- | 'startTime'
  Prelude.UTCTime ->
  DescribeSpotFleetRequestHistory
newDescribeSpotFleetRequestHistory
  pSpotFleetRequestId_
  pStartTime_ =
    DescribeSpotFleetRequestHistory'
      { eventType =
          Prelude.Nothing,
        nextToken = Prelude.Nothing,
        dryRun = Prelude.Nothing,
        maxResults = Prelude.Nothing,
        spotFleetRequestId = pSpotFleetRequestId_,
        startTime = Core._Time Lens.# pStartTime_
      }

-- | The type of events to describe. By default, all events are described.
describeSpotFleetRequestHistory_eventType :: Lens.Lens' DescribeSpotFleetRequestHistory (Prelude.Maybe EventType)
describeSpotFleetRequestHistory_eventType = Lens.lens (\DescribeSpotFleetRequestHistory' {eventType} -> eventType) (\s@DescribeSpotFleetRequestHistory' {} a -> s {eventType = a} :: DescribeSpotFleetRequestHistory)

-- | The token for the next set of results.
describeSpotFleetRequestHistory_nextToken :: Lens.Lens' DescribeSpotFleetRequestHistory (Prelude.Maybe Prelude.Text)
describeSpotFleetRequestHistory_nextToken = Lens.lens (\DescribeSpotFleetRequestHistory' {nextToken} -> nextToken) (\s@DescribeSpotFleetRequestHistory' {} a -> s {nextToken = a} :: DescribeSpotFleetRequestHistory)

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
describeSpotFleetRequestHistory_dryRun :: Lens.Lens' DescribeSpotFleetRequestHistory (Prelude.Maybe Prelude.Bool)
describeSpotFleetRequestHistory_dryRun = Lens.lens (\DescribeSpotFleetRequestHistory' {dryRun} -> dryRun) (\s@DescribeSpotFleetRequestHistory' {} a -> s {dryRun = a} :: DescribeSpotFleetRequestHistory)

-- | The maximum number of results to return in a single call. Specify a
-- value between 1 and 1000. The default value is 1000. To retrieve the
-- remaining results, make another call with the returned @NextToken@
-- value.
describeSpotFleetRequestHistory_maxResults :: Lens.Lens' DescribeSpotFleetRequestHistory (Prelude.Maybe Prelude.Natural)
describeSpotFleetRequestHistory_maxResults = Lens.lens (\DescribeSpotFleetRequestHistory' {maxResults} -> maxResults) (\s@DescribeSpotFleetRequestHistory' {} a -> s {maxResults = a} :: DescribeSpotFleetRequestHistory)

-- | The ID of the Spot Fleet request.
describeSpotFleetRequestHistory_spotFleetRequestId :: Lens.Lens' DescribeSpotFleetRequestHistory Prelude.Text
describeSpotFleetRequestHistory_spotFleetRequestId = Lens.lens (\DescribeSpotFleetRequestHistory' {spotFleetRequestId} -> spotFleetRequestId) (\s@DescribeSpotFleetRequestHistory' {} a -> s {spotFleetRequestId = a} :: DescribeSpotFleetRequestHistory)

-- | The starting date and time for the events, in UTC format (for example,
-- /YYYY/-/MM/-/DD/T/HH/:/MM/:/SS/Z).
describeSpotFleetRequestHistory_startTime :: Lens.Lens' DescribeSpotFleetRequestHistory Prelude.UTCTime
describeSpotFleetRequestHistory_startTime = Lens.lens (\DescribeSpotFleetRequestHistory' {startTime} -> startTime) (\s@DescribeSpotFleetRequestHistory' {} a -> s {startTime = a} :: DescribeSpotFleetRequestHistory) Prelude.. Core._Time

instance
  Core.AWSRequest
    DescribeSpotFleetRequestHistory
  where
  type
    AWSResponse DescribeSpotFleetRequestHistory =
      DescribeSpotFleetRequestHistoryResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          DescribeSpotFleetRequestHistoryResponse'
            Prelude.<$> (x Core..@? "nextToken")
            Prelude.<*> ( x Core..@? "historyRecordSet"
                            Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "item")
                        )
            Prelude.<*> (x Core..@? "spotFleetRequestId")
            Prelude.<*> (x Core..@? "startTime")
            Prelude.<*> (x Core..@? "lastEvaluatedTime")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DescribeSpotFleetRequestHistory
  where
  hashWithSalt
    _salt
    DescribeSpotFleetRequestHistory' {..} =
      _salt `Prelude.hashWithSalt` eventType
        `Prelude.hashWithSalt` nextToken
        `Prelude.hashWithSalt` dryRun
        `Prelude.hashWithSalt` maxResults
        `Prelude.hashWithSalt` spotFleetRequestId
        `Prelude.hashWithSalt` startTime

instance
  Prelude.NFData
    DescribeSpotFleetRequestHistory
  where
  rnf DescribeSpotFleetRequestHistory' {..} =
    Prelude.rnf eventType
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf dryRun
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf spotFleetRequestId
      `Prelude.seq` Prelude.rnf startTime

instance
  Core.ToHeaders
    DescribeSpotFleetRequestHistory
  where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DescribeSpotFleetRequestHistory where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeSpotFleetRequestHistory where
  toQuery DescribeSpotFleetRequestHistory' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ( "DescribeSpotFleetRequestHistory" ::
                      Prelude.ByteString
                  ),
        "Version"
          Core.=: ("2016-11-15" :: Prelude.ByteString),
        "EventType" Core.=: eventType,
        "NextToken" Core.=: nextToken,
        "DryRun" Core.=: dryRun,
        "MaxResults" Core.=: maxResults,
        "SpotFleetRequestId" Core.=: spotFleetRequestId,
        "StartTime" Core.=: startTime
      ]

-- | Contains the output of DescribeSpotFleetRequestHistory.
--
-- /See:/ 'newDescribeSpotFleetRequestHistoryResponse' smart constructor.
data DescribeSpotFleetRequestHistoryResponse = DescribeSpotFleetRequestHistoryResponse'
  { -- | The token required to retrieve the next set of results. This value is
    -- @null@ when there are no more results to return.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Information about the events in the history of the Spot Fleet request.
    historyRecords :: Prelude.Maybe [HistoryRecord],
    -- | The ID of the Spot Fleet request.
    spotFleetRequestId :: Prelude.Maybe Prelude.Text,
    -- | The starting date and time for the events, in UTC format (for example,
    -- /YYYY/-/MM/-/DD/T/HH/:/MM/:/SS/Z).
    startTime :: Prelude.Maybe Core.ISO8601,
    -- | The last date and time for the events, in UTC format (for example,
    -- /YYYY/-/MM/-/DD/T/HH/:/MM/:/SS/Z). All records up to this time were
    -- retrieved.
    --
    -- If @nextToken@ indicates that there are more results, this value is not
    -- present.
    lastEvaluatedTime :: Prelude.Maybe Core.ISO8601,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeSpotFleetRequestHistoryResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeSpotFleetRequestHistoryResponse_nextToken' - The token required to retrieve the next set of results. This value is
-- @null@ when there are no more results to return.
--
-- 'historyRecords', 'describeSpotFleetRequestHistoryResponse_historyRecords' - Information about the events in the history of the Spot Fleet request.
--
-- 'spotFleetRequestId', 'describeSpotFleetRequestHistoryResponse_spotFleetRequestId' - The ID of the Spot Fleet request.
--
-- 'startTime', 'describeSpotFleetRequestHistoryResponse_startTime' - The starting date and time for the events, in UTC format (for example,
-- /YYYY/-/MM/-/DD/T/HH/:/MM/:/SS/Z).
--
-- 'lastEvaluatedTime', 'describeSpotFleetRequestHistoryResponse_lastEvaluatedTime' - The last date and time for the events, in UTC format (for example,
-- /YYYY/-/MM/-/DD/T/HH/:/MM/:/SS/Z). All records up to this time were
-- retrieved.
--
-- If @nextToken@ indicates that there are more results, this value is not
-- present.
--
-- 'httpStatus', 'describeSpotFleetRequestHistoryResponse_httpStatus' - The response's http status code.
newDescribeSpotFleetRequestHistoryResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeSpotFleetRequestHistoryResponse
newDescribeSpotFleetRequestHistoryResponse
  pHttpStatus_ =
    DescribeSpotFleetRequestHistoryResponse'
      { nextToken =
          Prelude.Nothing,
        historyRecords = Prelude.Nothing,
        spotFleetRequestId =
          Prelude.Nothing,
        startTime = Prelude.Nothing,
        lastEvaluatedTime =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The token required to retrieve the next set of results. This value is
-- @null@ when there are no more results to return.
describeSpotFleetRequestHistoryResponse_nextToken :: Lens.Lens' DescribeSpotFleetRequestHistoryResponse (Prelude.Maybe Prelude.Text)
describeSpotFleetRequestHistoryResponse_nextToken = Lens.lens (\DescribeSpotFleetRequestHistoryResponse' {nextToken} -> nextToken) (\s@DescribeSpotFleetRequestHistoryResponse' {} a -> s {nextToken = a} :: DescribeSpotFleetRequestHistoryResponse)

-- | Information about the events in the history of the Spot Fleet request.
describeSpotFleetRequestHistoryResponse_historyRecords :: Lens.Lens' DescribeSpotFleetRequestHistoryResponse (Prelude.Maybe [HistoryRecord])
describeSpotFleetRequestHistoryResponse_historyRecords = Lens.lens (\DescribeSpotFleetRequestHistoryResponse' {historyRecords} -> historyRecords) (\s@DescribeSpotFleetRequestHistoryResponse' {} a -> s {historyRecords = a} :: DescribeSpotFleetRequestHistoryResponse) Prelude.. Lens.mapping Lens.coerced

-- | The ID of the Spot Fleet request.
describeSpotFleetRequestHistoryResponse_spotFleetRequestId :: Lens.Lens' DescribeSpotFleetRequestHistoryResponse (Prelude.Maybe Prelude.Text)
describeSpotFleetRequestHistoryResponse_spotFleetRequestId = Lens.lens (\DescribeSpotFleetRequestHistoryResponse' {spotFleetRequestId} -> spotFleetRequestId) (\s@DescribeSpotFleetRequestHistoryResponse' {} a -> s {spotFleetRequestId = a} :: DescribeSpotFleetRequestHistoryResponse)

-- | The starting date and time for the events, in UTC format (for example,
-- /YYYY/-/MM/-/DD/T/HH/:/MM/:/SS/Z).
describeSpotFleetRequestHistoryResponse_startTime :: Lens.Lens' DescribeSpotFleetRequestHistoryResponse (Prelude.Maybe Prelude.UTCTime)
describeSpotFleetRequestHistoryResponse_startTime = Lens.lens (\DescribeSpotFleetRequestHistoryResponse' {startTime} -> startTime) (\s@DescribeSpotFleetRequestHistoryResponse' {} a -> s {startTime = a} :: DescribeSpotFleetRequestHistoryResponse) Prelude.. Lens.mapping Core._Time

-- | The last date and time for the events, in UTC format (for example,
-- /YYYY/-/MM/-/DD/T/HH/:/MM/:/SS/Z). All records up to this time were
-- retrieved.
--
-- If @nextToken@ indicates that there are more results, this value is not
-- present.
describeSpotFleetRequestHistoryResponse_lastEvaluatedTime :: Lens.Lens' DescribeSpotFleetRequestHistoryResponse (Prelude.Maybe Prelude.UTCTime)
describeSpotFleetRequestHistoryResponse_lastEvaluatedTime = Lens.lens (\DescribeSpotFleetRequestHistoryResponse' {lastEvaluatedTime} -> lastEvaluatedTime) (\s@DescribeSpotFleetRequestHistoryResponse' {} a -> s {lastEvaluatedTime = a} :: DescribeSpotFleetRequestHistoryResponse) Prelude.. Lens.mapping Core._Time

-- | The response's http status code.
describeSpotFleetRequestHistoryResponse_httpStatus :: Lens.Lens' DescribeSpotFleetRequestHistoryResponse Prelude.Int
describeSpotFleetRequestHistoryResponse_httpStatus = Lens.lens (\DescribeSpotFleetRequestHistoryResponse' {httpStatus} -> httpStatus) (\s@DescribeSpotFleetRequestHistoryResponse' {} a -> s {httpStatus = a} :: DescribeSpotFleetRequestHistoryResponse)

instance
  Prelude.NFData
    DescribeSpotFleetRequestHistoryResponse
  where
  rnf DescribeSpotFleetRequestHistoryResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf historyRecords
      `Prelude.seq` Prelude.rnf spotFleetRequestId
      `Prelude.seq` Prelude.rnf startTime
      `Prelude.seq` Prelude.rnf lastEvaluatedTime
      `Prelude.seq` Prelude.rnf httpStatus
