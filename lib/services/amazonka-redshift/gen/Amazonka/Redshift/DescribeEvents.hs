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
-- Module      : Amazonka.Redshift.DescribeEvents
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns events related to clusters, security groups, snapshots, and
-- parameter groups for the past 14 days. Events specific to a particular
-- cluster, security group, snapshot or parameter group can be obtained by
-- providing the name as a parameter. By default, the past hour of events
-- are returned.
--
-- This operation returns paginated results.
module Amazonka.Redshift.DescribeEvents
  ( -- * Creating a Request
    DescribeEvents (..),
    newDescribeEvents,

    -- * Request Lenses
    describeEvents_marker,
    describeEvents_sourceType,
    describeEvents_endTime,
    describeEvents_maxRecords,
    describeEvents_duration,
    describeEvents_sourceIdentifier,
    describeEvents_startTime,

    -- * Destructuring the Response
    DescribeEventsResponse (..),
    newDescribeEventsResponse,

    -- * Response Lenses
    describeEventsResponse_marker,
    describeEventsResponse_events,
    describeEventsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Redshift.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- |
--
-- /See:/ 'newDescribeEvents' smart constructor.
data DescribeEvents = DescribeEvents'
  { -- | An optional parameter that specifies the starting point to return a set
    -- of response records. When the results of a DescribeEvents request exceed
    -- the value specified in @MaxRecords@, Amazon Web Services returns a value
    -- in the @Marker@ field of the response. You can retrieve the next set of
    -- response records by providing the returned marker value in the @Marker@
    -- parameter and retrying the request.
    marker :: Prelude.Maybe Prelude.Text,
    -- | The event source to retrieve events for. If no value is specified, all
    -- events are returned.
    --
    -- Constraints:
    --
    -- If /SourceType/ is supplied, /SourceIdentifier/ must also be provided.
    --
    -- -   Specify @cluster@ when /SourceIdentifier/ is a cluster identifier.
    --
    -- -   Specify @cluster-security-group@ when /SourceIdentifier/ is a
    --     cluster security group name.
    --
    -- -   Specify @cluster-parameter-group@ when /SourceIdentifier/ is a
    --     cluster parameter group name.
    --
    -- -   Specify @cluster-snapshot@ when /SourceIdentifier/ is a cluster
    --     snapshot identifier.
    sourceType :: Prelude.Maybe SourceType,
    -- | The end of the time interval for which to retrieve events, specified in
    -- ISO 8601 format. For more information about ISO 8601, go to the
    -- <http://en.wikipedia.org/wiki/ISO_8601 ISO8601 Wikipedia page.>
    --
    -- Example: @2009-07-08T18:00Z@
    endTime :: Prelude.Maybe Core.ISO8601,
    -- | The maximum number of response records to return in each call. If the
    -- number of remaining response records exceeds the specified @MaxRecords@
    -- value, a value is returned in a @marker@ field of the response. You can
    -- retrieve the next set of records by retrying the command with the
    -- returned marker value.
    --
    -- Default: @100@
    --
    -- Constraints: minimum 20, maximum 100.
    maxRecords :: Prelude.Maybe Prelude.Int,
    -- | The number of minutes prior to the time of the request for which to
    -- retrieve events. For example, if the request is sent at 18:00 and you
    -- specify a duration of 60, then only events which have occurred after
    -- 17:00 will be returned.
    --
    -- Default: @60@
    duration :: Prelude.Maybe Prelude.Int,
    -- | The identifier of the event source for which events will be returned. If
    -- this parameter is not specified, then all sources are included in the
    -- response.
    --
    -- Constraints:
    --
    -- If /SourceIdentifier/ is supplied, /SourceType/ must also be provided.
    --
    -- -   Specify a cluster identifier when /SourceType/ is @cluster@.
    --
    -- -   Specify a cluster security group name when /SourceType/ is
    --     @cluster-security-group@.
    --
    -- -   Specify a cluster parameter group name when /SourceType/ is
    --     @cluster-parameter-group@.
    --
    -- -   Specify a cluster snapshot identifier when /SourceType/ is
    --     @cluster-snapshot@.
    sourceIdentifier :: Prelude.Maybe Prelude.Text,
    -- | The beginning of the time interval to retrieve events for, specified in
    -- ISO 8601 format. For more information about ISO 8601, go to the
    -- <http://en.wikipedia.org/wiki/ISO_8601 ISO8601 Wikipedia page.>
    --
    -- Example: @2009-07-08T18:00Z@
    startTime :: Prelude.Maybe Core.ISO8601
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeEvents' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'marker', 'describeEvents_marker' - An optional parameter that specifies the starting point to return a set
-- of response records. When the results of a DescribeEvents request exceed
-- the value specified in @MaxRecords@, Amazon Web Services returns a value
-- in the @Marker@ field of the response. You can retrieve the next set of
-- response records by providing the returned marker value in the @Marker@
-- parameter and retrying the request.
--
-- 'sourceType', 'describeEvents_sourceType' - The event source to retrieve events for. If no value is specified, all
-- events are returned.
--
-- Constraints:
--
-- If /SourceType/ is supplied, /SourceIdentifier/ must also be provided.
--
-- -   Specify @cluster@ when /SourceIdentifier/ is a cluster identifier.
--
-- -   Specify @cluster-security-group@ when /SourceIdentifier/ is a
--     cluster security group name.
--
-- -   Specify @cluster-parameter-group@ when /SourceIdentifier/ is a
--     cluster parameter group name.
--
-- -   Specify @cluster-snapshot@ when /SourceIdentifier/ is a cluster
--     snapshot identifier.
--
-- 'endTime', 'describeEvents_endTime' - The end of the time interval for which to retrieve events, specified in
-- ISO 8601 format. For more information about ISO 8601, go to the
-- <http://en.wikipedia.org/wiki/ISO_8601 ISO8601 Wikipedia page.>
--
-- Example: @2009-07-08T18:00Z@
--
-- 'maxRecords', 'describeEvents_maxRecords' - The maximum number of response records to return in each call. If the
-- number of remaining response records exceeds the specified @MaxRecords@
-- value, a value is returned in a @marker@ field of the response. You can
-- retrieve the next set of records by retrying the command with the
-- returned marker value.
--
-- Default: @100@
--
-- Constraints: minimum 20, maximum 100.
--
-- 'duration', 'describeEvents_duration' - The number of minutes prior to the time of the request for which to
-- retrieve events. For example, if the request is sent at 18:00 and you
-- specify a duration of 60, then only events which have occurred after
-- 17:00 will be returned.
--
-- Default: @60@
--
-- 'sourceIdentifier', 'describeEvents_sourceIdentifier' - The identifier of the event source for which events will be returned. If
-- this parameter is not specified, then all sources are included in the
-- response.
--
-- Constraints:
--
-- If /SourceIdentifier/ is supplied, /SourceType/ must also be provided.
--
-- -   Specify a cluster identifier when /SourceType/ is @cluster@.
--
-- -   Specify a cluster security group name when /SourceType/ is
--     @cluster-security-group@.
--
-- -   Specify a cluster parameter group name when /SourceType/ is
--     @cluster-parameter-group@.
--
-- -   Specify a cluster snapshot identifier when /SourceType/ is
--     @cluster-snapshot@.
--
-- 'startTime', 'describeEvents_startTime' - The beginning of the time interval to retrieve events for, specified in
-- ISO 8601 format. For more information about ISO 8601, go to the
-- <http://en.wikipedia.org/wiki/ISO_8601 ISO8601 Wikipedia page.>
--
-- Example: @2009-07-08T18:00Z@
newDescribeEvents ::
  DescribeEvents
newDescribeEvents =
  DescribeEvents'
    { marker = Prelude.Nothing,
      sourceType = Prelude.Nothing,
      endTime = Prelude.Nothing,
      maxRecords = Prelude.Nothing,
      duration = Prelude.Nothing,
      sourceIdentifier = Prelude.Nothing,
      startTime = Prelude.Nothing
    }

-- | An optional parameter that specifies the starting point to return a set
-- of response records. When the results of a DescribeEvents request exceed
-- the value specified in @MaxRecords@, Amazon Web Services returns a value
-- in the @Marker@ field of the response. You can retrieve the next set of
-- response records by providing the returned marker value in the @Marker@
-- parameter and retrying the request.
describeEvents_marker :: Lens.Lens' DescribeEvents (Prelude.Maybe Prelude.Text)
describeEvents_marker = Lens.lens (\DescribeEvents' {marker} -> marker) (\s@DescribeEvents' {} a -> s {marker = a} :: DescribeEvents)

-- | The event source to retrieve events for. If no value is specified, all
-- events are returned.
--
-- Constraints:
--
-- If /SourceType/ is supplied, /SourceIdentifier/ must also be provided.
--
-- -   Specify @cluster@ when /SourceIdentifier/ is a cluster identifier.
--
-- -   Specify @cluster-security-group@ when /SourceIdentifier/ is a
--     cluster security group name.
--
-- -   Specify @cluster-parameter-group@ when /SourceIdentifier/ is a
--     cluster parameter group name.
--
-- -   Specify @cluster-snapshot@ when /SourceIdentifier/ is a cluster
--     snapshot identifier.
describeEvents_sourceType :: Lens.Lens' DescribeEvents (Prelude.Maybe SourceType)
describeEvents_sourceType = Lens.lens (\DescribeEvents' {sourceType} -> sourceType) (\s@DescribeEvents' {} a -> s {sourceType = a} :: DescribeEvents)

-- | The end of the time interval for which to retrieve events, specified in
-- ISO 8601 format. For more information about ISO 8601, go to the
-- <http://en.wikipedia.org/wiki/ISO_8601 ISO8601 Wikipedia page.>
--
-- Example: @2009-07-08T18:00Z@
describeEvents_endTime :: Lens.Lens' DescribeEvents (Prelude.Maybe Prelude.UTCTime)
describeEvents_endTime = Lens.lens (\DescribeEvents' {endTime} -> endTime) (\s@DescribeEvents' {} a -> s {endTime = a} :: DescribeEvents) Prelude.. Lens.mapping Core._Time

-- | The maximum number of response records to return in each call. If the
-- number of remaining response records exceeds the specified @MaxRecords@
-- value, a value is returned in a @marker@ field of the response. You can
-- retrieve the next set of records by retrying the command with the
-- returned marker value.
--
-- Default: @100@
--
-- Constraints: minimum 20, maximum 100.
describeEvents_maxRecords :: Lens.Lens' DescribeEvents (Prelude.Maybe Prelude.Int)
describeEvents_maxRecords = Lens.lens (\DescribeEvents' {maxRecords} -> maxRecords) (\s@DescribeEvents' {} a -> s {maxRecords = a} :: DescribeEvents)

-- | The number of minutes prior to the time of the request for which to
-- retrieve events. For example, if the request is sent at 18:00 and you
-- specify a duration of 60, then only events which have occurred after
-- 17:00 will be returned.
--
-- Default: @60@
describeEvents_duration :: Lens.Lens' DescribeEvents (Prelude.Maybe Prelude.Int)
describeEvents_duration = Lens.lens (\DescribeEvents' {duration} -> duration) (\s@DescribeEvents' {} a -> s {duration = a} :: DescribeEvents)

-- | The identifier of the event source for which events will be returned. If
-- this parameter is not specified, then all sources are included in the
-- response.
--
-- Constraints:
--
-- If /SourceIdentifier/ is supplied, /SourceType/ must also be provided.
--
-- -   Specify a cluster identifier when /SourceType/ is @cluster@.
--
-- -   Specify a cluster security group name when /SourceType/ is
--     @cluster-security-group@.
--
-- -   Specify a cluster parameter group name when /SourceType/ is
--     @cluster-parameter-group@.
--
-- -   Specify a cluster snapshot identifier when /SourceType/ is
--     @cluster-snapshot@.
describeEvents_sourceIdentifier :: Lens.Lens' DescribeEvents (Prelude.Maybe Prelude.Text)
describeEvents_sourceIdentifier = Lens.lens (\DescribeEvents' {sourceIdentifier} -> sourceIdentifier) (\s@DescribeEvents' {} a -> s {sourceIdentifier = a} :: DescribeEvents)

-- | The beginning of the time interval to retrieve events for, specified in
-- ISO 8601 format. For more information about ISO 8601, go to the
-- <http://en.wikipedia.org/wiki/ISO_8601 ISO8601 Wikipedia page.>
--
-- Example: @2009-07-08T18:00Z@
describeEvents_startTime :: Lens.Lens' DescribeEvents (Prelude.Maybe Prelude.UTCTime)
describeEvents_startTime = Lens.lens (\DescribeEvents' {startTime} -> startTime) (\s@DescribeEvents' {} a -> s {startTime = a} :: DescribeEvents) Prelude.. Lens.mapping Core._Time

instance Core.AWSPager DescribeEvents where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeEventsResponse_marker Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeEventsResponse_events Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeEvents_marker
          Lens..~ rs
          Lens.^? describeEventsResponse_marker Prelude.. Lens._Just

instance Core.AWSRequest DescribeEvents where
  type
    AWSResponse DescribeEvents =
      DescribeEventsResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "DescribeEventsResult"
      ( \s h x ->
          DescribeEventsResponse'
            Prelude.<$> (x Core..@? "Marker")
            Prelude.<*> ( x Core..@? "Events" Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "Event")
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeEvents where
  hashWithSalt _salt DescribeEvents' {..} =
    _salt `Prelude.hashWithSalt` marker
      `Prelude.hashWithSalt` sourceType
      `Prelude.hashWithSalt` endTime
      `Prelude.hashWithSalt` maxRecords
      `Prelude.hashWithSalt` duration
      `Prelude.hashWithSalt` sourceIdentifier
      `Prelude.hashWithSalt` startTime

instance Prelude.NFData DescribeEvents where
  rnf DescribeEvents' {..} =
    Prelude.rnf marker
      `Prelude.seq` Prelude.rnf sourceType
      `Prelude.seq` Prelude.rnf endTime
      `Prelude.seq` Prelude.rnf maxRecords
      `Prelude.seq` Prelude.rnf duration
      `Prelude.seq` Prelude.rnf sourceIdentifier
      `Prelude.seq` Prelude.rnf startTime

instance Core.ToHeaders DescribeEvents where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DescribeEvents where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeEvents where
  toQuery DescribeEvents' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("DescribeEvents" :: Prelude.ByteString),
        "Version"
          Core.=: ("2012-12-01" :: Prelude.ByteString),
        "Marker" Core.=: marker,
        "SourceType" Core.=: sourceType,
        "EndTime" Core.=: endTime,
        "MaxRecords" Core.=: maxRecords,
        "Duration" Core.=: duration,
        "SourceIdentifier" Core.=: sourceIdentifier,
        "StartTime" Core.=: startTime
      ]

-- |
--
-- /See:/ 'newDescribeEventsResponse' smart constructor.
data DescribeEventsResponse = DescribeEventsResponse'
  { -- | A value that indicates the starting point for the next set of response
    -- records in a subsequent request. If a value is returned in a response,
    -- you can retrieve the next set of records by providing this returned
    -- marker value in the @Marker@ parameter and retrying the command. If the
    -- @Marker@ field is empty, all response records have been retrieved for
    -- the request.
    marker :: Prelude.Maybe Prelude.Text,
    -- | A list of @Event@ instances.
    events :: Prelude.Maybe [Event],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeEventsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'marker', 'describeEventsResponse_marker' - A value that indicates the starting point for the next set of response
-- records in a subsequent request. If a value is returned in a response,
-- you can retrieve the next set of records by providing this returned
-- marker value in the @Marker@ parameter and retrying the command. If the
-- @Marker@ field is empty, all response records have been retrieved for
-- the request.
--
-- 'events', 'describeEventsResponse_events' - A list of @Event@ instances.
--
-- 'httpStatus', 'describeEventsResponse_httpStatus' - The response's http status code.
newDescribeEventsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeEventsResponse
newDescribeEventsResponse pHttpStatus_ =
  DescribeEventsResponse'
    { marker = Prelude.Nothing,
      events = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A value that indicates the starting point for the next set of response
-- records in a subsequent request. If a value is returned in a response,
-- you can retrieve the next set of records by providing this returned
-- marker value in the @Marker@ parameter and retrying the command. If the
-- @Marker@ field is empty, all response records have been retrieved for
-- the request.
describeEventsResponse_marker :: Lens.Lens' DescribeEventsResponse (Prelude.Maybe Prelude.Text)
describeEventsResponse_marker = Lens.lens (\DescribeEventsResponse' {marker} -> marker) (\s@DescribeEventsResponse' {} a -> s {marker = a} :: DescribeEventsResponse)

-- | A list of @Event@ instances.
describeEventsResponse_events :: Lens.Lens' DescribeEventsResponse (Prelude.Maybe [Event])
describeEventsResponse_events = Lens.lens (\DescribeEventsResponse' {events} -> events) (\s@DescribeEventsResponse' {} a -> s {events = a} :: DescribeEventsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeEventsResponse_httpStatus :: Lens.Lens' DescribeEventsResponse Prelude.Int
describeEventsResponse_httpStatus = Lens.lens (\DescribeEventsResponse' {httpStatus} -> httpStatus) (\s@DescribeEventsResponse' {} a -> s {httpStatus = a} :: DescribeEventsResponse)

instance Prelude.NFData DescribeEventsResponse where
  rnf DescribeEventsResponse' {..} =
    Prelude.rnf marker
      `Prelude.seq` Prelude.rnf events
      `Prelude.seq` Prelude.rnf httpStatus
